	.file	"rt.bc"
	.text
	.globl	main
	.align	2
	.type	main,@function
	.ent	main                    # @main
main:
	.frame	r19,156780,r15
	.mask	0xfff88000
# BB#0:                                 # %invcont11
	ADDI      r1, r1, -156780
	SWI       r15, r1, 0
	SWI       r19, r1, 4
	ADDK      r19, r1, r0
	SWI       r20, r19, 80
	SWI       r21, r19, 76
	SWI       r22, r19, 72
	SWI       r23, r19, 68
	SWI       r24, r19, 64
	SWI       r25, r19, 60
	SWI       r26, r19, 56
	SWI       r27, r19, 52
	SWI       r28, r19, 48
	SWI       r29, r19, 44
	SWI       r30, r19, 40
	SWI       r31, r19, 36
	ADD       r3, r0, r0
	LOAD      r4, r3, 1
	SWI       r4, r19, 156752
	LOAD      r4, r3, 4
	SWI       r4, r19, 156628
	LOAD      r4, r3, 7
	SWI       r4, r19, 156764
	LOAD      r4, r3, 2
	SWI       r4, r19, 156680
	LOAD      r4, r3, 5
	SWI       r4, r19, 156684
	LOAD      r4, r3, 12
	LOAD      r5, r4, 0
	LOAD      r5, r4, 1
	LOAD      r4, r4, 2
	LOAD      r4, r3, 10
	LOAD      r5, r4, 0
	SWI       r5, r19, 156564
	LOAD      r5, r4, 1
	SWI       r5, r19, 156568
	LOAD      r5, r4, 2
	SWI       r5, r19, 156584
	ADDI      r5, r4, 9
	LOAD      r6, r5, 0
	LOAD      r6, r5, 1
	ADDI      r6, r4, 12
	LOAD      r5, r5, 2
	LOAD      r5, r6, 0
	SWI       r5, r19, 156688
	LOAD      r5, r6, 1
	SWI       r5, r19, 156692
	LOAD      r5, r6, 2
	SWI       r5, r19, 156696
	ADDI      r5, r4, 15
	LOAD      r6, r5, 0
	SWI       r6, r19, 156700
	LOAD      r6, r5, 1
	SWI       r6, r19, 156704
	LOAD      r5, r5, 2
	SWI       r5, r19, 156708
	ADDI      r4, r4, 18
	LOAD      r5, r4, 0
	SWI       r5, r19, 156712
	LOAD      r5, r4, 1
	SWI       r5, r19, 156716
	LOAD      r4, r4, 2
	SWI       r4, r19, 156720
	LOAD      r4, r3, 28
	LOAD      r4, r3, 29
	ADDI      r4, r19, 104224
	LOAD      r5, r3, 8
	SWI       r5, r19, 156588
	ADDI      r5, r0, 1000
	ADD       r8, r0, r0
$BB0_1:                                 # %bb
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
	ADDI      r7, r4, 52
	SWI       r6, r4, 28
	BITOR     r9, r5, r3
	SWI       r6, r4, 32
	CMP       r6, r8, r9
	bneid     r6, ($BB0_1)
	ADD       r4, r7, r0
# BB#2:                                 # %bb13
	ADDI      r1, r1, -4
	ADDI      r4, r0, -8
	BITAND    r3, r1, r4
	ADDI      r3, r3, -52000
	SWI       r3, r19, 156676
	ADD       r1, r3, r0
	ADD       r4, r0, r0
	ADDI      r5, r0, 1000
	ADDI      r1, r1, 4
	ADD       r8, r0, r0
$BB0_3:                                 # %bb14
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
	ADDI      r7, r3, 52
	SWI       r6, r3, 28
	BITOR     r9, r5, r4
	SWI       r6, r3, 32
	CMP       r6, r8, r9
	bneid     r6, ($BB0_3)
	ADD       r3, r7, r0
# BB#4:                                 # %invcont18
	ADD       r3, r0, r0
	SWI       r3, r19, 156664
	LOAD      r4, r3, 12
	LOAD      r5, r4, 0
	LOAD      r6, r4, 1
	LOAD      r4, r4, 2
	SWI        r5, r19, 156224
	SWI        r6, r19, 156228
	SWI        r4, r19, 156232
	LWI       r4, r19, 156224
	SWI       r4, r19, 156616
	LWI       r4, r19, 156228
	SWI       r4, r19, 156620
	LWI       r4, r19, 156232
	SWI       r4, r19, 156624
	SWI       r3, r19, 156608
	brid      ($BB0_128)
	NOP    
$BB0_5:                                 # %bb.i99
                                        #   Parent Loop BB0_128 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	RAND      r3
	ORI       r4, r0, -1090519040
	RAND      r5
	FPADD     r3, r3, r4
	FPADD     r5, r5, r4
	RAND      r6
	FPADD     r3, r3, r3
	SWI       r3, r19, 156552
	FPADD     r5, r5, r5
	SWI       r5, r19, 156548
	FPADD     r4, r6, r4
	FPADD     r4, r4, r4
	SWI       r4, r19, 156544
	FPMUL     r3, r3, r3
	FPMUL     r5, r5, r5
	FPADD     r3, r3, r5
	FPMUL     r4, r4, r4
	FPADD     r3, r3, r4
	ORI       r4, r0, 1065353216
	ADDI      r5, r0, 1
	FPGT      r3, r3, r4
	bneid     r3, ($BB0_7)
	NOP    
# BB#6:                                 # %bb.i99
                                        #   in Loop: Header=BB0_5 Depth=3
	ADDI      r5, r0, 0
$BB0_7:                                 # %bb.i99
                                        #   in Loop: Header=BB0_5 Depth=3
	bneid     r5, ($BB0_5)
	NOP    
# BB#8:                                 # %invcont42
                                        #   in Loop: Header=BB0_129 Depth=2
	LWI       r3, r19, 156544
	SWI        r3, r19, 156464
	LWI       r3, r19, 156548
	SWI        r3, r19, 156460
	LWI       r3, r19, 156552
	SWI        r3, r19, 156456
	ADD       r3, r0, r0
	ADDI      r4, r0, -1
	SWI       r4, r19, 156540
	ADDI      r4, r0, 1343554297
	SWI       r4, r19, 156560
$BB0_9:                                 # %bb.i
                                        #   Parent Loop BB0_128 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_101 Depth 4
                                        #         Child Loop BB0_73 Depth 4
                                        #         Child Loop BB0_104 Depth 4
                                        #         Child Loop BB0_10 Depth 4
	ADDI      r4, r0, 3
	ANDI      r4, r4, 31
	beqid     r4, ($BB0_11)
	ADDI      r3, r3, 0
$BB0_10:                                # %bb.i
                                        #   Parent Loop BB0_128 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        #       Parent Loop BB0_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_10)
	ADDK      r3, r3, r3
$BB0_11:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	LWI       r4, r19, 156588
	ADD       r4, r3, r4
	LOAD      r3, r4, 2
	LOAD      r5, r4, 1
	LOAD      r6, r4, 0
	LOAD      r7, r4, 5
	LOAD      r8, r4, 4
	LOAD      r9, r4, 3
	LWI       r10, r19, 156572
	FPRSUB    r6, r10, r6
	FPRSUB    r9, r10, r9
	LWI       r10, r19, 156552
	FPDIV     r6, r6, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r6, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_13)
	ADD       r20, r11, r0
# BB#12:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r20, r12, r0
$BB0_13:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r20, ($BB0_15)
	ADD       r10, r9, r0
# BB#14:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r10, r6, r0
$BB0_15:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_17)
	NOP    
# BB#16:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r6, r9, r0
$BB0_17:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r6, r9
	bneid     r20, ($BB0_19)
	ADD       r23, r11, r0
# BB#18:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r23, r12, r0
$BB0_19:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r22, ($BB0_21)
	ADD       r20, r11, r0
# BB#20:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r20, r12, r0
$BB0_21:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r23, ($BB0_23)
	NOP    
# BB#22:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r10, r21, r0
$BB0_23:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r20, ($BB0_25)
	NOP    
# BB#24:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r6, r9, r0
$BB0_25:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	FPGT      r9, r10, r6
	bneid     r9, ($BB0_27)
	NOP    
# BB#26:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r11, r12, r0
$BB0_27:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r11, ($BB0_99)
	NOP    
# BB#28:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r6, r9
	bneid     r9, ($BB0_30)
	NOP    
# BB#29:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADDI      r11, r0, 0
$BB0_30:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r11, ($BB0_99)
	NOP    
# BB#31:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	LWI       r9, r19, 156576
	FPRSUB    r5, r9, r5
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 156548
	FPDIV     r5, r5, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r5, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_33)
	ADD       r20, r11, r0
# BB#32:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r20, r12, r0
$BB0_33:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r20, ($BB0_35)
	ADD       r9, r8, r0
# BB#34:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r9, r5, r0
$BB0_35:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r20, ($BB0_37)
	NOP    
# BB#36:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r5, r8, r0
$BB0_37:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	FPGT      r8, r9, r10
	FPLT      r20, r5, r6
	bneid     r8, ($BB0_39)
	ADD       r21, r11, r0
# BB#38:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r21, r12, r0
$BB0_39:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r20, ($BB0_41)
	ADD       r8, r11, r0
# BB#40:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r8, r12, r0
$BB0_41:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r21, ($BB0_43)
	NOP    
# BB#42:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r9, r10, r0
$BB0_43:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r8, ($BB0_45)
	NOP    
# BB#44:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r5, r6, r0
$BB0_45:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	FPGT      r6, r9, r5
	bneid     r6, ($BB0_47)
	NOP    
# BB#46:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r11, r12, r0
$BB0_47:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r11, ($BB0_99)
	NOP    
# BB#48:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ORI       r6, r0, 0
	ADDI      r8, r0, 1
	FPLT      r6, r5, r6
	bneid     r6, ($BB0_50)
	NOP    
# BB#49:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADDI      r8, r0, 0
$BB0_50:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r8, ($BB0_99)
	NOP    
# BB#51:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	LWI       r6, r19, 156580
	FPRSUB    r3, r6, r3
	FPRSUB    r6, r6, r7
	LWI       r7, r19, 156544
	FPDIV     r3, r3, r7
	FPDIV     r6, r6, r7
	FPGT      r7, r3, r6
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_53)
	ADD       r11, r8, r0
# BB#52:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r11, r10, r0
$BB0_53:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r11, ($BB0_55)
	ADD       r7, r6, r0
# BB#54:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r7, r3, r0
$BB0_55:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r11, ($BB0_57)
	NOP    
# BB#56:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r3, r6, r0
$BB0_57:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	FPGT      r6, r7, r9
	FPLT      r11, r3, r5
	bneid     r6, ($BB0_59)
	ADD       r12, r8, r0
# BB#58:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r12, r10, r0
$BB0_59:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r11, ($BB0_61)
	ADD       r6, r8, r0
# BB#60:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r6, r10, r0
$BB0_61:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r6, ($BB0_63)
	NOP    
# BB#62:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r3, r5, r0
$BB0_63:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r12, ($BB0_65)
	NOP    
# BB#64:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r7, r9, r0
$BB0_65:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	FPGT      r5, r7, r3
	bneid     r5, ($BB0_67)
	NOP    
# BB#66:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r8, r10, r0
$BB0_67:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r8, ($BB0_99)
	NOP    
# BB#68:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ORI       r5, r0, 0
	ADDI      r6, r0, 1
	FPLT      r3, r3, r5
	bneid     r3, ($BB0_70)
	NOP    
# BB#69:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADDI      r6, r0, 0
$BB0_70:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=3
	bneid     r6, ($BB0_99)
	NOP    
# BB#71:                                # %bb1.i20
                                        #   in Loop: Header=BB0_9 Depth=3
	LOAD      r3, r4, 7
	LOAD      r4, r4, 6
	SWI       r4, r19, 156556
	ADD       r5, r0, r0
	CMP       r4, r5, r4
	bltid     r4, ($BB0_103)
	NOP    
# BB#72:                                # %bb6.preheader.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r4, r0, r0
	LWI       r5, r19, 156556
	CMP       r4, r4, r5
	bleid     r4, ($BB0_99)
	NOP    
$BB0_73:                                # %bb5.i21
                                        #   Parent Loop BB0_128 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        #       Parent Loop BB0_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
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
	SWI       r7, r19, 156592
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r19, 156548
	FPMUL     r21, r20, r7
	LWI       r22, r19, 156544
	FPMUL     r23, r8, r22
	FPRSUB    r6, r12, r6
	LOAD      r24, r3, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r19, 156552
	FPMUL     r25, r23, r7
	FPRSUB    r4, r10, r4
	FPRSUB    r5, r11, r5
	LWI       r26, r19, 156572
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r6
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r3, 9
	LWI       r28, r19, 156576
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
	LWI       r31, r19, 156580
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
	bneid     r23, ($BB0_75)
	NOP    
# BB#74:                                # %bb5.i21
                                        #   in Loop: Header=BB0_73 Depth=4
	ADDI      r21, r0, 0
$BB0_75:                                # %bb5.i21
                                        #   in Loop: Header=BB0_73 Depth=4
	bneid     r21, ($BB0_98)
	NOP    
# BB#76:                                # %bb5.i21
                                        #   in Loop: Header=BB0_73 Depth=4
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_78)
	NOP    
# BB#77:                                # %bb5.i21
                                        #   in Loop: Header=BB0_73 Depth=4
	ADDI      r21, r0, 0
$BB0_78:                                # %bb5.i21
                                        #   in Loop: Header=BB0_73 Depth=4
	bneid     r21, ($BB0_98)
	NOP    
# BB#79:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	FPMUL     r7, r11, r4
	FPMUL     r21, r5, r10
	FPRSUB    r7, r21, r7
	FPMUL     r10, r6, r10
	FPMUL     r4, r12, r4
	FPRSUB    r4, r4, r10
	FPMUL     r5, r5, r12
	FPMUL     r6, r6, r11
	LWI       r10, r19, 156552
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r5, r6, r5
	LWI       r6, r19, 156548
	FPMUL     r6, r4, r6
	FPADD     r10, r10, r11
	LWI       r12, r19, 156544
	FPMUL     r12, r5, r12
	FPADD     r6, r6, r10
	FPADD     r6, r12, r6
	FPMUL     r6, r6, r22
	ADDI      r10, r0, 1
	FPLT      r11, r6, r11
	bneid     r11, ($BB0_81)
	NOP    
# BB#80:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	ADDI      r10, r0, 0
$BB0_81:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	bneid     r10, ($BB0_98)
	NOP    
# BB#82:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_73 Depth=4
	FPADD     r6, r6, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r6, r6, r10
	bneid     r6, ($BB0_84)
	NOP    
# BB#83:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_73 Depth=4
	ADDI      r11, r0, 0
$BB0_84:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_73 Depth=4
	bneid     r11, ($BB0_98)
	NOP    
# BB#85:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	FPMUL     r6, r7, r9
	ORI       r7, r0, 0
	FPMUL     r4, r4, r8
	FPADD     r6, r6, r7
	LWI       r8, r19, 156592
	FPMUL     r5, r5, r8
	FPADD     r4, r4, r6
	FPADD     r4, r5, r4
	FPMUL     r4, r4, r22
	FPUN      r5, r4, r7
	FPLE      r6, r4, r7
	BITOR     r5, r5, r6
	bneid     r5, ($BB0_87)
	ADDI      r7, r0, 1
# BB#86:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	ADDI      r7, r0, 0
$BB0_87:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	bneid     r7, ($BB0_98)
	NOP    
# BB#88:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	ORI       r5, r0, 981668463
	ADDI      r6, r0, 1
	FPLT      r5, r4, r5
	bneid     r5, ($BB0_90)
	NOP    
# BB#89:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	ADDI      r6, r0, 0
$BB0_90:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	bneid     r6, ($BB0_98)
	NOP    
# BB#91:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	ORI       r5, r0, 1343554297
	ADDI      r6, r0, 1
	FPEQ      r5, r4, r5
	bneid     r5, ($BB0_93)
	NOP    
# BB#92:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	ADDI      r6, r0, 0
$BB0_93:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	bneid     r6, ($BB0_98)
	NOP    
# BB#94:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	LWI       r5, r19, 156560
	SWI       r5, r19, 156468
	LWI        r5, r19, 156468
	FPUN      r6, r5, r4
	FPLE      r5, r5, r4
	BITOR     r5, r6, r5
	bneid     r5, ($BB0_96)
	ADDI      r7, r0, 1
# BB#95:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	ADDI      r7, r0, 0
$BB0_96:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
	bneid     r7, ($BB0_98)
	NOP    
# BB#97:                                # %bb3.i.i.i
                                        #   in Loop: Header=BB0_73 Depth=4
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
	SWI       r22, r19, 156600
	ADD       r22, r0, r0
	MULI      r21, r21, 25
	LOAD      r22, r22, 9
	ADD       r21, r22, r21
	LOAD      r22, r21, 6
	LOAD      r23, r21, 5
	LOAD      r21, r21, 4
	SWI        r22, r19, 156512
	SWI        r23, r19, 156516
	SWI        r21, r19, 156520
	SWI        r11, r19, 156500
	SWI        r12, r19, 156504
	SWI        r20, r19, 156508
	SWI        r8, r19, 156488
	SWI        r9, r19, 156492
	SWI        r10, r19, 156496
	SWI        r5, r19, 156476
	SWI        r6, r19, 156480
	SWI        r7, r19, 156484
	SWI        r4, r19, 156472
	ADDI      r4, r0, 1060320051
	SWI       r4, r19, 156596
	ADDI      r4, r0, 1050253722
	SWI       r4, r19, 156604
	LWI       r4, r19, 156472
	SWI       r4, r19, 156560
$BB0_98:                                # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i
                                        #   in Loop: Header=BB0_73 Depth=4
	LWI       r4, r19, 156556
	ADDI      r4, r4, -1
	SWI       r4, r19, 156556
	ADDI      r3, r3, 11
	ADD       r5, r0, r0
	CMP       r4, r5, r4
	bneid     r4, ($BB0_73)
	NOP    
$BB0_99:                                # %bb7.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADD       r3, r0, r0
	LWI       r4, r19, 156540
	CMP       r3, r3, r4
	bltid     r3, ($BB0_106)
	NOP    
# BB#100:                               # %bb9.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r4, r19, 156540
	beqid     r3, ($BB0_102)
	ADDI      r4, r4, 0
$BB0_101:                               # %bb9.i
                                        #   Parent Loop BB0_128 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        #       Parent Loop BB0_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_101)
	ADDK      r4, r4, r4
$BB0_102:                               # %bb9.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADDI      r3, r19, 84
	LW        r3, r3, r4
	LWI       r4, r19, 156540
	ADDI      r4, r4, -1
	SWI       r4, r19, 156540
	brid      ($BB0_9)
	NOP    
$BB0_103:                               # %bb3.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r5, r19, 156540
	beqid     r4, ($BB0_105)
	ADDI      r5, r5, 0
$BB0_104:                               # %bb3.i
                                        #   Parent Loop BB0_128 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        #       Parent Loop BB0_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_104)
	ADDK      r5, r5, r5
$BB0_105:                               # %bb3.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ADDI      r4, r19, 84
	LWI       r6, r19, 156540
	ADDI      r6, r6, 1
	SWI       r6, r19, 156540
	ADDI      r6, r3, 1
	ADD       r4, r4, r5
	brid      ($BB0_9)
	SWI       r6, r4, 4
$BB0_106:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_129 Depth=2
	LWI       r3, r19, 156560
	SWI       r3, r19, 156524
	LWI        r3, r19, 156524
	ORI       r4, r0, 1343554297
	FPUN      r5, r3, r4
	FPGE      r4, r3, r4
	BITOR     r4, r5, r4
	bneid     r4, ($BB0_108)
	ADDI      r6, r0, 1
# BB#107:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_129 Depth=2
	ADDI      r6, r0, 0
$BB0_108:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_129 Depth=2
	bneid     r6, ($BB0_129)
	NOP    
# BB#109:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=1
	ADDI      r4, r0, 2
	ANDI      r5, r4, 31
	LWI       r6, r19, 156612
	beqid     r5, ($BB0_111)
	ADDI      r6, r6, 0
$BB0_110:                               # %invcont61
                                        #   Parent Loop BB0_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_110)
	ADDK      r6, r6, r6
$BB0_111:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=1
	ANDI      r5, r4, 31
	LWI       r7, r19, 156612
	beqid     r5, ($BB0_113)
	ADDI      r7, r7, 0
$BB0_112:                               # %invcont61
                                        #   Parent Loop BB0_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_112)
	ADDK      r7, r7, r7
$BB0_113:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=1
	ANDI      r5, r4, 31
	LWI       r8, r19, 156612
	beqid     r5, ($BB0_115)
	ADDI      r8, r8, 0
$BB0_114:                               # %invcont61
                                        #   Parent Loop BB0_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_114)
	ADDK      r8, r8, r8
$BB0_115:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=1
	LWI       r5, r19, 156552
	FPMUL     r5, r5, r3
	ADDI      r9, r19, 104224
	SW         r5, r9, r7
	ANDI      r7, r4, 31
	LWI       r10, r19, 156612
	beqid     r7, ($BB0_117)
	ADDI      r10, r10, 0
$BB0_116:                               # %invcont61
                                        #   Parent Loop BB0_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r7, r7, -1
	bneid     r7, ($BB0_116)
	ADDK      r10, r10, r10
$BB0_117:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=1
	LWI       r7, r19, 156548
	FPMUL     r7, r7, r3
	ADD       r6, r9, r6
	SWI        r7, r6, 4
	ANDI      r6, r4, 31
	LWI       r11, r19, 156612
	beqid     r6, ($BB0_119)
	ADDI      r11, r11, 0
