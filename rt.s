	.file	"rt.bc"
	.text
	.globl	main
	.align	2
	.type	main,@function
	.ent	main                    # @main
main:
	.frame	r19,220632,r15
	.mask	0xfff88000
# BB#0:                                 # %invcont8
	ADDI      r1, r1, -220632
	SWI       r15, r1, 0
	SWI       r19, r1, 4
	ADDK      r19, r1, r0
	SWI       r20, r19, 52
	SWI       r21, r19, 48
	SWI       r22, r19, 44
	SWI       r23, r19, 40
	SWI       r24, r19, 36
	SWI       r25, r19, 32
	SWI       r26, r19, 28
	SWI       r27, r19, 24
	SWI       r28, r19, 20
	SWI       r29, r19, 16
	SWI       r30, r19, 12
	SWI       r31, r19, 8
	ADD       r3, r0, r0
	LOAD      r4, r3, 1
	SWI       r4, r19, 220564
	LOAD      r4, r3, 4
	SWI       r4, r19, 220536
	LOAD      r4, r3, 7
	SWI       r4, r19, 220576
	LOAD      r4, r3, 2
	LOAD      r4, r3, 5
	LOAD      r4, r3, 12
	LOAD      r5, r4, 0
	LOAD      r5, r4, 1
	LOAD      r4, r4, 2
	LOAD      r4, r3, 10
	LOAD      r5, r4, 0
	SWI       r5, r19, 220500
	LOAD      r5, r4, 1
	SWI       r5, r19, 220504
	LOAD      r5, r4, 2
	SWI       r5, r19, 220508
	ADDI      r5, r4, 9
	LOAD      r6, r5, 0
	LOAD      r6, r5, 1
	ADDI      r6, r4, 12
	LOAD      r5, r5, 2
	LOAD      r5, r6, 0
	SWI       r5, r19, 220580
	LOAD      r5, r6, 1
	SWI       r5, r19, 220584
	LOAD      r5, r6, 2
	SWI       r5, r19, 220588
	ADDI      r5, r4, 15
	LOAD      r6, r5, 0
	SWI       r6, r19, 220592
	LOAD      r6, r5, 1
	SWI       r6, r19, 220596
	LOAD      r5, r5, 2
	SWI       r5, r19, 220600
	ADDI      r4, r4, 18
	LOAD      r5, r4, 0
	SWI       r5, r19, 220604
	LOAD      r5, r4, 1
	SWI       r5, r19, 220608
	ADDI      r5, r19, 184
	LOAD      r4, r4, 2
	SWI       r4, r19, 220612
	ADDI      r4, r0, 5000
	ADD       r8, r0, r0
$BB0_1:                                 # %bb.i89
                                        # =>This Inner Loop Header: Depth=1
	SWI       r0, r5, 0
	SWI       r0, r5, 4
	SWI       r0, r5, 8
	SWI       r0, r5, 12
	SWI       r0, r5, 16
	SWI       r0, r5, 20
	ADDI      r6, r0, 1065353216
	SWI       r6, r5, 24
	ADDI      r7, r0, -1
	ADDK      r4, r4, r7
	ADDKC      r3, r3, r7
	ADDI      r7, r5, 44
	SWI       r6, r5, 28
	BITOR     r9, r4, r3
	SWI       r6, r5, 32
	CMP       r6, r8, r9
	bneid     r6, ($BB0_1)
	ADD       r5, r7, r0
# BB#2:                                 # %invcont11
	ADDI      r3, r0, 1259902592
	SWI       r3, r19, 220200
	SWI       r3, r19, 220196
	ADDI      r4, r0, -887581056
	SWI       r3, r19, 220192
	SWI       r4, r19, 220212
	SWI       r4, r19, 220208
	ADD       r3, r0, r0
	SWI       r4, r19, 220204
	LOAD      r4, r3, 28
	LOAD      r4, r3, 29
	LOAD      r4, r3, 8
	SWI       r4, r19, 220484
	ADDI      r1, r1, -4
	ADDI      r5, r0, -8
	BITAND    r4, r1, r5
	ADDI      r4, r4, -5940000
	SWI       r4, r19, 220548
	ADD       r1, r4, r0
	ADDI      r5, r0, 135000
	ADDI      r1, r1, 4
	ADD       r8, r0, r0
$BB0_3:                                 # %bb
                                        # =>This Inner Loop Header: Depth=1
	SWI       r0, r4, 0
	SWI       r0, r4, 4
	SWI       r0, r4, 8
	SWI       r0, r4, 12
	SWI       r0, r4, 16
	SWI       r0, r4, 20
	ADDI      r6, r0, 1065353216
	SWI       r6, r4, 24
	ADDI      r7, r0, -1
	ADDK      r5, r5, r7
	ADDKC      r3, r3, r7
	ADDI      r7, r4, 44
	SWI       r6, r4, 28
	BITOR     r9, r5, r3
	SWI       r6, r4, 32
	CMP       r6, r8, r9
	bneid     r6, ($BB0_3)
	ADD       r4, r7, r0
# BB#4:                                 # %bb13
	ADDI      r1, r1, -4
	ADDI      r4, r0, -8
	BITAND    r3, r1, r4
	ADDI      r3, r3, -1980000
	ADD       r1, r3, r0
	ADD       r4, r0, r0
	ADDI      r5, r0, 45000
	ADDI      r1, r1, 4
	ADD       r8, r0, r0
$BB0_5:                                 # %bb14
                                        # =>This Inner Loop Header: Depth=1
	SWI       r0, r3, 0
	SWI       r0, r3, 4
	SWI       r0, r3, 8
	SWI       r0, r3, 12
	SWI       r0, r3, 16
	SWI       r0, r3, 20
	ADDI      r6, r0, 1065353216
	SWI       r6, r3, 24
	ADDI      r7, r0, -1
	ADDK      r5, r5, r7
	ADDKC      r4, r4, r7
	ADDI      r7, r3, 44
	SWI       r6, r3, 28
	BITOR     r9, r5, r4
	SWI       r6, r3, 32
	CMP       r6, r8, r9
	bneid     r6, ($BB0_5)
	ADD       r3, r7, r0
# BB#6:                                 # %invcont18
	ADD       r3, r0, r0
	SWI       r3, r19, 220552
	LOAD      r3, r3, 12
	LOAD      r4, r3, 0
	LOAD      r5, r3, 1
	LOAD      r3, r3, 2
	SWI        r4, r19, 220216
	SWI        r5, r19, 220220
	SWI        r3, r19, 220224
	LWI       r3, r19, 220216
	SWI       r3, r19, 220520
	LWI       r3, r19, 220220
	SWI       r3, r19, 220524
	LWI       r3, r19, 220224
	SWI       r3, r19, 220528
	ADDI      r3, r0, 45000
	SWI       r3, r19, 220532
	brid      ($BB0_133)
	NOP    
$BB0_7:                                 # %bb.i112
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        #       Parent Loop BB0_131 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	RAND      r3
	ORI       r4, r0, -1090519040
	RAND      r5
	FPADD     r3, r3, r4
	FPADD     r5, r5, r4
	RAND      r6
	FPADD     r3, r3, r3
	FPADD     r5, r5, r5
	FPADD     r4, r6, r4
	FPADD     r4, r4, r4
	FPMUL     r6, r3, r3
	FPMUL     r7, r5, r5
	FPADD     r6, r6, r7
	FPMUL     r7, r4, r4
	FPADD     r6, r6, r7
	ORI       r7, r0, 1065353216
	ADDI      r8, r0, 1
	FPGT      r7, r6, r7
	bneid     r7, ($BB0_9)
	NOP    
# BB#8:                                 # %bb.i112
                                        #   in Loop: Header=BB0_7 Depth=4
	ADDI      r8, r0, 0
$BB0_9:                                 # %bb.i112
                                        #   in Loop: Header=BB0_7 Depth=4
	bneid     r8, ($BB0_7)
	NOP    
# BB#10:                                # %invcont41
                                        #   in Loop: Header=BB0_131 Depth=3
	FPINVSQRT r6, r6
	ORI       r7, r0, 1065353216
	FPDIV     r6, r7, r6
	FPDIV     r4, r4, r6
	SWI       r4, r19, 220452
	FPDIV     r5, r5, r6
	SWI       r5, r19, 220456
	FPDIV     r3, r3, r6
	SWI       r3, r19, 220460
	SWI        r4, r19, 220368
	SWI        r5, r19, 220364
	SWI        r3, r19, 220360
	ADD       r3, r0, r0
	ADDI      r4, r0, -1
	SWI       r4, r19, 220444
	ADDI      r4, r0, 1343554297
	SWI       r4, r19, 220464
