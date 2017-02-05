;		GARTH MADDEN 2016 V1.0
;
;			THIS IS A SAMPLE TEST PROGRAM
;			KNOW WORKING AND TESTED ON PIC 12LF1822
;			
;
;	LIGHTS UP THE BACKLIGHT AND
;	WRITES SAM THE HAM ACROSS 2 X 16 LCD PARALLAX WITH BACKLIGHT
; 	TX ON PIN RA4 TO LCD AT 2400 BAUD






    LIST P=12LF1822
    #include <p12lf1822.inc>
    
    ;EXTERN  DELAY
    
   __CONFIG _CONFIG1, _FOSC_INTOSC & _WDTE_OFF & _PWRTE_OFF & _MCLRE_ON & _CP_OFF & _CPD_OFF & _BOREN_ON & _CLKOUTEN_OFF & _IESO_ON & _FCMEN_ON
   __CONFIG _CONFIG2, _WRT_OFF & _PLLEN_OFF & _STVREN_OFF & _BORV_LO & _LVP_ON
    
   ERRORLEVEL -302
   ERRORLEVEL -312
   
	    EXTERN  USART_INIT
	    
   
	    UDATA_SHR   
 
COUNT1	    RES	1
COUNT2	    RES	1
COUNT3	    RES	1

	    

	    ORG	0000H
	    
   
            goto MAIN
	
	    
	    ORG 0004H
	    
LCD_ON
            BANKSEL COUNT1
            movlw   d'25'	; Startup Delay to let LCD Initialize
            movwf   COUNT3
            call    DELAY
	    
	    BANKSEL TXREG
            movlw   d'17'
            movwf   TXREG
            
            return
    
  ;;;;;;;;;;;;;;;	    
DELAY
     
  
     BANKSEL COUNT1
     movlw  d'255'        ; Wait 975000 cycles
     movwf  COUNT1
     movlw  d'55'
     movwf  COUNT2
     

DELAY2
     
     decfsz COUNT1,1      ; Decrease Count1, If zero skip the next instruction
     goto   DELAY2        ; Not zero goto DelayLoop2
     decfsz COUNT2,1      ; Decrease Count2, If zero skip the next instruction
     goto   DELAY2        ; Not zero goto DelayLoop1
     decfsz COUNT3,1
     goto   DELAY2
     
     BANKSEL    TXREG
     return               ; Return to the Caller
        

    
MAIN

    
    call    USART_INIT
    call    LCD_ON
    goto    COOK

COOK
    
    BANKSEL COUNT1          ; Bank 0
    
    movlw   d'2'
    movwf   COUNT3
    goto    OUTPUT
    
CLOCK
    BANKSEL COUNT1          ; Bank 0
    
    movlw   d'2'
    movwf   COUNT3
    return
    
OUTPUT
    
    BANKSEL TXREG
    movlw   d'32'           ;Space
    movwf   TXREG
    call    DELAY
    
    movlw   d'32'           ;Space
    movwf   TXREG
    call    CLOCK
    call    DELAY
    
    movlw   d'32'           ;Space
    movwf   TXREG
    call    CLOCK
    call    DELAY
    
    movlw   d'83'           ; S
    movwf   TXREG
    call    CLOCK
    call    DELAY
    
    movlw   d'97'           ; a
    movwf   TXREG
    call    CLOCK
    call    DELAY
    
    movlw   d'109'           ; m
    movwf   TXREG
    call    CLOCK
    call    DELAY
    
    movlw   d'32'           ; Space
    movwf   TXREG
    call    CLOCK
    call    DELAY
    
    movlw   d'84'           ; T
    movwf   TXREG
    call    CLOCK
    call    DELAY
    
    movlw   d'104'           ; h
    movwf   TXREG
    call    CLOCK
    call    DELAY
    
    movlw   d'101'           ; e
    movwf   TXREG
    call    CLOCK
    call    DELAY
    
    movlw   d'32'           ; Space
    movwf   TXREG
    call    CLOCK
    call    DELAY
    
    movlw   d'72'           ; H
    movwf   TXREG
    call    CLOCK
    call    DELAY
    
    movlw   d'97'           ; a
    movwf   TXREG
    call    CLOCK
    call    DELAY
    
    movlw   d'109'           ; m
    movwf   TXREG
    call    CLOCK
    call    DELAY
    
    movlw   d'32'           ; Space
    movwf   TXREG
    call    CLOCK
    call    DELAY
    
    movlw   d'10'           ; Newline
    movwf   TXREG
    call    CLOCK
    call    DELAY
  
    
TEST
    
    BANKSEL PIR1
    btfss   PIR1, TXIF	    ; Poll If Bit it clear 
    goto TEST
    call CLOCK
    goto OUTPUT
    
    
    End
 