$BB0_118:                               # %invcont61
                                        #   Parent Loop BB0_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r6, r6, -1
	bneid     r6, ($BB0_118)
	ADDK      r11, r11, r11
$BB0_119:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=1
	LWI       r6, r19, 156544
	FPMUL     r3, r6, r3
	ADD       r6, r9, r8
	SWI        r3, r6, 8
	ANDI      r6, r4, 31
	LWI       r8, r19, 156612
	beqid     r6, ($BB0_121)
	ADDI      r8, r8, 0
$BB0_120:                               # %invcont61
                                        #   Parent Loop BB0_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r6, r6, -1
	bneid     r6, ($BB0_120)
	ADDK      r8, r8, r8
$BB0_121:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=1
	ADD       r6, r9, r10
	SWI       r0, r6, 12
	ANDI      r6, r4, 31
	LWI       r10, r19, 156612
	beqid     r6, ($BB0_123)
	ADDI      r10, r10, 0
$BB0_122:                               # %invcont61
                                        #   Parent Loop BB0_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r6, r6, -1
	bneid     r6, ($BB0_122)
	ADDK      r10, r10, r10
$BB0_123:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=1
	ADD       r6, r9, r11
	SWI       r0, r6, 16
	ANDI      r6, r4, 31
	LWI       r11, r19, 156612
	beqid     r6, ($BB0_125)
	ADDI      r11, r11, 0
$BB0_124:                               # %invcont61
                                        #   Parent Loop BB0_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r6, r6, -1
	bneid     r6, ($BB0_124)
	ADDK      r11, r11, r11
$BB0_125:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=1
	ADD       r6, r9, r8
	SWI       r0, r6, 20
	SWI        r5, r19, 156528
	SWI        r7, r19, 156532
	SWI        r3, r19, 156536
	ANDI      r3, r4, 31
	LWI       r4, r19, 156612
	beqid     r3, ($BB0_127)
	ADDI      r4, r4, 0
$BB0_126:                               # %invcont61
                                        #   Parent Loop BB0_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_126)
	ADDK      r4, r4, r4
$BB0_127:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=1
	ADD       r3, r9, r10
	ADD       r5, r9, r11
	LWI       r6, r19, 156596
	SWI       r6, r3, 24
	LWI       r3, r19, 156528
	SWI       r3, r19, 156616
	LWI       r3, r19, 156532
	SWI       r3, r19, 156620
	LWI       r3, r19, 156536
	SWI       r3, r19, 156624
	LWI       r3, r19, 156664
	ADDI      r3, r3, 1
	SWI       r3, r19, 156664
	ADD       r3, r9, r4
	SWI       r6, r5, 28
	SWI       r6, r3, 32
$BB0_128:                               # %bb68.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_126 Depth 2
                                        #     Child Loop BB0_124 Depth 2
                                        #     Child Loop BB0_122 Depth 2
                                        #     Child Loop BB0_120 Depth 2
                                        #     Child Loop BB0_118 Depth 2
                                        #     Child Loop BB0_116 Depth 2
                                        #     Child Loop BB0_114 Depth 2
                                        #     Child Loop BB0_112 Depth 2
                                        #     Child Loop BB0_110 Depth 2
                                        #     Child Loop BB0_129 Depth 2
                                        #       Child Loop BB0_9 Depth 3
                                        #         Child Loop BB0_101 Depth 4
                                        #         Child Loop BB0_73 Depth 4
                                        #         Child Loop BB0_104 Depth 4
                                        #         Child Loop BB0_10 Depth 4
                                        #       Child Loop BB0_5 Depth 3
	LWI       r3, r19, 156616
	SWI       r3, r19, 156236
	LWI       r3, r19, 156620
	SWI       r3, r19, 156240
	LWI       r3, r19, 156624
	SWI       r3, r19, 156244
	LWI       r3, r19, 156664
	MULI      r3, r3, 13
	SWI       r3, r19, 156612
	LWI        r3, r19, 156236
	SWI       r3, r19, 156572
	LWI        r3, r19, 156240
	SWI       r3, r19, 156576
	LWI        r3, r19, 156244
	SWI       r3, r19, 156580
$BB0_129:                               # %bb69
                                        #   Parent Loop BB0_128 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_9 Depth 3
                                        #         Child Loop BB0_101 Depth 4
                                        #         Child Loop BB0_73 Depth 4
                                        #         Child Loop BB0_104 Depth 4
                                        #         Child Loop BB0_10 Depth 4
                                        #       Child Loop BB0_5 Depth 3
	LWI       r3, r19, 156608
	ADDI      r4, r0, 3
	ADDI      r5, r3, 1
	SWI       r5, r19, 156608
	CMP       r3, r4, r3
	bltid     r3, ($BB0_5)
	NOP    
# BB#130:                               # %bb71.loopexit
                                        #   in Loop: Header=BB0_128 Depth=1
	ADD       r3, r0, r0
	SWI       r3, r19, 156608
	ADDI      r3, r0, 1000
	LWI       r4, r19, 156664
	CMP       r3, r3, r4
	bltid     r3, ($BB0_128)
	NOP    
# BB#131:                               # %bb72
	ADDI      r1, r1, -20
	ADDI      r6, r19, 104224
	ADD       r9, r0, r0
	LWI       r7, r19, 156676
	brlid     r15, _ZN9PhotonMap8generateEP6PhotonS1_ii
	ADD       r8, r4, r0
	ADDI      r1, r1, 20
	LWI       r6, r19, 156664
	brlid     r15, __floatsidf
	ADDI      r1, r1, -8
	ADDI      r1, r1, 8
	LWI       r20, r19, 156752
	FPCONV    r5, r20
	SWI       r5, r19, 156756
	LWI       r21, r19, 156628
	FPCONV    r5, r21
	SWI       r5, r19, 156760
	ORI       r22, r0, -1073741824
	ADDI      r1, r1, -20
	ADDI      r8, r0, 1073258829
	ADDI      r9, r0, 1242932435
	ADD       r6, r3, r0
	brlid     r15, __muldf3
	ADD       r7, r4, r0
	ADDI      r1, r1, 20
	MUL       r5, r21, r20
	SWI       r5, r19, 156776
	ATOMIC_INC r6, 0
	CMP       r5, r6, r5
	bleid     r5, ($BB0_272)
	NOP    
# BB#132:                               # %bb76.lr.ph
	LWI       r5, r19, 156756
	FPDIV     r5, r5, r22
	SWI       r5, r19, 156768
	LWI       r5, r19, 156760
	FPDIV     r5, r5, r22
	SWI       r5, r19, 156772
	SWI       r3, r19, 156736
	SWI       r4, r19, 156740
	ADDI      r3, r19, 216
	LWI       r4, r19, 156584
	SWI        r4, r19, 156256
	LWI       r4, r19, 156568
	SWI        r4, r19, 156252
	LWI       r4, r19, 156564
	SWI        r4, r19, 156248
	ADD       r4, r0, r0
	SWI       r4, r19, 156724
	LWI       r4, r19, 156256
	SWI       r4, r19, 156728
	ADDI      r3, r3, 20
	SWI       r3, r19, 156732
$BB0_133:                               # %bb76
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_134 Depth 2
                                        #       Child Loop BB0_135 Depth 3
                                        #         Child Loop BB0_227 Depth 4
                                        #         Child Loop BB0_199 Depth 4
                                        #         Child Loop BB0_230 Depth 4
                                        #         Child Loop BB0_136 Depth 4
                                        #       Child Loop BB0_243 Depth 3
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_238 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	LWI       r3, r19, 156752
	DIV       r4, r3, r6
	MUL       r3, r4, r3
	SWI       r3, r19, 156744
	RSUB      r6, r3, r6
	SWI       r6, r19, 156748
	FPCONV    r6, r6
	FPCONV    r3, r4
	LWI       r4, r19, 156768
	FPADD     r6, r6, r4
	ORI       r4, r0, 1056964608
	LWI       r5, r19, 156772
	FPADD     r3, r3, r5
	FPADD     r6, r6, r4
	FPADD     r3, r3, r4
	FPADD     r6, r6, r6
	FPADD     r3, r3, r3
	LWI       r4, r19, 156756
	FPDIV     r6, r6, r4
	SWI       r6, r19, 156668
	LWI       r6, r19, 156760
	FPDIV     r6, r3, r6
	SWI       r6, r19, 156672
	ADDI      r6, r0, 5
	SWI       r6, r19, 156644
$BB0_134:                               # %bb83
                                        #   Parent Loop BB0_133 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_135 Depth 3
                                        #         Child Loop BB0_227 Depth 4
                                        #         Child Loop BB0_199 Depth 4
                                        #         Child Loop BB0_230 Depth 4
                                        #         Child Loop BB0_136 Depth 4
                                        #       Child Loop BB0_243 Depth 3
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_238 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	RAND      r6
	ORI       r3, r0, -1090519040
	RAND      r4
	FPADD     r4, r4, r3
	FPADD     r6, r6, r3
	FPADD     r3, r4, r4
	FPADD     r6, r6, r6
	LWI       r4, r19, 156684
	FPMUL     r3, r3, r4
	LWI       r4, r19, 156680
	FPMUL     r6, r6, r4
	LWI       r4, r19, 156672
	FPADD     r3, r4, r3
	LWI       r4, r19, 156668
	FPADD     r6, r4, r6
	LWI       r4, r19, 156716
	FPMUL     r4, r4, r3
	LWI       r5, r19, 156704
	FPMUL     r5, r5, r6
	LWI       r7, r19, 156712
	FPMUL     r7, r7, r3
	LWI       r8, r19, 156700
	FPMUL     r8, r8, r6
	LWI       r9, r19, 156720
	FPMUL     r3, r9, r3
	LWI       r9, r19, 156708
	FPMUL     r6, r9, r6
	FPADD     r5, r4, r5
	FPADD     r8, r7, r8
	LWI       r9, r19, 156692
	FPADD     r5, r5, r9
	LWI       r9, r19, 156688
	FPADD     r8, r8, r9
	FPADD     r6, r6, r3
	LWI       r9, r19, 156696
	FPADD     r6, r9, r6
	FPMUL     r9, r8, r8
	FPMUL     r10, r5, r5
	FPADD     r9, r9, r10
	FPMUL     r10, r6, r6
	FPADD     r9, r9, r10
	FPINVSQRT r9, r9
	ORI       r10, r0, 1065353216
	FPDIV     r9, r10, r9
	FPDIV     r6, r6, r9
	SWI        r6, r19, 156280
	FPDIV     r6, r5, r9
	SWI       r6, r19, 156552
	FPDIV     r5, r8, r9
	SWI       r5, r19, 156548
	LWI       r8, r19, 156280
	LWI       r9, r19, 156724
	BITOR     r8, r9, r8
	SWI       r8, r19, 156660
	SWI        r6, r19, 156276
	SWI        r5, r19, 156272
	SWI       r8, r19, 156284
	SWI        r3, r19, 156260
	SWI        r4, r19, 156264
	SWI        r7, r19, 156268
	ADD       r6, r0, r0
	SWI       r6, r19, 156592
	LWI        r3, r19, 156284
	SWI       r3, r19, 156556
	ADDI      r3, r0, -1
	SWI       r3, r19, 156540
	ADDI      r3, r0, 1343554297
	SWI       r3, r19, 156560
	SWI       r6, r19, 156608
	SWI       r6, r19, 156612
	SWI       r6, r19, 156576
	SWI       r6, r19, 156580
	SWI       r6, r19, 156596
	SWI       r6, r19, 156604
	SWI       r6, r19, 156616
	SWI       r6, r19, 156620
	SWI       r6, r19, 156600
	SWI       r6, r19, 156624
	SWI       r6, r19, 156628
$BB0_135:                               # %bb.i60
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_227 Depth 4
                                        #         Child Loop BB0_199 Depth 4
                                        #         Child Loop BB0_230 Depth 4
                                        #         Child Loop BB0_136 Depth 4
	ADDI      r3, r0, 3
	ANDI      r3, r3, 31
	beqid     r3, ($BB0_137)
	ADDI      r6, r6, 0
$BB0_136:                               # %bb.i60
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        #       Parent Loop BB0_135 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_136)
	ADDK      r6, r6, r6
$BB0_137:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	LWI       r3, r19, 156588
	ADD       r3, r6, r3
	LOAD      r6, r3, 2
	LOAD      r4, r3, 1
	LOAD      r5, r3, 0
	LOAD      r7, r3, 5
	LOAD      r8, r3, 4
	LOAD      r9, r3, 3
	LWI       r10, r19, 156564
	FPRSUB    r5, r10, r5
	FPRSUB    r9, r10, r9
	LWI       r10, r19, 156548
	FPDIV     r5, r5, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r5, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_139)
	ADD       r20, r11, r0
# BB#138:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r20, r12, r0
$BB0_139:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r20, ($BB0_141)
	ADD       r10, r9, r0
# BB#140:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r10, r5, r0
$BB0_141:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_143)
	NOP    
# BB#142:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r5, r9, r0
$BB0_143:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r5, r9
	bneid     r20, ($BB0_145)
	ADD       r23, r11, r0
# BB#144:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r23, r12, r0
$BB0_145:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r22, ($BB0_147)
	ADD       r20, r11, r0
# BB#146:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r20, r12, r0
$BB0_147:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r23, ($BB0_149)
	NOP    
# BB#148:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r10, r21, r0
$BB0_149:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r20, ($BB0_151)
	NOP    
# BB#150:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r5, r9, r0
$BB0_151:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	FPGT      r9, r10, r5
	bneid     r9, ($BB0_153)
	NOP    
# BB#152:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r11, r12, r0
$BB0_153:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r11, ($BB0_225)
	NOP    
# BB#154:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r5, r9
	bneid     r9, ($BB0_156)
	NOP    
# BB#155:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	ADDI      r11, r0, 0
$BB0_156:                               # %bb.i60
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r11, ($BB0_225)
	NOP    
# BB#157:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	LWI       r9, r19, 156568
	FPRSUB    r4, r9, r4
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 156552
	FPDIV     r4, r4, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r4, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_159)
	ADD       r20, r11, r0
# BB#158:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r20, r12, r0
$BB0_159:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r20, ($BB0_161)
	ADD       r9, r8, r0
# BB#160:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r9, r4, r0
$BB0_161:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r20, ($BB0_163)
	NOP    
# BB#162:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r4, r8, r0
$BB0_163:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	FPGT      r8, r9, r10
	FPLT      r20, r4, r5
	bneid     r8, ($BB0_165)
	ADD       r21, r11, r0
# BB#164:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r21, r12, r0
$BB0_165:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r20, ($BB0_167)
	ADD       r8, r11, r0
# BB#166:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r8, r12, r0
$BB0_167:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r21, ($BB0_169)
	NOP    
# BB#168:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r9, r10, r0
$BB0_169:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r8, ($BB0_171)
	NOP    
# BB#170:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r4, r5, r0
$BB0_171:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	FPGT      r5, r9, r4
	bneid     r5, ($BB0_173)
	NOP    
# BB#172:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r11, r12, r0
$BB0_173:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r11, ($BB0_225)
	NOP    
# BB#174:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	ORI       r5, r0, 0
	ADDI      r8, r0, 1
	FPLT      r5, r4, r5
	bneid     r5, ($BB0_176)
	NOP    
# BB#175:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	ADDI      r8, r0, 0
$BB0_176:                               # %bb29.i.i66
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r8, ($BB0_225)
	NOP    
# BB#177:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	LWI       r5, r19, 156584
	FPRSUB    r6, r5, r6
	FPRSUB    r5, r5, r7
	LWI       r7, r19, 156556
	FPDIV     r6, r6, r7
	FPDIV     r5, r5, r7
	FPGT      r7, r6, r5
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_179)
	ADD       r11, r8, r0
# BB#178:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r11, r10, r0
$BB0_179:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r11, ($BB0_181)
	ADD       r7, r5, r0
# BB#180:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r7, r6, r0
$BB0_181:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r11, ($BB0_183)
	NOP    
# BB#182:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r6, r5, r0
$BB0_183:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	FPGT      r5, r7, r9
	FPLT      r11, r6, r4
	bneid     r5, ($BB0_185)
	ADD       r12, r8, r0
# BB#184:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r12, r10, r0
$BB0_185:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r11, ($BB0_187)
	ADD       r5, r8, r0
# BB#186:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r5, r10, r0
$BB0_187:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r5, ($BB0_189)
	NOP    
# BB#188:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r6, r4, r0
$BB0_189:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r12, ($BB0_191)
	NOP    
# BB#190:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r7, r9, r0
$BB0_191:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	FPGT      r4, r7, r6
	bneid     r4, ($BB0_193)
	NOP    
# BB#192:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r8, r10, r0
$BB0_193:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r8, ($BB0_225)
	NOP    
# BB#194:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	ORI       r4, r0, 0
	ADDI      r5, r0, 1
	FPLT      r6, r6, r4
	bneid     r6, ($BB0_196)
	NOP    
# BB#195:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	ADDI      r5, r0, 0
$BB0_196:                               # %bb62.i.i72
                                        #   in Loop: Header=BB0_135 Depth=3
	bneid     r5, ($BB0_225)
	NOP    
# BB#197:                               # %bb1.i73
                                        #   in Loop: Header=BB0_135 Depth=3
	LOAD      r6, r3, 7
	LOAD      r3, r3, 6
	SWI       r3, r19, 156544
	ADD       r4, r0, r0
	CMP       r3, r4, r3
	bltid     r3, ($BB0_229)
	NOP    
# BB#198:                               # %bb6.preheader.i74
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r3, r0, r0
	LWI       r4, r19, 156544
	CMP       r3, r3, r4
	bleid     r3, ($BB0_225)
	NOP    
$BB0_199:                               # %bb5.i87
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        #       Parent Loop BB0_135 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	LOAD      r3, r6, 2
	LOAD      r4, r6, 1
	LOAD      r5, r6, 0
	LOAD      r7, r6, 5
	LOAD      r8, r6, 4
	LOAD      r9, r6, 3
	LOAD      r10, r6, 8
	LOAD      r11, r6, 7
	LOAD      r12, r6, 6
	FPRSUB    r7, r10, r7
	SWI       r7, r19, 156572
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r19, 156552
	FPMUL     r21, r20, r7
	LWI       r22, r19, 156556
	FPMUL     r23, r8, r22
	FPRSUB    r5, r12, r5
	LOAD      r24, r6, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r19, 156548
	FPMUL     r25, r23, r7
	FPRSUB    r3, r10, r3
	FPRSUB    r4, r11, r4
	LWI       r26, r19, 156564
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r5
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r6, 9
	LWI       r28, r19, 156568
	FPRSUB    r11, r11, r28
	FPMUL     r21, r21, r12
	FPRSUB    r20, r20, r23
	FPMUL     r23, r22, r4
	FPADD     r25, r25, r26
	FPMUL     r28, r4, r7
	FPMUL     r29, r8, r3
	FPMUL     r30, r9, r3
	FPMUL     r7, r5, r7
	MULI      r24, r24, 25
	LOAD      r27, r27, 9
	LWI       r31, r19, 156584
	FPRSUB    r10, r10, r31
	FPRSUB    r28, r29, r28
	FPRSUB    r7, r7, r30
	ADD       r24, r27, r24
	FPMUL     r22, r22, r11
	FPADD     r21, r21, r26
	FPMUL     r27, r20, r3
	FPADD     r23, r23, r25
	FPMUL     r25, r8, r5
	FPMUL     r29, r9, r4
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
	bneid     r23, ($BB0_201)
	NOP    
# BB#200:                               # %bb5.i87
                                        #   in Loop: Header=BB0_199 Depth=4
	ADDI      r21, r0, 0
$BB0_201:                               # %bb5.i87
                                        #   in Loop: Header=BB0_199 Depth=4
	bneid     r21, ($BB0_224)
	NOP    
# BB#202:                               # %bb5.i87
                                        #   in Loop: Header=BB0_199 Depth=4
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_204)
	NOP    
# BB#203:                               # %bb5.i87
                                        #   in Loop: Header=BB0_199 Depth=4
	ADDI      r21, r0, 0
$BB0_204:                               # %bb5.i87
                                        #   in Loop: Header=BB0_199 Depth=4
	bneid     r21, ($BB0_224)
	NOP    
# BB#205:                               # %bb73.i.i88
                                        #   in Loop: Header=BB0_199 Depth=4
	FPMUL     r7, r11, r3
	FPMUL     r21, r4, r10
	FPRSUB    r7, r21, r7
	FPMUL     r10, r5, r10
	FPMUL     r3, r12, r3
	FPRSUB    r3, r3, r10
	FPMUL     r4, r4, r12
	FPMUL     r5, r5, r11
	LWI       r10, r19, 156548
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r4, r5, r4
	LWI       r5, r19, 156552
	FPMUL     r5, r3, r5
	FPADD     r10, r10, r11
	LWI       r12, r19, 156556
	FPMUL     r12, r4, r12
	FPADD     r5, r5, r10
	FPADD     r5, r12, r5
	FPMUL     r5, r5, r22
	ADDI      r10, r0, 1
	FPLT      r11, r5, r11
	bneid     r11, ($BB0_207)
	NOP    
# BB#206:                               # %bb73.i.i88
                                        #   in Loop: Header=BB0_199 Depth=4
	ADDI      r10, r0, 0
$BB0_207:                               # %bb73.i.i88
                                        #   in Loop: Header=BB0_199 Depth=4
	bneid     r10, ($BB0_224)
	NOP    
# BB#208:                               # %bb94.i55.i89
                                        #   in Loop: Header=BB0_199 Depth=4
	FPADD     r5, r5, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r5, r5, r10
	bneid     r5, ($BB0_210)
	NOP    
# BB#209:                               # %bb94.i55.i89
                                        #   in Loop: Header=BB0_199 Depth=4
	ADDI      r11, r0, 0