$BB0_11:                                # %bb.i
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        #       Parent Loop BB0_131 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_103 Depth 5
                                        #           Child Loop BB0_75 Depth 5
                                        #           Child Loop BB0_106 Depth 5
                                        #           Child Loop BB0_12 Depth 5
	ADDI      r4, r0, 3
	ANDI      r4, r4, 31
	beqid     r4, ($BB0_13)
	ADDI      r3, r3, 0
$BB0_12:                                # %bb.i
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        #       Parent Loop BB0_131 Depth=3
                                        #         Parent Loop BB0_11 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_12)
	ADDK      r3, r3, r3
$BB0_13:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	LWI       r4, r19, 220484
	ADD       r4, r3, r4
	LOAD      r3, r4, 2
	LOAD      r5, r4, 1
	LOAD      r6, r4, 0
	LOAD      r7, r4, 5
	LOAD      r8, r4, 4
	LOAD      r9, r4, 3
	LWI       r10, r19, 220476
	FPRSUB    r6, r10, r6
	FPRSUB    r9, r10, r9
	LWI       r10, r19, 220460
	FPDIV     r6, r6, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r6, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_15)
	ADD       r20, r11, r0
# BB#14:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r20, r12, r0
$BB0_15:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r20, ($BB0_17)
	ADD       r10, r9, r0
# BB#16:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r10, r6, r0
$BB0_17:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_19)
	NOP    
# BB#18:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r6, r9, r0
$BB0_19:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r6, r9
	bneid     r20, ($BB0_21)
	ADD       r23, r11, r0
# BB#20:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r23, r12, r0
$BB0_21:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r22, ($BB0_23)
	ADD       r20, r11, r0
# BB#22:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r20, r12, r0
$BB0_23:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r23, ($BB0_25)
	NOP    
# BB#24:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r10, r21, r0
$BB0_25:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r20, ($BB0_27)
	NOP    
# BB#26:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r6, r9, r0
$BB0_27:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	FPGT      r9, r10, r6
	bneid     r9, ($BB0_29)
	NOP    
# BB#28:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r11, r12, r0
$BB0_29:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r11, ($BB0_101)
	NOP    
# BB#30:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r6, r9
	bneid     r9, ($BB0_32)
	NOP    
# BB#31:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADDI      r11, r0, 0
$BB0_32:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r11, ($BB0_101)
	NOP    
# BB#33:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	LWI       r9, r19, 220472
	FPRSUB    r5, r9, r5
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 220456
	FPDIV     r5, r5, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r5, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_35)
	ADD       r20, r11, r0
# BB#34:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r20, r12, r0
$BB0_35:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r20, ($BB0_37)
	ADD       r9, r8, r0
# BB#36:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r9, r5, r0
$BB0_37:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r20, ($BB0_39)
	NOP    
# BB#38:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r5, r8, r0
$BB0_39:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	FPGT      r8, r9, r10
	FPLT      r20, r5, r6
	bneid     r8, ($BB0_41)
	ADD       r21, r11, r0
# BB#40:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r21, r12, r0
$BB0_41:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r20, ($BB0_43)
	ADD       r8, r11, r0
# BB#42:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r8, r12, r0
$BB0_43:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r21, ($BB0_45)
	NOP    
# BB#44:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r9, r10, r0
$BB0_45:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r8, ($BB0_47)
	NOP    
# BB#46:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r5, r6, r0
$BB0_47:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	FPGT      r6, r9, r5
	bneid     r6, ($BB0_49)
	NOP    
# BB#48:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r11, r12, r0
$BB0_49:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r11, ($BB0_101)
	NOP    
# BB#50:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ORI       r6, r0, 0
	ADDI      r8, r0, 1
	FPLT      r6, r5, r6
	bneid     r6, ($BB0_52)
	NOP    
# BB#51:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADDI      r8, r0, 0
$BB0_52:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r8, ($BB0_101)
	NOP    
# BB#53:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	LWI       r6, r19, 220468
	FPRSUB    r3, r6, r3
	FPRSUB    r6, r6, r7
	LWI       r7, r19, 220452
	FPDIV     r3, r3, r7
	FPDIV     r6, r6, r7
	FPGT      r7, r3, r6
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_55)
	ADD       r11, r8, r0
# BB#54:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r11, r10, r0
$BB0_55:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r11, ($BB0_57)
	ADD       r7, r6, r0
# BB#56:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r7, r3, r0
$BB0_57:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r11, ($BB0_59)
	NOP    
# BB#58:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r3, r6, r0
$BB0_59:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	FPGT      r6, r7, r9
	FPLT      r11, r3, r5
	bneid     r6, ($BB0_61)
	ADD       r12, r8, r0
# BB#60:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r12, r10, r0
$BB0_61:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r11, ($BB0_63)
	ADD       r6, r8, r0
# BB#62:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r6, r10, r0
$BB0_63:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r6, ($BB0_65)
	NOP    
# BB#64:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r3, r5, r0
$BB0_65:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r12, ($BB0_67)
	NOP    
# BB#66:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r7, r9, r0
$BB0_67:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	FPGT      r5, r7, r3
	bneid     r5, ($BB0_69)
	NOP    
# BB#68:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r8, r10, r0
$BB0_69:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r8, ($BB0_101)
	NOP    
# BB#70:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ORI       r5, r0, 0
	ADDI      r6, r0, 1
	FPLT      r3, r3, r5
	bneid     r3, ($BB0_72)
	NOP    
# BB#71:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADDI      r6, r0, 0
$BB0_72:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=4
	bneid     r6, ($BB0_101)
	NOP    
# BB#73:                                # %bb1.i16
                                        #   in Loop: Header=BB0_11 Depth=4
	LOAD      r3, r4, 7
	LOAD      r4, r4, 6
	SWI       r4, r19, 220448
	ADD       r5, r0, r0
	CMP       r4, r5, r4
	bltid     r4, ($BB0_105)
	NOP    
# BB#74:                                # %bb6.preheader.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r4, r0, r0
	LWI       r5, r19, 220448
	CMP       r4, r4, r5
	bleid     r4, ($BB0_101)
	NOP    
$BB0_75:                                # %bb5.i17
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        #       Parent Loop BB0_131 Depth=3
                                        #         Parent Loop BB0_11 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	LOAD      r4, r3, 2
	LOAD      r5, r3, 1
	LOAD      r6, r3, 0
	LOAD      r7, r3, 5
	LOAD      r8, r3, 4
	LOAD      r9, r3, 3
	LOAD      r10, r3, 8
	LOAD      r11, r3, 7
	LOAD      r12, r3, 6
	FPRSUB    r7, r10, r7
	SWI       r7, r19, 220480
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r19, 220456
	FPMUL     r21, r20, r7
	LWI       r22, r19, 220452
	FPMUL     r23, r8, r22
	FPRSUB    r6, r12, r6
	LOAD      r24, r3, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r19, 220460
	FPMUL     r25, r23, r7
	FPRSUB    r4, r10, r4
	FPRSUB    r5, r11, r5
	LWI       r26, r19, 220476
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r6
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r3, 9
	LWI       r28, r19, 220472
	FPRSUB    r11, r11, r28
	FPMUL     r21, r21, r12
	FPRSUB    r20, r20, r23
	FPMUL     r23, r22, r5
	FPADD     r25, r25, r26
	FPMUL     r28, r5, r7
	FPMUL     r29, r8, r4
	FPMUL     r30, r9, r4
	FPMUL     r7, r6, r7
	MULI      r24, r24, 25
	LOAD      r27, r27, 9
	LWI       r31, r19, 220468
	FPRSUB    r10, r10, r31
	FPRSUB    r28, r29, r28
	FPRSUB    r7, r7, r30
	ADD       r24, r27, r24
	FPMUL     r22, r22, r11
	FPADD     r21, r21, r26
	FPMUL     r27, r20, r4
	FPADD     r23, r23, r25
	FPMUL     r25, r8, r6
	FPMUL     r29, r9, r5
	FPRSUB    r25, r29, r25
	LOAD      r29, r24, 6
	FPMUL     r20, r20, r10
	FPADD     r21, r22, r21
	ORI       r22, r0, 1065353216
	FPADD     r23, r27, r23
	FPMUL     r27, r28, r28
	FPMUL     r7, r7, r7
	FPDIV     r22, r22, r23
	FPADD     r20, r20, r21
	LOAD      r21, r24, 5
	FPADD     r7, r27, r7
	FPMUL     r21, r25, r25
	FPMUL     r20, r20, r22
	FPADD     r7, r7, r21
	LOAD      r21, r24, 4
	ADDI      r21, r0, 1
	FPLT      r23, r20, r26
	FPINVSQRT r7, r7
	bneid     r23, ($BB0_77)
	NOP    
