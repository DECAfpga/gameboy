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
	.global	_FindDrive
_FindDrive:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-8
	add	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 110
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_fat32
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

						//../DeMiSTify/firmware/minfat.c, line 114
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//extern: comparing 0 with 0
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 114
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 114
						//call
						//pcreltotemp
	.lipcrel	_sd_read_sector
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 130
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 114
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 114
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l4
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 117
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 118
						//pcreltotemp
	.lipcrel	l1
	add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l4: # 

						//../DeMiSTify/firmware/minfat.c, line 122
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 123
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 126
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// extern (offset 54)
	.liabs	_sector_buffer, 54
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 126
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l7,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//../DeMiSTify/firmware/minfat.c, line 126
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 126
						//call
						//pcreltotemp
	.lipcrel	___strncmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 126
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 126
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l6
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 127
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
						// (save temp)store type 3
	st	r6
						//save_temp done
						// freereg r1
						// freereg r2
						// freereg r3
l6: # 
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 128
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 82)
	.liabs	_sector_buffer, 82
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 128
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l10,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//../DeMiSTify/firmware/minfat.c, line 128
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 128
						//call
						//pcreltotemp
	.lipcrel	___strncmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 128
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 128
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l9
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 129
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
						// (save temp)store type 3
	st	r6
						//save_temp done
l9: # 

						//../DeMiSTify/firmware/minfat.c, line 133
						// (test)
						// (obj to tmp) flags 62 type 3
						// deref 
	ld	r6

						//../DeMiSTify/firmware/minfat.c, line 133
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l19
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 139
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 98
						// extern
	.liabs	_sector_buffer, 454
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 140
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 102
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_sector_buffer, 510
						//extern deref
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 140
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
	.liconst	21930
	cmp	r0

						//../DeMiSTify/firmware/minfat.c, line 140
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l14
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 141
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 454
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 142
						//pcreltotemp
	.lipcrel	l17
	add	r7
l14: # 

						//../DeMiSTify/firmware/minfat.c, line 142
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	43605
	cmp	r0

						//../DeMiSTify/firmware/minfat.c, line 142
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l17
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 145
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 146
						//pcreltotemp
	.lipcrel	l1
	add	r7
						// freereg r1
l17: # 

						//../DeMiSTify/firmware/minfat.c, line 148
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 148
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 66 with 130
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 148
						//call
						//pcreltotemp
	.lipcrel	_sd_read_sector
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 148
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 148
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l19
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 149
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 151
						//pcreltotemp
	.lipcrel	l1
	add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l19: # 
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 156
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 82)
	.liabs	_sector_buffer, 82
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 156
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l22,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//../DeMiSTify/firmware/minfat.c, line 156
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 156
						//call
						//pcreltotemp
	.lipcrel	___strncmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 156
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 156
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l21
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 157
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 74
						// extern (offset 0)
	.liabs	_fat32
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 158
						//pcreltotemp
	.lipcrel	l25
	add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l21: # 
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 158
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 54)
	.liabs	_sector_buffer, 54
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 158
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l26,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//../DeMiSTify/firmware/minfat.c, line 158
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 158
						//call
						//pcreltotemp
	.lipcrel	___strncmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 158
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 158
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l25
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 161
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 162
						//pcreltotemp
	.lipcrel	l1
	add	r7
						// freereg r1
l25: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 164
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sector_buffer, 510
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 164
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	85
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 164
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l27
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 164
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 511
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 164
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	170
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 164
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l28
		add	r7
l27: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 165
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 168
						//pcreltotemp
	.lipcrel	l1
	add	r7
l28: # 

						//../DeMiSTify/firmware/minfat.c, line 168
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sector_buffer
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 168
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
	.liconst	233
	cmp	r0

						//../DeMiSTify/firmware/minfat.c, line 168
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l31
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 168
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	235
	cmp	r0

						//../DeMiSTify/firmware/minfat.c, line 168
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l31
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 169
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 172
						//pcreltotemp
	.lipcrel	l1
	add	r7
						// freereg r1
l31: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 172
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sector_buffer, 11
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 172
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	//mt
				// flags 4a
	and	r1
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 172
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l33
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 172
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 74
						// extern
	.liabs	_sector_buffer, 12
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 172
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 172
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7
l33: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 173
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 176
						//pcreltotemp
	.lipcrel	l1
	add	r7
						// freereg r1
						// freereg r2
l34: # 

						//../DeMiSTify/firmware/minfat.c, line 176
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// extern
	.liabs	_sector_buffer, 13
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cluster_size, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2

			// required value found in r0
	mt	r0
				//return 0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 179
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 42 type 103
						// matchobj comparing flags 66 with 2
						// matchobj comparing flags 66 with 2
						// reg r4 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cluster_mask, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 184
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_sector_buffer, 14
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 184
						// (bitwise/arithmetic) 	//ops: 2, 6, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 66 with 2
						// matchobj comparing flags 66 with 2
						// reg r5 - only match against tmp
	mt	r5
	add	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 184
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 66
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_sector_buffer, 15
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 184
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 184
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 1
						// matchobj comparing flags 74 with 2
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)store type 3
	st	r6
						//save_temp done
						// matchobj comparing flags 98 with 98
						// Obsoleting t1
						// freereg r2
						// freereg r1
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 98
						// extern (offset 0)
	.liabs	_fat_start
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 98 with 130
						// matchobj comparing flags 98 with 130
						// deref 
	ld	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 185
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 98
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_sector_buffer, 16
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/minfat.c, line 187
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/minfat.c, line 187
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l37
		add	r7
						// freereg r3
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 189
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 2
						// matchobj comparing flags 130 with 2
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 2
						// matchobj comparing flags 130 with 2
						// extern (offset 82)
	.liabs	_sector_buffer, 82
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 189
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// matchobj comparing flags 130 with 2
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// matchobj comparing flags 130 with 2
						// static
	.liabs	l40,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//../DeMiSTify/firmware/minfat.c, line 189
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 2
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 189
						//call
						//pcreltotemp
	.lipcrel	___strncmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 189
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 189
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l39
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 190
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 192
						//pcreltotemp
	.lipcrel	l1
	add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l39: # 
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 193
						// (a/p assign)
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_root_directory_size, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r4
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 194
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sector_buffer, 37
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 194
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 194
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 36
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 194
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r2 - only match against tmp
	//mt
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 194
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 74
						// extern
	.liabs	_sector_buffer, 38
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 194
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	shl	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 194
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 194
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 74
						// extern
	.liabs	_sector_buffer, 39
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 194
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	24
	shl	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 194
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/minfat.c, line 195
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 195
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_fat_start
						//extern deref
						//sizemod based on type 0x103
	ldt
	add	r1
						// (save result) // isreg
						// (a/p assign)
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_data_start, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r1
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 196
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sector_buffer, 45
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 196
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r2
						// (save result) // isreg
						// allocreg r3

						//../DeMiSTify/firmware/minfat.c, line 196
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 44
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 196
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r3 - only match against tmp
	//mt
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r3
						// allocreg r3

						//../DeMiSTify/firmware/minfat.c, line 196
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 74
						// extern
	.liabs	_sector_buffer, 46
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 196
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	shl	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 196
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r3 - only match against tmp
	mt	r3
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r3
						// allocreg r3

						//../DeMiSTify/firmware/minfat.c, line 196
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 74
						// extern
	.liabs	_sector_buffer, 47
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 196
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	15
	and	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 196
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	24
	shl	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 196
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r3 - only match against tmp
	mt	r3
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r3
						// (a/p assign)
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_root_directory_cluster, 4
						// extern pe not varadr
						//sizemod based on type 0x3
	stmpdec	r2

						//../DeMiSTify/firmware/minfat.c, line 197
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	2
	sub	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 197
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 66 with 1
						// reg r4 - only match against tmp
	mt	r4
	mul	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 197
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						//Special case - addt
						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_root_directory_start
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 130
						// matchobj comparing flags 74 with 130
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 200
						//pcreltotemp
	.lipcrel	l41
	add	r7