$BB0_210:                               # %bb94.i55.i89
                                        #   in Loop: Header=BB0_199 Depth=4
	bneid     r11, ($BB0_224)
	NOP    
# BB#211:                               # %bb96.i.i92
                                        #   in Loop: Header=BB0_199 Depth=4
	FPMUL     r5, r7, r9
	ORI       r7, r0, 0
	FPMUL     r3, r3, r8
	FPADD     r5, r5, r7
	LWI       r8, r19, 156572
	FPMUL     r4, r4, r8
	FPADD     r3, r3, r5
	FPADD     r3, r4, r3
	FPMUL     r3, r3, r22
	FPUN      r4, r3, r7
	FPLE      r5, r3, r7
	BITOR     r4, r4, r5
	bneid     r4, ($BB0_213)
	ADDI      r7, r0, 1
# BB#212:                               # %bb96.i.i92
                                        #   in Loop: Header=BB0_199 Depth=4
	ADDI      r7, r0, 0
$BB0_213:                               # %bb96.i.i92
                                        #   in Loop: Header=BB0_199 Depth=4
	bneid     r7, ($BB0_224)
	NOP    
# BB#214:                               # %bb96.i.i92
                                        #   in Loop: Header=BB0_199 Depth=4
	ORI       r4, r0, 981668463
	ADDI      r5, r0, 1
	FPLT      r4, r3, r4
	bneid     r4, ($BB0_216)
	NOP    
# BB#215:                               # %bb96.i.i92
                                        #   in Loop: Header=BB0_199 Depth=4
	ADDI      r5, r0, 0
$BB0_216:                               # %bb96.i.i92
                                        #   in Loop: Header=BB0_199 Depth=4
	bneid     r5, ($BB0_224)
	NOP    
# BB#217:                               # %bb96.i.i92
                                        #   in Loop: Header=BB0_199 Depth=4
	ORI       r4, r0, 1343554297
	ADDI      r5, r0, 1
	FPEQ      r4, r3, r4
	bneid     r4, ($BB0_219)
	NOP    
# BB#218:                               # %bb96.i.i92
                                        #   in Loop: Header=BB0_199 Depth=4
	ADDI      r5, r0, 0
$BB0_219:                               # %bb96.i.i92
                                        #   in Loop: Header=BB0_199 Depth=4
	bneid     r5, ($BB0_224)
	NOP    
# BB#220:                               # %bb2.i.i.i93
                                        #   in Loop: Header=BB0_199 Depth=4
	LWI       r4, r19, 156560
	SWI       r4, r19, 156288
	LWI        r4, r19, 156288
	FPUN      r5, r4, r3
	FPLE      r4, r4, r3
	BITOR     r4, r5, r4
	bneid     r4, ($BB0_222)
	ADDI      r7, r0, 1
# BB#221:                               # %bb2.i.i.i93
                                        #   in Loop: Header=BB0_199 Depth=4
	ADDI      r7, r0, 0
$BB0_222:                               # %bb2.i.i.i93
                                        #   in Loop: Header=BB0_199 Depth=4
	bneid     r7, ($BB0_224)
	NOP    
# BB#223:                               # %bb3.i.i.i144
                                        #   in Loop: Header=BB0_199 Depth=4
	LOAD      r4, r6, 2
	LOAD      r5, r6, 1
	LOAD      r7, r6, 0
	LOAD      r8, r6, 5
	LOAD      r9, r6, 4
	LOAD      r10, r6, 3
	LOAD      r11, r6, 8
	LOAD      r12, r6, 7
	LOAD      r20, r6, 6
	LOAD      r21, r6, 10
	LOAD      r22, r6, 9
	SWI       r22, r19, 156632
	ADD       r22, r0, r0
	MULI      r21, r21, 25
	LOAD      r22, r22, 9
	ADD       r21, r22, r21
	LOAD      r22, r21, 6
	LOAD      r23, r21, 5
	LOAD      r21, r21, 4
	SWI        r22, r19, 156332
	SWI        r23, r19, 156336
	SWI        r21, r19, 156340
	SWI        r11, r19, 156320
	SWI        r12, r19, 156324
	SWI        r20, r19, 156328
	SWI        r8, r19, 156308
	SWI        r9, r19, 156312
	SWI        r10, r19, 156316
	SWI        r4, r19, 156296
	SWI        r5, r19, 156300
	SWI        r7, r19, 156304
	SWI        r3, r19, 156292
	ADDI      r3, r0, 1060320051
	SWI       r3, r19, 156636
	ADDI      r3, r0, 1050253722
	SWI       r3, r19, 156640
	LWI       r3, r19, 156332
	SWI       r3, r19, 156592
	LWI       r3, r19, 156336
	SWI       r3, r19, 156608
	LWI       r3, r19, 156340
	SWI       r3, r19, 156612
	LWI       r20, r19, 156320
	SWI       r20, r19, 156576
	LWI       r20, r19, 156324
	SWI       r20, r19, 156580
	LWI       r3, r19, 156328
	SWI       r3, r19, 156596
	LWI       r3, r19, 156308
	SWI       r3, r19, 156604
	LWI       r3, r19, 156312
	SWI       r3, r19, 156616
	LWI       r3, r19, 156316
	SWI       r3, r19, 156620
	LWI       r3, r19, 156296
	SWI       r3, r19, 156600
	LWI       r3, r19, 156300
	SWI       r3, r19, 156624
	LWI       r3, r19, 156304
	SWI       r3, r19, 156628
	LWI       r3, r19, 156292
	SWI       r3, r19, 156560
$BB0_224:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i146
                                        #   in Loop: Header=BB0_199 Depth=4
	LWI       r3, r19, 156544
	ADDI      r3, r3, -1
	SWI       r3, r19, 156544
	ADDI      r6, r6, 11
	ADD       r4, r0, r0
	CMP       r3, r4, r3
	bneid     r3, ($BB0_199)
	NOP    
$BB0_225:                               # %bb7.i147
                                        #   in Loop: Header=BB0_135 Depth=3
	ADD       r6, r0, r0
	LWI       r3, r19, 156540
	CMP       r6, r6, r3
	bltid     r6, ($BB0_232)
	NOP    
# BB#226:                               # %bb9.i148
                                        #   in Loop: Header=BB0_135 Depth=3
	ADDI      r6, r0, 2
	ANDI      r6, r6, 31
	LWI       r3, r19, 156540
	beqid     r6, ($BB0_228)
	ADDI      r3, r3, 0
$BB0_227:                               # %bb9.i148
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        #       Parent Loop BB0_135 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r6, r6, -1
	bneid     r6, ($BB0_227)
	ADDK      r3, r3, r3
$BB0_228:                               # %bb9.i148
                                        #   in Loop: Header=BB0_135 Depth=3
	ADDI      r6, r19, 84
	LW        r6, r6, r3
	LWI       r3, r19, 156540
	ADDI      r3, r3, -1
	SWI       r3, r19, 156540
	brid      ($BB0_135)
	NOP    
$BB0_229:                               # %bb3.i76
                                        #   in Loop: Header=BB0_135 Depth=3
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r4, r19, 156540
	beqid     r3, ($BB0_231)
	ADDI      r4, r4, 0
$BB0_230:                               # %bb3.i76
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        #       Parent Loop BB0_135 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_230)
	ADDK      r4, r4, r4
$BB0_231:                               # %bb3.i76
                                        #   in Loop: Header=BB0_135 Depth=3
	ADDI      r3, r19, 84
	LWI       r5, r19, 156540
	ADDI      r5, r5, 1
	SWI       r5, r19, 156540
	ADDI      r5, r6, 1
	ADD       r3, r3, r4
	brid      ($BB0_135)
	SWI       r5, r3, 4
$BB0_232:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit149
                                        #   in Loop: Header=BB0_134 Depth=2
	LWI       r6, r19, 156560
	SWI       r6, r19, 156368
	LWI        r6, r19, 156368
	ORI       r3, r0, 1343554297
	LWI       r4, r19, 156628
	SWI       r4, r19, 156364
	LWI       r4, r19, 156624
	SWI       r4, r19, 156360
	LWI       r4, r19, 156620
	SWI       r4, r19, 156356
	LWI       r4, r19, 156616
	SWI       r4, r19, 156352
	LWI       r4, r19, 156612
	SWI       r4, r19, 156348
	LWI       r4, r19, 156608
	SWI       r4, r19, 156344
	LWI        r4, r19, 156364
	LWI        r5, r19, 156360
	LWI        r7, r19, 156356
	LWI        r8, r19, 156352
	LWI        r20, r19, 156348
	LWI        r21, r19, 156344
	ORI       r9, r0, 1038469405
	ORI       r10, r0, 1041583256
	ORI       r11, r0, 1045059495
	FPUN      r12, r6, r3
	FPGE      r3, r6, r3
	BITOR     r3, r12, r3
	bneid     r3, ($BB0_234)
	ADDI      r22, r0, 1
# BB#233:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit149
                                        #   in Loop: Header=BB0_134 Depth=2
	ADDI      r22, r0, 0
$BB0_234:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit149
                                        #   in Loop: Header=BB0_134 Depth=2
	bneid     r22, ($BB0_249)
	NOP    
# BB#235:                               #   in Loop: Header=BB0_134 Depth=2
	ADD       r9, r0, r0
	ADDI      r10, r19, 216
	ADDI      r11, r0, 1000
$BB0_236:                               # %bb1.i37
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	SWI       r0, r10, 0
	SWI       r0, r10, 4
	SWI       r0, r10, 8
	SWI       r0, r10, 12
	SWI       r0, r10, 16
	SWI       r0, r10, 20
	ADDI      r3, r0, 1065353216
	SWI       r3, r10, 24
	ADDI      r12, r0, -1
	ADDK      r11, r11, r12
	ADDKC      r9, r9, r12
	ADDI      r12, r10, 52
	SWI       r3, r10, 28
	ADD       r22, r0, r0
	BITOR     r23, r11, r9
	SWI       r3, r10, 32
	CMP       r3, r22, r23
	bneid     r3, ($BB0_236)
	ADD       r10, r12, r0
# BB#237:                               # %bb3.i42
                                        #   in Loop: Header=BB0_134 Depth=2
	LWI       r3, r19, 156600
	SWI       r3, r19, 156416
	LWI       r3, r19, 156604
	SWI       r3, r19, 156408
	SWI       r3, r19, 156412
	LWI       r9, r19, 156576
	SWI       r9, r19, 156400
	LWI       r9, r19, 156580
	SWI       r9, r19, 156404
	LWI       r3, r19, 156596
	SWI       r3, r19, 156420
	LWI        r9, r19, 156416
	LWI        r10, r19, 156408
	LWI        r11, r19, 156412
	LWI        r3, r19, 156400
	LWI        r12, r19, 156404
	LWI        r22, r19, 156420
	FPRSUB    r9, r10, r9
	FPRSUB    r10, r12, r8
	FPRSUB    r4, r7, r4
	FPRSUB    r11, r3, r11
	FPRSUB    r3, r22, r7
	FPRSUB    r5, r8, r5
	FPMUL     r7, r5, r11
	FPMUL     r8, r10, r9
	FPMUL     r9, r3, r9
	FPMUL     r11, r4, r11
	FPRSUB    r7, r8, r7
	FPRSUB    r9, r11, r9
	FPMUL     r10, r10, r4
	FPMUL     r11, r3, r5
	FPRSUB    r10, r11, r10
	FPMUL     r11, r7, r7
	FPMUL     r3, r9, r9
	FPADD     r11, r11, r3
	FPMUL     r3, r10, r10
	FPADD     r11, r11, r3
	SWI       r0, r19, 52216
	LWI       r3, r19, 156660
	SWI       r3, r19, 156372
	FPINVSQRT r11, r11
	ORI       r3, r0, 1065353216
	FPDIV     r11, r3, r11
	LWI        r3, r19, 156372
	LWI       r4, r19, 156552
	FPMUL     r4, r4, r6
	LWI       r5, r19, 156548
	FPMUL     r5, r5, r6
	FPDIV     r22, r9, r11
	FPDIV     r23, r7, r11
	LWI       r9, r19, 156568
	FPADD     r9, r4, r9
	LWI       r7, r19, 156564
	FPADD     r7, r5, r7
	LWI       r8, r19, 156728
	SWI       r8, r19, 156384
	FPMUL     r3, r3, r6
	FPDIV     r6, r10, r11
	ADDI      r1, r1, -36
	ADDI      r10, r19, 52216
	SWI        r9, r19, 156396
	SWI        r7, r19, 156392
	LWI        r9, r19, 156384
	SWI        r3, r19, 156388
	SWI        r4, r19, 156380
	SWI        r5, r19, 156376
	SWI        r6, r19, 156432
	SWI        r22, r19, 156428
	SWI        r23, r19, 156424
	LWI       r6, r19, 156676
	SWI       r6, r19, 24
	LWI       r6, r19, 156664
	SWI       r6, r19, 28
	SWI       r10, r19, 32
	ADDI      r24, r19, 52224
	LWI       r25, r19, 156432
	ADD       r26, r0, r0
	ADDI      r27, r0, 1000
	LWI       r6, r19, 156396
	LWI       r7, r19, 156392
	FPADD     r8, r9, r3
	ADDI      r10, r19, 216
	brlid     r15, _ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi
	ADD       r9, r26, r0
	ADDI      r1, r1, 36
$BB0_238:                               # %bb37.i
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	SWI       r0, r24, 0
	SWI       r0, r24, 4
	SWI       r0, r24, 8
	SWI       r0, r24, 12
	SWI       r0, r24, 16
	SWI       r0, r24, 20
	ADDI      r6, r0, 1065353216
	SWI       r6, r24, 24
	ADDI      r9, r0, -1
	ADDK      r27, r27, r9
	ADDKC      r26, r26, r9
	ADDI      r9, r24, 52
	SWI       r6, r24, 28
	ADD       r10, r0, r0
	BITOR     r11, r27, r26
	SWI       r6, r24, 32
	CMP       r6, r10, r11
	bneid     r6, ($BB0_238)
	ADD       r24, r9, r0
# BB#239:                               # %bb39.i
                                        #   in Loop: Header=BB0_134 Depth=2
	LWI       r6, r19, 52216
	ORI       r9, r0, 0
	ADD       r10, r0, r0
	CMP       r10, r10, r6
	ADD       r24, r9, r0
	beqid     r10, ($BB0_248)
	ADD       r26, r9, r0
# BB#240:                               # %bb41.i.lr.ph
                                        #   in Loop: Header=BB0_134 Depth=2
	MULI      r9, r6, 13
	ADDI      r10, r0, 2
	SWI       r25, r19, 156436
	ANDI      r10, r10, 31
	beqid     r10, ($BB0_242)
	ADDI      r9, r9, 0
$BB0_241:                               # %bb41.i.lr.ph
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r10, r10, -1
	bneid     r10, ($BB0_241)
	ADDK      r9, r9, r9
$BB0_242:                               # %bb41.i.lr.ph
                                        #   in Loop: Header=BB0_134 Depth=2
	LWI        r10, r19, 156436
	LWI       r11, r19, 156732
	ADD       r11, r11, r9
	ORI       r9, r0, 0
	ADD       r3, r0, r0
	ADD       r24, r9, r0
	ADD       r26, r9, r0
$BB0_243:                               # %bb41.i
                                        #   Parent Loop BB0_133 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	LWI        r4, r11, -8
	LWI        r5, r11, -4
	FPMUL     r7, r23, r4
	ORI       r8, r0, 0
	LWI        r12, r11, 0
	FPRSUB    r7, r7, r8
	FPMUL     r25, r22, r5
	FPRSUB    r7, r25, r7
	FPMUL     r25, r10, r12
	FPRSUB    r7, r25, r7
	ADDI      r25, r0, 1
	FPGT      r27, r7, r8
	bneid     r27, ($BB0_245)
	NOP    
# BB#244:                               # %bb41.i
                                        #   in Loop: Header=BB0_243 Depth=3
	ADDI      r25, r0, 0
$BB0_245:                               # %bb41.i
                                        #   in Loop: Header=BB0_243 Depth=3
	FPNEG     r12, r12
	SWI        r5, r19, 156444
	FPNEG     r4, r4
	bneid     r25, ($BB0_247)
	LWI        r5, r11, 4
# BB#246:                               # %bb41.i
                                        #   in Loop: Header=BB0_243 Depth=3
	ADD       r7, r8, r0
$BB0_247:                               # %bb41.i
                                        #   in Loop: Header=BB0_243 Depth=3
	LWI        r8, r11, 8
	LWI        r25, r11, 12
	SWI        r12, r19, 156440
	SWI        r4, r19, 156448
	FPMUL     r4, r5, r7
	FPMUL     r5, r8, r7
	FPMUL     r7, r25, r7
	ADDI      r8, r0, -1
	ADDK      r6, r6, r8
	ADDKC      r3, r3, r8
	FPADD     r26, r26, r4
	FPADD     r24, r24, r5
	FPADD     r9, r9, r7
	ADDI      r11, r11, -52
	ADD       r4, r0, r0
	BITOR     r5, r6, r3
	CMP       r4, r4, r5
	bneid     r4, ($BB0_243)
	NOP    
$BB0_248:                               # %bb60.i
                                        #   in Loop: Header=BB0_134 Depth=2
	LWI       r6, r19, 156592
	SWI       r6, r19, 156452
	LWI        r6, r19, 156452
	ADDI      r1, r1, -8
	brlid     r15, __extendsfdf2
	FPMUL     r6, r9, r6
	ADDI      r1, r1, 8
	ADD       r22, r3, r0
	ADD       r23, r4, r0
	LWI       r6, r19, 156656
	brlid     r15, __extendsfdf2
	ADDI      r1, r1, -8
	ADDI      r1, r1, 8
	ADD       r25, r3, r0
	ADD       r27, r4, r0
	ADDI      r1, r1, -8
	brlid     r15, __extendsfdf2
	FPMUL     r6, r24, r21
	ADDI      r1, r1, 8
	ADD       r21, r3, r0
	ADD       r24, r4, r0
	LWI       r6, r19, 156652
	brlid     r15, __extendsfdf2
	ADDI      r1, r1, -8
	ADDI      r1, r1, 8
	ADD       r28, r3, r0
	ADD       r29, r4, r0
	ADDI      r1, r1, -8
	brlid     r15, __extendsfdf2
	FPMUL     r6, r26, r20
	ADDI      r1, r1, 8
	ADD       r20, r3, r0
	ADD       r26, r4, r0
	LWI       r6, r19, 156648
	brlid     r15, __extendsfdf2
	ADDI      r1, r1, -8
	ADDI      r1, r1, 8
	ADD       r30, r3, r0
	ADD       r31, r4, r0
	ADDI      r1, r1, -20
	ADD       r6, r22, r0
	ADD       r7, r23, r0
	LWI       r22, r19, 156736
	ADD       r8, r22, r0
	LWI       r23, r19, 156740
	brlid     r15, __divdf3
	ADD       r9, r23, r0
	ADDI      r1, r1, 20
	ADDI      r1, r1, -20
	ADD       r6, r25, r0
	ADD       r7, r27, r0
	ADD       r8, r3, r0
	brlid     r15, __adddf3
	ADD       r9, r4, r0
	ADDI      r1, r1, 20
	ADD       r25, r3, r0
	ADD       r27, r4, r0
	ADDI      r1, r1, -20
	ADD       r6, r21, r0
	ADD       r7, r24, r0
	ADD       r8, r22, r0
	brlid     r15, __divdf3
	ADD       r9, r23, r0
	ADDI      r1, r1, 20
	ADDI      r1, r1, -20
	ADD       r6, r28, r0
	ADD       r7, r29, r0
	ADD       r8, r3, r0
	brlid     r15, __adddf3
	ADD       r9, r4, r0
	ADDI      r1, r1, 20
	ADD       r21, r3, r0
	ADD       r24, r4, r0
	ADDI      r1, r1, -20
	ADD       r6, r20, r0
	ADD       r7, r26, r0
	ADD       r8, r22, r0
	brlid     r15, __divdf3
	ADD       r9, r23, r0
	ADDI      r1, r1, 20
	ADDI      r1, r1, -20
	ADD       r6, r30, r0
	ADD       r7, r31, r0
	ADD       r8, r3, r0
	brlid     r15, __adddf3
	ADD       r9, r4, r0
	ADDI      r1, r1, 20
	ADD       r20, r3, r0
	ADD       r22, r4, r0
	ADDI      r1, r1, -12
	ADD       r6, r25, r0
	brlid     r15, __truncdfsf2
	ADD       r7, r27, r0
	ADDI      r1, r1, 12
	ADD       r23, r3, r0
	SWI       r23, r19, 156656
	ADDI      r1, r1, -12
	ADD       r6, r21, r0
	brlid     r15, __truncdfsf2
	ADD       r7, r24, r0
	ADDI      r1, r1, 12
	ADD       r21, r3, r0
	SWI       r21, r19, 156652
	ADDI      r1, r1, -12
	ORI       r24, r0, 1045220557
	ADD       r6, r20, r0
	brlid     r15, __truncdfsf2
	ADD       r7, r22, r0
	ADDI      r1, r1, 12
	FPMUL     r9, r3, r24
	FPMUL     r10, r21, r24
	FPMUL     r11, r23, r24
	SWI       r0, r19, 52216
	SWI       r3, r19, 156648
$BB0_249:                               # %invcont94
                                        #   in Loop: Header=BB0_134 Depth=2
	LWI       r6, r19, 156644
	ADDI      r6, r6, -1
	SWI       r6, r19, 156644
	ADD       r3, r0, r0
	CMP       r6, r3, r6
	bneid     r6, ($BB0_134)
	NOP    
# BB#250:                               # %invcont103
                                        #   in Loop: Header=BB0_133 Depth=1
	ORI       r6, r0, 0
	ADDI      r3, r0, 1
	FPLT      r4, r9, r6
	bneid     r4, ($BB0_252)
	NOP    
