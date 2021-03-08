TITLE MASM Template	(main.asm)
; Description:    Number Value Program 
; Authors:  Jay Helm       
; Date:     2/25/21     

INCLUDE Irvine32.inc   
.const
; TODO: PLACE SYMBOLIC INTEGER CONSTANTS HERE 
uno DWORD 1
dos DWORD 2
tres DWORD 3
quat DWORD 4
cinco DWORD 5
seis DWORD 6
siete DWORD 7
ocho DWORD 8
nueve DWORD 9
dies DWORD 10
once DWORD 11
doce DWORD 12
trece DWORD 13

catorce DWORD 14
quince DWORD 15

.data
; TODO: MAKE A LABEL numeros THAT LOCATES MEMORY FOR ALL THE DWORD NUMBER VALUES
; USE THE INTEGER CONSTANTS SPECIFIED ABOVE TO INITALIZE ALL 10 DWORD VALUES
; PUT THE NUMBER CONSTANTS IN MEMORY IN DESCENDING ORDER SO THAT THE OUTPUT FROM YOUR
; PROGRAM MATCHES THAT SHOWN BELOW
numeros DWORD quince, catorce, trece, doce, once, dies, nueve, ocho, siete, seis, cinco, quat, tres, dos, uno

.code
main1 proc
       ; The code for main has already been written for you...
       ; Setup a loop that will run 10 times and output all the DWORD number values
	mov ecx, 15
	mov esi, 0   
	label1:
	    ; This writes out each DWORD from the array "numeros" to the screen 
	    mov eax,numeros[esi*TYPE DWORD]
	    call WriteInt
	    ; This increments the array index counter
	    inc esi
	LOOP label1  ; Loop 10 times (based on value in ECX)
	invoke ExitProcess,0
main1 endp
end main1

; What I noticed:
; Originally, the output says "+4214832 + 4214828 + 4214824 + 4214820 + 4214816 + 4214812 + 4214808 + 4214804 + 4214800 + 4214796"
; The first 10 numbers of the array, 
; Increasing the size of the array did nothing, since the loop only runs 10 times.