l37: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 202
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sector_buffer, 18
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 202
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 202
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 17
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 202
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r2 - only match against tmp
	//mt
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/minfat.c, line 203
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	5
	shl	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 203
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	511
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 203
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	9
	shr	r1
						// (save result) // isreg
						// (a/p assign)
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_root_directory_size, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r1
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 206
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sector_buffer, 23
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 206
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r2
						// (save result) // isreg
						// allocreg r3

						//../DeMiSTify/firmware/minfat.c, line 206
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 22
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 206
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r3 - only match against tmp
	//mt
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r3

						//../DeMiSTify/firmware/minfat.c, line 209
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mul	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 209
						// (bitwise/arithmetic) 	//ops: 3, 7, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 62 type 103
						// deref 
	ld	r6
	add	r2
						// (save result) // isreg
						// (a/p assign)
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_root_directory_start, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r2

						//../DeMiSTify/firmware/minfat.c, line 210
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_root_directory_cluster
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

						//../DeMiSTify/firmware/minfat.c, line 213
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						//Special case - addt
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_data_start
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 130
						// matchobj comparing flags 74 with 130
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1
						// freereg r2
						// freereg r1
l41: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 217
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_current_directory_cluster
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_root_directory_cluster
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 218
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 2
						// matchobj comparing flags 130 with 130
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_current_directory_start
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_root_directory_start
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 219
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/minfat.c, line 219
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l43
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 219
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 42 type 103
						// matchobj comparing flags 66 with 2
						// matchobj comparing flags 66 with 130
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	4
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x6a
	mt	r0
	st	r6

						//../DeMiSTify/firmware/minfat.c, line 219
						//pcreltotemp
	.lipcrel	l44
	add	r7
l43: # 

						//../DeMiSTify/firmware/minfat.c, line 219
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// extern
	.liabs	_root_directory_size
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	4
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x6a
	mt	r0
	st	r6
l44: # 

						//../DeMiSTify/firmware/minfat.c, line 219
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_dir_entries
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 6a type 103
						// matchobj comparing flags 106 with 130
						// matchobj comparing flags 106 with 130
						// deref 
	ld	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 221
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 106
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 106
						// matchobj comparing flags 1 with 130
	.liconst	1
	mr	r0
l1: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-8
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata
	.align	4
l40:
	.byte	70
	.byte	65
	.byte	84
	.byte	51
	.byte	50
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.align	4
l7:
	.byte	70
	.byte	65
	.byte	84
	.byte	49
	.byte	54
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.align	4
l10:
	.byte	70
	.byte	65
	.byte	84
	.byte	51
	.byte	50
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.align	4
l22:
	.byte	70
	.byte	65
	.byte	84
	.byte	51
	.byte	50
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.align	4
l26:
	.byte	70
	.byte	65
	.byte	84
	.byte	49
	.byte	54
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_GetCluster
_GetCluster:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type 103
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 229
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 64
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/minfat.c, line 229
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l48
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 231
						// (bitwise/arithmetic) 	//ops: 3, 0, 4
						// (obj to r3) flags 42 type 103
						// matchobj comparing flags 66 with 2
						// reg r2 - only match against tmp
	mt	r2
	mr	r3
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	7
	shr	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 232
						// (bitwise/arithmetic) 	//ops: 3, 0, 6
						// (obj to r5) flags 42 type 103
						// matchobj comparing flags 66 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r5
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	127
	and	r5
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 235
						//pcreltotemp
	.lipcrel	l49
	add	r7
l48: # 

						//../DeMiSTify/firmware/minfat.c, line 236
						// (bitwise/arithmetic) 	//ops: 3, 0, 4
						// (obj to r3) flags 42 type 103
						// reg r2 - only match against tmp
	mt	r2
	mr	r3
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	8
	shr	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 237
						// (bitwise/arithmetic) 	//ops: 3, 0, 6
						// (obj to r5) flags 42 type 103
						// matchobj comparing flags 66 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r5
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	255
	and	r5
						// (save result) // isreg
l49: # 

						//../DeMiSTify/firmware/minfat.c, line 240
						// (bitwise/arithmetic) 	//ops: 0, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_fat_start
						//extern deref
						//sizemod based on type 0x103
	ldt
	add	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 241
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_cachedsector
						//extern deref
						//sizemod based on type 0x103
	ldt
	cmp	r3

						//../DeMiSTify/firmware/minfat.c, line 241
	cond	EQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l53
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 243
						// (a/p assign)
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cachedsector, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r3

						//../DeMiSTify/firmware/minfat.c, line 244
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 244
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 66 with 130
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 244
						//call
						//pcreltotemp
	.lipcrel	_sd_read_sector
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 244
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 244
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l53
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 245
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 246
						//pcreltotemp
	.lipcrel	l45
	add	r7
l53: # 

						//../DeMiSTify/firmware/minfat.c, line 248
						// (test)
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/minfat.c, line 248
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l55
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 248
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 66 with 2
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	4
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 248
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 248
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 5
						// (obj to r4) flags 6a type 103
						// matchobj comparing flags 106 with 130
						// deref 
	ld	r1
	mr	r4
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	268435455
	and	r4
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 248
						//pcreltotemp
	.lipcrel	l56
	add	r7
l55: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 248
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 103
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	2
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 248
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 248
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 106 with 130
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
l56: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 249
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 103
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
l45: # 
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

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
	.global	_FileOpen