# BB#251:                               # %invcont103
                                        #   in Loop: Header=BB0_133 Depth=1
	ADDI      r3, r0, 0
$BB0_252:                               # %invcont103
                                        #   in Loop: Header=BB0_133 Depth=1
	bneid     r3, ($BB0_257)
	NOP    
# BB#253:                               # %bb1.i
                                        #   in Loop: Header=BB0_133 Depth=1
	ORI       r6, r0, 1065353216
	ADDI      r3, r0, 1
	FPGT      r4, r9, r6
	bneid     r4, ($BB0_255)
	NOP    
# BB#254:                               # %bb1.i
                                        #   in Loop: Header=BB0_133 Depth=1
	ADDI      r3, r0, 0
$BB0_255:                               # %bb1.i
                                        #   in Loop: Header=BB0_133 Depth=1
	bneid     r3, ($BB0_257)
	NOP    
# BB#256:                               # %bb4.i
                                        #   in Loop: Header=BB0_133 Depth=1
	ADD       r6, r9, r0
$BB0_257:                               # %bb5.i
                                        #   in Loop: Header=BB0_133 Depth=1
	ORI       r3, r0, 0
	ADDI      r4, r0, 1
	FPLT      r5, r11, r3
	bneid     r5, ($BB0_259)
	NOP    
# BB#258:                               # %bb5.i
                                        #   in Loop: Header=BB0_133 Depth=1
	ADDI      r4, r0, 0
$BB0_259:                               # %bb5.i
                                        #   in Loop: Header=BB0_133 Depth=1
	bneid     r4, ($BB0_264)
	NOP    
# BB#260:                               # %bb8.i
                                        #   in Loop: Header=BB0_133 Depth=1
	ORI       r3, r0, 1065353216
	ADDI      r4, r0, 1
	FPGT      r5, r11, r3
	bneid     r5, ($BB0_262)
	NOP    
# BB#261:                               # %bb8.i
                                        #   in Loop: Header=BB0_133 Depth=1
	ADDI      r4, r0, 0
$BB0_262:                               # %bb8.i
                                        #   in Loop: Header=BB0_133 Depth=1
	bneid     r4, ($BB0_264)
	NOP    
# BB#263:                               # %bb11.i
                                        #   in Loop: Header=BB0_133 Depth=1
	ADD       r3, r11, r0
$BB0_264:                               # %bb12.i
                                        #   in Loop: Header=BB0_133 Depth=1
	ORI       r4, r0, 0
	ADDI      r5, r0, 1
	FPLT      r7, r10, r4
	bneid     r7, ($BB0_266)
	NOP    
# BB#265:                               # %bb12.i
                                        #   in Loop: Header=BB0_133 Depth=1
	ADDI      r5, r0, 0
$BB0_266:                               # %bb12.i
                                        #   in Loop: Header=BB0_133 Depth=1
	bneid     r5, ($BB0_271)
	NOP    
# BB#267:                               # %bb15.i
                                        #   in Loop: Header=BB0_133 Depth=1
	ORI       r4, r0, 1065353216
	ADDI      r5, r0, 1
	FPGT      r7, r10, r4
	bneid     r7, ($BB0_269)
	NOP    
# BB#268:                               # %bb15.i
                                        #   in Loop: Header=BB0_133 Depth=1
	ADDI      r5, r0, 0
$BB0_269:                               # %bb15.i
                                        #   in Loop: Header=BB0_133 Depth=1
	bneid     r5, ($BB0_271)
	NOP    
# BB#270:                               # %bb18.i
                                        #   in Loop: Header=BB0_133 Depth=1
	ADD       r4, r10, r0
$BB0_271:                               # %invcont115
                                        #   in Loop: Header=BB0_133 Depth=1
	LWI       r7, r19, 156748
	LWI       r5, r19, 156744
	ADD       r5, r5, r7
	MULI      r5, r5, 3
	LWI       r7, r19, 156764
	ADD       r5, r5, r7
	STORE     r5, r6, 0
	STORE     r5, r4, 1
	STORE     r5, r3, 2
	ATOMIC_INC r6, 0
	LWI       r3, r19, 156776
	CMP       r3, r6, r3
	bgtid     r3, ($BB0_133)
	NOP    
$BB0_272:                               # %return
	LWI       r31, r19, 36
	LWI       r30, r19, 40
	LWI       r29, r19, 44
	LWI       r28, r19, 48
	LWI       r27, r19, 52
	LWI       r26, r19, 56
	LWI       r25, r19, 60
	LWI       r24, r19, 64
	LWI       r23, r19, 68
	LWI       r22, r19, 72
	LWI       r21, r19, 76
	LWI       r20, r19, 80
	ADDK      r1, r19, r0
	LWI       r19, r1, 4
	LWI       r15, r1, 0
	ADDI      r1, r1, 156780
	rtsd      r15, 8
	ADD       r3, r0, r0
	.end	main
$tmp0:
	.size	main, ($tmp0)-main

	.align	2
	.type	_ZN9PhotonMap8generateEP6PhotonS1_ii,@function
	.ent	_ZN9PhotonMap8generateEP6PhotonS1_ii # @_ZN9PhotonMap8generateEP6PhotonS1_ii
_ZN9PhotonMap8generateEP6PhotonS1_ii:
	.frame	r19,316,r15
	.mask	0xfff88000
# BB#0:                                 # %entry
	ADDI      r1, r1, -316
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
	ORI       r3, r0, __stack_chk_guard
	LWI       r3, r3, 0
	ADD       r4, r0, r0
	SWI       r3, r19, 56
	CMP       r3, r4, r8
	beqid     r3, ($BB1_296)
	NOP    
# BB#1:                                 # %invcont.lr.ph
	SWI       r6, r19, 228
	SWI       r7, r19, 300
	ADD       r3, r8, r0
	SWI       r3, r19, 296
	SWI       r9, r19, 304
	ADDI      r4, r6, 8
	ORI       r5, r0, -887581057
	ORI       r6, r0, 1259902591
	SWI       r1, r19, 308
	ADD       r7, r0, r0
	ADD       r8, r5, r0
	ADD       r9, r5, r0
	ADD       r10, r6, r0
	ADD       r11, r6, r0
$BB1_2:                                 # %invcont
                                        # =>This Inner Loop Header: Depth=1
	LWI        r12, r4, -8
	LWI        r20, r4, -4
	LWI        r21, r4, 0
	FPLT      r22, r12, r11
	FPLT      r23, r20, r10
	FPLT      r24, r21, r6
	FPGT      r25, r12, r9
	FPGT      r26, r20, r8
	ADDI      r27, r0, 1
	ADDI      r28, r0, 0
	FPGT      r29, r21, r5
	bneid     r22, ($BB1_4)
	ADD       r30, r27, r0
# BB#3:                                 # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	ADD       r30, r28, r0
$BB1_4:                                 # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	bneid     r23, ($BB1_6)
	ADD       r22, r27, r0
# BB#5:                                 # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	ADD       r22, r28, r0
$BB1_6:                                 # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	bneid     r24, ($BB1_8)
	ADD       r23, r27, r0
# BB#7:                                 # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	ADD       r23, r28, r0
$BB1_8:                                 # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	bneid     r25, ($BB1_10)
	ADD       r24, r27, r0
# BB#9:                                 # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	ADD       r24, r28, r0
$BB1_10:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	bneid     r26, ($BB1_12)
	ADD       r25, r27, r0
# BB#11:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	ADD       r25, r28, r0
$BB1_12:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	bneid     r29, ($BB1_14)
	NOP    
# BB#13:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	ADD       r27, r28, r0
$BB1_14:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	ADDI      r26, r0, -1
	ADDK      r3, r3, r26
	ADDKC      r7, r7, r26
	bneid     r30, ($BB1_16)
	ADD       r26, r12, r0
# BB#15:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	ADD       r26, r11, r0
$BB1_16:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	bneid     r22, ($BB1_18)
	ADD       r28, r20, r0
# BB#17:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	ADD       r28, r10, r0
$BB1_18:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	bneid     r23, ($BB1_20)
	ADD       r22, r21, r0
# BB#19:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	ADD       r22, r6, r0
$BB1_20:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	bneid     r24, ($BB1_22)
	NOP    
# BB#21:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	ADD       r12, r9, r0
$BB1_22:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	bneid     r25, ($BB1_24)
	NOP    
# BB#23:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	ADD       r20, r8, r0
$BB1_24:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	bneid     r27, ($BB1_26)
	NOP    
# BB#25:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	ADD       r21, r5, r0
$BB1_26:                                # %invcont
                                        #   in Loop: Header=BB1_2 Depth=1
	ADDI      r4, r4, 52
	ADD       r5, r0, r0
	BITOR     r6, r3, r7
	CMP       r23, r5, r6
	ADD       r5, r21, r0
	ADD       r8, r20, r0
	ADD       r9, r12, r0
	ADD       r6, r22, r0
	ADD       r10, r28, r0
	bneid     r23, ($BB1_2)
	ADD       r11, r26, r0
# BB#27:                                # %bb120
	FPRSUB    r3, r26, r12
	FPRSUB    r4, r28, r20
	FPUN      r5, r3, r4
	FPLE      r6, r3, r4
	BITOR     r5, r5, r6
	bneid     r5, ($BB1_29)
	ADDI      r7, r0, 1
# BB#28:                                # %bb120
	ADDI      r7, r0, 0
$BB1_29:                                # %bb120
	bneid     r7, ($BB1_33)
	FPRSUB    r5, r22, r21
# BB#30:                                # %bb120
	ADDI      r6, r0, 1
	FPGT      r7, r3, r5
	bneid     r7, ($BB1_32)
	NOP    
# BB#31:                                # %bb120
	ADDI      r6, r0, 0
$BB1_32:                                # %bb120
	ADD       r7, r0, r0
	bneid     r6, ($BB1_39)
	SWI       r7, r19, 232
$BB1_33:                                # %bb123
	FPUN      r6, r4, r3
	FPLE      r3, r4, r3
	FPUN      r7, r4, r5
	FPLE      r4, r4, r5
	ADDI      r5, r0, 1
	BITOR     r3, r6, r3
	ADDI      r6, r0, 0
	bneid     r3, ($BB1_35)
	ADD       r8, r5, r0
# BB#34:                                # %bb123
	ADD       r8, r6, r0
$BB1_35:                                # %bb123
	BITOR     r3, r7, r4
	bneid     r3, ($BB1_37)
	ADD       r4, r5, r0
# BB#36:                                # %bb123
	ADD       r4, r6, r0
$BB1_37:                                # %bb123
	ADDI      r3, r0, 2
	SWI       r3, r19, 232
	BITOR     r3, r8, r4
	bneid     r3, ($BB1_39)
	NOP    
# BB#38:                                # %bb123
	SWI       r5, r19, 232
$BB1_39:                                # %bb127
	SWI       r1, r19, 312
	SWI       r0, r19, 64
	SWI       r0, r19, 68
	SWI       r0, r19, 72
	SWI       r0, r19, 76
	SWI       r0, r19, 80
	SWI       r0, r19, 84
	ADDI      r3, r0, 1065353216
	SWI       r3, r19, 88
	SWI       r3, r19, 92
	SWI       r3, r19, 96
	ADDI      r1, r1, -4
	ADDI      r3, r0, 2
	SWI       r3, r19, 288
	ADD       r4, r1, r0
	ANDI      r3, r3, 31
	LWI       r5, r19, 296
	beqid     r3, ($BB1_41)
	ADDI      r5, r5, 0
$BB1_40:                                # %bb127
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_40)
	ADDK      r5, r5, r5
$BB1_41:                                # %bb127
	RSUB      r3, r5, r4
	SWI       r3, r19, 292
	ADD       r1, r3, r0
	ADDI      r4, r19, 64
	ADDI      r1, r1, 4
	LWI       r6, r19, 228
	ADDI      r5, r6, 8
	SWI       r5, r19, 240
	ADDI      r5, r4, 8
	SWI       r5, r19, 280
	ORI       r4, r4, 4
	SWI       r4, r19, 284
	SWI       r0, r3, 0
	LWI       r4, r19, 296
	brid      ($BB1_255)
	SWI       r4, r3, 4
$BB1_42:                                # %bb.i52
                                        #   in Loop: Header=BB1_255 Depth=1
	ADDI      r3, r0, 2
	ANDI      r4, r3, 31
	LWI       r5, r19, 288
	beqid     r4, ($BB1_44)
	ADDI      r5, r5, 0
$BB1_43:                                # %bb.i52
                                        #   Parent Loop BB1_255 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r4, r4, -1
	bneid     r4, ($BB1_43)
	ADDK      r5, r5, r5
$BB1_44:                                # %bb.i52
                                        #   in Loop: Header=BB1_255 Depth=1
	LWI       r4, r19, 288
	ADDI      r4, r4, -2
	SWI       r4, r19, 288
	ANDI      r3, r3, 31
	beqid     r3, ($BB1_46)
	ADDI      r4, r4, 0
$BB1_45:                                # %bb.i52
                                        #   Parent Loop BB1_255 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_45)
	ADDK      r4, r4, r4
$BB1_46:                                # %bb.i52
                                        #   in Loop: Header=BB1_255 Depth=1
	LWI       r3, r19, 292
	ADD       r5, r5, r3
	LWI       r5, r5, -4
	SWI       r5, r19, 272
	LW        r3, r3, r4
	SWI       r3, r19, 276
$BB1_47:                                # %bb1.i53
                                        #   Parent Loop BB1_255 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_52 Depth 3
                                        #         Child Loop BB1_66 Depth 4
                                        #         Child Loop BB1_63 Depth 4
                                        #         Child Loop BB1_85 Depth 4
                                        #         Child Loop BB1_82 Depth 4
                                        #         Child Loop BB1_239 Depth 4
                                        #         Child Loop BB1_237 Depth 4
                                        #         Child Loop BB1_235 Depth 4
                                        #         Child Loop BB1_233 Depth 4
                                        #         Child Loop BB1_231 Depth 4
                                        #         Child Loop BB1_229 Depth 4
                                        #         Child Loop BB1_227 Depth 4
                                        #         Child Loop BB1_225 Depth 4
                                        #         Child Loop BB1_223 Depth 4
                                        #         Child Loop BB1_221 Depth 4
                                        #         Child Loop BB1_219 Depth 4
                                        #         Child Loop BB1_217 Depth 4
                                        #         Child Loop BB1_215 Depth 4
                                        #         Child Loop BB1_213 Depth 4
                                        #         Child Loop BB1_211 Depth 4
                                        #         Child Loop BB1_209 Depth 4
                                        #         Child Loop BB1_207 Depth 4
                                        #         Child Loop BB1_205 Depth 4
                                        #         Child Loop BB1_203 Depth 4
                                        #         Child Loop BB1_201 Depth 4
                                        #         Child Loop BB1_199 Depth 4
                                        #         Child Loop BB1_197 Depth 4
                                        #         Child Loop BB1_195 Depth 4
                                        #         Child Loop BB1_193 Depth 4
                                        #         Child Loop BB1_191 Depth 4
                                        #         Child Loop BB1_189 Depth 4
                                        #         Child Loop BB1_187 Depth 4
                                        #         Child Loop BB1_185 Depth 4
                                        #         Child Loop BB1_183 Depth 4
                                        #         Child Loop BB1_181 Depth 4
                                        #         Child Loop BB1_179 Depth 4
                                        #         Child Loop BB1_177 Depth 4
                                        #         Child Loop BB1_175 Depth 4
                                        #         Child Loop BB1_173 Depth 4
                                        #         Child Loop BB1_171 Depth 4
                                        #         Child Loop BB1_169 Depth 4
                                        #         Child Loop BB1_167 Depth 4
                                        #         Child Loop BB1_165 Depth 4
                                        #         Child Loop BB1_163 Depth 4
                                        #         Child Loop BB1_161 Depth 4
                                        #         Child Loop BB1_159 Depth 4
                                        #         Child Loop BB1_157 Depth 4
                                        #         Child Loop BB1_155 Depth 4
                                        #         Child Loop BB1_153 Depth 4
                                        #         Child Loop BB1_151 Depth 4
                                        #         Child Loop BB1_149 Depth 4
                                        #         Child Loop BB1_147 Depth 4
                                        #         Child Loop BB1_145 Depth 4
                                        #         Child Loop BB1_143 Depth 4
                                        #         Child Loop BB1_141 Depth 4
                                        #         Child Loop BB1_139 Depth 4
                                        #         Child Loop BB1_137 Depth 4
                                        #         Child Loop BB1_135 Depth 4
                                        #         Child Loop BB1_133 Depth 4
                                        #         Child Loop BB1_131 Depth 4
                                        #         Child Loop BB1_129 Depth 4
                                        #         Child Loop BB1_127 Depth 4
                                        #         Child Loop BB1_125 Depth 4
                                        #         Child Loop BB1_123 Depth 4
                                        #         Child Loop BB1_121 Depth 4
                                        #         Child Loop BB1_119 Depth 4
                                        #         Child Loop BB1_117 Depth 4
                                        #         Child Loop BB1_115 Depth 4
                                        #         Child Loop BB1_113 Depth 4
                                        #         Child Loop BB1_111 Depth 4
                                        #         Child Loop BB1_109 Depth 4
                                        #         Child Loop BB1_107 Depth 4
                                        #         Child Loop BB1_105 Depth 4
                                        #         Child Loop BB1_103 Depth 4
                                        #         Child Loop BB1_101 Depth 4
                                        #         Child Loop BB1_99 Depth 4
                                        #         Child Loop BB1_97 Depth 4
                                        #         Child Loop BB1_89 Depth 4
                                        #         Child Loop BB1_79 Depth 4
                                        #         Child Loop BB1_77 Depth 4
                                        #         Child Loop BB1_70 Depth 4
                                        #         Child Loop BB1_60 Depth 4
                                        #         Child Loop BB1_58 Depth 4
                                        #       Child Loop BB1_50 Depth 3
                                        #       Child Loop BB1_48 Depth 3
                                        #       Child Loop BB1_251 Depth 3
                                        #       Child Loop BB1_247 Depth 3
	LWI       r4, r19, 276
	LWI       r3, r19, 272
	ADD       r3, r4, r3
	ADDI      r4, r0, 31
	ANDI      r4, r4, 31
	beqid     r4, ($BB1_49)
	ADDI      r5, r3, 0
$BB1_48:                                # %bb1.i53
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srl       r5, r5
	ADDI      r4, r4, -1
	bneid     r4, ($BB1_48)
	NOP    
$BB1_49:                                # %bb1.i53
                                        #   in Loop: Header=BB1_47 Depth=2
	ADD       r3, r3, r5
	ADDI      r4, r0, 1
	ANDI      r4, r4, 31
	beqid     r4, ($BB1_51)
	ADDI      r3, r3, 0
$BB1_50:                                # %bb1.i53
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sra       r3, r3
	ADDI      r4, r4, -1
	bneid     r4, ($BB1_50)
	NOP    
$BB1_51:                                # %bb1.i53
                                        #   in Loop: Header=BB1_47 Depth=2
	MULI      r3, r3, 52
	ADDI      r1, r1, -16
	ADDI      r4, r19, 64
	SWI       r4, r19, 268
	LWI       r6, r19, 228
	ADD       r7, r6, r3
	ADDI      r8, r0, 52
	brlid     r15, memcpy
	ADD       r6, r4, r0
	ADDI      r1, r1, 16
	LWI       r20, r19, 276
	LWI       r21, r19, 272
$BB1_52:                                # %bb5.i.outer
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_66 Depth 4
                                        #         Child Loop BB1_63 Depth 4
                                        #         Child Loop BB1_85 Depth 4
                                        #         Child Loop BB1_82 Depth 4
                                        #         Child Loop BB1_239 Depth 4
                                        #         Child Loop BB1_237 Depth 4
                                        #         Child Loop BB1_235 Depth 4
                                        #         Child Loop BB1_233 Depth 4
                                        #         Child Loop BB1_231 Depth 4
                                        #         Child Loop BB1_229 Depth 4
                                        #         Child Loop BB1_227 Depth 4
                                        #         Child Loop BB1_225 Depth 4
                                        #         Child Loop BB1_223 Depth 4
                                        #         Child Loop BB1_221 Depth 4
                                        #         Child Loop BB1_219 Depth 4
                                        #         Child Loop BB1_217 Depth 4
                                        #         Child Loop BB1_215 Depth 4
                                        #         Child Loop BB1_213 Depth 4
                                        #         Child Loop BB1_211 Depth 4
                                        #         Child Loop BB1_209 Depth 4
                                        #         Child Loop BB1_207 Depth 4
                                        #         Child Loop BB1_205 Depth 4
                                        #         Child Loop BB1_203 Depth 4
                                        #         Child Loop BB1_201 Depth 4
                                        #         Child Loop BB1_199 Depth 4
                                        #         Child Loop BB1_197 Depth 4
                                        #         Child Loop BB1_195 Depth 4
                                        #         Child Loop BB1_193 Depth 4
                                        #         Child Loop BB1_191 Depth 4
                                        #         Child Loop BB1_189 Depth 4
                                        #         Child Loop BB1_187 Depth 4
                                        #         Child Loop BB1_185 Depth 4
                                        #         Child Loop BB1_183 Depth 4
                                        #         Child Loop BB1_181 Depth 4
                                        #         Child Loop BB1_179 Depth 4
                                        #         Child Loop BB1_177 Depth 4
                                        #         Child Loop BB1_175 Depth 4
                                        #         Child Loop BB1_173 Depth 4
                                        #         Child Loop BB1_171 Depth 4
                                        #         Child Loop BB1_169 Depth 4
                                        #         Child Loop BB1_167 Depth 4
                                        #         Child Loop BB1_165 Depth 4
                                        #         Child Loop BB1_163 Depth 4
                                        #         Child Loop BB1_161 Depth 4
                                        #         Child Loop BB1_159 Depth 4
                                        #         Child Loop BB1_157 Depth 4
                                        #         Child Loop BB1_155 Depth 4
                                        #         Child Loop BB1_153 Depth 4
                                        #         Child Loop BB1_151 Depth 4
                                        #         Child Loop BB1_149 Depth 4
                                        #         Child Loop BB1_147 Depth 4
                                        #         Child Loop BB1_145 Depth 4
                                        #         Child Loop BB1_143 Depth 4
                                        #         Child Loop BB1_141 Depth 4
                                        #         Child Loop BB1_139 Depth 4
                                        #         Child Loop BB1_137 Depth 4
                                        #         Child Loop BB1_135 Depth 4
                                        #         Child Loop BB1_133 Depth 4
                                        #         Child Loop BB1_131 Depth 4
                                        #         Child Loop BB1_129 Depth 4
                                        #         Child Loop BB1_127 Depth 4
                                        #         Child Loop BB1_125 Depth 4
                                        #         Child Loop BB1_123 Depth 4
                                        #         Child Loop BB1_121 Depth 4
                                        #         Child Loop BB1_119 Depth 4
                                        #         Child Loop BB1_117 Depth 4
                                        #         Child Loop BB1_115 Depth 4
                                        #         Child Loop BB1_113 Depth 4
                                        #         Child Loop BB1_111 Depth 4
                                        #         Child Loop BB1_109 Depth 4
                                        #         Child Loop BB1_107 Depth 4
                                        #         Child Loop BB1_105 Depth 4
                                        #         Child Loop BB1_103 Depth 4
                                        #         Child Loop BB1_101 Depth 4
                                        #         Child Loop BB1_99 Depth 4
                                        #         Child Loop BB1_97 Depth 4
                                        #         Child Loop BB1_89 Depth 4
                                        #         Child Loop BB1_79 Depth 4
                                        #         Child Loop BB1_77 Depth 4
                                        #         Child Loop BB1_70 Depth 4
                                        #         Child Loop BB1_60 Depth 4
                                        #         Child Loop BB1_58 Depth 4
	ADD       r3, r0, r0
	LWI       r4, r19, 232
	CMP       r3, r3, r4
	beqid     r3, ($BB1_56)
	LWI       r4, r19, 268
