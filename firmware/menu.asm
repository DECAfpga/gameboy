	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_Menu_Draw
_Menu_Draw:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
	add	r6
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 40 type 3
						// matchobj comparing flags 64 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r6
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 48
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 64
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 49
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done
l14: # 

						//../DeMiSTify/firmware/menu.c, line 51
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	stdec	r6

						//../DeMiSTify/firmware/menu.c, line 51
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	cmp	r3

						//../DeMiSTify/firmware/menu.c, line 51
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l11
		add	r7

						//../DeMiSTify/firmware/menu.c, line 51
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 51
						//pcreltotemp
	.lipcrel	l12
	add	r7
l11: # 

						//../DeMiSTify/firmware/menu.c, line 51
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
l12: # 

						//../DeMiSTify/firmware/menu.c, line 51
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 51
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 74
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 51
						//call
						//pcreltotemp
	.lipcrel	_OsdWriteStart
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 52
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 52
						//call
						//pcreltotemp
	.lipcrel	_OsdPutChar
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r2

						//../DeMiSTify/firmware/menu.c, line 53
						// (bitwise/arithmetic) 	//ops: 5, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	4
	addt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 53
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 106 with 74
						// deref 
	ld	r2
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/menu.c, line 53
						//call
						//pcreltotemp
	.lipcrel	_OsdPuts
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 54
						//call
						//pcreltotemp
	.lipcrel	_OsdWriteEnd
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/menu.c, line 55
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// const
	.liconst	12
	add	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 50
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 50
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	sgn
	cmp	r3

						//../DeMiSTify/firmware/menu.c, line 50
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l14
		add	r7
						// allocreg r1
						// freereg r1
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 1
	.liconst	-4
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_Menu_Set
_Menu_Set:
	stdec	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 62
						// (a/p assign)
						// (prepobj tmp)
 						// static
	.liabs	l1,4
						// static pe not varadr
						//sizemod based on type 0xa
	stmpdec	r2

						//../DeMiSTify/firmware/menu.c, line 64
						// (a/p assign)
						// (prepobj r0)
 						// static
	.liabs	l3,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	7
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 65
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 65
						//call
						//pcreltotemp
	.lipcrel	_Menu_Draw
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
	.global	_Menu_SetHotKeys
_Menu_SetHotKeys:
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 71
						// Q1 disposable
						// (a/p assign)
						// (prepobj tmp)
 						// static
	.liabs	l4,4
						// static pe not varadr
						//sizemod based on type 0xa
	stmpdec	r1
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.3
	.global	_Menu_ShowHide
_Menu_ShowHide:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r3
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 76
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 64
						// const
						// matchobj comparing flags 1 with 64
	.liconst	0
	sgn
	cmp	r2

						//../DeMiSTify/firmware/menu.c, line 76
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l23
		add	r7

						//../DeMiSTify/firmware/menu.c, line 77
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,0
						//static deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/menu.c, line 77
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l24
		add	r7

						//../DeMiSTify/firmware/menu.c, line 77
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 77
						//pcreltotemp
	.lipcrel	l25
	add	r7
l24: # 

						//../DeMiSTify/firmware/menu.c, line 77
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done
l25: # 

						//../DeMiSTify/firmware/menu.c, line 77
						// (a/p assign)
						// (prepobj tmp)
 						// static
	.liabs	l2,4
						// static pe not varadr
						//sizemod based on type 0x3
	stmpdec	r3

						//../DeMiSTify/firmware/menu.c, line 79
						//pcreltotemp
	.lipcrel	l27
	add	r7
l23: # 

						//../DeMiSTify/firmware/menu.c, line 79
						// Q1 disposable
						// (a/p assign)
						// (prepobj tmp)
 						// static
	.liabs	l2,4
						// static pe not varadr
						//sizemod based on type 0x3
	stmpdec	r2
						// freereg r1
						// freereg r2
l27: # 

						//../DeMiSTify/firmware/menu.c, line 80
						// (a/p assign)
						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-4
	mr	r0
						// (obj to tmp) flags 2 type 503
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,0
						//static deref
						//sizemod based on type 0x503
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/menu.c, line 80
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 3
						// matchobj comparing flags 2 with 2

			// required value found in tmp
	mr	r2
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	1
	and	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 80
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	64
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done
						// matchobj comparing flags 74 with 74
						// Obsoleting t1
						// freereg r2

						//../DeMiSTify/firmware/menu.c, line 80
						//call
						//pcreltotemp
	.lipcrel	_spi_osd_cmd
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.4
	.weak	_Menu_JoystickToAnalogue