_FileOpen:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-12
	add	r6
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
						//sizemod based on type 0xa
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 258
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0xa
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//../DeMiSTify/firmware/minfat.c, line 258
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 162 with 98
						// deref
						// var FIXME - deref?
						// reg - auto
	//nop
	mr	r0
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 259
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1

			// required value found in tmp
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 259
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 259
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	//mt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 259
						//call
						//pcreltotemp
	.lipcrel	_NextDirEntry
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 259
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//../DeMiSTify/firmware/minfat.c, line 259
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 66
						// reg r4 - only match against tmp
				// flags 42
	and	r4

						//../DeMiSTify/firmware/minfat.c, line 259
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l78
		add	r7
						// freereg r2
l77: # 
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 262
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_longfilename
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 262
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
	.liconst	28
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 262
						//call
						//pcreltotemp
	.lipcrel	___strcasecmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 262
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 262
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l78
		add	r7
						// freereg r3
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 265
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 74
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 265
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 66
						// var, auto|reg
						// matchobj comparing flags 1 with 66
	.liconst	28
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//../DeMiSTify/firmware/minfat.c, line 265
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	11
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 265
						//call
						//pcreltotemp
	.lipcrel	___strncasecmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 265
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 265
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l78
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 259
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
	stdec	r6

						//../DeMiSTify/firmware/minfat.c, line 259
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 1
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//../DeMiSTify/firmware/minfat.c, line 259
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 259
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 259
						//pcreltotemp
	.lipcrel	l70
	add	r7
l69: # 

						//../DeMiSTify/firmware/minfat.c, line 259
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
l70: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 259
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 259
						//call
						//pcreltotemp
	.lipcrel	_NextDirEntry
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 259
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//../DeMiSTify/firmware/minfat.c, line 259
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 66
						// reg r4 - only match against tmp
				// flags 42
	and	r4

						//../DeMiSTify/firmware/minfat.c, line 259
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l77
		add	r7
						// freereg r2
l78: # 
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 269
						// (test)
						// (obj to tmp) flags 42 type a
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//../DeMiSTify/firmware/minfat.c, line 269
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l73
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 271
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	28
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 271
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 162 with 74
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
	mr	r0
						// (obj to tmp) flags 6a type 103
						// deref 
	ld	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 272
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	26
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 272
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	8
						//sizemod based on type 0xa
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	4
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//../DeMiSTify/firmware/minfat.c, line 272
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 102
						// matchobj comparing flags 106 with 130
						// deref 
	hlf
	ld	r1
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x22
						// (prepobj tmp)
 						// matchobj comparing flags 162 with 106
						// matchobj comparing flags 162 with 106
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 106
						// matchobj comparing flags 1 with 106
	.liconst	4
	ldidx	r6
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 273
						// (test)
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/minfat.c, line 273
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l75
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 273
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	20
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 273
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 106 with 74
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 273
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	4095
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 273
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	16
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x6a
	mt	r0
	st	r6
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 273
						//pcreltotemp
	.lipcrel	l76
	add	r7
l75: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 273
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)store type 3
	st	r6
						//save_temp done
						// freereg r1
l76: # 

						//../DeMiSTify/firmware/minfat.c, line 273
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type 103
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 22 type 103
						// matchobj comparing flags 34 with 98
						// matchobj comparing flags 34 with 98
						// deref 
						// (prepobj tmp)
 						// matchobj comparing flags 162 with 98
						// matchobj comparing flags 162 with 98
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 98
						// matchobj comparing flags 1 with 98
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x103
	ldt
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x22
						// (prepobj tmp)
 						// matchobj comparing flags 162 with 34
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 34
	.liconst	4
	ldidx	r6
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness

						//../DeMiSTify/firmware/minfat.c, line 274
						// (a/p assign)
						// (prepobj r0)
 						// deref
						// var FIXME - deref?
						// reg - auto
	.liconst	8
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 275
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	12
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 275
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 103
						// matchobj comparing flags 34 with 1
						// deref 
						// (prepobj tmp)
 						// matchobj comparing flags 162 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 1
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 276
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 34
						// var, auto|reg
						// matchobj comparing flags 1 with 34
	.liconst	8
						//sizemod based on type 0xa
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 276
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 287
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 288
						//pcreltotemp
	.lipcrel	l57
	add	r7
l73: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 290
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	0
	mr	r0
l57: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-12
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
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.3
	.global	_FileNextSector
_FileNextSector:
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
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r5
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 258 with 64
						// var, auto|reg
						// matchobj comparing flags 1 with 64
	.liconst	16
	ldidx	r6
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 298
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 258
						// reg r5 - only match against tmp
	//mt
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size
						// allocreg r1
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 98 with 66
						// deref 
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 298
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 6
						//Special case - addt
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 98
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/minfat.c, line 299
						// (bitwise/arithmetic) 	//ops: 6, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 66 with 66
						// reg r5 - only match against tmp
	xor	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 299
						//comp
						// (obj to r2) flags 2 type 103
						// matchobj comparing flags 2 with 66
						// extern
	.liabs	_cluster_mask
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r2
						// matchobj comparing flags 1 with 2
	.liconst	-1
	xor	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 299
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 1
						// reg r2 - only match against tmp
	mt	r2
	and	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/minfat.c, line 299
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 74
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 299
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l85
		add	r7
l84: # 
						// allocreg r3

						//../DeMiSTify/firmware/minfat.c, line 301
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	4
	addt	r4
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 301
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 103
						// matchobj comparing flags 106 with 74
						// deref 
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 301
						//call
						//pcreltotemp
	.lipcrel	_GetCluster
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 301
						// Z disposable
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x6a
	mt	r0
	st	r3
						// freereg r3
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 302
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 106
						// matchobj comparing flags 2 with 106
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 98 with 2
						// matchobj comparing flags 98 with 106
						// deref 
	ld	r4
	add	r1
						// (save result) // isreg
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 98
						// matchobj comparing flags 74 with 106
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r4
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 299
						// (bitwise/arithmetic) 	//ops: 6, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 66 with 74
						// matchobj comparing flags 66 with 106
						// reg r5 - only match against tmp
	mt	r5
	xor	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 299
						//comp
						// (obj to r2) flags 2 type 103
						// matchobj comparing flags 2 with 66
						// matchobj comparing flags 2 with 106
						// extern
	.liabs	_cluster_mask
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r2
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 106
	.liconst	-1
	xor	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 299
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 1
						// matchobj comparing flags 74 with 106
						// reg r2 - only match against tmp
	mt	r2
	and	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/minfat.c, line 299
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 74
						// matchobj comparing flags 74 with 106
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 299
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l84
		add	r7
l85: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 304
						// Q1 disposable
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 3
	st	r4
						//save_temp done
						// freereg r1
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
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.4
	.global	_FileReadSector