# BB#76:                                # %bb5.i17
                                        #   in Loop: Header=BB0_75 Depth=5
	ADDI      r21, r0, 0
$BB0_77:                                # %bb5.i17
                                        #   in Loop: Header=BB0_75 Depth=5
	bneid     r21, ($BB0_100)
	NOP    
# BB#78:                                # %bb5.i17
                                        #   in Loop: Header=BB0_75 Depth=5
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_80)
	NOP    
# BB#79:                                # %bb5.i17
                                        #   in Loop: Header=BB0_75 Depth=5
	ADDI      r21, r0, 0
$BB0_80:                                # %bb5.i17
                                        #   in Loop: Header=BB0_75 Depth=5
	bneid     r21, ($BB0_100)
	NOP    
# BB#81:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	FPMUL     r7, r11, r4
	FPMUL     r21, r5, r10
	FPRSUB    r7, r21, r7
	FPMUL     r10, r6, r10
	FPMUL     r4, r12, r4
	FPRSUB    r4, r4, r10
	FPMUL     r5, r5, r12
	FPMUL     r6, r6, r11
	LWI       r10, r19, 220460
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r5, r6, r5
	LWI       r6, r19, 220456
	FPMUL     r6, r4, r6
	FPADD     r10, r10, r11
	LWI       r12, r19, 220452
	FPMUL     r12, r5, r12
	FPADD     r6, r6, r10
	FPADD     r6, r12, r6
	FPMUL     r6, r6, r22
	ADDI      r10, r0, 1
	FPLT      r11, r6, r11
	bneid     r11, ($BB0_83)
	NOP    
# BB#82:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	ADDI      r10, r0, 0
$BB0_83:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	bneid     r10, ($BB0_100)
	NOP    
# BB#84:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_75 Depth=5
	FPADD     r6, r6, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r6, r6, r10
	bneid     r6, ($BB0_86)
	NOP    
# BB#85:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_75 Depth=5
	ADDI      r11, r0, 0
$BB0_86:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_75 Depth=5
	bneid     r11, ($BB0_100)
	NOP    
# BB#87:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	FPMUL     r6, r7, r9
	ORI       r7, r0, 0
	FPMUL     r4, r4, r8
	FPADD     r6, r6, r7
	LWI       r8, r19, 220480
	FPMUL     r5, r5, r8
	FPADD     r4, r4, r6
	FPADD     r4, r5, r4
	FPMUL     r4, r4, r22
	FPUN      r5, r4, r7
	FPLE      r6, r4, r7
	BITOR     r5, r5, r6
	bneid     r5, ($BB0_89)
	ADDI      r7, r0, 1
# BB#88:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	ADDI      r7, r0, 0
$BB0_89:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	bneid     r7, ($BB0_100)
	NOP    
# BB#90:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	ORI       r5, r0, 981668463
	ADDI      r6, r0, 1
	FPLT      r5, r4, r5
	bneid     r5, ($BB0_92)
	NOP    
# BB#91:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	ADDI      r6, r0, 0
$BB0_92:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	bneid     r6, ($BB0_100)
	NOP    
# BB#93:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	ORI       r5, r0, 1343554297
	ADDI      r6, r0, 1
	FPEQ      r5, r4, r5
	bneid     r5, ($BB0_95)
	NOP    
# BB#94:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	ADDI      r6, r0, 0
$BB0_95:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	bneid     r6, ($BB0_100)
	NOP    
# BB#96:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	LWI       r5, r19, 220464
	SWI       r5, r19, 220372
	LWI        r5, r19, 220372
	FPUN      r6, r5, r4
	FPLE      r5, r5, r4
	BITOR     r5, r6, r5
	bneid     r5, ($BB0_98)
	ADDI      r7, r0, 1
# BB#97:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	ADDI      r7, r0, 0
$BB0_98:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	bneid     r7, ($BB0_100)
	NOP    
# BB#99:                                # %bb3.i.i.i
                                        #   in Loop: Header=BB0_75 Depth=5
	LOAD      r5, r3, 2
	LOAD      r6, r3, 1
	LOAD      r7, r3, 0
	LOAD      r8, r3, 5
	LOAD      r9, r3, 4
	LOAD      r10, r3, 3
	LOAD      r11, r3, 8
	LOAD      r12, r3, 7
	LOAD      r20, r3, 6
	LOAD      r21, r3, 10
	LOAD      r22, r3, 9
	SWI       r22, r19, 220492
	ADD       r22, r0, r0
	MULI      r21, r21, 25
	LOAD      r22, r22, 9
	ADD       r21, r22, r21
	LOAD      r22, r21, 6
	LOAD      r23, r21, 5
	LOAD      r21, r21, 4
	SWI        r22, r19, 220416
	SWI        r23, r19, 220420
	SWI        r21, r19, 220424
	SWI        r11, r19, 220404
	SWI        r12, r19, 220408
	SWI        r20, r19, 220412
	SWI        r8, r19, 220392
	SWI        r9, r19, 220396
	SWI        r10, r19, 220400
	SWI        r5, r19, 220380
	SWI        r6, r19, 220384
	SWI        r7, r19, 220388
	SWI        r4, r19, 220376
	ADDI      r4, r0, 1060320051
	SWI       r4, r19, 220488
	ADDI      r4, r0, 1050253722
	SWI       r4, r19, 220496
	LWI       r4, r19, 220376
	SWI       r4, r19, 220464
$BB0_100:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i
                                        #   in Loop: Header=BB0_75 Depth=5
	LWI       r4, r19, 220448
	ADDI      r4, r4, -1
	SWI       r4, r19, 220448
	ADDI      r3, r3, 11
	ADD       r5, r0, r0
	CMP       r4, r5, r4
	bneid     r4, ($BB0_75)
	NOP    
$BB0_101:                               # %bb7.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADD       r3, r0, r0
	LWI       r4, r19, 220444
	CMP       r3, r3, r4
	bltid     r3, ($BB0_108)
	NOP    
# BB#102:                               # %bb9.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r4, r19, 220444
	beqid     r3, ($BB0_104)
	ADDI      r4, r4, 0
$BB0_103:                               # %bb9.i
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        #       Parent Loop BB0_131 Depth=3
                                        #         Parent Loop BB0_11 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_103)
	ADDK      r4, r4, r4
$BB0_104:                               # %bb9.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADDI      r3, r19, 56
	LW        r3, r3, r4
	LWI       r4, r19, 220444
	ADDI      r4, r4, -1
	SWI       r4, r19, 220444
	brid      ($BB0_11)
	NOP    
$BB0_105:                               # %bb3.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r5, r19, 220444
	beqid     r4, ($BB0_107)
	ADDI      r5, r5, 0
$BB0_106:                               # %bb3.i
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        #       Parent Loop BB0_131 Depth=3
                                        #         Parent Loop BB0_11 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_106)
	ADDK      r5, r5, r5
$BB0_107:                               # %bb3.i
                                        #   in Loop: Header=BB0_11 Depth=4
	ADDI      r4, r19, 56
	LWI       r6, r19, 220444
	ADDI      r6, r6, 1
	SWI       r6, r19, 220444
	ADDI      r6, r3, 1
	ADD       r4, r4, r5
	brid      ($BB0_11)
	SWI       r6, r4, 4
$BB0_108:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_131 Depth=3
	LWI       r3, r19, 220464
	SWI       r3, r19, 220428
	LWI        r3, r19, 220428
	ORI       r4, r0, 1343554297
	FPUN      r5, r3, r4
	FPGE      r4, r3, r4
	BITOR     r4, r5, r4
	bneid     r4, ($BB0_110)
	ADDI      r6, r0, 1
# BB#109:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_131 Depth=3
	ADDI      r6, r0, 0
$BB0_110:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_131 Depth=3
	bneid     r6, ($BB0_131)
	NOP    
# BB#111:                               # %invcont60
                                        #   in Loop: Header=BB0_130 Depth=2
	ADDI      r4, r0, 2
	ANDI      r5, r4, 31
	LWI       r6, r19, 220516
	beqid     r5, ($BB0_113)
	ADDI      r6, r6, 0
$BB0_112:                               # %invcont60
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_112)
	ADDK      r6, r6, r6
$BB0_113:                               # %invcont60
                                        #   in Loop: Header=BB0_130 Depth=2
	ANDI      r5, r4, 31
	LWI       r7, r19, 220516
	beqid     r5, ($BB0_115)
	ADDI      r7, r7, 0
$BB0_114:                               # %invcont60
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_114)
	ADDK      r7, r7, r7