_Menu_JoystickToAnalogue:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r2

						//../DeMiSTify/firmware/menu.c, line 89
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 98 with 64
						// deref 
	ld	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 90
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	-32512
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 90
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	32512
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 91
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 91
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l31
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 93
						// (minus)
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_analoguesensitivity
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// matchobj comparing flags 1 with 2
	.liconst	0
	exg r1
	sub r1
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 93
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 5
						// (obj to r4) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	mt	r1
	mr	r4
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	8
	shl	r4
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 94
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_analoguesensitivity
						//extern deref
						//sizemod based on type 0x3
	ldt
	sub	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 96
						//pcreltotemp
	.lipcrel	l35
	add	r7
l31: # 
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 96
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	16
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 96
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7
						// allocreg r1
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_analoguesensitivity
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 98
						// (bitwise/arithmetic) 	//ops: 2, 0, 6
						// (obj to r5) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	//mt
	mr	r5
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	8
	shl	r5
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 99
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 102
						//pcreltotemp
	.lipcrel	l35
	add	r7
l34: # 
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 102
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	15
	mul	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 102
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	4
	sgn
	shr	r2
						// (save result) // isreg
						// freereg r1
l35: # 

						//../DeMiSTify/firmware/menu.c, line 103
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
	sgn
	cmp	r2

						//../DeMiSTify/firmware/menu.c, line 103
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l37
		add	r7

						//../DeMiSTify/firmware/menu.c, line 104
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 66
						// reg r5 - only match against tmp
						// (save temp)isreg
	mr	r2
						//save_temp done
l37: # 

						//../DeMiSTify/firmware/menu.c, line 105
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	sgn
	cmp	r2

						//../DeMiSTify/firmware/menu.c, line 105
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l39
		add	r7

						//../DeMiSTify/firmware/menu.c, line 106
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 66
						// reg r4 - only match against tmp
						// (save temp)isreg
	mr	r2
						//save_temp done
l39: # 

						//../DeMiSTify/firmware/menu.c, line 107
						// Q1 disposable
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 3
	st	r3
						//save_temp done
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.5
	.weak	_Menu_Joystick
_Menu_Joystick:
	stdec	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 114
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 64
						// var, auto|reg
						// matchobj comparing flags 1 with 64
	.liconst	4
	ldidx	r6
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 114
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 2
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 114
						//call
						//pcreltotemp
	.lipcrel	_user_io_digital_joystick_ext
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1
						// freereg r2
	.liconst	-4
	sub	r6
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.6
	.global	_SetScandouble
_SetScandouble:
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 147
						// (a/p assign)
						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-44
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 148
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 149
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	-44
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 150
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// matchobj comparing flags 66 with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	4
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x21
						// (prepobj tmp)
 						// matchobj comparing flags 161 with 1
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 1
	.liconst	-44
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness

						//../DeMiSTify/firmware/menu.c, line 151
						// (a/p assign)
						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.7
	.global	_Menu_Run
_Menu_Run:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-16
	add	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//../DeMiSTify/firmware/menu.c, line 164
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 165
						//FIXME convert
						// (convert - reducing type 503 to 3
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 21 type 503
						// matchobj comparing flags 33 with 130
						// matchobj comparing flags 33 with 130
						// const/deref
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 161 with 130
						// matchobj comparing flags 161 with 130
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	-20
						//sizemod based on type 0x503
	ldt
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 167
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 33
						// matchobj comparing flags 130 with 130
						//auto: flags: 82, comparing 4, 0 with 8, 0
						//Fuzzy match found, offset: -4 (varadr: 1)
	.liconst	-4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 130
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0xa
	ldt
						// (save temp)store type a
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 168
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 130
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 169
						//FIXME convert
						// (convert - reducing type 503 to 3
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 21 type 503
						// matchobj comparing flags 33 with 2
						// matchobj comparing flags 33 with 130
						// const/deref
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 161 with 2
						// matchobj comparing flags 161 with 130
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 130
	.liconst	-24
						//sizemod based on type 0x503
	ldt
						//Saving to reg r4
						// (save temp)isreg
	mr	r4
						//save_temp done
						//No need to mask - same size
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 171
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 33
						// matchobj comparing flags 2 with 130
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 171
						//call
						//pcreltotemp
	.lipcrel	_HandlePS2RawCodes
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 173
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	7
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 173
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 173
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/menu.c, line 173
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 173
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l46
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 173
						//comp
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_prevbuttons
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// matchobj comparing flags 1 with 2
	.liconst	-1
	xor	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 173
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 173
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 173
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l47
		add	r7