_FileReadSector:
	stdec	r6
	mt	r3
	stdec	r6
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
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 312
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 64
						// extern
	.liabs	_data_start
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 313
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 313
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r2) flags 6a type 103
						// matchobj comparing flags 106 with 74
						// deref 
	ld	r2
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	2
	sub	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 313
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x103
	ldt
	mul	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 313
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 314
						// (bitwise/arithmetic) 	//ops: 0, 4, 3
						// (obj to r2) flags 2 type 103
						// matchobj comparing flags 2 with 74
						// extern
	.liabs	_cluster_mask
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r2
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 98 with 2
						// deref 
	ld	r3
	and	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 314
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 98
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/minfat.c, line 315
						// (a/p assign)
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cachedsector, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r1

						//../DeMiSTify/firmware/minfat.c, line 316
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	8
	ldidx	r6
	stdec	r6

						//../DeMiSTify/firmware/minfat.c, line 316
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 316
						//call
						//pcreltotemp
	.lipcrel	_sd_read_sector
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 316
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 316
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l89
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 317
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 318
						//pcreltotemp
	.lipcrel	l90
	add	r7
l89: # 

						//../DeMiSTify/firmware/minfat.c, line 319
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	1
	mr	r0
l90: # 
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
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.5
	.global	_FileWriteSector
_FileWriteSector:
	stdec	r6
	mt	r3
	stdec	r6
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
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 327
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 64
						// extern
	.liabs	_data_start
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 328
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 328
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r2) flags 6a type 103
						// matchobj comparing flags 106 with 74
						// deref 
	ld	r2
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	2
	sub	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 328
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x103
	ldt
	mul	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 328
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 329
						// (bitwise/arithmetic) 	//ops: 0, 4, 3
						// (obj to r2) flags 2 type 103
						// matchobj comparing flags 2 with 74
						// extern
	.liabs	_cluster_mask
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r2
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 98 with 2
						// deref 
	ld	r3
	and	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 329
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 98
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/minfat.c, line 330
						// (a/p assign)
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cachedsector, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r1

						//../DeMiSTify/firmware/minfat.c, line 331
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	8
	ldidx	r6
	stdec	r6

						//../DeMiSTify/firmware/minfat.c, line 331
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 331
						//call
						//pcreltotemp
	.lipcrel	_sd_write_sector
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 331
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 331
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l94
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 332
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 333
						//pcreltotemp
	.lipcrel	l95
	add	r7
l94: # 

						//../DeMiSTify/firmware/minfat.c, line 334
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	1
	mr	r0
l95: # 
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
	.section	.text.6
	.global	_FileSeek
_FileSeek:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
	add	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 64 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 442
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 64
						// var, auto|reg
						// matchobj comparing flags 1 with 64
	.liconst	20
	ldidx	r6
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 444
						// (bitwise/arithmetic) 	//ops: 4, 0, 5
						//Special case - addt
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	addt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 444
						//comp
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 66
						// extern
	.liabs	_cluster_mask
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// matchobj comparing flags 1 with 2
	.liconst	-1
	xor	r1
						// (save result) // isreg
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 444
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 66 with 98
						// reg r2 - only match against tmp
	//mt
	and	r1
						// (save result) // isreg
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 66 with 66
						// reg r2 - only match against tmp
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 444
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 66
						// var, auto|reg
						// matchobj comparing flags 1 with 66
	.liconst	20
	ldidx	r6
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 444
	cond	LE
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l99
		add	r7
						// freereg r2

						//../DeMiSTify/firmware/minfat.c, line 446
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 447
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r4
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 448
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 448
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	4
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 448
						// Q1 disposable
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 103
						// matchobj comparing flags 106 with 74
						// deref 
	ld	r2
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 451
						//pcreltotemp
	.lipcrel	l100
	add	r7
l99: # 
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 451
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 103
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	-512
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 451
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 6
						// (obj to r5) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	ldidx	r6
	mr	r5
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	mt	r1
	sub	r5
						// (save result) // isreg
						// freereg r1
l100: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 452
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 103
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	9
	shr	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 452
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

						//../DeMiSTify/firmware/minfat.c, line 452
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 74
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 452
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 453
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 453
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 130
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 453
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector
	add	r7
						// Deferred popping of 4 bytes (8 in total)
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 454
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 103
						// var, auto|reg
	.liconst	28
	ldidx	r6
						// (save temp)store type 3
	st	r4
						//save_temp done
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 2
	.liconst	-12
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
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.7
	.global	_FileRead
_FileRead:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-16
	add	r6
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
						//sizemod based on type 0xa
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 102 type a
						// var, auto|reg
	.liconst	32
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 258 with 258
						// var, auto|reg
						// matchobj comparing flags 1 with 258
	.liconst	36
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 463
						// (bitwise/arithmetic) 	//ops: 0, 0, 6
						// (obj to r5) flags 2 type a
						// matchobj comparing flags 2 with 258
						// var, auto|reg
						// matchobj comparing flags 1 with 258
	.liconst	8
						//sizemod based on type 0xa
	ldidx	r6
	mr	r5
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	add	r5
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 463
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// reg r3 - only match against tmp
	mt	r3
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 98 with 66
						// deref 
	ld	r5
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 463
						// (bitwise/arithmetic) 	//ops: 2, 7, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 98 with 98
						// deref 
	//nop
	add	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 463
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type a
						// matchobj comparing flags 2 with 98
						// var, auto|reg
						// matchobj comparing flags 1 with 98
	.liconst	8
						//sizemod based on type 0xa
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	add	r2
						// (save result) // isreg
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 6a type 103
						// matchobj comparing flags 106 with 130
						// matchobj comparing flags 106 with 130
						// deref 
	ld	r2
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/minfat.c, line 463
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 106
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 106
						// matchobj comparing flags 1 with 130
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 463
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l104
		add	r7
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 464
						// (bitwise/arithmetic) 	//ops: 0, 7, 4
						// (obj to r3) flags 2 type 103
						// matchobj comparing flags 2 with 2

			// required value found in tmp
	mr	r3
				//return 0
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 98 with 2
						// matchobj comparing flags 98 with 130
						// deref 
	ld	r6
	sub	r3
						// (save result) // isreg
l104: # 

						//../DeMiSTify/firmware/minfat.c, line 465
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r3

						//../DeMiSTify/firmware/minfat.c, line 465
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l106
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 466
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 1

			// required value found in tmp
	mr	r0
				//return 0

						//../DeMiSTify/firmware/minfat.c, line 467
						//pcreltotemp
	.lipcrel	l101
	add	r7