$BB0_115:                               # %invcont60
                                        #   in Loop: Header=BB0_130 Depth=2
	ANDI      r5, r4, 31
	LWI       r8, r19, 220516
	beqid     r5, ($BB0_117)
	ADDI      r8, r8, 0
$BB0_116:                               # %invcont60
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_116)
	ADDK      r8, r8, r8
$BB0_117:                               # %invcont60
                                        #   in Loop: Header=BB0_130 Depth=2
	LWI       r5, r19, 220460
	FPMUL     r5, r5, r3
	LWI       r9, r19, 220476
	FPADD     r5, r5, r9
	LWI       r9, r19, 220548
	SW         r5, r9, r7
	ANDI      r7, r4, 31
	LWI       r9, r19, 220516
	beqid     r7, ($BB0_119)
	ADDI      r9, r9, 0
$BB0_118:                               # %invcont60
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r7, r7, -1
	bneid     r7, ($BB0_118)
	ADDK      r9, r9, r9
$BB0_119:                               # %invcont60
                                        #   in Loop: Header=BB0_130 Depth=2
	LWI       r7, r19, 220456
	FPMUL     r7, r7, r3
	LWI       r10, r19, 220472
	FPADD     r7, r7, r10
	LWI       r10, r19, 220548
	ADD       r6, r10, r6
	SWI        r7, r6, 4
	ANDI      r6, r4, 31
	LWI       r10, r19, 220516
	beqid     r6, ($BB0_121)
	ADDI      r10, r10, 0
$BB0_120:                               # %invcont60
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r6, r6, -1
	bneid     r6, ($BB0_120)
	ADDK      r10, r10, r10
$BB0_121:                               # %invcont60
                                        #   in Loop: Header=BB0_130 Depth=2
	LWI       r6, r19, 220452
	FPMUL     r3, r6, r3
	LWI       r6, r19, 220468
	FPADD     r3, r6, r3
	LWI       r6, r19, 220548
	ADD       r6, r6, r8
	SWI        r3, r6, 8
	ANDI      r6, r4, 31
	LWI       r8, r19, 220516
	beqid     r6, ($BB0_123)
	ADDI      r8, r8, 0
$BB0_122:                               # %invcont60
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r6, r6, -1
	bneid     r6, ($BB0_122)
	ADDK      r8, r8, r8
$BB0_123:                               # %invcont60
                                        #   in Loop: Header=BB0_130 Depth=2
	LWI       r6, r19, 220548
	ADD       r6, r6, r9
	SWI       r0, r6, 12
	ANDI      r6, r4, 31
	LWI       r9, r19, 220516
	beqid     r6, ($BB0_125)
	ADDI      r9, r9, 0
$BB0_124:                               # %invcont60
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r6, r6, -1
	bneid     r6, ($BB0_124)
	ADDK      r9, r9, r9
$BB0_125:                               # %invcont60
                                        #   in Loop: Header=BB0_130 Depth=2
	LWI       r6, r19, 220548
	ADD       r6, r6, r10
	SWI       r0, r6, 16
	ANDI      r6, r4, 31
	LWI       r10, r19, 220516
	beqid     r6, ($BB0_127)
	ADDI      r10, r10, 0
$BB0_126:                               # %invcont60
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r6, r6, -1
	bneid     r6, ($BB0_126)
	ADDK      r10, r10, r10
$BB0_127:                               # %invcont60
                                        #   in Loop: Header=BB0_130 Depth=2
	LWI       r6, r19, 220548
	ADD       r6, r6, r8
	SWI       r0, r6, 20
	SWI        r5, r19, 220432
	SWI        r7, r19, 220436
	SWI        r3, r19, 220440
	ANDI      r3, r4, 31
	LWI       r4, r19, 220516
	beqid     r3, ($BB0_129)
	ADDI      r4, r4, 0
$BB0_128:                               # %invcont60
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_128)
	ADDK      r4, r4, r4
$BB0_129:                               # %invcont60
                                        #   in Loop: Header=BB0_130 Depth=2
	LWI       r3, r19, 220548
	ADD       r5, r3, r9
	ADD       r6, r3, r10
	LWI       r7, r19, 220488
	SWI       r7, r5, 24
	LWI       r5, r19, 220432
	SWI       r5, r19, 220520
	LWI       r5, r19, 220436
	SWI       r5, r19, 220524
	LWI       r5, r19, 220440
	SWI       r5, r19, 220528
	LWI       r5, r19, 220552
	ADDI      r5, r5, 1
	SWI       r5, r19, 220552
	ADD       r3, r3, r4
	SWI       r7, r6, 28
	SWI       r7, r3, 32
$BB0_130:                               # %bb67.outer
                                        #   Parent Loop BB0_133 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_131 Depth 3
                                        #         Child Loop BB0_11 Depth 4
                                        #           Child Loop BB0_103 Depth 5
                                        #           Child Loop BB0_75 Depth 5
                                        #           Child Loop BB0_106 Depth 5
                                        #           Child Loop BB0_12 Depth 5
                                        #         Child Loop BB0_7 Depth 4
                                        #       Child Loop BB0_128 Depth 3
                                        #       Child Loop BB0_126 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #       Child Loop BB0_122 Depth 3
                                        #       Child Loop BB0_120 Depth 3
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_112 Depth 3
	LWI       r3, r19, 220520
	SWI       r3, r19, 220228
	LWI       r3, r19, 220524
	SWI       r3, r19, 220232
	LWI       r3, r19, 220528
	SWI       r3, r19, 220236
	LWI       r3, r19, 220552
	MULI      r3, r3, 11
	SWI       r3, r19, 220516
	LWI        r3, r19, 220228
	SWI       r3, r19, 220476
	LWI        r3, r19, 220232
	SWI       r3, r19, 220472
	LWI        r3, r19, 220236
	SWI       r3, r19, 220468
$BB0_131:                               # %bb68
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_11 Depth 4
                                        #           Child Loop BB0_103 Depth 5
                                        #           Child Loop BB0_75 Depth 5
                                        #           Child Loop BB0_106 Depth 5
                                        #           Child Loop BB0_12 Depth 5
                                        #         Child Loop BB0_7 Depth 4
	LWI       r3, r19, 220512
	ADDI      r4, r0, 3
	ADDI      r5, r3, 1
	SWI       r5, r19, 220512
	CMP       r3, r4, r3
	bltid     r3, ($BB0_7)
	NOP    
# BB#132:                               # %bb69
                                        #   in Loop: Header=BB0_133 Depth=1
	LWI       r3, r19, 220532
	ADDI      r3, r3, -1
	SWI       r3, r19, 220532
	ADD       r4, r0, r0
	CMP       r3, r4, r3
	beqid     r3, ($BB0_134)
	NOP    
$BB0_133:                               # %bb67.outer.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_130 Depth 2
                                        #       Child Loop BB0_131 Depth 3
                                        #         Child Loop BB0_11 Depth 4
                                        #           Child Loop BB0_103 Depth 5
                                        #           Child Loop BB0_75 Depth 5
                                        #           Child Loop BB0_106 Depth 5
                                        #           Child Loop BB0_12 Depth 5
                                        #         Child Loop BB0_7 Depth 4
                                        #       Child Loop BB0_128 Depth 3
                                        #       Child Loop BB0_126 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #       Child Loop BB0_122 Depth 3
                                        #       Child Loop BB0_120 Depth 3
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_112 Depth 3
	ADD       r3, r0, r0
	SWI       r3, r19, 220512
	brid      ($BB0_130)
	NOP    
$BB0_134:                               # %invcont73
	LWI       r3, r19, 220564
	FPCONV    r4, r3
	SWI       r4, r19, 220568
	LWI       r4, r19, 220536
	FPCONV    r5, r4
	SWI       r5, r19, 220572
	ORI       r5, r0, -1073741824
	MUL       r3, r4, r3
	SWI       r3, r19, 220628
	ATOMIC_INC r4, 0
	CMP       r3, r4, r3
	bleid     r3, ($BB0_264)
	NOP    
# BB#135:                               # %invcont82.lr.ph
	LWI       r3, r19, 220568
	FPDIV     r3, r3, r5
	SWI       r3, r19, 220616
	LWI       r3, r19, 220572
	FPDIV     r3, r3, r5
	SWI       r3, r19, 220620
	ADD       r3, r0, r0
	SWI       r3, r19, 220624