# BB#53:                                # %bb5.i.outer
                                        #   in Loop: Header=BB1_52 Depth=3
	ADDI      r4, r0, 1
	LWI       r3, r19, 232
	CMP       r4, r4, r3
	bneid     r4, ($BB1_55)
	NOP    
# BB#54:                                # %bb5.i1
                                        #   in Loop: Header=BB1_52 Depth=3
	brid      ($BB1_56)
	LWI       r4, r19, 284
$BB1_55:                                # %bb12.i
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI       r4, r19, 280
$BB1_56:                                # %_ZN6Photon8get_axisEi.exit
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI        r3, r4, 0
	ADD       r4, r0, r0
	LWI       r5, r19, 232
	CMP       r4, r4, r5
	beqid     r4, ($BB1_62)
	NOP    
# BB#57:                                # %bb5.i.preheader
                                        #   in Loop: Header=BB1_52 Depth=3
	MULI      r4, r20, 13
	ADDI      r5, r0, 2
	ANDI      r5, r5, 31
	beqid     r5, ($BB1_59)
	ADDI      r4, r4, 0
$BB1_58:                                # %bb5.i.preheader
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r5, r5, -1
	bneid     r5, ($BB1_58)
	ADDK      r4, r4, r4
$BB1_59:                                # %bb5.i.preheader
                                        #   in Loop: Header=BB1_52 Depth=3
	ADDI      r5, r0, 31
	ANDI      r5, r5, 31
	beqid     r5, ($BB1_61)
	ADDI      r6, r20, 0
$BB1_60:                                # %bb5.i.preheader
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	sra       r6, r6
	ADDI      r5, r5, -1
	bneid     r5, ($BB1_60)
	NOP    
$BB1_61:                                # %bb5.i.preheader
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI       r5, r19, 240
	ADD       r4, r5, r4
	ADD       r5, r0, r0
	ADD       r7, r20, r0
	brid      ($BB1_70)
	ADD       r8, r20, r0
$BB1_62:                                # %_ZN6Photon8get_axisEi.exit7.us.preheader
                                        #   in Loop: Header=BB1_52 Depth=3
	ADDI      r4, r0, 31
	ANDI      r4, r4, 31
	beqid     r4, ($BB1_64)
	ADDI      r5, r20, 0
$BB1_63:                                # %_ZN6Photon8get_axisEi.exit7.us.preheader
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	sra       r5, r5
	ADDI      r4, r4, -1
	bneid     r4, ($BB1_63)
	NOP    
$BB1_64:                                # %_ZN6Photon8get_axisEi.exit7.us.preheader
                                        #   in Loop: Header=BB1_52 Depth=3
	MULI      r4, r20, 52
	LWI       r6, r19, 228
	ADD       r4, r6, r4
	ADD       r6, r0, r0
	brid      ($BB1_66)
	ADD       r7, r20, r0
$BB1_65:                                # %bb4.i.us
                                        #   in Loop: Header=BB1_66 Depth=4
	ADDIK     r7, r7, 1
	ADDIKC    r5, r5, 0
	ADDIK     r20, r20, 1
	ADDIKC    r6, r6, 0
	ADDI      r4, r4, 52
$BB1_66:                                # %_ZN6Photon8get_axisEi.exit7.us
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	LWI        r8, r4, 0
	ADDI      r9, r0, 1
	FPLT      r8, r8, r3
	bneid     r8, ($BB1_68)
	NOP    
# BB#67:                                # %_ZN6Photon8get_axisEi.exit7.us
                                        #   in Loop: Header=BB1_66 Depth=4
	ADDI      r9, r0, 0
$BB1_68:                                # %_ZN6Photon8get_axisEi.exit7.us
                                        #   in Loop: Header=BB1_66 Depth=4
	bneid     r9, ($BB1_65)
	NOP    
	brid      ($BB1_75)
	NOP    
$BB1_69:                                # %bb4.i
                                        #   in Loop: Header=BB1_70 Depth=4
	ADDIK     r7, r7, 1
	ADDIKC    r6, r6, 0
	ADDIK     r20, r20, 1
	ADDIKC    r5, r5, 0
	ADDI      r8, r8, 1
	ADDI      r4, r4, 52
$BB1_70:                                # %bb5.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r9, r0, 1
	LWI       r10, r19, 232
	CMP       r9, r9, r10
	bneid     r9, ($BB1_72)
	ADD       r10, r4, r0
# BB#71:                                # %bb5.i3
                                        #   in Loop: Header=BB1_70 Depth=4
	MULI      r10, r8, 52
	LWI       r9, r19, 228
	ADD       r10, r9, r10
	ADDI      r10, r10, 4
$BB1_72:                                # %_ZN6Photon8get_axisEi.exit7
                                        #   in Loop: Header=BB1_70 Depth=4
	LWI        r9, r10, 0
	ADDI      r10, r0, 1
	FPLT      r9, r9, r3
	bneid     r9, ($BB1_74)
	NOP    
# BB#73:                                # %_ZN6Photon8get_axisEi.exit7
                                        #   in Loop: Header=BB1_70 Depth=4
	ADDI      r10, r0, 0
$BB1_74:                                # %_ZN6Photon8get_axisEi.exit7
                                        #   in Loop: Header=BB1_70 Depth=4
	bneid     r10, ($BB1_69)
	NOP    
$BB1_75:                                # %bb9.i.loopexit
                                        #   in Loop: Header=BB1_52 Depth=3
	MULI      r7, r7, 52
	LWI       r6, r19, 228
	ADD       r4, r6, r7
	ADD       r5, r0, r0
	LWI       r6, r19, 232
	CMP       r5, r5, r6
	beqid     r5, ($BB1_81)
	NOP    
# BB#76:                                # %bb9.i.preheader
                                        #   in Loop: Header=BB1_52 Depth=3
	MULI      r5, r21, 13
	ADDI      r6, r0, 2
	ANDI      r6, r6, 31
	beqid     r6, ($BB1_78)
	ADDI      r5, r5, 0
$BB1_77:                                # %bb9.i.preheader
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r6, r6, -1
	bneid     r6, ($BB1_77)
	ADDK      r5, r5, r5
$BB1_78:                                # %bb9.i.preheader
                                        #   in Loop: Header=BB1_52 Depth=3
	ADDI      r6, r0, 31
	ANDI      r6, r6, 31
	beqid     r6, ($BB1_80)
	ADDI      r8, r21, 0
$BB1_79:                                # %bb9.i.preheader
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	sra       r8, r8
	ADDI      r6, r6, -1
	bneid     r6, ($BB1_79)
	NOP    
$BB1_80:                                # %bb9.i.preheader
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI       r6, r19, 240
	ADD       r6, r6, r5
	ADD       r5, r0, r0
	ADD       r10, r21, r0
	brid      ($BB1_89)
	ADD       r9, r21, r0
$BB1_81:                                # %_ZN6Photon8get_axisEi.exit13.us.preheader
                                        #   in Loop: Header=BB1_52 Depth=3
	ADDI      r5, r0, 31
	ANDI      r5, r5, 31
	beqid     r5, ($BB1_83)
	ADDI      r6, r21, 0
$BB1_82:                                # %_ZN6Photon8get_axisEi.exit13.us.preheader
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	sra       r6, r6
	ADDI      r5, r5, -1
	bneid     r5, ($BB1_82)
	NOP    
$BB1_83:                                # %_ZN6Photon8get_axisEi.exit13.us.preheader
                                        #   in Loop: Header=BB1_52 Depth=3
	MULI      r5, r21, 52
	LWI       r8, r19, 228
	ADD       r5, r8, r5
	ADD       r8, r0, r0
	brid      ($BB1_85)
	ADD       r10, r21, r0
$BB1_84:                                # %bb8.i.us
                                        #   in Loop: Header=BB1_85 Depth=4
	ADDI      r9, r0, -1
	ADDK      r10, r10, r9
	ADDKC      r6, r6, r9
	ADDK      r21, r21, r9
	ADDKC      r8, r8, r9
	ADDI      r5, r5, -52
$BB1_85:                                # %_ZN6Photon8get_axisEi.exit13.us
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	LWI        r9, r5, 0
	ADDI      r11, r0, 1
	FPGT      r9, r9, r3
	bneid     r9, ($BB1_87)
	NOP    
# BB#86:                                # %_ZN6Photon8get_axisEi.exit13.us
                                        #   in Loop: Header=BB1_85 Depth=4
	ADDI      r11, r0, 0
$BB1_87:                                # %_ZN6Photon8get_axisEi.exit13.us
                                        #   in Loop: Header=BB1_85 Depth=4
	bneid     r11, ($BB1_84)
	NOP    
	brid      ($BB1_94)
	NOP    
$BB1_88:                                # %bb8.i
                                        #   in Loop: Header=BB1_89 Depth=4
	ADDI      r11, r0, -1
	ADDK      r10, r10, r11
	ADDKC      r8, r8, r11
	ADDK      r21, r21, r11
	ADDKC      r5, r5, r11
	ADDI      r9, r9, -1
	ADDI      r6, r6, -52
$BB1_89:                                # %bb9.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r11, r0, 1
	LWI       r12, r19, 232
	CMP       r11, r11, r12
	bneid     r11, ($BB1_91)
	ADD       r12, r6, r0
# BB#90:                                # %bb5.i9
                                        #   in Loop: Header=BB1_89 Depth=4
	MULI      r12, r9, 52
	LWI       r11, r19, 228
	ADD       r12, r11, r12
	ADDI      r12, r12, 4
$BB1_91:                                # %_ZN6Photon8get_axisEi.exit13
                                        #   in Loop: Header=BB1_89 Depth=4
	LWI        r11, r12, 0
	ADDI      r12, r0, 1
	FPGT      r11, r11, r3
	bneid     r11, ($BB1_93)
	NOP    
# BB#92:                                # %_ZN6Photon8get_axisEi.exit13
                                        #   in Loop: Header=BB1_89 Depth=4
	ADDI      r12, r0, 0
$BB1_93:                                # %_ZN6Photon8get_axisEi.exit13
                                        #   in Loop: Header=BB1_89 Depth=4
	bneid     r12, ($BB1_88)
	NOP    
$BB1_94:                                # %bb13.i
                                        #   in Loop: Header=BB1_52 Depth=3
	CMP       r3, r21, r20
	bgtid     r3, ($BB1_242)
	NOP    
# BB#95:                                # %bb14.i
                                        #   in Loop: Header=BB1_52 Depth=3
	CMP       r3, r21, r20
	beqid     r3, ($BB1_241)
	NOP    
# BB#96:                                # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI       r6, r19, 228
	ADD       r22, r6, r7
	lbu       r3, r6, r7
	ADDI      r23, r0, 8
	lbui      r5, r22, 2
	ANDI      r6, r23, 31
	beqid     r6, ($BB1_98)
	ADDI      r3, r3, 0
$BB1_97:                                # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r6, r6, -1
	bneid     r6, ($BB1_97)
	ADDK      r3, r3, r3
$BB1_98:                                # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	lbui      r6, r22, 1
	lbui      r7, r22, 4
	ANDI      r8, r23, 31
	beqid     r8, ($BB1_100)
	ADDI      r5, r5, 0
$BB1_99:                                # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r8, r8, -1
	bneid     r8, ($BB1_99)
	ADDK      r5, r5, r5
$BB1_100:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	lbui      r8, r22, 3
	lbui      r9, r22, 6
	ANDI      r11, r23, 31
	beqid     r11, ($BB1_102)
	ADDI      r7, r7, 0
$BB1_101:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r11, r11, -1
	bneid     r11, ($BB1_101)
	ADDK      r7, r7, r7
$BB1_102:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r3, r3, r6
	ADDI      r24, r0, 16
	lbui      r6, r22, 5
	ANDI      r11, r24, 31
	beqid     r11, ($BB1_104)
	ADDI      r3, r3, 0
$BB1_103:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r11, r11, -1
	bneid     r11, ($BB1_103)
	ADDK      r3, r3, r3
$BB1_104:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	lbui      r11, r22, 8
	ANDI      r12, r23, 31
	beqid     r12, ($BB1_106)
	ADDI      r9, r9, 0
$BB1_105:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r12, r12, -1
	bneid     r12, ($BB1_105)
	ADDK      r9, r9, r9
$BB1_106:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r5, r5, r8
	BITOR     r3, r3, r5
	lbui      r5, r22, 7
	lbui      r8, r22, 10
	SWI       r3, r19, 132
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_108)
	ADDI      r11, r11, 0
$BB1_107:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_107)
	ADDK      r11, r11, r11
$BB1_108:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r3, r7, r6
	lbui      r6, r22, 9
	ANDI      r7, r24, 31
	beqid     r7, ($BB1_110)
	ADDI      r3, r3, 0
$BB1_109:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r7, r7, -1
	bneid     r7, ($BB1_109)
	ADDK      r3, r3, r3
$BB1_110:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	lbui      r7, r22, 12
	LWI        r12, r19, 132
	lbui      r25, r22, 47
	SWI       r25, r19, 244
	ANDI      r25, r23, 31
	beqid     r25, ($BB1_112)
	ADDI      r8, r8, 0
$BB1_111:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r25, r25, -1
	bneid     r25, ($BB1_111)
	ADDK      r8, r8, r8
$BB1_112:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r5, r9, r5
	BITOR     r3, r3, r5
	lbui      r5, r22, 11
	lbui      r9, r22, 46
	SWI       r9, r19, 248
	lbui      r9, r22, 45
	SWI       r9, r19, 252
	lbui      r9, r22, 44
	SWI       r9, r19, 256
	lbui      r9, r22, 14
	SWI       r3, r19, 176
	SWI        r12, r19, 180
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_114)
	ADDI      r25, r7, 0
$BB1_113:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_113)
	ADDK      r25, r25, r25
$BB1_114:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r3, r11, r6
	lbui      r6, r22, 13
	SWI       r6, r19, 260
	ANDI      r6, r24, 31
	beqid     r6, ($BB1_116)
	ADDI      r3, r3, 0
$BB1_115:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r6, r6, -1
	bneid     r6, ($BB1_115)
	ADDK      r3, r3, r3
$BB1_116:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI       r26, r19, 180
	lbui      r27, r22, 16
	LWI        r6, r19, 176
	ANDI      r7, r23, 31
	beqid     r7, ($BB1_118)
	ADDI      r28, r9, 0
$BB1_117:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r7, r7, -1
	bneid     r7, ($BB1_117)
	ADDK      r28, r28, r28
$BB1_118:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	MULI      r29, r10, 52
	LWI       r7, r19, 228
	ADD       r7, r7, r29
	BITOR     r5, r8, r5
	BITOR     r3, r3, r5
	ADDI      r30, r0, 24
	SWI       r30, r19, 236
	lbui      r5, r22, 15
	SWI       r5, r19, 264
	ADDI      r1, r1, -16
	ADDI      r8, r0, 52
	lbui      r31, r22, 18
	SWI       r3, r19, 172
	SWI        r6, r19, 184
	brlid     r15, memcpy
	ADD       r6, r4, r0
	ADDI      r1, r1, 16
	ANDI      r3, r30, 31
	ADDI      r4, r26, 0
	beqid     r3, ($BB1_120)
	ADD       r5, r4, r0
$BB1_119:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r5, r5
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_119)
	NOP    
$BB1_120:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r24, 31
	beqid     r3, ($BB1_122)
	NOP    
$BB1_121:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r4, r4
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_121)
	NOP    
$BB1_122:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_124)
	ADDI      r6, r26, 0
$BB1_123:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r6, r6
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_123)
	NOP    
$BB1_124:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_126)
	ADDI      r7, r27, 0
$BB1_125:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_125)
	ADDK      r7, r7, r7
$BB1_126:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI       r3, r19, 260
	BITOR     r3, r25, r3
	lbui      r8, r22, 17
	ANDI      r9, r24, 31
	beqid     r9, ($BB1_128)
	ADDI      r3, r3, 0
$BB1_127:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r9, r9, -1
	bneid     r9, ($BB1_127)
	ADDK      r3, r3, r3
$BB1_128:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI       r9, r19, 184
	lbui      r10, r22, 20
	LWI        r11, r19, 172
	ANDI      r12, r23, 31
	beqid     r12, ($BB1_130)
	ADDI      r25, r31, 0
$BB1_129:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r12, r12, -1
	bneid     r12, ($BB1_129)
	ADDK      r25, r25, r25
$BB1_130:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI       r12, r19, 228
	ADD       r27, r12, r29
	LWI       r30, r19, 264
	BITOR     r28, r28, r30
	BITOR     r3, r3, r28
	lbui      r28, r22, 19
	sb        r5, r12, r29
	sbi       r4, r27, 1
	sbi       r6, r27, 2
	sbi       r26, r27, 3
	lbui      r4, r22, 22
	SWI       r3, r19, 168
	SWI        r11, r19, 188
	LWI       r3, r19, 236
	ANDI      r3, r3, 31
	ADDI      r5, r9, 0
	beqid     r3, ($BB1_132)
	ADD       r6, r5, r0
$BB1_131:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r6, r6
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_131)
	NOP    
$BB1_132:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r24, 31
	beqid     r3, ($BB1_134)
	NOP    
$BB1_133:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r5, r5
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_133)
	NOP    
$BB1_134:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_136)
	ADDI      r11, r9, 0
$BB1_135:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r11, r11
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_135)
	NOP    
$BB1_136:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_138)
	ADDI      r10, r10, 0
$BB1_137:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_137)
	ADDK      r10, r10, r10
$BB1_138:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r3, r7, r8
	lbui      r7, r22, 21
	ANDI      r8, r24, 31
	beqid     r8, ($BB1_140)
	ADDI      r3, r3, 0
$BB1_139:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r8, r8, -1
	bneid     r8, ($BB1_139)
	ADDK      r3, r3, r3
$BB1_140:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI       r8, r19, 188
	lbui      r12, r22, 24
	LWI        r26, r19, 168
	ANDI      r29, r23, 31
	beqid     r29, ($BB1_142)
	ADDI      r4, r4, 0
$BB1_141:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r29, r29, -1
	bneid     r29, ($BB1_141)
	ADDK      r4, r4, r4
$BB1_142:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r25, r25, r28
	BITOR     r3, r3, r25
	lbui      r25, r22, 23
	sbi       r6, r27, 4
	sbi       r5, r27, 5
	sbi       r11, r27, 6
	sbi       r9, r27, 7
	lbui      r5, r22, 26
	SWI       r3, r19, 136
	SWI        r26, r19, 192
	LWI       r3, r19, 236
	ANDI      r3, r3, 31
	ADDI      r6, r8, 0
	beqid     r3, ($BB1_144)
	ADD       r9, r6, r0
$BB1_143:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r9, r9
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_143)
	NOP    
$BB1_144:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r24, 31
	beqid     r3, ($BB1_146)
	NOP    
$BB1_145:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r6, r6
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_145)
	NOP    
$BB1_146:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_148)
	ADDI      r11, r8, 0
$BB1_147:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r11, r11
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_147)
	NOP    
$BB1_148:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_150)
	ADDI      r12, r12, 0
$BB1_149:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_149)
	ADDK      r12, r12, r12
$BB1_150:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r3, r10, r7
	lbui      r7, r22, 25
	ANDI      r10, r24, 31
	beqid     r10, ($BB1_152)
	ADDI      r3, r3, 0
$BB1_151:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r10, r10, -1
	bneid     r10, ($BB1_151)
	ADDK      r3, r3, r3