l106: # 

						//../DeMiSTify/firmware/minfat.c, line 467
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type 103
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 98
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
						// matchobj comparing flags 1 with 98
	.liconst	511
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/minfat.c, line 468
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2

			// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//../DeMiSTify/firmware/minfat.c, line 468
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l126
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 470
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	512
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/minfat.c, line 471
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 82 type a
						// matchobj comparing flags 130 with 130
						// matchobj comparing flags 130 with 2
						// (prepobj r2)
 						// matchobj comparing flags 130 with 130
						// matchobj comparing flags 130 with 2
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	mr	r2
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
	add	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 472
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2

			// required value found in r0
	mt	r0
				//return 0
	sgn
	cmp	r3

						//../DeMiSTify/firmware/minfat.c, line 472
	cond	GE
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l110
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 473
						// (a/p assign)
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	16
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r3
						// freereg r1
l110: # 

						//../DeMiSTify/firmware/minfat.c, line 474
						// (bitwise/arithmetic) 	//ops: 0, 7, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 98 with 2
						// matchobj comparing flags 98 with 2
						// deref 
	ld	r6
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x62
	mt	r0
	st	r5

						//../DeMiSTify/firmware/minfat.c, line 475
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 98
						// matchobj comparing flags 2 with 98
						// var, auto|reg
						// matchobj comparing flags 1 with 98
						// matchobj comparing flags 1 with 98
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
	sub	r3
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 476
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

			// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 476
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
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/minfat.c, line 476
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 130
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 476
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l126
		add	r7
l123: # 

						//../DeMiSTify/firmware/minfat.c, line 477
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type 101
						// deref 
	ldbinc	r2
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 477
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	1
	add	r4
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 476
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 476
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
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/minfat.c, line 476
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 130
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 476
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l123
		add	r7
l126: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 479
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r3

						//../DeMiSTify/firmware/minfat.c, line 479
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l127
		add	r7
						// freereg r1
l124: # 

						//../DeMiSTify/firmware/minfat.c, line 481
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 481
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 481
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 482
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	511
	sgn
	cmp	r3

						//../DeMiSTify/firmware/minfat.c, line 482
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l118
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 484
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 1
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 484
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 66
						// var, auto|reg
						// matchobj comparing flags 1 with 66
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 484
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 485
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	512
	add	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 486
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						// (obj to r0) flags 62 type 103
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r5
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 98
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
						// matchobj comparing flags 1 with 98
	.liconst	512
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x62
	mt	r0
	st	r5

						//../DeMiSTify/firmware/minfat.c, line 487
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
						// matchobj comparing flags 1 with 98
	.liconst	512
	sub	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 490
						//pcreltotemp
	.lipcrel	l128
	add	r7
l118: # 

						//../DeMiSTify/firmware/minfat.c, line 491
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 491
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 491
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 492
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 493
						// (bitwise/arithmetic) 	//ops: 4, 6, 1
						// (obj to r0) flags 42 type 103
						// matchobj comparing flags 66 with 130
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 98 with 66
						// matchobj comparing flags 98 with 66
						// deref 
	ld	r5
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x62
	mt	r0
	st	r5
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 494
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 98
						// matchobj comparing flags 66 with 98
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 494
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 98
	.liconst	1
	sub	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 494
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// matchobj comparing flags 74 with 98
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 494
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l128
		add	r7
l125: # 

						//../DeMiSTify/firmware/minfat.c, line 495
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type 101
						// deref 
	ldbinc	r2
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 495
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	1
	add	r4
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 494
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 494
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	1
	sub	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 494
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 494
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l125
		add	r7
l128: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 479
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r3

						//../DeMiSTify/firmware/minfat.c, line 479
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l124
		add	r7
						// freereg r1
l127: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 498
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	1
	mr	r0
l101: # 
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

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.8
	.global	_FileGetCh
_FileGetCh:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r3
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 504
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 64
						// const
						// matchobj comparing flags 1 with 64
	.liconst	16
	addt	r4
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 504
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 62 type 103
						// matchobj comparing flags 98 with 66
						// deref 
	ld	r3
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	511
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 504
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l132
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 506
						// (test)
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r3

						//../DeMiSTify/firmware/minfat.c, line 506
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l134
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 507
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	1
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 507
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 507
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l134: # 

						//../DeMiSTify/firmware/minfat.c, line 508
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 508
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 130
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 508
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l132: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 510
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	8
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 98 with 74
						// deref 
	ld	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 510
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 6a type 103
						// matchobj comparing flags 106 with 98
						// deref 
	ld	r1
	cmp	r2
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 510
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l136
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 511
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 512
						//pcreltotemp
	.lipcrel	l137
	add	r7
						// freereg r1
l136: # 

						//../DeMiSTify/firmware/minfat.c, line 513
						// Z disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	1
	addt	r2
						// (save temp)store type 3
	st	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 513
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 66 with 98
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	511
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 513
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 513
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 6a type 101
						// matchobj comparing flags 106 with 130
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
	mr	r0
						// freereg r1
l137: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
	ldinc	r6
	mr	r4

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
	.section	.text.9
	.global	_LoadFile
_LoadFile:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-20
	add	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 64 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r5
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 102 type a
						// matchobj comparing flags 258 with 64
						// var, auto|reg
						// matchobj comparing flags 1 with 64
	.liconst	36
	ldidx	r6
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r4
						// allocreg r3

						//../DeMiSTify/firmware/minfat.c, line 520
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 258
						// reg r2 - only match against tmp
	mt	r2
	stdec	r6

						//../DeMiSTify/firmware/minfat.c, line 520
						// (address)
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 66
						// var, auto|reg
						// matchobj comparing flags 1 with 66
	.liconst	4
	addt	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 520
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 130
						// reg r4 - only match against tmp
	//mt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 520
						//call
						//pcreltotemp
	.lipcrel	_FileOpen
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 520
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 520
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l141
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 522
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 525
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	cmp	r0

						//../DeMiSTify/firmware/minfat.c, line 525
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l147
		add	r7
						// freereg r1
l148: # 

						//../DeMiSTify/firmware/minfat.c, line 527
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 527
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 66
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 527
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 527
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 527
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l146
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 528
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 529
						//pcreltotemp
	.lipcrel	l138
	add	r7
						// freereg r1
l146: # 

						//../DeMiSTify/firmware/minfat.c, line 529
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 529
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 529
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 531
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	512
	add	r5
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 532
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1

			// required value found in tmp
	add	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 525
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r3

						//../DeMiSTify/firmware/minfat.c, line 525
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l148
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 536
						//pcreltotemp
	.lipcrel	l147
	add	r7
l141: # 

						//../DeMiSTify/firmware/minfat.c, line 538
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 539
						//pcreltotemp
	.lipcrel	l138
	add	r7
l147: # 

						//../DeMiSTify/firmware/minfat.c, line 540
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	1
	mr	r0
l138: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-20
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
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.a
	.global	_ChangeDirectoryByCluster
