;******************************USART_INIT********************************
;	INITIALIZES USART TO TX ON PIN RA4 AT 2400 EXACTLY= 2399 BAUD
;	AFTER INIT ANYTHING LOADED INTO TXREG WILL 
;	BE TRANSMITTED
	
;	GARTH MADDEN 2017
	
	
	
#include    <p12lf1822.inc>
 
	ERRORLEVEL  -302
	
	GLOBAL	USART_INIT

	;EXTERN	USART_INIT  ;COPY TO CALLING FILE
	; NO VARIABLES NEEDED
	CODE
	
USART_INIT

    BANKSEL WPUA
    BSF	    WPUA, WPUA4	    ; ENABLE PULL UP PIN RA4
    
    BANKSEL APFCON
    movlw   b'00011100'	    ; Make pin RA4 Tx output
    movwf   APFCON
    
    BANKSEL OSCCON
    movlw   b'01111000'	    ; Set clock to 16 MHZ
    movwf   OSCCON
    
    movlw b'00000000'	    ; PORTA all Outputs
    movwf TRISA
    
    BANKSEL LATA
    clrf    LATA	    ; Clear Latch
    
    BANKSEL ANSELA
    clrf    ANSELA	    ; All Pins Digital
    
    
    BANKSEL SPBRGL          ; Low bits 16 bit register
    movlw   B'10000010'
    movwf   SPBRGL          ; Set BRGL to 1666 for 2399 baud 
                        
    movlw   b'00000110'     ; High bits 16 bit register
    movwf   SPBRGH
    
    
    bsf     TXSTA, BRGH
    
    bsf     BAUDCON, BRG16  ; 16 bit data mode ;fosc/[4(n+1)]
    
    bcf     TXSTA, SYNC     ;   run in asychronous mode
    bsf     TXSTA, CSRC
    
    bsf     RCSTA, SPEN     ;   SPEN: Serial Port Enable bit

    bsf     TXSTA, TXEN     ;   TXEN: Transmit Enable bit (1)
    
    RETLW   0
    
    END
    
    