$BB1_152:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI       r10, r19, 192
	lbui      r26, r22, 28
	LWI        r28, r19, 136
	ANDI      r29, r23, 31
	beqid     r29, ($BB1_154)
	ADDI      r5, r5, 0
$BB1_153:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r29, r29, -1
	bneid     r29, ($BB1_153)
	ADDK      r5, r5, r5
$BB1_154:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r4, r4, r25
	BITOR     r3, r3, r4
	lbui      r4, r22, 27
	sbi       r9, r27, 8
	sbi       r6, r27, 9
	sbi       r11, r27, 10
	sbi       r8, r27, 11
	lbui      r6, r22, 30
	SWI       r3, r19, 140
	SWI        r28, r19, 196
	LWI       r3, r19, 236
	ANDI      r3, r3, 31
	ADDI      r8, r10, 0
	beqid     r3, ($BB1_156)
	ADD       r9, r8, r0
$BB1_155:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r9, r9
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_155)
	NOP    
$BB1_156:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r24, 31
	beqid     r3, ($BB1_158)
	NOP    
$BB1_157:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r8, r8
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_157)
	NOP    
$BB1_158:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_160)
	ADDI      r11, r10, 0
$BB1_159:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r11, r11
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_159)
	NOP    
$BB1_160:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_162)
	ADDI      r25, r26, 0
$BB1_161:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_161)
	ADDK      r25, r25, r25
$BB1_162:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r3, r12, r7
	lbui      r7, r22, 29
	ANDI      r12, r24, 31
	beqid     r12, ($BB1_164)
	ADDI      r3, r3, 0
$BB1_163:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r12, r12, -1
	bneid     r12, ($BB1_163)
	ADDK      r3, r3, r3
$BB1_164:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI       r12, r19, 196
	lbui      r26, r22, 32
	LWI        r28, r19, 140
	ANDI      r29, r23, 31
	beqid     r29, ($BB1_166)
	ADDI      r6, r6, 0
$BB1_165:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r29, r29, -1
	bneid     r29, ($BB1_165)
	ADDK      r6, r6, r6
$BB1_166:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r4, r5, r4
	BITOR     r3, r3, r4
	lbui      r4, r22, 31
	sbi       r9, r27, 12
	sbi       r8, r27, 13
	sbi       r11, r27, 14
	sbi       r10, r27, 15
	lbui      r5, r22, 34
	SWI       r3, r19, 164
	SWI        r28, r19, 200
	LWI       r3, r19, 236
	ANDI      r3, r3, 31
	ADDI      r8, r12, 0
	beqid     r3, ($BB1_168)
	ADD       r9, r8, r0
$BB1_167:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r9, r9
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_167)
	NOP    
$BB1_168:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r24, 31
	beqid     r3, ($BB1_170)
	NOP    
$BB1_169:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r8, r8
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_169)
	NOP    
$BB1_170:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_172)
	ADDI      r10, r12, 0
$BB1_171:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r10, r10
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_171)
	NOP    
$BB1_172:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_174)
	ADDI      r11, r26, 0
$BB1_173:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_173)
	ADDK      r11, r11, r11
$BB1_174:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r3, r25, r7
	lbui      r7, r22, 33
	ANDI      r25, r24, 31
	beqid     r25, ($BB1_176)
	ADDI      r3, r3, 0
$BB1_175:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r25, r25, -1
	bneid     r25, ($BB1_175)
	ADDK      r3, r3, r3
$BB1_176:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI       r25, r19, 200
	lbui      r26, r22, 36
	LWI        r28, r19, 164
	ANDI      r29, r23, 31
	beqid     r29, ($BB1_178)
	ADDI      r5, r5, 0
$BB1_177:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r29, r29, -1
	bneid     r29, ($BB1_177)
	ADDK      r5, r5, r5
$BB1_178:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r4, r6, r4
	BITOR     r3, r3, r4
	lbui      r4, r22, 35
	sbi       r9, r27, 16
	sbi       r8, r27, 17
	sbi       r10, r27, 18
	sbi       r12, r27, 19
	lbui      r6, r22, 38
	SWI       r3, r19, 144
	SWI        r28, r19, 204
	LWI       r3, r19, 236
	ANDI      r3, r3, 31
	ADDI      r8, r25, 0
	beqid     r3, ($BB1_180)
	ADD       r9, r8, r0
$BB1_179:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r9, r9
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_179)
	NOP    
$BB1_180:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r24, 31
	beqid     r3, ($BB1_182)
	NOP    
$BB1_181:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r8, r8
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_181)
	NOP    
$BB1_182:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_184)
	ADDI      r10, r25, 0
$BB1_183:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r10, r10
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_183)
	NOP    
$BB1_184:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_186)
	ADDI      r12, r26, 0
$BB1_185:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_185)
	ADDK      r12, r12, r12
$BB1_186:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r3, r11, r7
	lbui      r7, r22, 37
	ANDI      r11, r24, 31
	beqid     r11, ($BB1_188)
	ADDI      r3, r3, 0
$BB1_187:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r11, r11, -1
	bneid     r11, ($BB1_187)
	ADDK      r3, r3, r3
$BB1_188:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI       r11, r19, 204
	lbui      r26, r22, 40
	LWI        r28, r19, 144
	ANDI      r29, r23, 31
	beqid     r29, ($BB1_190)
	ADDI      r6, r6, 0
$BB1_189:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r29, r29, -1
	bneid     r29, ($BB1_189)
	ADDK      r6, r6, r6
$BB1_190:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r4, r5, r4
	BITOR     r3, r3, r4
	lbui      r4, r22, 39
	sbi       r9, r27, 20
	sbi       r8, r27, 21
	sbi       r10, r27, 22
	sbi       r25, r27, 23
	lbui      r5, r22, 42
	SWI       r3, r19, 148
	SWI        r28, r19, 208
	LWI       r3, r19, 236
	ANDI      r3, r3, 31
	ADDI      r8, r11, 0
	beqid     r3, ($BB1_192)
	ADD       r9, r8, r0
$BB1_191:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r9, r9
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_191)
	NOP    
$BB1_192:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r24, 31
	beqid     r3, ($BB1_194)
	NOP    
$BB1_193:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r8, r8
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_193)
	NOP    
$BB1_194:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_196)
	ADDI      r10, r11, 0
$BB1_195:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r10, r10
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_195)
	NOP    
$BB1_196:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_198)
	ADDI      r25, r26, 0
$BB1_197:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_197)
	ADDK      r25, r25, r25
$BB1_198:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r3, r12, r7
	lbui      r7, r22, 41
	ANDI      r12, r24, 31
	beqid     r12, ($BB1_200)
	ADDI      r3, r3, 0
$BB1_199:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r12, r12, -1
	bneid     r12, ($BB1_199)
	ADDK      r3, r3, r3
$BB1_200:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI       r12, r19, 208
	LWI        r26, r19, 148
	ANDI      r28, r23, 31
	beqid     r28, ($BB1_202)
	ADDI      r5, r5, 0
$BB1_201:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r28, r28, -1
	bneid     r28, ($BB1_201)
	ADDK      r5, r5, r5
$BB1_202:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r4, r6, r4
	BITOR     r3, r3, r4
	lbui      r4, r22, 43
	sbi       r9, r27, 24
	sbi       r8, r27, 25
	sbi       r10, r27, 26
	sbi       r11, r27, 27
	SWI       r3, r19, 160
	SWI        r26, r19, 212
	LWI       r3, r19, 236
	ANDI      r3, r3, 31
	ADDI      r6, r12, 0
	beqid     r3, ($BB1_204)
	ADD       r8, r6, r0
$BB1_203:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r8, r8
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_203)
	NOP    
$BB1_204:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r24, 31
	beqid     r3, ($BB1_206)
	NOP    
$BB1_205:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r6, r6
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_205)
	NOP    
$BB1_206:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_208)
	ADDI      r9, r12, 0
$BB1_207:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r9, r9
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_207)
	NOP    
$BB1_208:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r3, r25, r7
	ANDI      r7, r24, 31
	beqid     r7, ($BB1_210)
	ADDI      r3, r3, 0
$BB1_209:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r7, r7, -1
	bneid     r7, ($BB1_209)
	ADDK      r3, r3, r3
$BB1_210:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r4, r5, r4
	LWI       r5, r19, 212
	lbui      r7, r22, 48
	BITOR     r3, r3, r4
	LWI        r4, r19, 160
	sbi       r8, r27, 28
	sbi       r6, r27, 29
	sbi       r9, r27, 30
	sbi       r12, r27, 31
	lbui      r6, r22, 50
	SWI       r3, r19, 156
	SWI        r4, r19, 216
	LWI       r3, r19, 236
	ANDI      r3, r3, 31
	ADDI      r4, r5, 0
	beqid     r3, ($BB1_212)
	ADD       r8, r4, r0
$BB1_211:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r8, r8
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_211)
	NOP    
$BB1_212:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r24, 31
	beqid     r3, ($BB1_214)
	NOP    
$BB1_213:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r4, r4
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_213)
	NOP    
$BB1_214:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_216)
	ADDI      r9, r5, 0
$BB1_215:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r9, r9
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_215)
	NOP    
$BB1_216:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_218)
	ADDI      r7, r7, 0
$BB1_217:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_217)
	ADDK      r7, r7, r7
$BB1_218:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	lbui      r3, r22, 49
	LWI       r10, r19, 216
	LWI        r11, r19, 156
	ANDI      r12, r23, 31
	beqid     r12, ($BB1_220)
	ADDI      r6, r6, 0
$BB1_219:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r12, r12, -1
	bneid     r12, ($BB1_219)
	ADDK      r6, r6, r6
$BB1_220:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	lbui      r12, r22, 51
	sbi       r8, r27, 32
	sbi       r4, r27, 33
	sbi       r9, r27, 34
	sbi       r5, r27, 35
	SWI        r11, r19, 220
	LWI       r4, r19, 236
	ANDI      r4, r4, 31
	ADDI      r5, r10, 0
	beqid     r4, ($BB1_222)
	ADD       r8, r5, r0
$BB1_221:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r8, r8
	ADDI      r4, r4, -1
	bneid     r4, ($BB1_221)
	NOP    
$BB1_222:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r4, r24, 31
	beqid     r4, ($BB1_224)
	NOP    
$BB1_223:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r5, r5
	ADDI      r4, r4, -1
	bneid     r4, ($BB1_223)
	NOP    
$BB1_224:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r4, r23, 31
	beqid     r4, ($BB1_226)
	ADDI      r9, r10, 0
$BB1_225:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r9, r9
	ADDI      r4, r4, -1
	bneid     r4, ($BB1_225)
	NOP    
$BB1_226:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r3, r7, r3
	ANDI      r4, r24, 31
	beqid     r4, ($BB1_228)
	ADDI      r3, r3, 0
$BB1_227:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r4, r4, -1
	bneid     r4, ($BB1_227)
	ADDK      r3, r3, r3
$BB1_228:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	BITOR     r4, r6, r12
	LWI       r6, r19, 220
	BITOR     r3, r3, r4
	sbi       r8, r27, 36
	sbi       r5, r27, 37
	sbi       r9, r27, 38
	sbi       r10, r27, 39
	SWI       r3, r19, 152
	LWI       r3, r19, 236
	ANDI      r3, r3, 31
	ADDI      r4, r6, 0
	beqid     r3, ($BB1_230)
	ADD       r5, r4, r0
$BB1_229:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r5, r5
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_229)
	NOP    
$BB1_230:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r24, 31
	beqid     r3, ($BB1_232)
	NOP    
$BB1_231:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r4, r4
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_231)
	NOP    
$BB1_232:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r3, r23, 31
	beqid     r3, ($BB1_234)
	ADDI      r7, r6, 0
$BB1_233:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r7, r7
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_233)
	NOP    
$BB1_234:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	LWI        r3, r19, 152
	sbi       r5, r27, 40
	sbi       r4, r27, 41
	sbi       r7, r27, 42
	sbi       r6, r27, 43
	SWI        r3, r19, 224
	LWI       r3, r19, 224
	LWI       r4, r19, 256
	sbi       r4, r27, 44
	LWI       r4, r19, 252
	sbi       r4, r27, 45
	LWI       r4, r19, 248
	sbi       r4, r27, 46
	LWI       r4, r19, 244
	sbi       r4, r27, 47
	LWI       r4, r19, 236
	ANDI      r4, r4, 31
	ADDI      r5, r3, 0
	beqid     r4, ($BB1_236)
	ADD       r6, r5, r0
$BB1_235:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r6, r6
	ADDI      r4, r4, -1
	bneid     r4, ($BB1_235)
	NOP    
$BB1_236:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r4, r24, 31
	beqid     r4, ($BB1_238)
	NOP    
$BB1_237:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r5, r5
	ADDI      r4, r4, -1
	bneid     r4, ($BB1_237)
	NOP    
$BB1_238:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ANDI      r4, r23, 31
	beqid     r4, ($BB1_240)
	ADDI      r7, r3, 0
$BB1_239:                               # %bb15.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        #       Parent Loop BB1_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	srl       r7, r7
	ADDI      r4, r4, -1
	bneid     r4, ($BB1_239)
	NOP    
$BB1_240:                               # %bb15.i
                                        #   in Loop: Header=BB1_52 Depth=3
	sbi       r6, r27, 48
	sbi       r5, r27, 49
	sbi       r7, r27, 50
	sbi       r3, r27, 51
$BB1_241:                               # %bb18.i
                                        #   in Loop: Header=BB1_52 Depth=3
	ADDI      r20, r20, 1
	ADDI      r21, r21, -1
$BB1_242:                               # %bb19.i
                                        #   in Loop: Header=BB1_52 Depth=3
	CMP       r3, r21, r20
	bltid     r3, ($BB1_52)
	NOP    
# BB#243:                               # %bb20.i
                                        #   in Loop: Header=BB1_47 Depth=2
	LWI       r3, r19, 272
	RSUB      r3, r20, r3
	LWI       r4, r19, 276
	RSUB      r4, r4, r21
	CMP       r3, r3, r4
	bleid     r3, ($BB1_249)
	NOP    
# BB#244:                               # %bb21.i
                                        #   in Loop: Header=BB1_47 Depth=2
	LWI       r3, r19, 276
	CMP       r3, r21, r3
	bltid     r3, ($BB1_246)
	NOP    
# BB#245:                               #   in Loop: Header=BB1_47 Depth=2
	brid      ($BB1_254)
	SWI       r20, r19, 276
$BB1_246:                               # %bb22.i
                                        #   in Loop: Header=BB1_47 Depth=2
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r4, r19, 288
	beqid     r3, ($BB1_248)
	ADDI      r4, r4, 0
$BB1_247:                               # %bb22.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_247)
	ADDK      r4, r4, r4
$BB1_248:                               # %bb22.i
                                        #   in Loop: Header=BB1_47 Depth=2
	LWI       r3, r19, 288
	ADDI      r3, r3, 2
	SWI       r3, r19, 288
	LWI       r3, r19, 292
	ADD       r5, r3, r4
	LWI       r6, r19, 276
	SW        r6, r3, r4
	SWI       r21, r5, 4
	brid      ($BB1_254)
	SWI       r20, r19, 276
$BB1_249:                               # %bb24.i
                                        #   in Loop: Header=BB1_47 Depth=2
	LWI       r3, r19, 272
	CMP       r3, r3, r20
	bgeid     r3, ($BB1_253)
	NOP    
# BB#250:                               # %bb25.i
                                        #   in Loop: Header=BB1_47 Depth=2
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r4, r19, 288
	beqid     r3, ($BB1_252)
	ADDI      r4, r4, 0
$BB1_251:                               # %bb25.i
                                        #   Parent Loop BB1_255 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_251)
	ADDK      r4, r4, r4
$BB1_252:                               # %bb25.i
                                        #   in Loop: Header=BB1_47 Depth=2
	LWI       r3, r19, 288
	ADDI      r3, r3, 2
	SWI       r3, r19, 288
	LWI       r3, r19, 292
	ADD       r5, r3, r4
	SW        r20, r3, r4
	LWI       r3, r19, 272
	SWI       r3, r5, 4
$BB1_253:                               # %bb25.i
                                        #   in Loop: Header=BB1_47 Depth=2
	SWI       r21, r19, 272
$BB1_254:                               # %bb27.i
                                        #   in Loop: Header=BB1_47 Depth=2
	LWI       r4, r19, 276
	LWI       r3, r19, 272
	CMP       r3, r3, r4
	bltid     r3, ($BB1_47)
	NOP    
$BB1_255:                               # %bb28.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_47 Depth 2
                                        #       Child Loop BB1_52 Depth 3
                                        #         Child Loop BB1_66 Depth 4
                                        #         Child Loop BB1_63 Depth 4
                                        #         Child Loop BB1_85 Depth 4
                                        #         Child Loop BB1_82 Depth 4
                                        #         Child Loop BB1_239 Depth 4
                                        #         Child Loop BB1_237 Depth 4
                                        #         Child Loop BB1_235 Depth 4
                                        #         Child Loop BB1_233 Depth 4
                                        #         Child Loop BB1_231 Depth 4
                                        #         Child Loop BB1_229 Depth 4
                                        #         Child Loop BB1_227 Depth 4
                                        #         Child Loop BB1_225 Depth 4
                                        #         Child Loop BB1_223 Depth 4
                                        #         Child Loop BB1_221 Depth 4
                                        #         Child Loop BB1_219 Depth 4
                                        #         Child Loop BB1_217 Depth 4
                                        #         Child Loop BB1_215 Depth 4
                                        #         Child Loop BB1_213 Depth 4
                                        #         Child Loop BB1_211 Depth 4
                                        #         Child Loop BB1_209 Depth 4
                                        #         Child Loop BB1_207 Depth 4
                                        #         Child Loop BB1_205 Depth 4
                                        #         Child Loop BB1_203 Depth 4
                                        #         Child Loop BB1_201 Depth 4
                                        #         Child Loop BB1_199 Depth 4
                                        #         Child Loop BB1_197 Depth 4
                                        #         Child Loop BB1_195 Depth 4
                                        #         Child Loop BB1_193 Depth 4
                                        #         Child Loop BB1_191 Depth 4
                                        #         Child Loop BB1_189 Depth 4
                                        #         Child Loop BB1_187 Depth 4
                                        #         Child Loop BB1_185 Depth 4
                                        #         Child Loop BB1_183 Depth 4
                                        #         Child Loop BB1_181 Depth 4
                                        #         Child Loop BB1_179 Depth 4
                                        #         Child Loop BB1_177 Depth 4
                                        #         Child Loop BB1_175 Depth 4
                                        #         Child Loop BB1_173 Depth 4
                                        #         Child Loop BB1_171 Depth 4
                                        #         Child Loop BB1_169 Depth 4
                                        #         Child Loop BB1_167 Depth 4
                                        #         Child Loop BB1_165 Depth 4
                                        #         Child Loop BB1_163 Depth 4
                                        #         Child Loop BB1_161 Depth 4
                                        #         Child Loop BB1_159 Depth 4
                                        #         Child Loop BB1_157 Depth 4
                                        #         Child Loop BB1_155 Depth 4
                                        #         Child Loop BB1_153 Depth 4
                                        #         Child Loop BB1_151 Depth 4
                                        #         Child Loop BB1_149 Depth 4
                                        #         Child Loop BB1_147 Depth 4
                                        #         Child Loop BB1_145 Depth 4
                                        #         Child Loop BB1_143 Depth 4
                                        #         Child Loop BB1_141 Depth 4
                                        #         Child Loop BB1_139 Depth 4
                                        #         Child Loop BB1_137 Depth 4
                                        #         Child Loop BB1_135 Depth 4
                                        #         Child Loop BB1_133 Depth 4
                                        #         Child Loop BB1_131 Depth 4
                                        #         Child Loop BB1_129 Depth 4
                                        #         Child Loop BB1_127 Depth 4
                                        #         Child Loop BB1_125 Depth 4
                                        #         Child Loop BB1_123 Depth 4
                                        #         Child Loop BB1_121 Depth 4
                                        #         Child Loop BB1_119 Depth 4
                                        #         Child Loop BB1_117 Depth 4
                                        #         Child Loop BB1_115 Depth 4
                                        #         Child Loop BB1_113 Depth 4
                                        #         Child Loop BB1_111 Depth 4
                                        #         Child Loop BB1_109 Depth 4
                                        #         Child Loop BB1_107 Depth 4
                                        #         Child Loop BB1_105 Depth 4
                                        #         Child Loop BB1_103 Depth 4
                                        #         Child Loop BB1_101 Depth 4
                                        #         Child Loop BB1_99 Depth 4
                                        #         Child Loop BB1_97 Depth 4
                                        #         Child Loop BB1_89 Depth 4
                                        #         Child Loop BB1_79 Depth 4
                                        #         Child Loop BB1_77 Depth 4
                                        #         Child Loop BB1_70 Depth 4
                                        #         Child Loop BB1_60 Depth 4
                                        #         Child Loop BB1_58 Depth 4
                                        #       Child Loop BB1_50 Depth 3
                                        #       Child Loop BB1_48 Depth 3
                                        #       Child Loop BB1_251 Depth 3
                                        #       Child Loop BB1_247 Depth 3
                                        #     Child Loop BB1_45 Depth 2
                                        #     Child Loop BB1_43 Depth 2
	ADD       r3, r0, r0
	LWI       r4, r19, 288
	CMP       r3, r3, r4
	bgtid     r3, ($BB1_42)
	NOP    
# BB#256:                               # %bb129.lr.ph
	LWI       r1, r19, 312
	ADDI      r1, r1, -4
	LWI       r8, r19, 296
	MULI      r3, r8, 52
	RSUB      r20, r3, r1
	ADDI      r4, r0, 31
	ADD       r1, r20, r0
	ANDI      r4, r4, 31
	beqid     r4, ($BB1_258)
	ADDI      r5, r8, 0
