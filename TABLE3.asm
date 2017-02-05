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


	GLOBAL	   ADC_LOOKUP_THIRD

       
            CODE
	    
ADC_LOOKUP_THIRD

    ADDWF       PCL, F
    RETLW	D'48'	; 0
    RETLW	D'48'	; 1
    RETLW	D'48'	; 2
    RETLW	D'48'	; 3
    RETLW	D'48'	; 4
    RETLW	D'48'	; 5
    RETLW	D'50'	; 6
    RETLW	D'52'	; 7
    RETLW	D'54'	; 8
    RETLW	D'56'	; 9
    RETLW	D'48'	; 10
    RETLW	D'50'	; 11
    RETLW	D'52'	; 12
    RETLW	D'54'	; 13
    RETLW	D'56'	; 14
    RETLW	D'48'	; 15
    RETLW	D'50'	; 16
    RETLW	D'52'	; 17
    RETLW	D'54'	; 18
    RETLW	D'56'	; 19
    RETLW	D'48'	; 20
    RETLW	D'49'	; 21
    RETLW	D'51'	; 22
    RETLW	D'53'	; 23
    RETLW	D'55'	; 24
    RETLW	D'57'	; 25
    RETLW	D'49'	; 26
    RETLW	D'51'	; 27
    RETLW	D'53'	; 28
    RETLW	D'55'	; 29
    RETLW	D'57'	; 30
    RETLW	D'49'	; 31
    RETLW	D'51'	; 32
    RETLW	D'53'	; 33
    RETLW	D'55'	; 34
    RETLW	D'57'	; 35
    RETLW	D'49'	; 36
    RETLW	D'51'	; 37
    RETLW	D'53'	; 38
    RETLW	D'55'	; 39
    RETLW	D'57'	; 40
    RETLW	D'49'	; 41
    RETLW	D'51'	; 42
    RETLW	D'53'	; 43
    RETLW	D'55'	; 44
    RETLW	D'57'	; 45
    RETLW	D'49'	; 46
    RETLW	D'51'	; 47
    RETLW	D'53'	; D'48'
    RETLW	D'55'	; D'49'
    RETLW	D'57'	; D'50'
    RETLW	D'49'	; D'51'
    RETLW	D'51'	; D'52'
    RETLW	D'53'	; D'53'
    RETLW	D'55'	; D'54'
    RETLW	D'57'	; D'55'
    RETLW	D'49'	; D'56'
    RETLW	D'51'	; D'57'
    RETLW	D'53'	; D'58'
    RETLW	D'55'	; D'59'
    RETLW	D'57'	; 60
    RETLW	D'49'	; 61
    RETLW	D'51'	; 62
    RETLW	D'52'	; 63
    RETLW	D'54'	; 64
    RETLW	D'56'	; 65
    RETLW	D'48'	; 66
    RETLW	D'50'	; 67
    RETLW	D'52'	; 68
    RETLW	D'54'	; 69
    RETLW	D'56'	; 70
    RETLW	D'48'	; 71
    RETLW	D'50'	; 72
    RETLW	D'52'	; 73
    RETLW	D'54'	; 74
    RETLW	D'56'	; 75
    RETLW	D'48'	; 76
    RETLW	D'50'	; 77
    RETLW	D'52'	; 78
    RETLW	D'54'	; 79
    RETLW	D'56'	; 80
    RETLW	D'48'	; 81
    RETLW	D'50'	; 82
    RETLW	D'52'	; 83
    RETLW	D'54'	; 84
    RETLW	D'56'	; 85
    RETLW	D'48'	; 86
    RETLW	D'50'	; 87
    RETLW	D'52'	; 88
    RETLW	D'54'	; 89
    RETLW	D'56'	; 90
    RETLW	D'48'	; 91
    RETLW	D'50'	; 92
    RETLW	D'52'	; 93
    RETLW	D'54'	; 94
    RETLW	D'56'	; 95
    RETLW	D'48'	; 96
    RETLW	D'50'	; 97
    RETLW	D'52'	; 98
    RETLW	D'54'	; 99
    RETLW	D'56'	; 100
    RETLW	D'48'	; 101
    RETLW	D'50'	; 102
    RETLW	D'52'	; 103
    RETLW	D'54'	; 104
    RETLW	D'55'	; 105
    RETLW	D'57'	; 106
    RETLW	D'49'	; 107
    RETLW	D'51'	; 108
    RETLW	D'53'	; 109
    RETLW	D'55'	; 110
    RETLW	D'57'	; 111
    RETLW	D'49'	; 112
    RETLW	D'51'	; 113
    RETLW	D'53'	; 114
    RETLW	D'55'	; 115
    RETLW	D'57'	; 116
    RETLW	D'49'	; 117
    RETLW	D'51'	; 118
    RETLW	D'53'	; 119
    RETLW	D'55'	; 120
    RETLW	D'57'	; 121
    RETLW	D'49'	; 122
    RETLW	D'51'	; 123
    RETLW	D'53'	; 124
    RETLW	D'55'	; 125
    RETLW	D'57'	; 126
    RETLW	D'49'	; 127
    RETLW	D'51'	; 128
    RETLW	D'53'	; 129
    RETLW	D'55'	; 130
    RETLW	D'57'	; 131
    RETLW	D'49'	; 132
    RETLW	D'51'	; 133
    RETLW	D'53'	; 134
    RETLW	D'55'	; 135
    RETLW	D'57'	; 136
    RETLW	D'49'	; 137
    RETLW	D'51'	; 138
    RETLW	D'53'	; 139
    RETLW	D'55'	; 140
    RETLW	D'57'	; 141
    RETLW	D'49'	; 142
    RETLW	D'51'	; 143
    RETLW	D'53'	; 144
    RETLW	D'55'	; 145
    RETLW	D'56'	; 146
    RETLW	D'48'	; 147
    RETLW	D'50'	; 1D'48'
    RETLW	D'52'	; 1D'49'
    RETLW	D'54'	; 1D'50'
    RETLW	D'56'	; 1D'51'
    RETLW	D'48'	; 1D'52'
    RETLW	D'50'	; 1D'53'
    RETLW	D'52'	; 1D'54'
    RETLW	D'54'	; 1D'55'
    RETLW	D'56'	; 1D'56'
    RETLW	D'48'	; 1D'57'
    RETLW	D'50'	; 1D'58'
    RETLW	D'52'	; 1D'59'
    RETLW	D'54'	; 160
    RETLW	D'56'	; 161
    RETLW	D'48'	; 162
    RETLW	D'50'	; 163
    RETLW	D'52'	; 164
    RETLW	D'54'	; 165
    RETLW	D'56'	; 166
    RETLW	D'48'	; 167
    RETLW	D'50'	; 168
    RETLW	D'52'	; 169
    RETLW	D'54'	; 170
    RETLW	D'56'	; 171
    RETLW	D'48'	; 172
    RETLW	D'50'	; 173
    RETLW	D'52'	; 174
    RETLW	D'54'	; 175
    RETLW	D'56'	; 176
    RETLW	D'48'	; 177
    RETLW	D'50'	; 178
    RETLW	D'52'	; 179
    RETLW	D'54'	; 180
    RETLW	D'56'	; 181
    RETLW	D'48'	; 182
    RETLW	D'50'	; 183
    RETLW	D'52'	; 184
    RETLW	D'54'	; 185
    RETLW	D'56'	; 186
    RETLW	D'48'	; 187
    RETLW	D'49'	; 188
    RETLW	D'51'	; 189
    RETLW	D'53'	; 190
    RETLW	D'55'	; 191
    RETLW	D'57'	; 192
    RETLW	D'49'	; 193
    RETLW	D'51'	; 194
    RETLW	D'53'	; 195
    RETLW	D'55'	; 196
    RETLW	D'57'	; 197
    RETLW	D'49'	; 198
    RETLW	D'51'	; 199
    RETLW	D'53'	; 200
    RETLW	D'55'	; 201
    RETLW	D'57'	; 202
    RETLW	D'49'	; 203
    RETLW	D'51'	; 204
    RETLW	D'53'	; 205
    RETLW	D'55'	; 206
    RETLW	D'57'	; 207
    RETLW	D'49'	; 208
    RETLW	D'51'	; 209
    RETLW	D'53'	; 210
    RETLW	D'55'	; 211
    RETLW	D'57'	; 212
    RETLW	D'49'	; 213
    RETLW	D'51'	; 214
    RETLW	D'53'	; 215
    RETLW	D'55'	; 216
    RETLW	D'57'	; 217
    RETLW	D'49'	; 218
    RETLW	D'51'	; 219
    RETLW	D'53'	; 220
    RETLW	D'55'	; 221
    RETLW	D'57'	; 222
    RETLW	D'49'	; 223
    RETLW	D'51'	; 224
    RETLW	D'53'	; 225
    RETLW	D'55'	; 226
    RETLW	D'57'	; 227
    RETLW	D'49'	; 228
    RETLW	D'51'	; 229
    RETLW	D'52'	; 230
    RETLW	D'54'	; 231
    RETLW	D'56'	; 232
    RETLW	D'48'	; 233
    RETLW	D'50'	; 234
    RETLW	D'52'	; 235
    RETLW	D'54'	; 236
    RETLW	D'56'	; 237
    RETLW	D'48'	; 238
    RETLW	D'50'	; 239
    RETLW	D'52'	; 240
    RETLW	D'54'	; 241
    RETLW	D'56'	; 242
    RETLW	D'48'	; 243
    RETLW	D'50'	; 244
    RETLW	D'52'	; 245
    RETLW	D'54'	; 246
    RETLW	D'56'	; 247
    RETLW	D'48'	; 2D'48'
    RETLW	D'50'	; 2D'49'
    RETLW	D'52'	; 2D'50'
    RETLW	D'54'	; 2D'51'
    RETLW	D'56'	; 2D'52'
    RETLW	D'48'	; 2D'53'
    RETLW	D'50'	; 2D'54'
    RETLW	D'52'	; 2D'55'




    END
