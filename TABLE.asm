;**************************************************************************************
;                           VOLTAGE LOOKUP TABLE
;                           .00 ---> 5.00  VOLTS
;                           8 bit accuracy 10 bit adc
;
;       GARTH MADDEN 2017
;       V 0.1
;
;                        MOVLW       OFFSET
;                        ADDWF       OFFSET
;
;
;

#include        <p12lf1822.inc>

	GLOBAL	   ADC_LOOKUP_FIRST
	ORG	0xDF0
        CODE
        
ADC_LOOKUP_FIRST

    ADDWF       PCL, F
    RETLW	D'48'	; 0
    RETLW	D'48'	; 1
    RETLW	D'48'	; 2
    RETLW	D'48'	; 3
    RETLW	D'48'	; 4
    RETLW	D'48'	; 5
    RETLW	D'48'	; 6
    RETLW	D'48'	; 7
    RETLW	D'48'	; 8
    RETLW	D'48'	; 9
    RETLW	D'48'	; 10
    RETLW	D'48'	; 11
    RETLW	D'48'	; 12
    RETLW	D'48'	; 13
    RETLW	D'48'	; 14
    RETLW	D'48'	; 15
    RETLW	D'48'	; 16
    RETLW	D'48'	; 17
    RETLW	D'48'	; 18
    RETLW	D'48'	; 19
    RETLW	D'48'	; 20
    RETLW	D'48'	; 21
    RETLW	D'48'	; 22
    RETLW	D'48'	; 23
    RETLW	D'48'	; 24
    RETLW	D'48'	; 25
    RETLW	D'48'	; 26
    RETLW	D'48'	; 27
    RETLW	D'48'	; 28
    RETLW	D'48'	; 29
    RETLW	D'48'	; 30
    RETLW	D'48'	; 31
    RETLW	D'48'	; 32
    RETLW	D'48'	; 33
    RETLW	D'48'	; 34
    RETLW	D'48'	; 35
    RETLW	D'48'	; 36
    RETLW	D'48'	; 37
    RETLW	D'48'	; 38
    RETLW	D'48'	; 39
    RETLW	D'48'	; 40
    RETLW	D'48'	; 41
    RETLW	D'48'	; 42
    RETLW	D'48'	; 43
    RETLW	D'48'	; 44
    RETLW	D'48'	; 45
    RETLW	D'48'	; 46
    RETLW	D'48'	; 47
    RETLW	D'48'	; D'48'
    RETLW	D'48'	; D'49'
    RETLW	D'48'	; D'50'
    RETLW	D'49'	; D'51'
    RETLW	D'49'	; D'52'
    RETLW	D'49'	; D'53'
    RETLW	D'49'	; D'54'
    RETLW	D'49'	; D'55'
    RETLW	D'49'	; D'56'
    RETLW	D'49'	; D'57'
    RETLW	D'49'	; D'58'
    RETLW	D'49'	; D'59'
    RETLW	D'49'	; 60
    RETLW	D'49'	; 61
    RETLW	D'49'	; 62
    RETLW	D'49'	; 63
    RETLW	D'49'	; 64
    RETLW	D'49'	; 65
    RETLW	D'49'	; 66
    RETLW	D'49'	; 67
    RETLW	D'49'	; 68
    RETLW	D'49'	; 69
    RETLW	D'49'	; 70
    RETLW	D'49'	; 71
    RETLW	D'49'	; 72
    RETLW	D'49'	; 73
    RETLW	D'49'	; 74
    RETLW	D'49'	; 75
    RETLW	D'49'	; 76
    RETLW	D'49'	; 77
    RETLW	D'49'	; 78
    RETLW	D'49'	; 79
    RETLW	D'49'	; 80
    RETLW	D'49'	; 81
    RETLW	D'49'	; 82
    RETLW	D'49'	; 83
    RETLW	D'49'	; 84
    RETLW	D'49'	; 85
    RETLW	D'49'	; 86
    RETLW	D'49'	; 87
    RETLW	D'49'	; 88
    RETLW	D'49'	; 89
    RETLW	D'49'	; 90
    RETLW	D'49'	; 91
    RETLW	D'49'	; 92
    RETLW	D'49'	; 93
    RETLW	D'49'	; 94
    RETLW	D'49'	; 95
    RETLW	D'49'	; 96
    RETLW	D'49'	; 97
    RETLW	D'49'	; 98
    RETLW	D'49'	; 99
    RETLW	D'49'	; 100
    RETLW	D'50'	; 101
    RETLW	D'50'	; 102
    RETLW	D'50'	; 103
    RETLW	D'50'	; 104
    RETLW	D'50'	; 105
    RETLW	D'50'	; 106
    RETLW	D'50'	; 107
    RETLW	D'50'	; 108
    RETLW	D'50'	; 109
    RETLW	D'50'	; 110
    RETLW	D'50'	; 111
    RETLW	D'50'	; 112
    RETLW	D'50'	; 113
    RETLW	D'50'	; 114
    RETLW	D'50'	; 115
    RETLW	D'50'	; 116
    RETLW	D'50'	; 117
    RETLW	D'50'	; 118
    RETLW	D'50'	; 119
    RETLW	D'50'	; 120
    RETLW	D'50'	; 121
    RETLW	D'50'	; 122
    RETLW	D'50'	; 123
    RETLW	D'50'	; 124
    RETLW	D'50'	; 125
    RETLW	D'50'	; 126
    RETLW	D'50'	; 127
    RETLW	D'50'	; 128
    RETLW	D'50'	; 129
    RETLW	D'50'	; 130
    RETLW	D'50'	; 131
    RETLW	D'50'	; 132
    RETLW	D'50'	; 133
    RETLW	D'50'	; 134
    RETLW	D'50'	; 135
    RETLW	D'50'	; 136
    RETLW	D'50'	; 137
    RETLW	D'50'	; 138
    RETLW	D'50'	; 139
    RETLW	D'50'	; 140
    RETLW	D'50'	; 141
    RETLW	D'50'	; 142
    RETLW	D'50'	; 143
    RETLW	D'50'	; 144
    RETLW	D'50'	; 145
    RETLW	D'50'	; 146
    RETLW	D'50'	; 147
    RETLW	D'50'	; 1D'48'
    RETLW	D'50'	; 1D'49'
    RETLW	D'50'	; 1D'50'
    RETLW	D'50'	; 1D'51'
    RETLW	D'51'	; 1D'52'
    RETLW	D'51'	; 1D'53'
    RETLW	D'51'	; 1D'54'
    RETLW	D'51'	; 1D'55'
    RETLW	D'51'	; 1D'56'
    RETLW	D'51'	; 1D'57'
    RETLW	D'51'	; 1D'58'
    RETLW	D'51'	; 1D'59'
    RETLW	D'51'	; 160
    RETLW	D'51'	; 161
    RETLW	D'51'	; 162
    RETLW	D'51'	; 163
    RETLW	D'51'	; 164
    RETLW	D'51'	; 165
    RETLW	D'51'	; 166
    RETLW	D'51'	; 167
    RETLW	D'51'	; 168
    RETLW	D'51'	; 169
    RETLW	D'51'	; 170
    RETLW	D'51'	; 171
    RETLW	D'51'	; 172
    RETLW	D'51'	; 173
    RETLW	D'51'	; 174
    RETLW	D'51'	; 175
    RETLW	D'51'	; 176
    RETLW	D'51'	; 177
    RETLW	D'51'	; 178
    RETLW	D'51'	; 179
    RETLW	D'51'	; 180
    RETLW	D'51'	; 181
    RETLW	D'51'	; 182
    RETLW	D'51'	; 183
    RETLW	D'51'	; 184
    RETLW	D'51'	; 185
    RETLW	D'51'	; 186
    RETLW	D'51'	; 187
    RETLW	D'51'	; 188
    RETLW	D'51'	; 189
    RETLW	D'51'	; 190
    RETLW	D'51'	; 191
    RETLW	D'51'	; 192
    RETLW	D'51'	; 193
    RETLW	D'51'	; 194
    RETLW	D'51'	; 195
    RETLW	D'51'	; 196
    RETLW	D'51'	; 197
    RETLW	D'51'	; 198
    RETLW	D'51'	; 199
    RETLW	D'51'	; 200
    RETLW	D'51'	; 201
    RETLW	D'51'	; 202
    RETLW	D'52'	; 203
    RETLW	D'52'	; 204
    RETLW	D'52'	; 205
    RETLW	D'52'	; 206
    RETLW	D'52'	; 207
    RETLW	D'52'	; 208
    RETLW	D'52'	; 209
    RETLW	D'52'	; 210
    RETLW	D'52'	; 211
    RETLW	D'52'	; 212
    RETLW	D'52'	; 213
    RETLW	D'52'	; 214
    RETLW	D'52'	; 215
    RETLW	D'52'	; 216
    RETLW	D'52'	; 217
    RETLW	D'52'	; 218
    RETLW	D'52'	; 219
    RETLW	D'52'	; 220
    RETLW	D'52'	; 221
    RETLW	D'52'	; 222
    RETLW	D'52'	; 223
    RETLW	D'52'	; 224
    RETLW	D'52'	; 225
    RETLW	D'52'	; 226
    RETLW	D'52'	; 227
    RETLW	D'52'	; 228
    RETLW	D'52'	; 229
    RETLW	D'52'	; 230
    RETLW	D'52'	; 231
    RETLW	D'52'	; 232
    RETLW	D'52'	; 233
    RETLW	D'52'	; 234
    RETLW	D'52'	; 235
    RETLW	D'52'	; 236
    RETLW	D'52'	; 237
    RETLW	D'52'	; 238
    RETLW	D'52'	; 239
    RETLW	D'52'	; 240
    RETLW	D'52'	; 241
    RETLW	D'52'	; 242
    RETLW	D'52'	; 243
    RETLW	D'52'	; 244
    RETLW	D'52'	; 245
    RETLW	D'52'	; 246
    RETLW	D'52'	; 247
    RETLW	D'52'	; 2D'48'
    RETLW	D'52'	; 2D'49'
    RETLW	D'52'	; 2D'50'
    RETLW	D'52'	; 2D'51'
    RETLW	D'52'	; 2D'52'
    RETLW	D'53'	; 2D'53'
    RETLW	D'53'	; 2D'54'
    RETLW	D'53'	; 2D'55'
   
    END

    
    
    

 