l46: # 
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 175
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	1000
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 175
						//call
						//pcreltotemp
	.lipcrel	_GetTimer
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 175
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 176
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 2
	.liconst	7
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 176
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 176
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 176
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l120
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 176
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 176
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l124
		add	r7
l120: # 
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 102 type 3
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
l49: # 

						//../DeMiSTify/firmware/menu.c, line 178
						// (a/p assign)
						// (prepobj r0)
 						// var, auto|reg
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 21 type 3
						// matchobj comparing flags 33 with 130
						// matchobj comparing flags 33 with 130
						// const/deref
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 161 with 130
						// matchobj comparing flags 161 with 130
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	-20
						//sizemod based on type 0x3
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 179
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 33
						// matchobj comparing flags 2 with 130
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 179
						//call
						//pcreltotemp
	.lipcrel	_HandlePS2RawCodes
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 180
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 180
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 180
						// (test)
						// (obj to tmp) flags 4a type 103
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 180
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l54
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 182
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 74
						// extern
	.liabs	_scandouble
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	xor	r1
						// (save result) // isreg
						// (a/p assign)
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_scandouble, 4
						// extern pe not varadr
						//sizemod based on type 0x3
	stmpdec	r1

						//../DeMiSTify/firmware/menu.c, line 182
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 182
						//call
						//pcreltotemp
	.lipcrel	_SetScandouble
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 183
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	1000
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 183
						//call
						//pcreltotemp
	.lipcrel	_GetTimer
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 183
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r3
l54: # 
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 176
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	7
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 176
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 176
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 176
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l49
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 176
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 176
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l49
		add	r7
l124: # 
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/menu.c, line 186
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,0
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	xor	r2
						// (save result) // isreg
						// (a/p assign)
						// (prepobj tmp)
 						// static
	.liabs	l2,4
						// static pe not varadr
						//sizemod based on type 0x3
	stmpdec	r2

						//../DeMiSTify/firmware/menu.c, line 187
						// (a/p assign)
						// (prepobj tmp)
 						// deref
						// const to tmp
	.liconst	-4
	exg	r2
						//sizemod based on type 0x503
	st	r2
	exg	r2

						//../DeMiSTify/firmware/menu.c, line 187
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	and	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 187
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	64
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/menu.c, line 187
						//call
						//pcreltotemp
	.lipcrel	_spi_osd_cmd
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 188
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	90
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 188
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 190
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done
l47: # 
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 192
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_prevbuttons
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 194
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 130
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,0
						//static deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/menu.c, line 194
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l57
		add	r7

						//../DeMiSTify/firmware/menu.c, line 197
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 130
	.liconst	32768
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 198
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//extern: comparing 0 with 0
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_joy_keymap
						// extern pe is varadr
						// (save temp)store type a
	st	r6
						//save_temp done
						// freereg r1
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 162 type a
						// matchobj comparing flags 354 with 130
						// matchobj comparing flags 354 with 130
						// deref 
	//nop
						// (save temp)isreg
	mr	r5
						//save_temp done
l58: # 
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 201
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// deref 
	ldbinc	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 201
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 106
						// reg r1 - only match against tmp
	//mt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 201
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 201
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 201
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l62
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 202
						// (bitwise/arithmetic) 	//ops: 4, 5, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 74
						// reg r3 - only match against tmp
	mt	r3
	or	r4
						// (save result) // isreg