$BB0_136:                               # %invcont82
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_137 Depth 2
                                        #       Child Loop BB0_138 Depth 3
                                        #       Child Loop BB0_229 Depth 3
                                        #       Child Loop BB0_201 Depth 3
                                        #       Child Loop BB0_232 Depth 3
                                        #     Child Loop BB0_237 Depth 2
	LWI       r3, r19, 220564
	DIV       r5, r3, r4
	MUL       r3, r5, r3
	SWI       r3, r19, 220556
	RSUB      r4, r3, r4
	SWI       r4, r19, 220560
	FPCONV    r4, r4
	FPCONV    r3, r5
	LWI       r5, r19, 220616
	FPADD     r4, r4, r5
	ORI       r5, r0, 1056964608
	LWI       r6, r19, 220620
	FPADD     r3, r3, r6
	FPADD     r4, r4, r5
	FPADD     r3, r3, r5
	FPADD     r4, r4, r4
	FPADD     r3, r3, r3
	LWI       r5, r19, 220572
	FPDIV     r3, r3, r5
	LWI       r5, r19, 220568
	FPDIV     r4, r4, r5
	LWI       r5, r19, 220604
	FPMUL     r5, r5, r3
	LWI       r6, r19, 220592
	FPMUL     r6, r6, r4
	LWI       r7, r19, 220608
	FPMUL     r7, r7, r3
	LWI       r8, r19, 220596
	FPMUL     r8, r8, r4
	FPADD     r5, r5, r6
	FPADD     r6, r7, r8
	LWI       r7, r19, 220600
	FPMUL     r4, r7, r4
	LWI       r7, r19, 220612
	FPMUL     r3, r7, r3
	LWI       r7, r19, 220580
	FPADD     r5, r5, r7
	LWI       r7, r19, 220584
	FPADD     r6, r6, r7
	FPADD     r4, r4, r3
	LWI       r3, r19, 220588
	FPADD     r4, r3, r4
	FPMUL     r3, r5, r5
	FPMUL     r7, r6, r6
	FPADD     r3, r3, r7
	FPMUL     r7, r4, r4
	FPADD     r3, r3, r7
	ORI       r7, r0, 1065353216
	FPINVSQRT r3, r3
	FPDIV     r3, r7, r3
	ADD       r7, r0, r0
	SWI       r7, r19, 220532
	FPDIV     r4, r4, r3
	SWI       r4, r19, 220452
	FPDIV     r4, r6, r3
	SWI       r4, r19, 220456
	FPDIV     r4, r5, r3
	SWI       r4, r19, 220460
	ADDI      r4, r0, -1
	SWI       r4, r19, 220444
	ADDI      r4, r0, 1343554297
	SWI       r4, r19, 220464
	SWI       r7, r19, 220472
	SWI       r7, r19, 220476
	SWI       r7, r19, 220480
	SWI       r7, r19, 220492
	SWI       r7, r19, 220488
	SWI       r7, r19, 220512
	SWI       r7, r19, 220496
	SWI       r7, r19, 220516
	SWI       r7, r19, 220524
	SWI       r7, r19, 220520
	SWI       r7, r19, 220528
$BB0_137:                               # %bb.i65
                                        #   Parent Loop BB0_136 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_138 Depth 3
                                        #       Child Loop BB0_229 Depth 3
                                        #       Child Loop BB0_201 Depth 3
                                        #       Child Loop BB0_232 Depth 3
	ADDI      r4, r0, 3
	ANDI      r4, r4, 31
	beqid     r4, ($BB0_139)
	ADDI      r7, r7, 0
$BB0_138:                               # %bb.i65
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_138)
	ADDK      r7, r7, r7
$BB0_139:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	LWI       r4, r19, 220484
	ADD       r4, r7, r4
	LOAD      r7, r4, 2
	LOAD      r3, r4, 1
	LOAD      r5, r4, 0
	LOAD      r6, r4, 5
	LOAD      r8, r4, 4
	LOAD      r9, r4, 3
	LWI       r10, r19, 220500
	FPRSUB    r5, r10, r5
	FPRSUB    r9, r10, r9
	LWI       r10, r19, 220460
	FPDIV     r5, r5, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r5, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_141)
	ADD       r20, r11, r0
# BB#140:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r20, r12, r0
$BB0_141:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r20, ($BB0_143)
	ADD       r10, r9, r0
# BB#142:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r10, r5, r0
$BB0_143:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_145)
	NOP    
# BB#144:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r5, r9, r0
$BB0_145:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r5, r9
	bneid     r20, ($BB0_147)
	ADD       r23, r11, r0
# BB#146:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r23, r12, r0
$BB0_147:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r22, ($BB0_149)
	ADD       r20, r11, r0
# BB#148:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r20, r12, r0
$BB0_149:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r23, ($BB0_151)
	NOP    
# BB#150:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r10, r21, r0
$BB0_151:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r20, ($BB0_153)
	NOP    
# BB#152:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r5, r9, r0
$BB0_153:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	FPGT      r9, r10, r5
	bneid     r9, ($BB0_155)
	NOP    
# BB#154:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r11, r12, r0
$BB0_155:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r11, ($BB0_227)
	NOP    
# BB#156:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r5, r9
	bneid     r9, ($BB0_158)
	NOP    
# BB#157:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	ADDI      r11, r0, 0
$BB0_158:                               # %bb.i65
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r11, ($BB0_227)
	NOP    
# BB#159:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	LWI       r9, r19, 220504
	FPRSUB    r3, r9, r3
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 220456
	FPDIV     r3, r3, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r3, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_161)
	ADD       r20, r11, r0
# BB#160:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r20, r12, r0
$BB0_161:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r20, ($BB0_163)
	ADD       r9, r8, r0
# BB#162:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r9, r3, r0
$BB0_163:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r20, ($BB0_165)
	NOP    
# BB#164:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r3, r8, r0
$BB0_165:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	FPGT      r8, r9, r10
	FPLT      r20, r3, r5
	bneid     r8, ($BB0_167)
	ADD       r21, r11, r0
# BB#166:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r21, r12, r0
$BB0_167:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r20, ($BB0_169)
	ADD       r8, r11, r0
# BB#168:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r8, r12, r0
$BB0_169:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r21, ($BB0_171)
	NOP    
# BB#170:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r9, r10, r0
$BB0_171:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r8, ($BB0_173)
	NOP    
# BB#172:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r3, r5, r0
$BB0_173:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	FPGT      r5, r9, r3
	bneid     r5, ($BB0_175)
	NOP    
# BB#174:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r11, r12, r0
$BB0_175:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r11, ($BB0_227)
	NOP    
# BB#176:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	ORI       r5, r0, 0
	ADDI      r8, r0, 1
	FPLT      r5, r3, r5
	bneid     r5, ($BB0_178)
	NOP    
# BB#177:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	ADDI      r8, r0, 0
$BB0_178:                               # %bb29.i.i71
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r8, ($BB0_227)
	NOP    
# BB#179:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	LWI       r5, r19, 220508
	FPRSUB    r7, r5, r7
	FPRSUB    r5, r5, r6
	LWI       r6, r19, 220452
	FPDIV     r7, r7, r6
	FPDIV     r5, r5, r6
	FPGT      r6, r7, r5
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r6, ($BB0_181)
	ADD       r11, r8, r0
# BB#180:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r11, r10, r0
$BB0_181:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r11, ($BB0_183)
	ADD       r6, r5, r0
# BB#182:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r6, r7, r0
$BB0_183:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r11, ($BB0_185)
	NOP    
# BB#184:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r7, r5, r0
$BB0_185:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	FPGT      r5, r6, r9
	FPLT      r11, r7, r3
	bneid     r5, ($BB0_187)
	ADD       r12, r8, r0
# BB#186:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r12, r10, r0
$BB0_187:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r11, ($BB0_189)
	ADD       r5, r8, r0
# BB#188:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r5, r10, r0
$BB0_189:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r5, ($BB0_191)
	NOP    
# BB#190:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r7, r3, r0
$BB0_191:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r12, ($BB0_193)
	NOP    
# BB#192:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r6, r9, r0
$BB0_193:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	FPGT      r3, r6, r7
	bneid     r3, ($BB0_195)
	NOP    
# BB#194:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r8, r10, r0
$BB0_195:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r8, ($BB0_227)
	NOP    
# BB#196:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	ORI       r3, r0, 0
	ADDI      r5, r0, 1
	FPLT      r7, r7, r3
	bneid     r7, ($BB0_198)
	NOP    
# BB#197:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	ADDI      r5, r0, 0
$BB0_198:                               # %bb62.i.i77
                                        #   in Loop: Header=BB0_137 Depth=2
	bneid     r5, ($BB0_227)
	NOP    
# BB#199:                               # %bb1.i78
                                        #   in Loop: Header=BB0_137 Depth=2
	LOAD      r7, r4, 7
	LOAD      r4, r4, 6
	SWI       r4, r19, 220448
	ADD       r3, r0, r0
	CMP       r4, r3, r4
	bltid     r4, ($BB0_231)
	NOP    
