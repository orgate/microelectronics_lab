    AREA    Countdown, CODE, READWRITE

start

    LDR R5, = maximum
    LDR R4, = array
	LDR R6, = minumum
	LDR R7, = average
	
	MOV R8, #1    ;to keep track of length of array
	LDR R1, [R4]  ; maximum
	LDR R2, [R4]  ; minumum
	LDR R3, [R4]  ;average
	ADD R4, R4, #4
wh1     LDR R0, [R4]
    CMP R0, #0
    BEQ next	   ; end of array , goto storing results and calculating average
    CMP R0, R1
	MOVGT R1, R0   ;Maximum calculation
	CMP R0,R2
	MOVLT R2, R0	;Minumum calculation
	
	ADD R3, R3, R0  ; store sum for later average
	ADD R8, R8 ,#1

	ADD R4, R4, #4   ; increment pointer
    ;STR R0, [R]
    B wh1

maximum DCD 0
minumum DCD 0
average DCD 0


array DCD 10,20,30,50,50,50,40,30,20,10,0			  ; end with 0 to tell the code that array end. Because otherwise random memory read

next STR R1 , [R5] ; store max in memory
	 STR R2 , [R6] ; store min in memory
	 
	 MOV R0, #0 ; to perform division to get average from sum , reuse R0
	 			;eg 300/10 the number of times 10 is sub from 300 to get 0 is the ans
	 B loopaverage

loopaverage
	 CMP R3,R8
	 SUBGT R3, R3 ,R8 ;R8 is the denominator, the array len . R3 has the array sum. 
	 ADDGT R0,R0,#1
	 BGT loopaverage
	 STR R0, [R7] ; store average in memory
	 B stop
	 
; AREA    Strings, DATA, READWRITE

stop B stop

 END                 