_ChangeDirectoryByCluster:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 103
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 546
						// (test)
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 66 with 64
						// reg r3 - only match against tmp
	//mt
				// flags 42
	and	r3

						//../DeMiSTify/firmware/minfat.c, line 546
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l153
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 548
						// (a/p assign)
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_current_directory_cluster, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r3
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 549
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						// (obj to r2) flags 42 type 103
						// reg r3 - only match against tmp
	mt	r3
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	2
	sub	r2
						// (save result) // isreg
						// allocreg r1
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 549
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	//mt
	mul	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 549
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 3, 1
						// (obj to r0) flags 2 type 103
						// extern
	.liabs	_data_start
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r0
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 2
						// matchobj comparing flags 74 with 2
						// reg r2 - only match against tmp
	mt	r2
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_current_directory_start, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r2

						//../DeMiSTify/firmware/minfat.c, line 550
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 103
						// matchobj comparing flags 74 with 130
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	4
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_dir_entries, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 553
						//pcreltotemp
	.lipcrel	l154
	add	r7
l153: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 554
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_current_directory_cluster
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_root_directory_cluster
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 555
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 2
						// matchobj comparing flags 130 with 130
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_current_directory_start
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_root_directory_start
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 556
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/minfat.c, line 556
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l156
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 556
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 130
	.liconst	4
	shl	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 556
						//pcreltotemp
	.lipcrel	l157
	add	r7
l156: # 

						//../DeMiSTify/firmware/minfat.c, line 556
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// extern
	.liabs	_root_directory_size
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	shl	r1
						// (save result) // isreg
l157: # 

						//../DeMiSTify/firmware/minfat.c, line 556
						// Q1 disposable
						// (a/p assign)
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_dir_entries, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r1
l154: # 
						// freereg r1
						// freereg r3
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
	.section	.text.b
	.global	_CurrentDirectory
_CurrentDirectory:
	stdec	r6
						// allocreg r2
						// allocreg r1
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_current_directory_cluster
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 563
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_root_directory_cluster
						//extern deref
						//sizemod based on type 0x103
	ldt
	cmp	r1

						//../DeMiSTify/firmware/minfat.c, line 563
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l161
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 563
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 563
						//pcreltotemp
	.lipcrel	l162
	add	r7
l161: # 

						//../DeMiSTify/firmware/minfat.c, line 563
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
l162: # 

						//../DeMiSTify/firmware/minfat.c, line 563
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 103
						// reg r2 - only match against tmp
	mt	r2
	mr	r0
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.c
	.global	_ChangeDirectory
_ChangeDirectory:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
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
						// allocreg r4
						// allocreg r3
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 569
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 64
						// const
						// matchobj comparing flags 1 with 64
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 570
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 1
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//../DeMiSTify/firmware/minfat.c, line 570
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l166
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 572
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	26
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 572
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 106 with 74
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 573
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 106
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/minfat.c, line 573
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l168
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 573
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	20
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 573
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 106 with 74
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 573
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 5
						// (obj to r4) flags 4a type 3
						// matchobj comparing flags 74 with 106
						// reg r1 - only match against tmp
	//mt
	mr	r4
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	4095
	and	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 573
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	16
	shl	r4
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 573
						//pcreltotemp
	.lipcrel	l169
	add	r7
l168: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 573
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
l169: # 

						//../DeMiSTify/firmware/minfat.c, line 573
						// (bitwise/arithmetic) 	//ops: 5, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 103
						// reg r4 - only match against tmp
	mt	r4
	or	r3
						// (save result) // isreg
						// freereg r1
l166: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 575
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 575
						//call
						//pcreltotemp
	.lipcrel	_ChangeDirectoryByCluster
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
	ldinc	r6
	mr	r4

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
	.section	.text.d
	.global	_NextDirEntry
_NextDirEntry:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-16
	add	r6
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	268435448
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 585
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

						//../DeMiSTify/firmware/minfat.c, line 587
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6

						//../DeMiSTify/firmware/minfat.c, line 587
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l177
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 589
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 2
						// static
	.liabs	l175,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 4
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 590
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						// static
	.liabs	l173,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_current_directory_start
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)store type 4
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 591
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 2
						// matchobj comparing flags 130 with 130
						// static
	.liabs	l174,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_current_directory_cluster
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)store type 4
	st	r0
						//save_temp done
l177: # 

						//../DeMiSTify/firmware/minfat.c, line 594
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 13)
	.liabs	_longfilename, 13
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
						// freereg r1
l216: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 599
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// extern
	.liabs	_dir_entries
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l175,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 599
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	mt	r1
	cmp	r2
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 599
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l219
		add	r7
l217: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 601
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 104
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	15
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 601
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l185
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 603
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_cachedsector
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l173,0
						//static deref
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 604
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 2
						// matchobj comparing flags 130 with 130
						//extern: comparing 0 with 0
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 2
						// matchobj comparing flags 130 with 130
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 604
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l173,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 604
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// matchobj comparing flags 130 with 2
						// matchobj comparing flags 130 with 130
						// static
	.liabs	l173,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	1
	addt	r1
						// (save temp)store type 4
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//../DeMiSTify/firmware/minfat.c, line 604
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 604
						//call
						//pcreltotemp
	.lipcrel	_sd_read_sector
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 605
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// static
	.liabs	l172,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// matchobj comparing flags 130 with 130
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)store type a
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 608
						//pcreltotemp
	.lipcrel	l186
	add	r7
l185: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 608
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l172,0
						//static deref
						//sizemod based on type 0xa
	ldt
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	32
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// static
	.liabs	l172,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
l186: # 

						//../DeMiSTify/firmware/minfat.c, line 609
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 104
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l175,0
						//static deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// static
	.liabs	l175,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//../DeMiSTify/firmware/minfat.c, line 611
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 22 type 101
						// matchobj comparing flags 34 with 130
						// deref 
						// (prepobj tmp)
 						// matchobj comparing flags 162 with 130
						// deref
						// var FIXME - deref?
						// static
	ldinc	r7
	.ref	l172,0
	ldt
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 611
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 34
						// reg r5 - only match against tmp
	//mt
				// flags 42
	and	r5

						//../DeMiSTify/firmware/minfat.c, line 611
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l200
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 611
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	229
	cmp	r5

						//../DeMiSTify/firmware/minfat.c, line 611
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l200
		add	r7
						// freereg r1
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l172,0
						//static deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 614
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	11
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 614
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 614
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	15
	cmp	r4

						//../DeMiSTify/firmware/minfat.c, line 614
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l191
		add	r7
						// freereg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 618
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	31
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 618
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	sub	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 618
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	13
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 619
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_longfilename
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 620
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
	.liconst	1
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 620
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 621
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	3
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 621
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 622
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	5
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 622
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 623
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	7
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 623
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 624
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	9
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 624
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 626
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	14
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 626
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 627
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	16
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 627
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 628
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	18
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 628
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 629
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	20
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 629
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 630
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	22
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 630
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 631
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	24
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 631
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 633
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	28
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 633
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 634
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	30
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 634
						// Q1 disposable
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 635
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 643
						//pcreltotemp
	.lipcrel	l200
	add	r7