# BB#200:                               # %bb6.preheader.i79
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r4, r0, r0
	LWI       r3, r19, 220448
	CMP       r4, r4, r3
	bleid     r4, ($BB0_227)
	NOP    
$BB0_201:                               # %bb5.i92
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	LOAD      r4, r7, 2
	LOAD      r3, r7, 1
	LOAD      r5, r7, 0
	LOAD      r6, r7, 5
	LOAD      r8, r7, 4
	LOAD      r9, r7, 3
	LOAD      r10, r7, 8
	LOAD      r11, r7, 7
	LOAD      r12, r7, 6
	FPRSUB    r6, r10, r6
	SWI       r6, r19, 220468
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r19, 220456
	FPMUL     r21, r20, r6
	LWI       r22, r19, 220452
	FPMUL     r23, r8, r22
	FPRSUB    r5, r12, r5
	LOAD      r24, r7, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r19, 220460
	FPMUL     r25, r23, r6
	FPRSUB    r4, r10, r4
	FPRSUB    r3, r11, r3
	LWI       r26, r19, 220500
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r5
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r7, 9
	LWI       r28, r19, 220504
	FPRSUB    r11, r11, r28
	FPMUL     r21, r21, r12
	FPRSUB    r20, r20, r23
	FPMUL     r23, r22, r3
	FPADD     r25, r25, r26
	FPMUL     r28, r3, r6
	FPMUL     r29, r8, r4
	FPMUL     r30, r9, r4
	FPMUL     r6, r5, r6
	MULI      r24, r24, 25
	LOAD      r27, r27, 9
	LWI       r31, r19, 220508
	FPRSUB    r10, r10, r31
	FPRSUB    r28, r29, r28
	FPRSUB    r6, r6, r30
	ADD       r24, r27, r24
	FPMUL     r22, r22, r11
	FPADD     r21, r21, r26
	FPMUL     r27, r20, r4
	FPADD     r23, r23, r25
	FPMUL     r25, r8, r5
	FPMUL     r29, r9, r3
	FPRSUB    r25, r29, r25
	LOAD      r29, r24, 6
	FPMUL     r20, r20, r10
	FPADD     r21, r22, r21
	ORI       r22, r0, 1065353216
	FPADD     r23, r27, r23
	FPMUL     r27, r28, r28
	FPMUL     r6, r6, r6
	FPDIV     r22, r22, r23
	FPADD     r20, r20, r21
	LOAD      r21, r24, 5
	FPADD     r6, r27, r6
	FPMUL     r21, r25, r25
	FPMUL     r20, r20, r22
	FPADD     r6, r6, r21
	LOAD      r21, r24, 4
	ADDI      r21, r0, 1
	FPLT      r23, r20, r26
	FPINVSQRT r6, r6
	bneid     r23, ($BB0_203)
	NOP    
# BB#202:                               # %bb5.i92
                                        #   in Loop: Header=BB0_201 Depth=3
	ADDI      r21, r0, 0
$BB0_203:                               # %bb5.i92
                                        #   in Loop: Header=BB0_201 Depth=3
	bneid     r21, ($BB0_226)
	NOP    
# BB#204:                               # %bb5.i92
                                        #   in Loop: Header=BB0_201 Depth=3
	ORI       r6, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r6, r20, r6
	bneid     r6, ($BB0_206)
	NOP    
# BB#205:                               # %bb5.i92
                                        #   in Loop: Header=BB0_201 Depth=3
	ADDI      r21, r0, 0
$BB0_206:                               # %bb5.i92
                                        #   in Loop: Header=BB0_201 Depth=3
	bneid     r21, ($BB0_226)
	NOP    
# BB#207:                               # %bb73.i.i93
                                        #   in Loop: Header=BB0_201 Depth=3
	FPMUL     r6, r11, r4
	FPMUL     r21, r3, r10
	FPRSUB    r6, r21, r6
	FPMUL     r10, r5, r10
	FPMUL     r4, r12, r4
	FPRSUB    r4, r4, r10
	FPMUL     r3, r3, r12
	FPMUL     r5, r5, r11
	LWI       r10, r19, 220460
	FPMUL     r10, r6, r10
	ORI       r11, r0, 0
	FPRSUB    r3, r5, r3
	LWI       r5, r19, 220456
	FPMUL     r5, r4, r5
	FPADD     r10, r10, r11
	LWI       r12, r19, 220452
	FPMUL     r12, r3, r12
	FPADD     r5, r5, r10
	FPADD     r5, r12, r5
	FPMUL     r5, r5, r22
	ADDI      r10, r0, 1
	FPLT      r11, r5, r11
	bneid     r11, ($BB0_209)
	NOP    
# BB#208:                               # %bb73.i.i93
                                        #   in Loop: Header=BB0_201 Depth=3
	ADDI      r10, r0, 0
$BB0_209:                               # %bb73.i.i93
                                        #   in Loop: Header=BB0_201 Depth=3
	bneid     r10, ($BB0_226)
	NOP    
# BB#210:                               # %bb94.i55.i94
                                        #   in Loop: Header=BB0_201 Depth=3
	FPADD     r5, r5, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r5, r5, r10
	bneid     r5, ($BB0_212)
	NOP    
# BB#211:                               # %bb94.i55.i94
                                        #   in Loop: Header=BB0_201 Depth=3
	ADDI      r11, r0, 0
$BB0_212:                               # %bb94.i55.i94
                                        #   in Loop: Header=BB0_201 Depth=3
	bneid     r11, ($BB0_226)
	NOP    
# BB#213:                               # %bb96.i.i97
                                        #   in Loop: Header=BB0_201 Depth=3
	FPMUL     r5, r6, r9
	ORI       r6, r0, 0
	FPMUL     r4, r4, r8
	FPADD     r5, r5, r6
	LWI       r8, r19, 220468
	FPMUL     r3, r3, r8
	FPADD     r4, r4, r5
	FPADD     r4, r3, r4
	FPMUL     r4, r4, r22
	FPUN      r3, r4, r6
	FPLE      r5, r4, r6
	BITOR     r3, r3, r5
	bneid     r3, ($BB0_215)
	ADDI      r6, r0, 1
# BB#214:                               # %bb96.i.i97
                                        #   in Loop: Header=BB0_201 Depth=3
	ADDI      r6, r0, 0
$BB0_215:                               # %bb96.i.i97
                                        #   in Loop: Header=BB0_201 Depth=3
	bneid     r6, ($BB0_226)
	NOP    
# BB#216:                               # %bb96.i.i97
                                        #   in Loop: Header=BB0_201 Depth=3
	ORI       r3, r0, 981668463
	ADDI      r5, r0, 1
	FPLT      r3, r4, r3
	bneid     r3, ($BB0_218)
	NOP    
# BB#217:                               # %bb96.i.i97
                                        #   in Loop: Header=BB0_201 Depth=3
	ADDI      r5, r0, 0
$BB0_218:                               # %bb96.i.i97
                                        #   in Loop: Header=BB0_201 Depth=3
	bneid     r5, ($BB0_226)
	NOP    
# BB#219:                               # %bb96.i.i97
                                        #   in Loop: Header=BB0_201 Depth=3
	ORI       r3, r0, 1343554297
	ADDI      r5, r0, 1
	FPEQ      r3, r4, r3
	bneid     r3, ($BB0_221)
	NOP    
# BB#220:                               # %bb96.i.i97
                                        #   in Loop: Header=BB0_201 Depth=3
	ADDI      r5, r0, 0
$BB0_221:                               # %bb96.i.i97
                                        #   in Loop: Header=BB0_201 Depth=3
	bneid     r5, ($BB0_226)
	NOP    
# BB#222:                               # %bb2.i.i.i98
                                        #   in Loop: Header=BB0_201 Depth=3
	LWI       r3, r19, 220464
	SWI       r3, r19, 220240
	LWI        r3, r19, 220240
	FPUN      r5, r3, r4
	FPLE      r3, r3, r4
	BITOR     r3, r5, r3
	bneid     r3, ($BB0_224)
	ADDI      r6, r0, 1
# BB#223:                               # %bb2.i.i.i98
                                        #   in Loop: Header=BB0_201 Depth=3
	ADDI      r6, r0, 0
$BB0_224:                               # %bb2.i.i.i98
                                        #   in Loop: Header=BB0_201 Depth=3
	bneid     r6, ($BB0_226)
	NOP    