l62: # 

						//../DeMiSTify/firmware/menu.c, line 203
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	sgn
	shr	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 199
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l58
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 206
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	255
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 206
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 206
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 206
						//call
						//pcreltotemp
	.lipcrel	_Menu_Joystick
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 207
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	8
	sgn
	shr	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 207
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 207
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 207
						//call
						//pcreltotemp
	.lipcrel	_Menu_Joystick
	add	r7
						// Flow control - popping 4 + 4 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 209
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	253
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 209
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 210
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	250
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 210
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 213
						//pcreltotemp
	.lipcrel	l119
	add	r7
						// freereg r2
l57: # 
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 215
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	255
	and	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/menu.c, line 215
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	sgn
	shr	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 215
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 5, 2, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	or	r4
						// (save result) // isreg
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 217
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 74
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//../DeMiSTify/firmware/menu.c, line 217
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l64
		add	r7
						// allocreg r2

						//../DeMiSTify/firmware/menu.c, line 219
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 66
						// var, auto|reg
						// matchobj comparing flags 1 with 66
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 21 type 103
						// matchobj comparing flags 33 with 130
						// matchobj comparing flags 33 with 130
						// const/deref
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 161 with 130
						// matchobj comparing flags 161 with 130
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	-56
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 220
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 33
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 33
						// matchobj comparing flags 1 with 130
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_joy_timestamp
						//extern deref
						//sizemod based on type 0x103
	ldt
	sub	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 220
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 130
	.liconst	160
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 220
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l66
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 221
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 223
						//pcreltotemp
	.lipcrel	l68
	add	r7
l66: # 

						//../DeMiSTify/firmware/menu.c, line 223
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_joy_timestamp
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 226
						//pcreltotemp
	.lipcrel	l68
	add	r7
l64: # 

						//../DeMiSTify/firmware/menu.c, line 226
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_joy_timestamp
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l68: # 
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 228
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	8
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 228
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 228
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	245
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 228
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 228
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/menu.c, line 228
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 228
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l70
		add	r7
l69: # 
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 230
						// (test)
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/menu.c, line 230
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l73
		add	r7

						//../DeMiSTify/firmware/menu.c, line 231
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2

			// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// static
	.liabs	l3,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/menu.c, line 232
						//pcreltotemp
	.lipcrel	l76
	add	r7
l73: # 

						//../DeMiSTify/firmware/menu.c, line 232
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	96
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//../DeMiSTify/firmware/menu.c, line 232
						// (test)
						// (obj to tmp) flags 22 type 4
						// matchobj comparing flags 34 with 98
						// deref 
						// (prepobj tmp)
 						// matchobj comparing flags 162 with 98
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x4
	ldt

						//../DeMiSTify/firmware/menu.c, line 232
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l76
		add	r7
						// freereg r1
						// freereg r3
						// allocreg r3

						//../DeMiSTify/firmware/menu.c, line 233
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 22 type a
						// matchobj comparing flags 34 with 34

			// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 233
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 34
						// const
						// matchobj comparing flags 1 with 34
	.liconst	-1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 233
						// Q1 disposable
						//call
						// (obj to tmp) flags 6a type f
						// matchobj comparing flags 106 with 1
						// deref 
	mt	r3
	exg	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r1
l76: # 
						// allocreg r3
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 234
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done
						// freereg r1
l70: # 
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 237
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	4
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 237
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l77
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 237
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	242
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 237
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 237
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/menu.c, line 237
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 237
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l78
		add	r7
l77: # 
						// allocreg r1
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 239
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 98 with 2
						// deref 
	//nop
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	7
	sgn
	cmp	r0

						//../DeMiSTify/firmware/menu.c, line 239
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l81
		add	r7

						//../DeMiSTify/firmware/menu.c, line 240
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
						// matchobj comparing flags 1 with 98
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// static
	.liabs	l3,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/menu.c, line 241
						//pcreltotemp
	.lipcrel	l84
	add	r7
l81: # 

						//../DeMiSTify/firmware/menu.c, line 241
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	96
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//../DeMiSTify/firmware/menu.c, line 241
						// (test)
						// (obj to tmp) flags 22 type 4
						// matchobj comparing flags 34 with 98
						// deref 
						// (prepobj tmp)
 						// matchobj comparing flags 162 with 98
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x4
	ldt

						//../DeMiSTify/firmware/menu.c, line 241
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l84
		add	r7
						// freereg r1
						// freereg r3
						// allocreg r3

						//../DeMiSTify/firmware/menu.c, line 242
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 22 type a
						// matchobj comparing flags 34 with 34

			// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 242
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 34
						// const
						// matchobj comparing flags 1 with 34
	.liconst	-2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 242
						// Q1 disposable
						//call
						// (obj to tmp) flags 6a type f
						// matchobj comparing flags 106 with 1
						// deref 
	mt	r3
	exg	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r1
