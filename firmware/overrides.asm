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
	.global	_fillram
_fillram:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r4
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r3
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 258 with 64
						// var, auto|reg
						// matchobj comparing flags 1 with 64
	.liconst	20
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2
						// allocreg r1
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 258
						// const
						// matchobj comparing flags 1 with 258
	.liconst	-44
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 31
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	5
						// (save temp)store type 3
	st	r0
						//save_temp done

						//overrides.c, line 32
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	85
						// (save temp)store type 3
	st	r1
						//save_temp done

						//overrides.c, line 33
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 503
						// matchobj comparing flags 66 with 1
						// matchobj comparing flags 66 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type 3
	st	r1
						//save_temp done

						//overrides.c, line 34
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 66
						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done

						//overrides.c, line 36
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	5
						// (save temp)store type 3
	st	r0
						//save_temp done

						//overrides.c, line 37
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	83
						// (save temp)store type 3
	st	r1
						//save_temp done

						//overrides.c, line 38
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 3
	st	r1
						//save_temp done

						//overrides.c, line 39
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done

						//overrides.c, line 41
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	517
						// (save temp)store type 3
	st	r0
						//save_temp done

						//overrides.c, line 42
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	84
						// (save temp)store type 3
	st	r1
						//save_temp done

						//overrides.c, line 43
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done

						//overrides.c, line 44
						// (bitwise/arithmetic) 	//ops: 0, 0, 6
						// (obj to r5) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	16
	ldidx	r6
	mr	r5
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	2
	sgn
	shr	r5
						// (save result) // isreg

						//overrides.c, line 44
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
	sgn
	cmp	r5

						//overrides.c, line 44
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l8
		add	r7
l7: # 

						//overrides.c, line 45
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	24
	sgn
	shr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x260
	mt	r0
	st	r1

						//overrides.c, line 46
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 66 with 608
						// matchobj comparing flags 66 with 608
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	16
	sgn
	shr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x260
	mt	r0
	st	r1

						//overrides.c, line 47
						// (bitwise/arithmetic) 	//ops: 4, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 66 with 608
						// matchobj comparing flags 66 with 608
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	8
	sgn
	shr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x260
	mt	r0
	st	r1

						//overrides.c, line 48
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 503
						// matchobj comparing flags 66 with 608
						// matchobj comparing flags 66 with 608
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r1
						//save_temp done

						//overrides.c, line 44
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 608
	.liconst	1
	add	r2
						// (save result) // isreg

						//overrides.c, line 44
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// matchobj comparing flags 66 with 608
						// reg r5 - only match against tmp
	mt	r5
	sgn
	cmp	r2

						//overrides.c, line 44
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l7
		add	r7
l8: # 

						//overrides.c, line 50
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
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done

						//overrides.c, line 52
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	5
						// (save temp)store type 3
	st	r0
						//save_temp done

						//overrides.c, line 53
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	83
						// (save temp)store type 3
	st	r1
						//save_temp done

						//overrides.c, line 54
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 3
	st	r1
						//save_temp done

						//overrides.c, line 55
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
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

	.section	.data
	.align	4
	.global	_joy_keymap
_joy_keymap:
	.byte	88
	.byte	18
	.byte	20
	.byte	17
	.byte	29
	.byte	27
	.byte	28
	.byte	35
	.byte	90
	.byte	89
	.byte	148
	.byte	145
	.byte	245
	.byte	242
	.byte	235
	.byte	244
	.align	4
	.global	_bootrom_name
_bootrom_name:
						// Declaring from tree
						// static
	.ref	l9
	.section	.rodata
	.align	4
l9:
	.byte	65
	.byte	85
	.byte	84
	.byte	79
	.byte	66
	.byte	79
	.byte	79
	.byte	84
	.byte	71
	.byte	66
	.byte	0
