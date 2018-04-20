N EQU 100
    AREA main, CODE, READONLY
    ENTRY
    EXPORT __main
__main
    MOV R0, #0   ; COUNTER
    MOV R1, #0   ; first value
    MOV R2, #1   ; second value
    MOV R3, #1   ; SUM
    
loop    
    CMP R2, #N
    BHS out
    ADD R3, R1, R2
    MOV R1, R2
    MOV R2, R3
    ADD R0, R0, #1
    BAL loop   
    
out
    BAL out    
    
    
    END