l84: # 
						// allocreg r3
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 243
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done
						// freereg r1
l78: # 
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 246
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	253
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 246
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 246
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/menu.c, line 246
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 246
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l86
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 248
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/menu.c, line 248
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l88
		add	r7

						//../DeMiSTify/firmware/menu.c, line 249
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 2
						// static
	.liabs	l3,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 250
						//pcreltotemp
	.lipcrel	l91
	add	r7
l88: # 

						//../DeMiSTify/firmware/menu.c, line 250
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type a
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	96
	add	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 250
						// (test)
						// (obj to tmp) flags 62 type 4
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r2

						//../DeMiSTify/firmware/menu.c, line 250
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l91
		add	r7
						// freereg r1
						// freereg r3
						// allocreg r3

						//../DeMiSTify/firmware/menu.c, line 251
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 98 with 98

			// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 251
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	-3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 251
						// Q1 disposable
						//call
						// (obj to tmp) flags 6a type f
						// matchobj comparing flags 106 with 1
						// deref 
	mt	r3
	exg	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r1
l91: # 
						// allocreg r3
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 252
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done
						// freereg r1
l86: # 
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 255
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	250
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 255
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 255
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/menu.c, line 255
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 255
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l93
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 257
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	7
	sgn
	cmp	r0

						//../DeMiSTify/firmware/menu.c, line 257
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l95
		add	r7

						//../DeMiSTify/firmware/menu.c, line 258
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// static
	.liabs	l3,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	7
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 259
						//pcreltotemp
	.lipcrel	l98
	add	r7
l95: # 

						//../DeMiSTify/firmware/menu.c, line 259
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	96
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//../DeMiSTify/firmware/menu.c, line 259
						// (test)
						// (obj to tmp) flags 22 type 4
						// matchobj comparing flags 34 with 98
						// deref 
						// (prepobj tmp)
 						// matchobj comparing flags 162 with 98
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x4
	ldt

						//../DeMiSTify/firmware/menu.c, line 259
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l98
		add	r7
						// freereg r1
						// freereg r3
						// allocreg r3

						//../DeMiSTify/firmware/menu.c, line 260
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 22 type a
						// matchobj comparing flags 34 with 34

			// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 260
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 34
						// const
						// matchobj comparing flags 1 with 34
	.liconst	-4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 260
						// Q1 disposable
						//call
						// (obj to tmp) flags 6a type f
						// matchobj comparing flags 106 with 1
						// deref 
	mt	r3
	exg	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r1
l98: # 
						// allocreg r3
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 261
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done
l93: # 

						//../DeMiSTify/firmware/menu.c, line 265
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	240
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/menu.c, line 265
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2

			// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//../DeMiSTify/firmware/menu.c, line 265
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l99
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 265
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	90
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 265
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 265
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/menu.c, line 265
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 265
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l100
		add	r7
l99: # 
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 267
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	1000
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 267
						//call
						//pcreltotemp
	.lipcrel	_GetTimer
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 267
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/menu.c, line 268
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 130
						// matchobj comparing flags 130 with 2
						// extern (offset 0)
	.liabs	_menu_longpress
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 269
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_menu_longpress
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//../DeMiSTify/firmware/menu.c, line 269
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l126
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 269
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 130
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6

						//../DeMiSTify/firmware/menu.c, line 269
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l122
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 269
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 130
	.liconst	90
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 269
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 269
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 269
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l126
		add	r7
						// freereg r2
						// freereg r4