# BB#225:                               # %bb3.i.i.i149
                                        #   in Loop: Header=BB0_201 Depth=3
	LOAD      r3, r7, 2
	LOAD      r5, r7, 1
	LOAD      r6, r7, 0
	LOAD      r8, r7, 5
	LOAD      r9, r7, 4
	LOAD      r10, r7, 3
	LOAD      r11, r7, 8
	LOAD      r12, r7, 7
	LOAD      r20, r7, 6
	LOAD      r21, r7, 10
	LOAD      r22, r7, 9
	SWI       r22, r19, 220536
	ADD       r22, r0, r0
	MULI      r21, r21, 25
	LOAD      r22, r22, 9
	ADD       r21, r22, r21
	LOAD      r22, r21, 6
	LOAD      r23, r21, 5
	LOAD      r21, r21, 4
	SWI        r22, r19, 220284
	SWI        r23, r19, 220288
	SWI        r21, r19, 220292
	SWI        r11, r19, 220272
	SWI        r12, r19, 220276
	SWI        r20, r19, 220280
	SWI        r8, r19, 220260
	SWI        r9, r19, 220264
	SWI        r10, r19, 220268
	SWI        r3, r19, 220248
	SWI        r5, r19, 220252
	SWI        r6, r19, 220256
	SWI        r4, r19, 220244
	ADDI      r4, r0, 1060320051
	SWI       r4, r19, 220540
	ADDI      r4, r0, 1050253722
	SWI       r4, r19, 220544
	LWI       r4, r19, 220284
	SWI       r4, r19, 220532
	LWI       r4, r19, 220288
	SWI       r4, r19, 220472
	LWI       r4, r19, 220292
	SWI       r4, r19, 220476
	LWI       r4, r19, 220272
	SWI       r4, r19, 220480
	LWI       r4, r19, 220276
	SWI       r4, r19, 220492
	LWI       r4, r19, 220280
	SWI       r4, r19, 220488
	LWI       r4, r19, 220260
	SWI       r4, r19, 220512
	LWI       r4, r19, 220264
	SWI       r4, r19, 220496
	LWI       r4, r19, 220268
	SWI       r4, r19, 220516
	LWI       r4, r19, 220248
	SWI       r4, r19, 220524
	LWI       r4, r19, 220252
	SWI       r4, r19, 220520
	LWI       r4, r19, 220256
	SWI       r4, r19, 220528
	LWI       r4, r19, 220244
	SWI       r4, r19, 220464
$BB0_226:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i151
                                        #   in Loop: Header=BB0_201 Depth=3
	LWI       r4, r19, 220448
	ADDI      r4, r4, -1
	SWI       r4, r19, 220448
	ADDI      r7, r7, 11
	ADD       r3, r0, r0
	CMP       r4, r3, r4
	bneid     r4, ($BB0_201)
	NOP    
$BB0_227:                               # %bb7.i152
                                        #   in Loop: Header=BB0_137 Depth=2
	ADD       r4, r0, r0
	LWI       r7, r19, 220444
	CMP       r4, r4, r7
	bltid     r4, ($BB0_234)
	NOP    
# BB#228:                               # %bb9.i153
                                        #   in Loop: Header=BB0_137 Depth=2
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r7, r19, 220444
	beqid     r4, ($BB0_230)
	ADDI      r7, r7, 0
$BB0_229:                               # %bb9.i153
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_229)
	ADDK      r7, r7, r7
$BB0_230:                               # %bb9.i153
                                        #   in Loop: Header=BB0_137 Depth=2
	ADDI      r4, r19, 56
	LW        r7, r4, r7
	LWI       r4, r19, 220444
	ADDI      r4, r4, -1
	SWI       r4, r19, 220444
	brid      ($BB0_137)
	NOP    
$BB0_231:                               # %bb3.i81
                                        #   in Loop: Header=BB0_137 Depth=2
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r3, r19, 220444
	beqid     r4, ($BB0_233)
	ADDI      r3, r3, 0
$BB0_232:                               # %bb3.i81
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_232)
	ADDK      r3, r3, r3
$BB0_233:                               # %bb3.i81
                                        #   in Loop: Header=BB0_137 Depth=2
	ADDI      r4, r19, 56
	LWI       r5, r19, 220444
	ADDI      r5, r5, 1
	SWI       r5, r19, 220444
	ADDI      r5, r7, 1
	ADD       r4, r4, r3
	brid      ($BB0_137)
	SWI       r5, r4, 4
$BB0_234:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit154
                                        #   in Loop: Header=BB0_136 Depth=1
	LWI       r7, r19, 220524
	SWI       r7, r19, 220332
	LWI       r7, r19, 220512
	SWI       r7, r19, 220320
	LWI       r7, r19, 220480
	SWI       r7, r19, 220308
	LWI       r7, r19, 220492
	SWI       r7, r19, 220312
	LWI       r7, r19, 220528
	SWI       r7, r19, 220340
	LWI       r7, r19, 220516
	SWI       r7, r19, 220328
	LWI       r7, r19, 220488
	SWI       r7, r19, 220316
	LWI       r7, r19, 220520
	SWI       r7, r19, 220336
	LWI       r7, r19, 220496
	SWI       r7, r19, 220324
	LWI        r4, r19, 220332
	LWI        r3, r19, 220320
	LWI        r5, r19, 220308
	LWI        r6, r19, 220312
	LWI        r7, r19, 220324
	LWI        r8, r19, 220336
	LWI        r9, r19, 220340
	LWI        r10, r19, 220328
	LWI        r11, r19, 220316
	FPRSUB    r4, r3, r4
	FPRSUB    r6, r6, r7
	FPRSUB    r9, r10, r9
	FPRSUB    r3, r5, r3
	FPRSUB    r5, r11, r10
	FPRSUB    r7, r7, r8
	FPMUL     r8, r7, r3
	FPMUL     r10, r6, r4
	FPMUL     r4, r5, r4
	FPMUL     r3, r9, r3
	LWI       r11, r19, 220464
	SWI       r11, r19, 220344
	FPRSUB    r8, r10, r8
	FPRSUB    r4, r3, r4
	FPMUL     r3, r6, r9
	FPMUL     r5, r5, r7
	FPRSUB    r3, r5, r3
	LWI        r5, r19, 220344
	FPMUL     r6, r8, r8
	FPMUL     r4, r4, r4
	LWI       r7, r19, 220476
	SWI       r7, r19, 220304
	LWI       r7, r19, 220472
	SWI       r7, r19, 220300
	LWI       r7, r19, 220532
	SWI       r7, r19, 220296
	FPADD     r4, r6, r4
	FPMUL     r3, r3, r3
	LWI        r20, r19, 220304
	LWI        r21, r19, 220300
	LWI        r22, r19, 220296
	ORI       r6, r0, 0
	FPADD     r4, r4, r3
	ADDI      r3, r0, 1
	FPINVSQRT r4, r4
	LWI       r4, r19, 220552
	CMP       r4, r3, r4
	bgeid     r4, ($BB0_236)
	NOP    
# BB#235:                               #   in Loop: Header=BB0_136 Depth=1
	ADD       r23, r6, r0
	brid      ($BB0_242)
	ADD       r24, r6, r0
$BB0_236:                               #   in Loop: Header=BB0_136 Depth=1
	LWI       r4, r19, 220460
	FPMUL     r4, r4, r5
	LWI       r23, r19, 220456
	FPMUL     r23, r23, r5
	LWI       r24, r19, 220452
	FPMUL     r24, r24, r5
	LWI       r3, r19, 220500
	FPADD     r4, r4, r3
	LWI       r3, r19, 220504
	FPADD     r3, r23, r3
	LWI       r23, r19, 220508
	FPADD     r5, r23, r24
	LWI       r7, r19, 220548
	LWI       r8, r19, 220624
	LWI       r9, r19, 220552
	ADD       r23, r6, r0
	ADD       r24, r6, r0
$BB0_237:                               # %bb.i36
                                        #   Parent Loop BB0_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	LWI       r10, r7, 8
	SWI       r10, r19, 220352
	LWI        r10, r7, 4
	LWI        r11, r7, 0
	FPRSUB    r12, r4, r11
	FPRSUB    r25, r3, r10
	LWI        r26, r19, 220352
	FPRSUB    r26, r5, r26
	FPMUL     r12, r12, r12
	FPMUL     r25, r25, r25
	FPADD     r12, r12, r25
	FPMUL     r25, r26, r26
	SWI        r10, r19, 220356
	SWI        r11, r19, 220348
	FPADD     r10, r12, r25
	ORI       r11, r0, 1056629063
	FPUN      r12, r10, r11
	FPGE      r10, r10, r11
	BITOR     r10, r12, r10
	bneid     r10, ($BB0_239)
	ADDI      r11, r0, 1