l191: # 
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 644
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

						//../DeMiSTify/firmware/minfat.c, line 644
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l194
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 644
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
	.liconst	16
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 644
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l193
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 644
						// (test)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	ldidx	r6

						//../DeMiSTify/firmware/minfat.c, line 644
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l193
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 644
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 2
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 644
						//call
						// (obj to tmp) flags 22 type f
						// matchobj comparing flags 34 with 66
						// deref 
						// (prepobj tmp)
 						// matchobj comparing flags 162 with 66
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 66
	.liconst	32
	ldidx	r6
	exg	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 644
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 644
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l194
		add	r7
l193: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 647
						// (test)
						// (obj to tmp) flags 62 type 3
						// deref 
	ld	r6

						//../DeMiSTify/firmware/minfat.c, line 647
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l199
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 648
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 98
						// extern (offset 0)
	.liabs	_longfilename
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
l199: # 

						//../DeMiSTify/firmware/minfat.c, line 652
						//setreturn
						// (obj to r0) flags 2 type a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l172,0
						//static deref
						//sizemod based on type 0xa
	ldt
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 653
						//pcreltotemp
	.lipcrel	l170
	add	r7
l194: # 

						//../DeMiSTify/firmware/minfat.c, line 657
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 13)
	.liabs	_longfilename, 13
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

						//../DeMiSTify/firmware/minfat.c, line 659
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r6
						//save_temp done
						// freereg r1
l200: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 599
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// extern
	.liabs	_dir_entries
						//extern deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l175,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 599
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	mt	r1
	cmp	r2
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 599
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l217
		add	r7
l219: # 
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	268435448
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 665
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_current_directory_start
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/minfat.c, line 665
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l201
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 665
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/minfat.c, line 665
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l218
		add	r7
						// freereg r1
l201: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 667
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l174,0
						//static deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 667
						//call
						//pcreltotemp
	.lipcrel	_GetCluster
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 667
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// static
	.liabs	l174,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 130
						// matchobj comparing flags 130 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 2
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l174,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)store type 4
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 669
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/minfat.c, line 669
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l207
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 669
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 130
	.liconst	4
						//sizemod based on type 0x104
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 240 type 104
						// matchobj comparing flags 576 with 2
						// matchobj comparing flags 576 with 130
						// reg r4 - only match against tmp
	mt	r4
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 669
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 240 type 104
						// matchobj comparing flags 576 with 576
						// matchobj comparing flags 576 with 130
						// reg r4 - only match against tmp
	mt	r4
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 669
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l209
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 669
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 138 with 576
						// matchobj comparing flags 138 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 576
						// matchobj comparing flags 1 with 130
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 138
						// matchobj comparing flags 1 with 138
						// const
						// matchobj comparing flags 1 with 138
						// matchobj comparing flags 1 with 138
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 669
						//pcreltotemp
	.lipcrel	l208
	add	r7
l209: # 

						//../DeMiSTify/firmware/minfat.c, line 669
						// (a/p assign)
						// (prepobj r0)
 						// var, auto|reg
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 138
						// matchobj comparing flags 1 with 138
						// const
						// matchobj comparing flags 1 with 138
						// matchobj comparing flags 1 with 138
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 669
						//pcreltotemp
	.lipcrel	l208
	add	r7
						// freereg r1
l207: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 669
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x104
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	65528
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 669
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

			// required value found in tmp
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 669
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l212
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 669
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 138 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 138
						// matchobj comparing flags 1 with 138
						// const
						// matchobj comparing flags 1 with 138
						// matchobj comparing flags 1 with 138
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 669
						//pcreltotemp
	.lipcrel	l213
	add	r7
l212: # 

						//../DeMiSTify/firmware/minfat.c, line 669
						// (a/p assign)
						// (prepobj r0)
 						// var, auto|reg
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 138
						// matchobj comparing flags 1 with 138
						// const
						// matchobj comparing flags 1 with 138
						// matchobj comparing flags 1 with 138
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
l213: # 

						//../DeMiSTify/firmware/minfat.c, line 669
						// (a/p assign)
						// (prepobj r0)
 						// var, auto|reg
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags a type 3
						// matchobj comparing flags 10 with 138
						// matchobj comparing flags 10 with 138
						// var, auto|reg
						// matchobj comparing flags 1 with 138
						// matchobj comparing flags 1 with 138
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
l208: # 

						//../DeMiSTify/firmware/minfat.c, line 669
						// (test)
						// (obj to tmp) flags a type 3
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6

						//../DeMiSTify/firmware/minfat.c, line 669
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l218
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 672
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 10
						// var, auto|reg
						// matchobj comparing flags 1 with 10
	.liconst	4
						//sizemod based on type 0x104
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	sub	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 672
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x104
	ldt
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 672
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 2 type 104
						// extern
	.liabs	_data_start
						//extern deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 74 with 2
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// static
	.liabs	l173,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 673
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l175,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 4
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 676
						//pcreltotemp
	.lipcrel	l216
	add	r7
l218: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 678
						//setreturn
						// (obj to r0) flags 1 type a
						// const
	.liconst	0
	mr	r0
l170: # 
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	268435448
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 1
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
l172:
	.int	0
	.section	.bss
	.align	4
	.lcomm	l173,4
	.align	4
	.lcomm	l174,4
	.align	4
	.lcomm	l175,4
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.e
	.global	_FindByCluster
_FindByCluster:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 686
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 686
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 686
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	//mt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 686
						//call
						//pcreltotemp
	.lipcrel	_NextDirEntry
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 686
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r2

						//../DeMiSTify/firmware/minfat.c, line 686
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 66
						// reg r2 - only match against tmp
				// flags 42
	and	r2

						//../DeMiSTify/firmware/minfat.c, line 686
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l237
		add	r7
l236: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 689
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	26
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 689
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 106 with 74
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 690
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 106
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/minfat.c, line 690
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l229
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 690
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	20
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 690
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 106 with 74
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 690
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 6
						// (obj to r5) flags 4a type 3
						// matchobj comparing flags 74 with 106
						// reg r1 - only match against tmp
	//mt
	mr	r5
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	4095
	and	r5
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 690
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	16
	shl	r5
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 690
						//pcreltotemp
	.lipcrel	l230
	add	r7
l229: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 690
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done
l230: # 

						//../DeMiSTify/firmware/minfat.c, line 690
						// (bitwise/arithmetic) 	//ops: 6, 4, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r5 - only match against tmp
	mt	r5
	addt	r3
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 691
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 66
						// var, auto|reg
						// matchobj comparing flags 1 with 66
	.liconst	16
	ldidx	r6
	cmp	r3

						//../DeMiSTify/firmware/minfat.c, line 691
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l232
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 692
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 693
						//pcreltotemp
	.lipcrel	l220
	add	r7
