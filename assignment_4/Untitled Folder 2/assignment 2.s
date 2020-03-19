    AREA    Countdown, CODE, READWRITE
	ENTRY
	
start
    LDR R4, = array
	LDR R5, = arrayend
	SUBS R5, R5, #4
	
loop
	LDR R8, [R4]		;first element
	LDR R9, [R5]		;pointer to last element
	
	CMP R8, R9
	BNE notp
	
	ADD R4, R4, #4
	SUBS R5, R5, #4
	
	CMP R4, R5
	BGT done
	B loop

done
	MOV R1, #1
	B end
	
notp
	MOV R1, #2
end	B end

array DCD 10,20,30,40,50,60,40,30,20,10		; the given string in ASCII is stored in the array
arrayend DCD 0								; last element to show end of string

	END