# BB#238:                               # %bb.i36
                                        #   in Loop: Header=BB0_237 Depth=2
	ADDI      r11, r0, 0
$BB0_239:                               # %bb.i36
                                        #   in Loop: Header=BB0_237 Depth=2
	bneid     r11, ($BB0_241)
	NOP    
# BB#240:                               # %bb45.i
                                        #   in Loop: Header=BB0_237 Depth=2
	LWI        r10, r7, 24
	LWI        r11, r7, 28
	LWI        r12, r7, 32
	FPADD     r24, r24, r10
	FPADD     r23, r23, r11
	FPADD     r6, r6, r12
$BB0_241:                               # %bb46.i
                                        #   in Loop: Header=BB0_237 Depth=2
	ADDI      r10, r0, -1
	ADDK      r9, r9, r10
	ADDKC      r8, r8, r10
	ADDI      r7, r7, 44
	ADD       r10, r0, r0
	BITOR     r11, r9, r8
	CMP       r10, r10, r11
	bneid     r10, ($BB0_237)
	NOP    
$BB0_242:                               # %invcont83
                                        #   in Loop: Header=BB0_136 Depth=1
	brlid     r15, __extendsfdf2
	ADDI      r1, r1, -8
	ADDI      r1, r1, 8
	ADD       r25, r3, r0
	ADD       r26, r4, r0
	ADDI      r1, r1, -8
	brlid     r15, __extendsfdf2
	ADD       r6, r23, r0
	ADDI      r1, r1, 8
	ADD       r23, r3, r0
	ADD       r27, r4, r0
	ADDI      r1, r1, -8
	brlid     r15, __extendsfdf2
	ADD       r6, r24, r0
	ADDI      r1, r1, 8
	ADD       r24, r3, r0
	ADD       r28, r4, r0
	ADDI      r1, r1, -20
	ADDI      r29, r0, 1073258829
	ADDI      r30, r0, 1293531329
	ADD       r6, r25, r0
	ADD       r7, r26, r0
	ADD       r8, r29, r0
	brlid     r15, __divdf3
	ADD       r9, r30, r0
	ADDI      r1, r1, 20
	ADD       r25, r3, r0
	ADD       r26, r4, r0
	ADDI      r1, r1, -20
	ADD       r6, r23, r0
	ADD       r7, r27, r0
	ADD       r8, r29, r0
	brlid     r15, __divdf3
	ADD       r9, r30, r0
	ADDI      r1, r1, 20
	ADD       r23, r3, r0
	ADD       r27, r4, r0
	ADDI      r1, r1, -20
	ADD       r6, r24, r0
	ADD       r7, r28, r0
	ADD       r8, r29, r0
	brlid     r15, __divdf3
	ADD       r9, r30, r0
	ADDI      r1, r1, 20
	ADD       r24, r3, r0
	ADD       r28, r4, r0
	ADDI      r1, r1, -12
	ADD       r6, r25, r0
	brlid     r15, __truncdfsf2
	ADD       r7, r26, r0
	ADDI      r1, r1, 12
	ADD       r25, r3, r0
	ADDI      r1, r1, -12
	ADD       r6, r23, r0
	brlid     r15, __truncdfsf2
	ADD       r7, r27, r0
	ADDI      r1, r1, 12
	ADD       r23, r3, r0
	ADDI      r1, r1, -12
	ADD       r6, r24, r0
	brlid     r15, __truncdfsf2
	ADD       r7, r28, r0
	ADDI      r1, r1, 12
	FPMUL     r4, r3, r20
	ORI       r3, r0, 0
	ADDI      r5, r0, 1
	FPLT      r6, r4, r3
	bneid     r6, ($BB0_244)
	NOP    
# BB#243:                               # %invcont83
                                        #   in Loop: Header=BB0_136 Depth=1
	ADDI      r5, r0, 0
$BB0_244:                               # %invcont83
                                        #   in Loop: Header=BB0_136 Depth=1
	bneid     r5, ($BB0_249)
	NOP    
# BB#245:                               # %bb1.i
                                        #   in Loop: Header=BB0_136 Depth=1
	ORI       r3, r0, 1065353216
	ADDI      r5, r0, 1
	FPGT      r6, r4, r3
	bneid     r6, ($BB0_247)
	NOP    
# BB#246:                               # %bb1.i
                                        #   in Loop: Header=BB0_136 Depth=1
	ADDI      r5, r0, 0
$BB0_247:                               # %bb1.i
                                        #   in Loop: Header=BB0_136 Depth=1
	bneid     r5, ($BB0_249)
	NOP    
# BB#248:                               # %bb4.i
                                        #   in Loop: Header=BB0_136 Depth=1
	ADD       r3, r4, r0
$BB0_249:                               # %bb5.i
                                        #   in Loop: Header=BB0_136 Depth=1
	FPMUL     r4, r25, r22
	ORI       r5, r0, 0
	ADDI      r6, r0, 1
	FPLT      r7, r4, r5
	bneid     r7, ($BB0_251)
	NOP    
# BB#250:                               # %bb5.i
                                        #   in Loop: Header=BB0_136 Depth=1
	ADDI      r6, r0, 0
$BB0_251:                               # %bb5.i
                                        #   in Loop: Header=BB0_136 Depth=1
	bneid     r6, ($BB0_256)
	NOP    
# BB#252:                               # %bb8.i
                                        #   in Loop: Header=BB0_136 Depth=1
	ORI       r5, r0, 1065353216
	ADDI      r6, r0, 1
	FPGT      r7, r4, r5
	bneid     r7, ($BB0_254)
	NOP    
# BB#253:                               # %bb8.i
                                        #   in Loop: Header=BB0_136 Depth=1
	ADDI      r6, r0, 0
$BB0_254:                               # %bb8.i
                                        #   in Loop: Header=BB0_136 Depth=1
	bneid     r6, ($BB0_256)
	NOP    
# BB#255:                               # %bb11.i
                                        #   in Loop: Header=BB0_136 Depth=1
	ADD       r5, r4, r0
$BB0_256:                               # %bb12.i
                                        #   in Loop: Header=BB0_136 Depth=1
	FPMUL     r4, r23, r21
	ORI       r6, r0, 0
	ADDI      r7, r0, 1
	FPLT      r8, r4, r6
	bneid     r8, ($BB0_258)
	NOP    
# BB#257:                               # %bb12.i
                                        #   in Loop: Header=BB0_136 Depth=1
	ADDI      r7, r0, 0
$BB0_258:                               # %bb12.i
                                        #   in Loop: Header=BB0_136 Depth=1
	bneid     r7, ($BB0_263)
	NOP    
# BB#259:                               # %bb15.i
                                        #   in Loop: Header=BB0_136 Depth=1
	ORI       r6, r0, 1065353216
	ADDI      r7, r0, 1
	FPGT      r8, r4, r6
	bneid     r8, ($BB0_261)
	NOP    
# BB#260:                               # %bb15.i
                                        #   in Loop: Header=BB0_136 Depth=1
	ADDI      r7, r0, 0
$BB0_261:                               # %bb15.i
                                        #   in Loop: Header=BB0_136 Depth=1
	bneid     r7, ($BB0_263)
	NOP    
# BB#262:                               # %bb18.i
                                        #   in Loop: Header=BB0_136 Depth=1
	ADD       r6, r4, r0
$BB0_263:                               # %invcont95
                                        #   in Loop: Header=BB0_136 Depth=1
	LWI       r7, r19, 220560
	LWI       r4, r19, 220556
	ADD       r4, r4, r7
	MULI      r4, r4, 3
	LWI       r7, r19, 220576
	ADD       r4, r4, r7
	STORE     r4, r3, 0
	STORE     r4, r6, 1
	STORE     r4, r5, 2
	ATOMIC_INC r4, 0
	LWI       r3, r19, 220628
	CMP       r3, r4, r3
	bgtid     r3, ($BB0_136)
	NOP    
$BB0_264:                               # %return
	LWI       r31, r19, 8
	LWI       r30, r19, 12
	LWI       r29, r19, 16
	LWI       r28, r19, 20
	LWI       r27, r19, 24
	LWI       r26, r19, 28
	LWI       r25, r19, 32
	LWI       r24, r19, 36
	LWI       r23, r19, 40
	LWI       r22, r19, 44
	LWI       r21, r19, 48
	LWI       r20, r19, 52
	ADDK      r1, r19, r0
	LWI       r19, r1, 4
	LWI       r15, r1, 0
	ADDI      r1, r1, 220632
	rtsd      r15, 8
	ADD       r3, r0, r0
	.end	main
$tmp0:
	.size	main, ($tmp0)-main


