;******************************************
; Bootloader.asm
; A Simple Bootloader
;******************************************
bits 16
start: jmp boot

;; constant and variable definitions
msg	db	"Welcome to My Operating System!", 0ah, 0dh, 0h

boot:
  cli	; no interrupts
  cld	; all that we need to init

  mov		ax, 50h

  ; ;; set the buffer
	mov	es, ax
	xor	bx, bx

  mov	al, 17					      ; read 2 sector
	mov	ch, 0					      ; we are reading the second sector past us, so its still on track 0
	mov	cl, 2					      ; sector to read (The second sector)
	mov	dh, 0					      ; head number
	mov	dl, 0					      ; drive number. Remember Drive 0 is floppy drive.

  mov	ah, 0x02			      ; read floppy sector function
	int	0x13					      ; call BIOS - Read the sector
  jmp	[500h + 0x18]				; jump and execute the sector!

  hlt	; halt the system

  ; We have to be 512 bytes. Clear the rest of the bytes with 0
  times 510 - ($-$$) db 0
  dw 0xAA55				  ; Boot Signiture