l122: # 

						//../DeMiSTify/firmware/menu.c, line 271
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 21 type 3
						// const/deref
						// (prepobj tmp)
 						// deref
						// const to tmp
	.liconst	-24
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 272
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 66 with 33
						// reg r3 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	255
	and	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/menu.c, line 272
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8
	sgn
	shr	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 272
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 4, 2, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	or	r3
						// (save result) // isreg
						// freereg r2
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 273
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 74
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 273
						//call
						//pcreltotemp
	.lipcrel	_HandlePS2RawCodes
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 274
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 274
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 274
						// (test)
						// (obj to tmp) flags 4a type 103
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 274
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l108
		add	r7
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 275
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 74
						// extern (offset 0)
	.liabs	_menu_longpress
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
l108: # 

						//../DeMiSTify/firmware/menu.c, line 269
						// (test)
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_menu_longpress
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//../DeMiSTify/firmware/menu.c, line 269
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l126
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 269
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 66 with 2
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	240
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 269
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l122
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 269
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	90
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 269
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 269
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 269
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l122
		add	r7
						// freereg r2
l126: # 
						// freereg r3
						// allocreg r4
						// allocreg r2
						// allocreg r1
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//../DeMiSTify/firmware/menu.c, line 278
						// (bitwise/arithmetic) 	//ops: 2, 0, 4
						// (obj to r3) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	//mt
	mr	r3
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	12
	mul	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 278
						// (bitwise/arithmetic) 	//ops: 0, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	add	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 278
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 106 with 2
						// deref 
	ld	r3
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 278
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 106
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 278
						// Q1 disposable
						//call
						// (obj to tmp) flags 6a type f
						// matchobj comparing flags 106 with 74
						// deref 
	mt	r3
	exg	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r1
l100: # 
						// allocreg r3
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 281
						// (test)
						// (obj to tmp) flags 42 type a
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//../DeMiSTify/firmware/menu.c, line 281
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l127
		add	r7

						//../DeMiSTify/firmware/menu.c, line 281
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 98 with 66
						// deref 
	ld	r5

						//../DeMiSTify/firmware/menu.c, line 281
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l127
		add	r7
						// freereg r1
l123: # 
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 283
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 3
						// deref 
	ld	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 283
						//call
						//pcreltotemp
	.lipcrel	_TestKey
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 283
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/menu.c, line 283
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/menu.c, line 283
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l116
		add	r7
						// freereg r3
						// allocreg r3

						//../DeMiSTify/firmware/menu.c, line 284
						// (bitwise/arithmetic) 	//ops: 6, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
	addt	r5
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 284
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 74
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 284
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 106 with 2
						// deref 
	ld	r3
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 284
						// Q1 disposable
						//call
						// (obj to tmp) flags 6a type f
						// matchobj comparing flags 106 with 106
						// deref 
	//mt
	exg	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r1
l116: # 
						// allocreg r3
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 285
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// const
	.liconst	8
	add	r5
						// (save result) // isreg

						//../DeMiSTify/firmware/menu.c, line 281
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l127
		add	r7

						//../DeMiSTify/firmware/menu.c, line 281
						// (test)
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r5

						//../DeMiSTify/firmware/menu.c, line 281
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l123
		add	r7
						// freereg r1
l127: # 
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 288
						// (test)
						// (obj to tmp) flags 62 type 3
						// deref 
	ld	r6

						//../DeMiSTify/firmware/menu.c, line 288
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l119
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/menu.c, line 289
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 98
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l3,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/menu.c, line 289
						//call
						//pcreltotemp
	.lipcrel	_Menu_Draw
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l119: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-16
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.data
	.align	4
	.weak	_analoguesensitivity
_analoguesensitivity:
	.int	16
	.align	4
	.weak	_joy_keymap
_joy_keymap:
	.byte	88
	.byte	18
	.byte	17
	.byte	20
	.byte	29
	.byte	27
	.byte	28
	.byte	35
	.byte	90
	.byte	89
	.byte	145
	.byte	148
	.byte	245
	.byte	242
	.byte	235
	.byte	244
	.align	4
	.global	_scandouble
_scandouble:
	.int	0
	.align	4
	.global	_prevbuttons
_prevbuttons:
	.int	0
	.align	4
	.global	_joy_timestamp
_joy_timestamp:
	.int	0
	.section	.bss
	.align	4
	.global	_menu_longpress
	.comm	_menu_longpress,1
	.section	.data
	.align	4
l2:
	.int	0
	.section	.bss
	.align	4
	.lcomm	l1,4
	.align	4
	.lcomm	l3,4
	.align	4
	.lcomm	l4,4