l232: # 

						//../DeMiSTify/firmware/minfat.c, line 686
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// const
	.liconst	0
	stdec	r6

						//../DeMiSTify/firmware/minfat.c, line 686
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 1
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//../DeMiSTify/firmware/minfat.c, line 686
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l233
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 686
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 686
						//pcreltotemp
	.lipcrel	l234
	add	r7
l233: # 

						//../DeMiSTify/firmware/minfat.c, line 686
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
l234: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 686
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 686
						//call
						//pcreltotemp
	.lipcrel	_NextDirEntry
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 686
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r2

						//../DeMiSTify/firmware/minfat.c, line 686
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 66
						// reg r2 - only match against tmp
				// flags 42
	and	r2

						//../DeMiSTify/firmware/minfat.c, line 686
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l236
		add	r7
l237: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 694
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0
l220: # 
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

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.f
	.global	_ValidateDirectory
_ValidateDirectory:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-12
	add	r6
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
						//sizemod based on type 0x103
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 708
						// (test)
						// (obj to tmp) flags 2 type 103
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6

						//../DeMiSTify/firmware/minfat.c, line 708
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l240
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 708
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 2

			// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_root_directory_cluster
						//extern deref
						//sizemod based on type 0x103
	ldt
	cmp	r0

						//../DeMiSTify/firmware/minfat.c, line 708
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l241
		add	r7
l240: # 

						//../DeMiSTify/firmware/minfat.c, line 710
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	1
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 711
						//pcreltotemp
	.lipcrel	l238
	add	r7
						// freereg r1
l241: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 715
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x104
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	sub	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 715
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x104
	ldt
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 715
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 104
						// extern
	.liabs	_data_start
						//extern deref
						//sizemod based on type 0x104
	ldt
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 718
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 2
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 2
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6

						//../DeMiSTify/firmware/minfat.c, line 718
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 74 with 130
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 718
						//call
						//pcreltotemp
	.lipcrel	_sd_read_sector
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 718
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 718
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l245
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 719
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 720
						//pcreltotemp
	.lipcrel	l238
	add	r7
l245: # 

						//../DeMiSTify/firmware/minfat.c, line 720
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 721
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 4
	st	r6
						//save_temp done
l265: # 

						//../DeMiSTify/firmware/minfat.c, line 723
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 62 type 101
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 98
						// matchobj comparing flags 1 with 98
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/minfat.c, line 723
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

						//../DeMiSTify/firmware/minfat.c, line 723
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l256
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 723
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2

			// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	229
	cmp	r0

						//../DeMiSTify/firmware/minfat.c, line 723
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l256
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 725
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	11
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 725
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 74
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 725
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 106
						// const
						// matchobj comparing flags 1 with 106
	.liconst	16
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 725
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l256
		add	r7
						// freereg r2
						// freereg r3
						// allocreg r2

						//../DeMiSTify/firmware/minfat.c, line 727
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 727
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 66
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 66
						// static
	.liabs	l257,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//../DeMiSTify/firmware/minfat.c, line 727
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 727
						//call
						//pcreltotemp
	.lipcrel	___strncmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 727
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 727
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l256
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 729
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	26
	addt	r4
						// (save temp)store type a
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 729
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 106
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/minfat.c, line 729
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l259
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 729
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	20
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 729
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 106 with 74
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 729
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 6
						// (obj to r5) flags 4a type 3
						// matchobj comparing flags 74 with 106
						// reg r1 - only match against tmp
	//mt
	mr	r5
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	4095
	and	r5
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 729
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	16
	shl	r5
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 729
						//pcreltotemp
	.lipcrel	l260
	add	r7
l259: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 729
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
l260: # 
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 729
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2a type 102
						// deref 
						// (prepobj tmp)
 						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 729
						// (bitwise/arithmetic) 	//ops: 2, 6, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 42
						// reg r5 - only match against tmp
	mt	r5
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 729
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 104
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	12
	addt	r6
						//sizemod based on type 0x104
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 733
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 733
						//call
						//pcreltotemp
	.lipcrel	_ValidateDirectory
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 733
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 733
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l263
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 733
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 733
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 733
						//call
						//pcreltotemp
	.lipcrel	_FindByCluster
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 733
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/minfat.c, line 733
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l263
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/minfat.c, line 733
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/minfat.c, line 733
						//pcreltotemp
	.lipcrel	l264
	add	r7
l263: # 

						//../DeMiSTify/firmware/minfat.c, line 733
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)store type 3
	st	r6
						//save_temp done
l264: # 

						//../DeMiSTify/firmware/minfat.c, line 733
						//setreturn
						// (obj to r0) flags 6a type 3
						// deref 
	ld	r6
	mr	r0

						//../DeMiSTify/firmware/minfat.c, line 737
						//pcreltotemp
	.lipcrel	l238
	add	r7
l256: # 

						//../DeMiSTify/firmware/minfat.c, line 740
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// const
	.liconst	32
	add	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/minfat.c, line 722
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type 104
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 98
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
						// matchobj comparing flags 1 with 98
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//../DeMiSTify/firmware/minfat.c, line 722
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 62 type 104
						// matchobj comparing flags 98 with 98

			// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	16
	cmp	r0

						//../DeMiSTify/firmware/minfat.c, line 722
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l265
		add	r7

						//../DeMiSTify/firmware/minfat.c, line 742
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0
l238: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-12
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata
	.align	4
l257:
	.byte	46
	.byte	46
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.section	.data
	.align	4
	.global	_cachedsector
_cachedsector:
	.int	4294967295
	.section	.bss
	.align	4
	.global	_sector_buffer
	.comm	_sector_buffer,512
	.align	4
	.global	_cluster_size
	.comm	_cluster_size,4
	.align	4
	.global	_cluster_mask
	.comm	_cluster_mask,4
	.align	4
	.global	_fat32
	.comm	_fat32,4
	.align	4
	.global	_dir_entries
	.comm	_dir_entries,4
	.align	4
	.global	_longfilename
	.comm	_longfilename,261
	.align	4
	.global	_fat_start
	.comm	_fat_start,4
	.align	4
	.global	_data_start
	.comm	_data_start,4
	.align	4
	.global	_root_directory_cluster
	.comm	_root_directory_cluster,4
	.align	4
	.global	_root_directory_start
	.comm	_root_directory_start,4
	.align	4
	.global	_root_directory_size
	.comm	_root_directory_size,4
	.align	4
	.global	_current_directory_cluster
	.comm	_current_directory_cluster,4
	.align	4
	.global	_current_directory_start
	.comm	_current_directory_start,4