$BB1_257:                               # %bb129.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	sra       r5, r5
	ADDI      r4, r4, -1
	bneid     r4, ($BB1_257)
	NOP    
$BB1_258:                               # %bb129.lr.ph
	ADDI      r1, r1, 4
	ADD       r4, r20, r0
	LWI       r6, r19, 296
	ADD       r9, r0, r0
$BB1_259:                               # %bb129
                                        # =>This Inner Loop Header: Depth=1
	SWI       r0, r4, 0
	SWI       r0, r4, 4
	SWI       r0, r4, 8
	SWI       r0, r4, 12
	SWI       r0, r4, 16
	ADDI      r7, r0, 1065353216
	SWI       r0, r4, 20
	SWI       r7, r4, 24
	ADDI      r8, r0, -1
	ADDK      r6, r6, r8
	ADDKC      r5, r5, r8
	ADDI      r8, r4, 52
	SWI       r7, r4, 28
	BITOR     r10, r6, r5
	SWI       r7, r4, 32
	CMP       r7, r9, r10
	bneid     r7, ($BB1_259)
	ADD       r4, r8, r0
# BB#260:                               # %bb132.lr.ph
	ADDI      r1, r1, -4
	ADDI      r3, r3, 3
	ADDI      r4, r0, -4
	BITAND    r3, r3, r4
	RSUB      r21, r3, r1
	ADDI      r3, r0, 31
	ADD       r1, r21, r0
	ANDI      r3, r3, 31
	LWI       r8, r19, 296
	beqid     r3, ($BB1_262)
	ADDI      r4, r8, 0
$BB1_261:                               # %bb132.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	sra       r4, r4
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_261)
	NOP    
$BB1_262:                               # %bb132.lr.ph
	ADDI      r1, r1, 4
	ADD       r3, r21, r0
	LWI       r5, r19, 296
	ADD       r8, r0, r0
$BB1_263:                               # %bb132
                                        # =>This Inner Loop Header: Depth=1
	SWI       r0, r3, 0
	SWI       r0, r3, 4
	SWI       r0, r3, 8
	SWI       r0, r3, 12
	SWI       r0, r3, 16
	ADDI      r6, r0, 1065353216
	SWI       r0, r3, 20
	SWI       r6, r3, 24
	ADDI      r7, r0, -1
	ADDK      r5, r5, r7
	ADDKC      r4, r4, r7
	ADDI      r7, r3, 52
	SWI       r6, r3, 28
	BITOR     r9, r5, r4
	SWI       r6, r3, 32
	CMP       r6, r8, r9
	bneid     r6, ($BB1_263)
	ADD       r3, r7, r0
# BB#264:                               # %invcont159.lr.ph
	ADDI      r1, r1, -8
	brlid     r15, __floatsidf
	LWI       r6, r19, 296
	ADDI      r1, r1, 8
	ADD       r22, r3, r0
	ADD       r23, r4, r0
	ADDI      r1, r1, -12
	ADD       r6, r22, r0
	brlid     r15, log
	ADD       r7, r23, r0
	ADDI      r1, r1, 12
	ADD       r24, r3, r0
	ADD       r25, r4, r0
	ADD       r26, r0, r0
	ADDI      r1, r1, -12
	ADDI      r6, r0, 1073741824
	brlid     r15, log
	ADD       r7, r26, r0
	ADDI      r1, r1, 12
	ADDI      r1, r1, -20
	ADD       r6, r24, r0
	ADD       r7, r25, r0
	ADD       r8, r3, r0
	brlid     r15, __divdf3
	ADD       r9, r4, r0
	ADDI      r1, r1, 20
	ADDI      r1, r1, -12
	ADD       r6, r3, r0
	brlid     r15, __fixdfsi
	ADD       r7, r4, r0
	ADDI      r1, r1, 12
	ADD       r24, r3, r0
	ADDI      r1, r1, -16
	ADDI      r8, r24, -1
	ADDI      r25, r0, 1072693248
	ADD       r6, r25, r0
	brlid     r15, ldexp
	ADD       r7, r26, r0
	ADDI      r1, r1, 16
	ADD       r27, r3, r0
	ADD       r28, r4, r0
	ADDI      r1, r1, -12
	ADD       r6, r27, r0
	brlid     r15, __fixdfsi
	ADD       r7, r28, r0
	ADDI      r1, r1, 12
	ADD       r29, r3, r0
	ADDI      r1, r1, -16
	ADD       r6, r25, r0
	ADD       r7, r26, r0
	brlid     r15, ldexp
	ADD       r8, r24, r0
	ADDI      r1, r1, 16
	ADDI      r1, r1, -20
	ADDI      r8, r0, -1074790400
	ADD       r6, r3, r0
	ADD       r7, r4, r0
	brlid     r15, __adddf3
	ADD       r9, r26, r0
	ADDI      r1, r1, 20
	ADDI      r1, r1, -20
	ADD       r6, r22, r0
	ADD       r7, r23, r0
	ADD       r8, r3, r0
	brlid     r15, __subdf3
	ADD       r9, r4, r0
	ADDI      r1, r1, 20
	ADDI      r1, r1, -12
	ADD       r6, r3, r0
	brlid     r15, __fixdfsi
	ADD       r7, r4, r0
	ADDI      r1, r1, 12
	ADDI      r22, r0, 1
	CMP       r4, r3, r29
	bltid     r4, ($BB1_266)
	ADD       r5, r22, r0
# BB#265:                               # %invcont159.lr.ph
	ADDI      r5, r0, 0
$BB1_266:                               # %invcont159.lr.ph
	bneid     r5, ($BB1_268)
	ADDI      r1, r1, -8
# BB#267:                               # %invcont159.lr.ph
	ADD       r29, r3, r0
$BB1_268:                               # %invcont159.lr.ph
	brlid     r15, __floatsidf
	ADD       r6, r29, r0
	ADDI      r1, r1, 8
	ADDI      r1, r1, -20
	ADD       r6, r27, r0
	ADD       r7, r28, r0
	ADD       r8, r3, r0
	brlid     r15, __adddf3
	ADD       r9, r4, r0
	ADDI      r1, r1, 20
	ADDI      r1, r1, -12
	ADDI      r23, r0, 31
	ADD       r6, r3, r0
	brlid     r15, __fixdfsi
	ADD       r7, r4, r0
	ANDI      r4, r23, 31
	beqid     r4, ($BB1_271)
	ADDI      r1, r1, 12
# BB#269:
	LWI       r9, r19, 304
	ADDI      r5, r9, 0
$BB1_270:                               # %invcont159.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	sra       r5, r5
	ADDI      r4, r4, -1
	bneid     r4, ($BB1_270)
	NOP    
$BB1_271:                               # %invcont159.lr.ph
	LWI       r9, r19, 304
	MULI      r4, r9, 52
	ADD       r8, r26, r0
	ADD       r23, r26, r0
$BB1_272:                               # %invcont159
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_273 Depth 2
                                        #     Child Loop BB1_288 Depth 2
                                        #     Child Loop BB1_286 Depth 2
                                        #     Child Loop BB1_284 Depth 2
                                        #     Child Loop BB1_282 Depth 2
                                        #     Child Loop BB1_280 Depth 2
                                        #     Child Loop BB1_278 Depth 2
	MULI      r5, r22, 13
	ADDI      r6, r0, 2
	ANDI      r6, r6, 31
	beqid     r6, ($BB1_274)
	ADDI      r7, r5, 0
$BB1_273:                               # %invcont159
                                        #   Parent Loop BB1_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r6, r6, -1
	bneid     r6, ($BB1_273)
	ADDK      r7, r7, r7
$BB1_274:                               # %invcont159
                                        #   in Loop: Header=BB1_272 Depth=1
	LWI       r6, r19, 228
	ADD       r6, r6, r7
	LWI        r7, r6, -52
	LWI        r9, r6, -48
	LWI        r10, r6, -44
	LWI        r11, r6, -40
	LWI        r12, r6, -36
	LWI        r6, r6, -32
	CMP       r24, r3, r22
	bgeid     r24, ($BB1_276)
	NOP    
# BB#275:                               # %bb160
                                        #   in Loop: Header=BB1_272 Depth=1
	MULI      r5, r8, 52
	ADD       r24, r21, r5
	SW         r7, r21, r5
	SWI        r9, r24, 4
	SWI        r10, r24, 8
	SWI        r11, r24, 12
	SWI        r12, r24, 16
	ADDI      r5, r0, 1065353216
	SWI        r6, r24, 20
	SWI       r5, r24, 24
	brid      ($BB1_291)
	ADDI      r8, r8, 1
$BB1_276:                               # %bb162
                                        #   in Loop: Header=BB1_272 Depth=1
	CMP       r24, r22, r3
	bneid     r24, ($BB1_290)
	NOP    
# BB#277:                               # %invcont188
                                        #   in Loop: Header=BB1_272 Depth=1
	ADDI      r6, r0, 2
	ANDI      r7, r6, 31
	beqid     r7, ($BB1_279)
	ADDI      r9, r5, 0
$BB1_278:                               # %invcont188
                                        #   Parent Loop BB1_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r7, r7, -1
	bneid     r7, ($BB1_278)
	ADDK      r9, r9, r9
$BB1_279:                               # %invcont188
                                        #   in Loop: Header=BB1_272 Depth=1
	ANDI      r7, r6, 31
	beqid     r7, ($BB1_281)
	ADDI      r10, r5, 0
$BB1_280:                               # %invcont188
                                        #   Parent Loop BB1_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r7, r7, -1
	bneid     r7, ($BB1_280)
	ADDK      r10, r10, r10
$BB1_281:                               # %invcont188
                                        #   in Loop: Header=BB1_272 Depth=1
	ANDI      r7, r6, 31
	beqid     r7, ($BB1_283)
	ADDI      r11, r5, 0
$BB1_282:                               # %invcont188
                                        #   Parent Loop BB1_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r7, r7, -1
	bneid     r7, ($BB1_282)
	ADDK      r11, r11, r11
$BB1_283:                               # %invcont188
                                        #   in Loop: Header=BB1_272 Depth=1
	LWI       r7, r19, 300
	ADD       r7, r7, r4
	LWI       r12, r19, 228
	ADD       r9, r12, r9
	LWI       r24, r19, 232
	SWI       r24, r7, 44
	ADD       r10, r12, r10
	ADD       r11, r12, r11
	LWI       r9, r9, -32
	LWI        r10, r10, -36
	LWI        r11, r11, -40
	SWI        r11, r7, 12
	ANDI      r12, r6, 31
	beqid     r12, ($BB1_285)
	ADDI      r24, r5, 0
$BB1_284:                               # %invcont188
                                        #   Parent Loop BB1_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r12, r12, -1
	bneid     r12, ($BB1_284)
	ADDK      r24, r24, r24
$BB1_285:                               # %invcont188
                                        #   in Loop: Header=BB1_272 Depth=1
	ANDI      r12, r6, 31
	beqid     r12, ($BB1_287)
	ADDI      r25, r5, 0
$BB1_286:                               # %invcont188
                                        #   Parent Loop BB1_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r12, r12, -1
	bneid     r12, ($BB1_286)
	ADDK      r25, r25, r25
$BB1_287:                               # %invcont188
                                        #   in Loop: Header=BB1_272 Depth=1
	ANDI      r6, r6, 31
	beqid     r6, ($BB1_289)
	ADDI      r12, r5, 0
$BB1_288:                               # %invcont188
                                        #   Parent Loop BB1_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ADDI      r6, r6, -1
	bneid     r6, ($BB1_288)
	ADDK      r12, r12, r12
$BB1_289:                               # %invcont188
                                        #   in Loop: Header=BB1_272 Depth=1
	SWI        r10, r7, 16
	LWI       r6, r19, 228
	ADD       r5, r6, r24
	SWI       r9, r7, 20
	ADD       r9, r6, r25
	ADD       r6, r6, r12
	LWI       r12, r5, -44
	LWI        r9, r9, -48
	LWI        r6, r6, -52
	LWI       r5, r19, 300
	SW         r6, r5, r4
	SWI        r10, r19, 116
	SWI        r11, r19, 120
	SWI        r9, r19, 128
	SWI        r6, r19, 124
	SWI        r9, r7, 4
	brid      ($BB1_292)
	SWI       r12, r7, 8
$BB1_290:                               # %bb189
                                        #   in Loop: Header=BB1_272 Depth=1
	MULI      r5, r23, 52
	ADD       r24, r20, r5
	SW         r7, r20, r5
	SWI        r9, r24, 4
	SWI        r10, r24, 8
	SWI        r11, r24, 12
	SWI        r12, r24, 16
	ADDI      r5, r0, 1065353216
	SWI        r6, r24, 20
	SWI       r5, r24, 24
	ADDI      r23, r23, 1
$BB1_291:                               # %bb189
                                        #   in Loop: Header=BB1_272 Depth=1
	SWI       r5, r24, 28
	SWI       r5, r24, 32
$BB1_292:                               # %bb191
                                        #   in Loop: Header=BB1_272 Depth=1
	ADDI      r5, r0, -1
	LWI       r6, r19, 296
	ADDK      r6, r6, r5
	SWI       r6, r19, 296
	ADDKC      r26, r26, r5
	ADDI      r22, r22, 1
	ADD       r5, r0, r0
	BITOR     r6, r6, r26
	CMP       r5, r5, r6
	bneid     r5, ($BB1_272)
	NOP    
# BB#293:                               # %bb193
	ADDI      r3, r0, 1
	ANDI      r3, r3, 31
	LWI       r9, r19, 304
	beqid     r3, ($BB1_295)
	ADDI      r22, r9, 0
$BB1_294:                               # %bb193
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r3, r3, -1
	bneid     r3, ($BB1_294)
	ADDK      r22, r22, r22
$BB1_295:                               # %bb193
	ADDI      r1, r1, -20
	ORI       r9, r22, 1
	ADD       r6, r21, r0
	brlid     r15, _ZN9PhotonMap8generateEP6PhotonS1_ii
	LWI       r7, r19, 300
	ADDI      r1, r1, 20
	ADDI      r1, r1, -20
	ADDI      r9, r22, 2
	ADD       r6, r20, r0
	LWI       r7, r19, 300
	brlid     r15, _ZN9PhotonMap8generateEP6PhotonS1_ii
	ADD       r8, r23, r0
	ADDI      r1, r1, 20
	LWI       r1, r19, 308
$BB1_296:                               # %return
	ORI       r3, r0, __stack_chk_guard
	LWI       r3, r3, 0
	LWI       r4, r19, 56
	CMP       r3, r4, r3
	bneid     r3, ($BB1_298)
	NOP    
# BB#297:                               # %SP_return
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
	rtsd      r15, 8
	ADDI      r1, r1, 316
$BB1_298:                               # %CallStackCheckFailBlk
	brlid     r15, __stack_chk_fail
	ADDI      r1, r1, -4
	ADDI      r1, r1, 4
	.end	_ZN9PhotonMap8generateEP6PhotonS1_ii
$tmp1:
	.size	_ZN9PhotonMap8generateEP6PhotonS1_ii, ($tmp1)-_ZN9PhotonMap8generateEP6PhotonS1_ii

	.align	2
	.type	_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi,@function
	.ent	_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi # @_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi
_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi:
	.frame	r1,200,r15
	.mask	0xfff08000
# BB#0:                                 # %entry
	ADDI      r1, r1, -200
	SWI       r15, r1, 0
	SWI       r20, r1, 80
	SWI       r21, r1, 76
	SWI       r22, r1, 72
	SWI       r23, r1, 68
	SWI       r24, r1, 64
	SWI       r25, r1, 60
	SWI       r26, r1, 56
	SWI       r27, r1, 52
	SWI       r28, r1, 48
	SWI       r29, r1, 44
	SWI       r30, r1, 40
	SWI       r31, r1, 36
	ADD       r20, r10, r0
	ADD       r21, r9, r0
	ADD       r22, r8, r0
	ADD       r23, r7, r0
	ADD       r24, r6, r0
	ADDI      r3, r0, 1
	ANDI      r3, r3, 31
	ADDI      r4, r21, 0
	beqid     r3, ($BB2_3)
	ADD       r25, r4, r0
# BB#1:
	ADD       r25, r4, r0
$BB2_2:                                 # %entry
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r3, r3, -1
	bneid     r3, ($BB2_2)
	ADDK      r25, r25, r25
$BB2_3:                                 # %entry
	ADDI      r3, r0, 31
	ANDI      r3, r3, 31
	beqid     r3, ($BB2_5)
	NOP    
$BB2_4:                                 # %entry
                                        # =>This Inner Loop Header: Depth=1
	sra       r4, r4
	ADDI      r3, r3, -1
	bneid     r3, ($BB2_4)
	NOP    
$BB2_5:                                 # %entry
	LWI       r26, r1, 224
	LWI       r27, r1, 228
	ADDI      r28, r25, 2
	LWI       r29, r1, 232
	CMP       r3, r27, r28
	bgeid     r3, ($BB2_23)
	NOP    
# BB#6:                                 # %bb
	MULI      r3, r21, 52
	ADD       r4, r26, r3
	LWI       r5, r4, 44
	ADDI      r6, r0, 1
	CMP       r6, r6, r5
	beqid     r6, ($BB2_9)
	NOP    
# BB#7:                                 # %bb
	ADD       r4, r0, r0
	CMP       r4, r4, r5
	bneid     r4, ($BB2_10)
	NOP    
# BB#8:                                 # %_ZN6Photon8get_axisEi.exit
	SWI       r23, r1, 88
	LWI        r4, r1, 88
	LW         r3, r26, r3
	brid      ($BB2_11)
	FPRSUB    r3, r3, r4
$BB2_9:                                 # %_ZN6Photon8get_axisEi.exit6
	SWI       r24, r1, 84
	LWI        r3, r1, 84
	LWI        r4, r4, 4
	brid      ($BB2_11)
	FPRSUB    r3, r4, r3
$BB2_10:                                # %bb4
	ADD       r3, r26, r3
	LWI        r3, r3, 8
	FPRSUB    r3, r3, r22
$BB2_11:                                # %bb5
	ORI       r4, r0, 0
	FPUN      r5, r3, r4
	FPGE      r4, r3, r4
	BITOR     r4, r5, r4
	bneid     r4, ($BB2_13)
	ADDI      r6, r0, 1
# BB#12:                                # %bb5
	ADDI      r6, r0, 0
$BB2_13:                                # %bb5
	bneid     r6, ($BB2_18)
	NOP    
# BB#14:                                # %bb6
	FPMUL     r3, r3, r3
	ORI       r4, r0, 1056629063
	FPUN      r5, r3, r4
	FPGE      r3, r3, r4
	SWI       r26, r1, 24
	SWI       r27, r1, 28
	SWI       r29, r1, 32
	BITOR     r3, r5, r3
	bneid     r3, ($BB2_16)
	ADDI      r30, r0, 1
# BB#15:                                # %bb6
	ADDI      r30, r0, 0
$BB2_16:                                # %bb6
	ORI       r9, r25, 1
	ADD       r6, r24, r0
	ADD       r7, r23, r0
	ADD       r8, r22, r0
	brlid     r15, _ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi
	ADD       r10, r20, r0
	bneid     r30, ($BB2_23)
	NOP    
# BB#17:                                # %bb9
	SWI       r26, r1, 24
	SWI       r27, r1, 28
	SWI       r29, r1, 32
	ADD       r6, r24, r0
	ADD       r7, r23, r0
	ADD       r8, r22, r0
	brid      ($BB2_22)
	ADD       r9, r28, r0
$BB2_18:                                # %bb15
	FPMUL     r3, r3, r3
	ORI       r4, r0, 1056629063
	FPUN      r5, r3, r4
	FPGE      r3, r3, r4
	SWI       r26, r1, 24
	SWI       r27, r1, 28
	SWI       r29, r1, 32
	BITOR     r3, r5, r3
	bneid     r3, ($BB2_20)
	ADDI      r30, r0, 1
# BB#19:                                # %bb15
	ADDI      r30, r0, 0
$BB2_20:                                # %bb15
	ADD       r6, r24, r0
	ADD       r7, r23, r0
	ADD       r8, r22, r0
	ADD       r9, r28, r0
	brlid     r15, _ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi
	ADD       r10, r20, r0
	bneid     r30, ($BB2_23)
	NOP    
# BB#21:                                # %bb20
	SWI       r26, r1, 24
	SWI       r27, r1, 28
	SWI       r29, r1, 32
	ORI       r9, r25, 1
	ADD       r6, r24, r0
	ADD       r7, r23, r0
	ADD       r8, r22, r0
$BB2_22:                                # %bb20
	brlid     r15, _ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi
	ADD       r10, r20, r0
$BB2_23:                                # %bb25
	MULI      r3, r21, 52
	ADD       r4, r26, r3
	SWI       r23, r1, 96
	SWI       r24, r1, 92
	LW         r5, r26, r3
	LWI        r6, r1, 96
	LWI        r7, r4, 4
	LWI        r8, r1, 92
	FPRSUB    r6, r6, r5
	FPRSUB    r8, r8, r7
	LWI        r4, r4, 8
	FPRSUB    r9, r22, r4
	FPMUL     r6, r6, r6
	FPMUL     r8, r8, r8
	FPADD     r6, r6, r8
	FPMUL     r8, r9, r9
	FPADD     r6, r6, r8
	ORI       r8, r0, 1056629063
	FPUN      r9, r6, r8
	FPGE      r6, r6, r8
	BITOR     r6, r9, r6
	bneid     r6, ($BB2_25)
	ADDI      r8, r0, 1
# BB#24:                                # %bb25
	ADDI      r8, r0, 0
$BB2_25:                                # %bb25
	bneid     r8, ($BB2_166)
	NOP    
