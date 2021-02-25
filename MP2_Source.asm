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
.data
; TODO: MAKE A LABEL numeros THAT LOCATES MEMORY FOR ALL THE DWORD NUMBER VALUES
; USE THE INTEGER CONSTANTS SPECIFIED ABOVE TO INITALIZE ALL 10 DWORD VALUES
; PUT THE NUMBER CONSTANTS IN MEMORY IN DESCENDING ORDER SO THAT THE OUTPUT FROM YOUR
; PROGRAM MATCHES THAT SHOWN BELOW
.code
main proc
       ; The code for main has already been written for you...
       ; Setup a loop that will run 10 times and output all the DWORD number values
	mov ecx, 10
	mov esi, 0   
	label1:
	    ; This writes out each DWORD from the array "numeros" to the screen 
	    mov eax,numeros[esi*TYPE DWORD]
	    call WriteInt
	    ; This increments the array index counter
	    inc esi
	LOOP label1  ; Loop 10 times (based on value in ECX)
	invoke ExitProcess,0
main endp
end main