# BB#26:                                # %bb37
	ADD       r3, r26, r3
	lbui      r6, r3, 12
	ADDI      r8, r0, 8
	LWI       r9, r29, 0
	lbui      r10, r3, 14
	SWI        r5, r1, 136
	ANDI      r5, r8, 31
	beqid     r5, ($BB2_28)
	ADDI      r6, r6, 0
$BB2_27:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r5, r5, -1
	bneid     r5, ($BB2_27)
	ADDK      r6, r6, r6
$BB2_28:                                # %bb37
	lbui      r5, r3, 13
	lbui      r11, r3, 16
	LWI       r12, r1, 136
	lbui      r21, r3, 47
	SWI       r21, r1, 184
	ANDI      r21, r8, 31
	beqid     r21, ($BB2_30)
	ADDI      r10, r10, 0
$BB2_29:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r21, r21, -1
	bneid     r21, ($BB2_29)
	ADDK      r10, r10, r10
$BB2_30:                                # %bb37
	ADDI      r21, r0, 24
	lbui      r22, r3, 15
	lbui      r23, r3, 46
	SWI       r23, r1, 188
	lbui      r23, r3, 45
	SWI       r23, r1, 192
	lbui      r23, r3, 44
	SWI       r23, r1, 196
	lbui      r23, r3, 18
	SWI        r7, r1, 140
	ANDI      r7, r21, 31
	ADDI      r24, r12, 0
	beqid     r7, ($BB2_33)
	ADD       r25, r24, r0
# BB#31:
	ADD       r25, r24, r0
$BB2_32:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r25, r25
	ADDI      r7, r7, -1
	bneid     r7, ($BB2_32)
	NOP    
$BB2_33:                                # %bb37
	ADDI      r7, r0, 16
	ANDI      r26, r7, 31
	beqid     r26, ($BB2_35)
	NOP    
$BB2_34:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r24, r24
	ADDI      r26, r26, -1
	bneid     r26, ($BB2_34)
	NOP    
$BB2_35:                                # %bb37
	ANDI      r26, r8, 31
	beqid     r26, ($BB2_37)
	ADDI      r27, r12, 0
$BB2_36:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r27, r27
	ADDI      r26, r26, -1
	bneid     r26, ($BB2_36)
	NOP    
$BB2_37:                                # %bb37
	ANDI      r26, r8, 31
	beqid     r26, ($BB2_39)
	ADDI      r11, r11, 0
$BB2_38:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r26, r26, -1
	bneid     r26, ($BB2_38)
	ADDK      r11, r11, r11
$BB2_39:                                # %bb37
	BITOR     r5, r6, r5
	lbui      r6, r3, 17
	ANDI      r26, r7, 31
	beqid     r26, ($BB2_41)
	ADDI      r5, r5, 0
$BB2_40:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r26, r26, -1
	bneid     r26, ($BB2_40)
	ADDK      r5, r5, r5
$BB2_41:                                # %bb37
	LWI       r26, r1, 140
	lbui      r28, r3, 20
	ANDI      r30, r8, 31
	beqid     r30, ($BB2_43)
	ADDI      r23, r23, 0
$BB2_42:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r30, r30, -1
	bneid     r30, ($BB2_42)
	ADDK      r23, r23, r23
$BB2_43:                                # %bb37
	MULI      r30, r9, 52
	ADD       r31, r20, r30
	BITOR     r10, r10, r22
	BITOR     r5, r5, r10
	lbui      r10, r3, 19
	sb        r25, r20, r30
	sbi       r24, r31, 1
	sbi       r27, r31, 2
	sbi       r12, r31, 3
	lbui      r12, r3, 22
	SWI       r5, r1, 132
	SWI        r4, r1, 144
	ANDI      r4, r21, 31
	ADDI      r5, r26, 0
	beqid     r4, ($BB2_46)
	ADD       r20, r5, r0
# BB#44:
	ADD       r20, r5, r0
$BB2_45:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r20, r20
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_45)
	NOP    
$BB2_46:                                # %bb37
	ANDI      r4, r7, 31
	beqid     r4, ($BB2_48)
	NOP    
$BB2_47:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r5, r5
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_47)
	NOP    
$BB2_48:                                # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_50)
	ADDI      r22, r26, 0
$BB2_49:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r22, r22
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_49)
	NOP    
$BB2_50:                                # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_52)
	ADDI      r24, r28, 0
$BB2_51:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_51)
	ADDK      r24, r24, r24
$BB2_52:                                # %bb37
	BITOR     r4, r11, r6
	lbui      r6, r3, 21
	ANDI      r11, r7, 31
	beqid     r11, ($BB2_54)
	ADDI      r4, r4, 0
$BB2_53:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r11, r11, -1
	bneid     r11, ($BB2_53)
	ADDK      r4, r4, r4
$BB2_54:                                # %bb37
	LWI       r11, r1, 144
	lbui      r25, r3, 24
	LWI        r27, r1, 132
	ANDI      r28, r8, 31
	beqid     r28, ($BB2_56)
	ADDI      r12, r12, 0
$BB2_55:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r28, r28, -1
	bneid     r28, ($BB2_55)
	ADDK      r12, r12, r12
$BB2_56:                                # %bb37
	BITOR     r10, r23, r10
	BITOR     r4, r4, r10
	lbui      r10, r3, 23
	sbi       r20, r31, 4
	sbi       r5, r31, 5
	sbi       r22, r31, 6
	sbi       r26, r31, 7
	lbui      r5, r3, 26
	SWI       r4, r1, 100
	SWI        r27, r1, 148
	ANDI      r4, r21, 31
	ADDI      r20, r11, 0
	beqid     r4, ($BB2_59)
	ADD       r22, r20, r0
# BB#57:
	ADD       r22, r20, r0
$BB2_58:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r22, r22
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_58)
	NOP    
$BB2_59:                                # %bb37
	ANDI      r4, r7, 31
	beqid     r4, ($BB2_61)
	NOP    
$BB2_60:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r20, r20
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_60)
	NOP    
$BB2_61:                                # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_63)
	ADDI      r23, r11, 0
$BB2_62:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r23, r23
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_62)
	NOP    
$BB2_63:                                # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_65)
	ADDI      r25, r25, 0
$BB2_64:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_64)
	ADDK      r25, r25, r25
$BB2_65:                                # %bb37
	BITOR     r4, r24, r6
	lbui      r6, r3, 25
	ANDI      r24, r7, 31
	beqid     r24, ($BB2_67)
	ADDI      r4, r4, 0
$BB2_66:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r24, r24, -1
	bneid     r24, ($BB2_66)
	ADDK      r4, r4, r4
$BB2_67:                                # %bb37
	LWI       r24, r1, 148
	lbui      r26, r3, 28
	LWI        r27, r1, 100
	ANDI      r28, r8, 31
	beqid     r28, ($BB2_69)
	ADDI      r5, r5, 0
$BB2_68:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r28, r28, -1
	bneid     r28, ($BB2_68)
	ADDK      r5, r5, r5
$BB2_69:                                # %bb37
	BITOR     r10, r12, r10
	BITOR     r4, r4, r10
	lbui      r10, r3, 27
	sbi       r22, r31, 8
	sbi       r20, r31, 9
	sbi       r23, r31, 10
	sbi       r11, r31, 11
	lbui      r11, r3, 30
	SWI       r4, r1, 104
	SWI        r27, r1, 152
	ANDI      r4, r21, 31
	ADDI      r12, r24, 0
	beqid     r4, ($BB2_72)
	ADD       r20, r12, r0
# BB#70:
	ADD       r20, r12, r0
$BB2_71:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r20, r20
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_71)
	NOP    
$BB2_72:                                # %bb37
	ANDI      r4, r7, 31
	beqid     r4, ($BB2_74)
	NOP    
$BB2_73:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r12, r12
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_73)
	NOP    
$BB2_74:                                # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_76)
	ADDI      r22, r24, 0
$BB2_75:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r22, r22
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_75)
	NOP    
$BB2_76:                                # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_78)
	ADDI      r23, r26, 0
$BB2_77:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_77)
	ADDK      r23, r23, r23
$BB2_78:                                # %bb37
	BITOR     r4, r25, r6
	lbui      r6, r3, 29
	ANDI      r25, r7, 31
	beqid     r25, ($BB2_80)
	ADDI      r4, r4, 0
$BB2_79:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r25, r25, -1
	bneid     r25, ($BB2_79)
	ADDK      r4, r4, r4
$BB2_80:                                # %bb37
	LWI       r25, r1, 152
	lbui      r26, r3, 32
	LWI        r27, r1, 104
	ANDI      r28, r8, 31
	beqid     r28, ($BB2_82)
	ADDI      r11, r11, 0
$BB2_81:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r28, r28, -1
	bneid     r28, ($BB2_81)
	ADDK      r11, r11, r11
$BB2_82:                                # %bb37
	BITOR     r5, r5, r10
	BITOR     r4, r4, r5
	lbui      r5, r3, 31
	sbi       r20, r31, 12
	sbi       r12, r31, 13
	sbi       r22, r31, 14
	sbi       r24, r31, 15
	lbui      r10, r3, 34
	SWI       r4, r1, 128
	SWI        r27, r1, 156
	ANDI      r4, r21, 31
	ADDI      r12, r25, 0
	beqid     r4, ($BB2_85)
	ADD       r20, r12, r0
# BB#83:
	ADD       r20, r12, r0
$BB2_84:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r20, r20
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_84)
	NOP    
$BB2_85:                                # %bb37
	ANDI      r4, r7, 31
	beqid     r4, ($BB2_87)
	NOP    
$BB2_86:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r12, r12
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_86)
	NOP    
$BB2_87:                                # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_89)
	ADDI      r22, r25, 0
$BB2_88:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r22, r22
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_88)
	NOP    
$BB2_89:                                # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_91)
	ADDI      r24, r26, 0
$BB2_90:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_90)
	ADDK      r24, r24, r24
$BB2_91:                                # %bb37
	BITOR     r4, r23, r6
	lbui      r6, r3, 33
	ANDI      r23, r7, 31
	beqid     r23, ($BB2_93)
	ADDI      r4, r4, 0
$BB2_92:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r23, r23, -1
	bneid     r23, ($BB2_92)
	ADDK      r4, r4, r4
$BB2_93:                                # %bb37
	LWI       r23, r1, 156
	lbui      r26, r3, 36
	LWI        r27, r1, 128
	ANDI      r28, r8, 31
	beqid     r28, ($BB2_95)
	ADDI      r10, r10, 0
$BB2_94:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r28, r28, -1
	bneid     r28, ($BB2_94)
	ADDK      r10, r10, r10
$BB2_95:                                # %bb37
	BITOR     r5, r11, r5
	BITOR     r4, r4, r5
	lbui      r5, r3, 35
	sbi       r20, r31, 16
	sbi       r12, r31, 17
	sbi       r22, r31, 18
	sbi       r25, r31, 19
	lbui      r11, r3, 38
	SWI       r4, r1, 108
	SWI        r27, r1, 160
	ANDI      r4, r21, 31
	ADDI      r12, r23, 0
	beqid     r4, ($BB2_98)
	ADD       r20, r12, r0
# BB#96:
	ADD       r20, r12, r0
$BB2_97:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r20, r20
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_97)
	NOP    
$BB2_98:                                # %bb37
	ANDI      r4, r7, 31
	beqid     r4, ($BB2_100)
	NOP    
$BB2_99:                                # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r12, r12
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_99)
	NOP    
$BB2_100:                               # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_102)
	ADDI      r22, r23, 0
$BB2_101:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r22, r22
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_101)
	NOP    
$BB2_102:                               # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_104)
	ADDI      r25, r26, 0
$BB2_103:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_103)
	ADDK      r25, r25, r25
$BB2_104:                               # %bb37
	BITOR     r4, r24, r6
	lbui      r6, r3, 37
	ANDI      r24, r7, 31
	beqid     r24, ($BB2_106)
	ADDI      r4, r4, 0
$BB2_105:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r24, r24, -1
	bneid     r24, ($BB2_105)
	ADDK      r4, r4, r4
$BB2_106:                               # %bb37
	LWI       r24, r1, 160
	lbui      r26, r3, 40
	LWI        r27, r1, 108
	ANDI      r28, r8, 31
	beqid     r28, ($BB2_108)
	ADDI      r11, r11, 0
$BB2_107:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r28, r28, -1
	bneid     r28, ($BB2_107)
	ADDK      r11, r11, r11
$BB2_108:                               # %bb37
	BITOR     r5, r10, r5
	BITOR     r4, r4, r5
	lbui      r5, r3, 39
	sbi       r20, r31, 20
	sbi       r12, r31, 21
	sbi       r22, r31, 22
	sbi       r23, r31, 23
	lbui      r10, r3, 42
	SWI       r4, r1, 112
	SWI        r27, r1, 164
	ANDI      r4, r21, 31
	ADDI      r12, r24, 0
	beqid     r4, ($BB2_111)
	ADD       r20, r12, r0
# BB#109:
	ADD       r20, r12, r0
$BB2_110:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r20, r20
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_110)
	NOP    
$BB2_111:                               # %bb37
	ANDI      r4, r7, 31
	beqid     r4, ($BB2_113)
	NOP    
$BB2_112:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r12, r12
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_112)
	NOP    
$BB2_113:                               # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_115)
	ADDI      r22, r24, 0
$BB2_114:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r22, r22
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_114)
	NOP    
$BB2_115:                               # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_117)
	ADDI      r23, r26, 0
$BB2_116:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_116)
	ADDK      r23, r23, r23
$BB2_117:                               # %bb37
	BITOR     r4, r25, r6
	lbui      r6, r3, 41
	ANDI      r25, r7, 31
	beqid     r25, ($BB2_119)
	ADDI      r4, r4, 0
$BB2_118:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r25, r25, -1
	bneid     r25, ($BB2_118)
	ADDK      r4, r4, r4
$BB2_119:                               # %bb37
	LWI       r25, r1, 164
	LWI        r26, r1, 112
	ANDI      r27, r8, 31
	beqid     r27, ($BB2_121)
	ADDI      r10, r10, 0
$BB2_120:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r27, r27, -1
	bneid     r27, ($BB2_120)
	ADDK      r10, r10, r10
$BB2_121:                               # %bb37
	BITOR     r5, r11, r5
	BITOR     r4, r4, r5
	lbui      r5, r3, 43
	sbi       r20, r31, 24
	sbi       r12, r31, 25
	sbi       r22, r31, 26
	sbi       r24, r31, 27
	SWI       r4, r1, 124
	SWI        r26, r1, 168
	ANDI      r4, r21, 31
	ADDI      r11, r25, 0
	beqid     r4, ($BB2_124)
	ADD       r12, r11, r0
# BB#122:
	ADD       r12, r11, r0
$BB2_123:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r12, r12
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_123)
	NOP    
$BB2_124:                               # %bb37
	ANDI      r4, r7, 31
	beqid     r4, ($BB2_126)
	NOP    
$BB2_125:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r11, r11
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_125)
	NOP    
$BB2_126:                               # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_128)
	ADDI      r20, r25, 0
$BB2_127:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r20, r20
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_127)
	NOP    
$BB2_128:                               # %bb37
	BITOR     r4, r23, r6
	ANDI      r6, r7, 31
	beqid     r6, ($BB2_130)
	ADDI      r4, r4, 0
$BB2_129:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r6, r6, -1
	bneid     r6, ($BB2_129)
	ADDK      r4, r4, r4
$BB2_130:                               # %bb37
	BITOR     r5, r10, r5
	LWI       r6, r1, 168
	lbui      r10, r3, 48
	BITOR     r4, r4, r5
	LWI        r5, r1, 124
	sbi       r12, r31, 28
	sbi       r11, r31, 29
	sbi       r20, r31, 30
	sbi       r25, r31, 31
	lbui      r11, r3, 50
	SWI       r4, r1, 120
	SWI        r5, r1, 172
	ANDI      r4, r21, 31
	ADDI      r5, r6, 0
	beqid     r4, ($BB2_133)
	ADD       r12, r5, r0
# BB#131:
	ADD       r12, r5, r0
$BB2_132:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r12, r12
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_132)
	NOP    
$BB2_133:                               # %bb37
	ANDI      r4, r7, 31
	beqid     r4, ($BB2_135)
	NOP    
$BB2_134:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r5, r5
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_134)
	NOP    
$BB2_135:                               # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_137)
	ADDI      r20, r6, 0
$BB2_136:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r20, r20
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_136)
	NOP    
$BB2_137:                               # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_139)
	ADDI      r10, r10, 0
$BB2_138:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_138)
	ADDK      r10, r10, r10
$BB2_139:                               # %bb37
	lbui      r4, r3, 49
	LWI       r22, r1, 172
	LWI        r23, r1, 120
	ANDI      r24, r8, 31
	beqid     r24, ($BB2_141)
	ADDI      r11, r11, 0
$BB2_140:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r24, r24, -1
	bneid     r24, ($BB2_140)
	ADDK      r11, r11, r11
$BB2_141:                               # %bb37
	lbui      r3, r3, 51
	sbi       r12, r31, 32
	sbi       r5, r31, 33
	sbi       r20, r31, 34
	sbi       r6, r31, 35
	SWI        r23, r1, 176
	ANDI      r5, r21, 31
	ADDI      r6, r22, 0
	beqid     r5, ($BB2_144)
	ADD       r12, r6, r0
# BB#142:
	ADD       r12, r6, r0
$BB2_143:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r12, r12
	ADDI      r5, r5, -1
	bneid     r5, ($BB2_143)
	NOP    
$BB2_144:                               # %bb37
	ANDI      r5, r7, 31
	beqid     r5, ($BB2_146)
	NOP    
$BB2_145:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r6, r6
	ADDI      r5, r5, -1
	bneid     r5, ($BB2_145)
	NOP    
$BB2_146:                               # %bb37
	ANDI      r5, r8, 31
	beqid     r5, ($BB2_148)
	ADDI      r20, r22, 0
$BB2_147:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r20, r20
	ADDI      r5, r5, -1
	bneid     r5, ($BB2_147)
	NOP    
$BB2_148:                               # %bb37
	BITOR     r4, r10, r4
	ANDI      r5, r7, 31
	beqid     r5, ($BB2_150)
	ADDI      r4, r4, 0
$BB2_149:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	ADDI      r5, r5, -1
	bneid     r5, ($BB2_149)
	ADDK      r4, r4, r4
$BB2_150:                               # %bb37
	BITOR     r3, r11, r3
	LWI       r5, r1, 176
	BITOR     r3, r4, r3
	sbi       r12, r31, 36
	sbi       r6, r31, 37
	sbi       r20, r31, 38
	sbi       r22, r31, 39
	SWI       r3, r1, 116
	ANDI      r3, r21, 31
	ADDI      r4, r5, 0
	beqid     r3, ($BB2_153)
	ADD       r6, r4, r0
# BB#151:
	ADD       r6, r4, r0
$BB2_152:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r6, r6
	ADDI      r3, r3, -1
	bneid     r3, ($BB2_152)
	NOP    
$BB2_153:                               # %bb37
	ANDI      r3, r7, 31
	beqid     r3, ($BB2_155)
	NOP    
$BB2_154:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r4, r4
	ADDI      r3, r3, -1
	bneid     r3, ($BB2_154)
	NOP    
$BB2_155:                               # %bb37
	ANDI      r3, r8, 31
	beqid     r3, ($BB2_157)
	ADDI      r10, r5, 0
$BB2_156:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r10, r10
	ADDI      r3, r3, -1
	bneid     r3, ($BB2_156)
	NOP    
$BB2_157:                               # %bb37
	LWI        r3, r1, 116
	sbi       r6, r31, 40
	sbi       r4, r31, 41
	sbi       r10, r31, 42
	sbi       r5, r31, 43
	SWI        r3, r1, 180
	LWI       r3, r1, 180
	LWI       r4, r1, 196
	sbi       r4, r31, 44
	LWI       r4, r1, 192
	sbi       r4, r31, 45
	LWI       r4, r1, 188
	sbi       r4, r31, 46
	LWI       r4, r1, 184
	sbi       r4, r31, 47
	ANDI      r4, r21, 31
	ADDI      r5, r3, 0
	beqid     r4, ($BB2_160)
	ADD       r6, r5, r0
# BB#158:
	ADD       r6, r5, r0
$BB2_159:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r6, r6
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_159)
	NOP    
$BB2_160:                               # %bb37
	ANDI      r4, r7, 31
	beqid     r4, ($BB2_162)
	NOP    
$BB2_161:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r5, r5
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_161)
	NOP    
$BB2_162:                               # %bb37
	ANDI      r4, r8, 31
	beqid     r4, ($BB2_164)
	ADDI      r7, r3, 0
$BB2_163:                               # %bb37
                                        # =>This Inner Loop Header: Depth=1
	srl       r7, r7
	ADDI      r4, r4, -1
	bneid     r4, ($BB2_163)
	NOP    
$BB2_164:                               # %bb37
	sbi       r6, r31, 48
	sbi       r5, r31, 49
	sbi       r7, r31, 50
	sbi       r3, r31, 51
	ADDI      r3, r9, 1
	ADDI      r4, r0, 51
	SWI       r3, r29, 0
	CMP       r3, r4, r3
	bltid     r3, ($BB2_166)
	NOP    
# BB#165:                               # %bb41
	SWI       r9, r29, 0
$BB2_166:                               # %return
	LWI       r31, r1, 36
	LWI       r30, r1, 40
	LWI       r29, r1, 44
	LWI       r28, r1, 48
	LWI       r27, r1, 52
	LWI       r26, r1, 56
	LWI       r25, r1, 60
	LWI       r24, r1, 64
	LWI       r23, r1, 68
	LWI       r22, r1, 72
	LWI       r21, r1, 76
	LWI       r20, r1, 80
	LWI       r15, r1, 0
	rtsd      r15, 8
	ADDI      r1, r1, 200
	.end	_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi
$tmp2:
	.size	_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi, ($tmp2)-_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi


