	.file	"rt.bc"
	.text
	.globl	main
	.align	2
	.type	main,@function
	.ent	main                    # @main
main:
	.frame	r19,1040752,r15
	.mask	0xfff88000
# BB#0:                                 # %invcont11
	ADDI      r1, r1, -1040752
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
	SWI       r4, r19, 1040668
	LOAD      r4, r3, 4
	SWI       r4, r19, 1040632
	LOAD      r4, r3, 7
	SWI       r4, r19, 1040680
	LOAD      r4, r3, 2
	LOAD      r4, r3, 5
	LOAD      r4, r3, 12
	LOAD      r5, r4, 0
	SWI       r5, r19, 1040684
	LOAD      r5, r4, 1
	SWI       r5, r19, 1040688
	LOAD      r4, r4, 2
	SWI       r4, r19, 1040692
	LOAD      r4, r3, 10
	LOAD      r5, r4, 0
	SWI       r5, r19, 1040596
	LOAD      r5, r4, 1
	SWI       r5, r19, 1040600
	LOAD      r5, r4, 2
	SWI       r5, r19, 1040608
	ADDI      r5, r4, 9
	LOAD      r6, r5, 0
	LOAD      r6, r5, 1
	ADDI      r6, r4, 12
	LOAD      r5, r5, 2
	LOAD      r5, r6, 0
	SWI       r5, r19, 1040696
	LOAD      r5, r6, 1
	SWI       r5, r19, 1040700
	LOAD      r5, r6, 2
	SWI       r5, r19, 1040704
	ADDI      r5, r4, 15
	LOAD      r6, r5, 0
	SWI       r6, r19, 1040708
	LOAD      r6, r5, 1
	SWI       r6, r19, 1040712
	LOAD      r5, r5, 2
	SWI       r5, r19, 1040716
	ADDI      r4, r4, 18
	LOAD      r5, r4, 0
	SWI       r5, r19, 1040720
	LOAD      r5, r4, 1
	SWI       r5, r19, 1040724
	LOAD      r4, r4, 2
	SWI       r4, r19, 1040728
	LOAD      r4, r3, 28
	LOAD      r4, r3, 29
	ADDI      r4, r19, 184
	LOAD      r5, r3, 8
	SWI       r5, r19, 1040580
	ADDI      r5, r0, 20000
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
	ADDI      r3, r3, -260000
	ADD       r1, r3, r0
	ADD       r4, r0, r0
	ADDI      r5, r0, 5000
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
	SWI       r3, r19, 1040644
	LOAD      r3, r3, 12
	LOAD      r4, r3, 0
	LOAD      r5, r3, 1
	LOAD      r3, r3, 2
	SWI        r4, r19, 1040184
	SWI        r5, r19, 1040188
	SWI        r3, r19, 1040192
	LWI       r3, r19, 1040184
	SWI       r3, r19, 1040616
	LWI       r3, r19, 1040188
	SWI       r3, r19, 1040620
	LWI       r3, r19, 1040192
	SWI       r3, r19, 1040624
	ADDI      r3, r0, 5000
	SWI       r3, r19, 1040628
	brid      ($BB0_131)
	NOP    
$BB0_5:                                 # %bb.i105
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        #       Parent Loop BB0_129 Depth=3
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
	bneid     r7, ($BB0_7)
	NOP    
# BB#6:                                 # %bb.i105
                                        #   in Loop: Header=BB0_5 Depth=4
	ADDI      r8, r0, 0
$BB0_7:                                 # %bb.i105
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r8, ($BB0_5)
	NOP    
# BB#8:                                 # %invcont42
                                        #   in Loop: Header=BB0_129 Depth=3
	FPINVSQRT r6, r6
	ORI       r7, r0, 1065353216
	FPDIV     r6, r7, r6
	FPDIV     r4, r4, r6
	SWI       r4, r19, 1040548
	FPDIV     r5, r5, r6
	SWI       r5, r19, 1040552
	FPDIV     r3, r3, r6
	SWI       r3, r19, 1040556
	SWI        r4, r19, 1040464
	SWI        r5, r19, 1040460
	SWI        r3, r19, 1040456
	ADD       r3, r0, r0
	ADDI      r4, r0, -1
	SWI       r4, r19, 1040540
	ADDI      r4, r0, 1343554297
	SWI       r4, r19, 1040560
$BB0_9:                                 # %bb.i
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        #       Parent Loop BB0_129 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_101 Depth 5
                                        #           Child Loop BB0_73 Depth 5
                                        #           Child Loop BB0_104 Depth 5
                                        #           Child Loop BB0_10 Depth 5
	ADDI      r4, r0, 3
	ANDI      r4, r4, 31
	beqid     r4, ($BB0_11)
	ADDI      r3, r3, 0
$BB0_10:                                # %bb.i
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        #       Parent Loop BB0_129 Depth=3
                                        #         Parent Loop BB0_9 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_10)
	ADDK      r3, r3, r3
$BB0_11:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	LWI       r4, r19, 1040580
	ADD       r4, r3, r4
	LOAD      r3, r4, 2
	LOAD      r5, r4, 1
	LOAD      r6, r4, 0
	LOAD      r7, r4, 5
	LOAD      r8, r4, 4
	LOAD      r9, r4, 3
	LWI       r10, r19, 1040564
	FPRSUB    r6, r10, r6
	FPRSUB    r9, r10, r9
	LWI       r10, r19, 1040556
	FPDIV     r6, r6, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r6, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_13)
	ADD       r20, r11, r0
# BB#12:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r20, r12, r0
$BB0_13:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r20, ($BB0_15)
	ADD       r10, r9, r0
# BB#14:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r10, r6, r0
$BB0_15:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_17)
	NOP    
# BB#16:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r6, r9, r0
$BB0_17:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r6, r9
	bneid     r20, ($BB0_19)
	ADD       r23, r11, r0
# BB#18:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r23, r12, r0
$BB0_19:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r22, ($BB0_21)
	ADD       r20, r11, r0
# BB#20:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r20, r12, r0
$BB0_21:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r23, ($BB0_23)
	NOP    
# BB#22:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r10, r21, r0
$BB0_23:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r20, ($BB0_25)
	NOP    
# BB#24:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r6, r9, r0
$BB0_25:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	FPGT      r9, r10, r6
	bneid     r9, ($BB0_27)
	NOP    
# BB#26:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r11, r12, r0
$BB0_27:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r11, ($BB0_99)
	NOP    
# BB#28:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r6, r9
	bneid     r9, ($BB0_30)
	NOP    
# BB#29:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADDI      r11, r0, 0
$BB0_30:                                # %bb.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r11, ($BB0_99)
	NOP    
# BB#31:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	LWI       r9, r19, 1040568
	FPRSUB    r5, r9, r5
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 1040552
	FPDIV     r5, r5, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r5, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_33)
	ADD       r20, r11, r0
# BB#32:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r20, r12, r0
$BB0_33:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r20, ($BB0_35)
	ADD       r9, r8, r0
# BB#34:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r9, r5, r0
$BB0_35:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r20, ($BB0_37)
	NOP    
# BB#36:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r5, r8, r0
$BB0_37:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	FPGT      r8, r9, r10
	FPLT      r20, r5, r6
	bneid     r8, ($BB0_39)
	ADD       r21, r11, r0
# BB#38:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r21, r12, r0
$BB0_39:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r20, ($BB0_41)
	ADD       r8, r11, r0
# BB#40:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r8, r12, r0
$BB0_41:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r21, ($BB0_43)
	NOP    
# BB#42:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r9, r10, r0
$BB0_43:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r8, ($BB0_45)
	NOP    
# BB#44:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r5, r6, r0
$BB0_45:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	FPGT      r6, r9, r5
	bneid     r6, ($BB0_47)
	NOP    
# BB#46:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r11, r12, r0
$BB0_47:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r11, ($BB0_99)
	NOP    
# BB#48:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ORI       r6, r0, 0
	ADDI      r8, r0, 1
	FPLT      r6, r5, r6
	bneid     r6, ($BB0_50)
	NOP    
# BB#49:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADDI      r8, r0, 0
$BB0_50:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r8, ($BB0_99)
	NOP    
# BB#51:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	LWI       r6, r19, 1040572
	FPRSUB    r3, r6, r3
	FPRSUB    r6, r6, r7
	LWI       r7, r19, 1040548
	FPDIV     r3, r3, r7
	FPDIV     r6, r6, r7
	FPGT      r7, r3, r6
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_53)
	ADD       r11, r8, r0
# BB#52:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r11, r10, r0
$BB0_53:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r11, ($BB0_55)
	ADD       r7, r6, r0
# BB#54:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r7, r3, r0
$BB0_55:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r11, ($BB0_57)
	NOP    
# BB#56:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r3, r6, r0
$BB0_57:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	FPGT      r6, r7, r9
	FPLT      r11, r3, r5
	bneid     r6, ($BB0_59)
	ADD       r12, r8, r0
# BB#58:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r12, r10, r0
$BB0_59:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r11, ($BB0_61)
	ADD       r6, r8, r0
# BB#60:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r6, r10, r0
$BB0_61:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r6, ($BB0_63)
	NOP    
# BB#62:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r3, r5, r0
$BB0_63:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r12, ($BB0_65)
	NOP    
# BB#64:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r7, r9, r0
$BB0_65:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	FPGT      r5, r7, r3
	bneid     r5, ($BB0_67)
	NOP    
# BB#66:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r8, r10, r0
$BB0_67:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r8, ($BB0_99)
	NOP    
# BB#68:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ORI       r5, r0, 0
	ADDI      r6, r0, 1
	FPLT      r3, r3, r5
	bneid     r3, ($BB0_70)
	NOP    
# BB#69:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADDI      r6, r0, 0
$BB0_70:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_9 Depth=4
	bneid     r6, ($BB0_99)
	NOP    
# BB#71:                                # %bb1.i26
                                        #   in Loop: Header=BB0_9 Depth=4
	LOAD      r3, r4, 7
	LOAD      r4, r4, 6
	SWI       r4, r19, 1040544
	ADD       r5, r0, r0
	CMP       r4, r5, r4
	bltid     r4, ($BB0_103)
	NOP    
# BB#72:                                # %bb6.preheader.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r4, r0, r0
	LWI       r5, r19, 1040544
	CMP       r4, r4, r5
	bleid     r4, ($BB0_99)
	NOP    
$BB0_73:                                # %bb5.i27
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        #       Parent Loop BB0_129 Depth=3
                                        #         Parent Loop BB0_9 Depth=4
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
	SWI       r7, r19, 1040576
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r19, 1040552
	FPMUL     r21, r20, r7
	LWI       r22, r19, 1040548
	FPMUL     r23, r8, r22
	FPRSUB    r6, r12, r6
	LOAD      r24, r3, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r19, 1040556
	FPMUL     r25, r23, r7
	FPRSUB    r4, r10, r4
	FPRSUB    r5, r11, r5
	LWI       r26, r19, 1040564
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r6
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r3, 9
	LWI       r28, r19, 1040568
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
	LWI       r31, r19, 1040572
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
# BB#74:                                # %bb5.i27
                                        #   in Loop: Header=BB0_73 Depth=5
	ADDI      r21, r0, 0
$BB0_75:                                # %bb5.i27
                                        #   in Loop: Header=BB0_73 Depth=5
	bneid     r21, ($BB0_98)
	NOP    
# BB#76:                                # %bb5.i27
                                        #   in Loop: Header=BB0_73 Depth=5
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_78)
	NOP    
# BB#77:                                # %bb5.i27
                                        #   in Loop: Header=BB0_73 Depth=5
	ADDI      r21, r0, 0
$BB0_78:                                # %bb5.i27
                                        #   in Loop: Header=BB0_73 Depth=5
	bneid     r21, ($BB0_98)
	NOP    
# BB#79:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_73 Depth=5
	FPMUL     r7, r11, r4
	FPMUL     r21, r5, r10
	FPRSUB    r7, r21, r7
	FPMUL     r10, r6, r10
	FPMUL     r4, r12, r4
	FPRSUB    r4, r4, r10
	FPMUL     r5, r5, r12
	FPMUL     r6, r6, r11
	LWI       r10, r19, 1040556
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r5, r6, r5
	LWI       r6, r19, 1040552
	FPMUL     r6, r4, r6
	FPADD     r10, r10, r11
	LWI       r12, r19, 1040548
	FPMUL     r12, r5, r12
	FPADD     r6, r6, r10
	FPADD     r6, r12, r6
	FPMUL     r6, r6, r22
	ADDI      r10, r0, 1
	FPLT      r11, r6, r11
	bneid     r11, ($BB0_81)
	NOP    
# BB#80:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_73 Depth=5
	ADDI      r10, r0, 0
$BB0_81:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_73 Depth=5
	bneid     r10, ($BB0_98)
	NOP    
# BB#82:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_73 Depth=5
	FPADD     r6, r6, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r6, r6, r10
	bneid     r6, ($BB0_84)
	NOP    
# BB#83:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_73 Depth=5
	ADDI      r11, r0, 0
$BB0_84:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_73 Depth=5
	bneid     r11, ($BB0_98)
	NOP    
# BB#85:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=5
	FPMUL     r6, r7, r9
	ORI       r7, r0, 0
	FPMUL     r4, r4, r8
	FPADD     r6, r6, r7
	LWI       r8, r19, 1040576
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
                                        #   in Loop: Header=BB0_73 Depth=5
	ADDI      r7, r0, 0
$BB0_87:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=5
	bneid     r7, ($BB0_98)
	NOP    
# BB#88:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=5
	ORI       r5, r0, 981668463
	ADDI      r6, r0, 1
	FPLT      r5, r4, r5
	bneid     r5, ($BB0_90)
	NOP    
# BB#89:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=5
	ADDI      r6, r0, 0
$BB0_90:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=5
	bneid     r6, ($BB0_98)
	NOP    
# BB#91:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=5
	ORI       r5, r0, 1343554297
	ADDI      r6, r0, 1
	FPEQ      r5, r4, r5
	bneid     r5, ($BB0_93)
	NOP    
# BB#92:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=5
	ADDI      r6, r0, 0
$BB0_93:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_73 Depth=5
	bneid     r6, ($BB0_98)
	NOP    
# BB#94:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_73 Depth=5
	LWI       r5, r19, 1040560
	SWI       r5, r19, 1040468
	LWI        r5, r19, 1040468
	FPUN      r6, r5, r4
	FPLE      r5, r5, r4
	BITOR     r5, r6, r5
	bneid     r5, ($BB0_96)
	ADDI      r7, r0, 1
# BB#95:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_73 Depth=5
	ADDI      r7, r0, 0
$BB0_96:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_73 Depth=5
	bneid     r7, ($BB0_98)
	NOP    
# BB#97:                                # %bb3.i.i.i28
                                        #   in Loop: Header=BB0_73 Depth=5
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
	SWI       r22, r19, 1040588
	ADD       r22, r0, r0
	MULI      r21, r21, 25
	LOAD      r22, r22, 9
	ADD       r21, r22, r21
	LOAD      r22, r21, 6
	LOAD      r23, r21, 5
	LOAD      r21, r21, 4
	SWI        r22, r19, 1040512
	SWI        r23, r19, 1040516
	SWI        r21, r19, 1040520
	SWI        r11, r19, 1040500
	SWI        r12, r19, 1040504
	SWI        r20, r19, 1040508
	SWI        r8, r19, 1040488
	SWI        r9, r19, 1040492
	SWI        r10, r19, 1040496
	SWI        r5, r19, 1040476
	SWI        r6, r19, 1040480
	SWI        r7, r19, 1040484
	SWI        r4, r19, 1040472
	ADDI      r4, r0, 1060320051
	SWI       r4, r19, 1040584
	ADDI      r4, r0, 1050253722
	SWI       r4, r19, 1040592
	LWI       r4, r19, 1040472
	SWI       r4, r19, 1040560
$BB0_98:                                # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i
                                        #   in Loop: Header=BB0_73 Depth=5
	LWI       r4, r19, 1040544
	ADDI      r4, r4, -1
	SWI       r4, r19, 1040544
	ADDI      r3, r3, 11
	ADD       r5, r0, r0
	CMP       r4, r5, r4
	bneid     r4, ($BB0_73)
	NOP    
$BB0_99:                                # %bb7.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADD       r3, r0, r0
	LWI       r4, r19, 1040540
	CMP       r3, r3, r4
	bltid     r3, ($BB0_106)
	NOP    
# BB#100:                               # %bb9.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r4, r19, 1040540
	beqid     r3, ($BB0_102)
	ADDI      r4, r4, 0
$BB0_101:                               # %bb9.i
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        #       Parent Loop BB0_129 Depth=3
                                        #         Parent Loop BB0_9 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_101)
	ADDK      r4, r4, r4
$BB0_102:                               # %bb9.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADDI      r3, r19, 56
	LW        r3, r3, r4
	LWI       r4, r19, 1040540
	ADDI      r4, r4, -1
	SWI       r4, r19, 1040540
	brid      ($BB0_9)
	NOP    
$BB0_103:                               # %bb3.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r5, r19, 1040540
	beqid     r4, ($BB0_105)
	ADDI      r5, r5, 0
$BB0_104:                               # %bb3.i
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        #       Parent Loop BB0_129 Depth=3
                                        #         Parent Loop BB0_9 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_104)
	ADDK      r5, r5, r5
$BB0_105:                               # %bb3.i
                                        #   in Loop: Header=BB0_9 Depth=4
	ADDI      r4, r19, 56
	LWI       r6, r19, 1040540
	ADDI      r6, r6, 1
	SWI       r6, r19, 1040540
	ADDI      r6, r3, 1
	ADD       r4, r4, r5
	brid      ($BB0_9)
	SWI       r6, r4, 4
$BB0_106:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_129 Depth=3
	LWI       r3, r19, 1040560
	SWI       r3, r19, 1040524
	LWI        r3, r19, 1040524
	ORI       r4, r0, 1343554297
	FPUN      r5, r3, r4
	FPGE      r4, r3, r4
	BITOR     r4, r5, r4
	bneid     r4, ($BB0_108)
	ADDI      r6, r0, 1
# BB#107:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_129 Depth=3
	ADDI      r6, r0, 0
$BB0_108:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_129 Depth=3
	bneid     r6, ($BB0_129)
	NOP    
# BB#109:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=2
	ADDI      r4, r0, 2
	ANDI      r5, r4, 31
	LWI       r6, r19, 1040612
	beqid     r5, ($BB0_111)
	ADDI      r6, r6, 0
$BB0_110:                               # %invcont61
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_110)
	ADDK      r6, r6, r6
$BB0_111:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=2
	ANDI      r5, r4, 31
	LWI       r7, r19, 1040612
	beqid     r5, ($BB0_113)
	ADDI      r7, r7, 0
$BB0_112:                               # %invcont61
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_112)
	ADDK      r7, r7, r7
$BB0_113:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=2
	ANDI      r5, r4, 31
	LWI       r8, r19, 1040612
	beqid     r5, ($BB0_115)
	ADDI      r8, r8, 0
$BB0_114:                               # %invcont61
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_114)
	ADDK      r8, r8, r8
$BB0_115:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=2
	LWI       r5, r19, 1040556
	FPMUL     r5, r5, r3
	ADDI      r9, r19, 184
	SW         r5, r9, r7
	ANDI      r7, r4, 31
	LWI       r10, r19, 1040612
	beqid     r7, ($BB0_117)
	ADDI      r10, r10, 0
$BB0_116:                               # %invcont61
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r7, r7, -1
	bneid     r7, ($BB0_116)
	ADDK      r10, r10, r10
$BB0_117:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=2
	LWI       r7, r19, 1040552
	FPMUL     r7, r7, r3
	ADD       r6, r9, r6
	SWI        r7, r6, 4
	ANDI      r6, r4, 31
	LWI       r11, r19, 1040612
	beqid     r6, ($BB0_119)
	ADDI      r11, r11, 0
$BB0_118:                               # %invcont61
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r6, r6, -1
	bneid     r6, ($BB0_118)
	ADDK      r11, r11, r11
$BB0_119:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=2
	LWI       r6, r19, 1040548
	FPMUL     r3, r6, r3
	ADD       r6, r9, r8
	SWI        r3, r6, 8
	ANDI      r6, r4, 31
	LWI       r8, r19, 1040612
	beqid     r6, ($BB0_121)
	ADDI      r8, r8, 0
$BB0_120:                               # %invcont61
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r6, r6, -1
	bneid     r6, ($BB0_120)
	ADDK      r8, r8, r8
$BB0_121:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=2
	ADD       r6, r9, r10
	SWI       r0, r6, 12
	ANDI      r6, r4, 31
	LWI       r10, r19, 1040612
	beqid     r6, ($BB0_123)
	ADDI      r10, r10, 0
$BB0_122:                               # %invcont61
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r6, r6, -1
	bneid     r6, ($BB0_122)
	ADDK      r10, r10, r10
$BB0_123:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=2
	ADD       r6, r9, r11
	SWI       r0, r6, 16
	ANDI      r6, r4, 31
	LWI       r11, r19, 1040612
	beqid     r6, ($BB0_125)
	ADDI      r11, r11, 0
$BB0_124:                               # %invcont61
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r6, r6, -1
	bneid     r6, ($BB0_124)
	ADDK      r11, r11, r11
$BB0_125:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=2
	ADD       r6, r9, r8
	SWI       r0, r6, 20
	SWI        r5, r19, 1040528
	SWI        r7, r19, 1040532
	SWI        r3, r19, 1040536
	ANDI      r3, r4, 31
	LWI       r4, r19, 1040612
	beqid     r3, ($BB0_127)
	ADDI      r4, r4, 0
$BB0_126:                               # %invcont61
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_126)
	ADDK      r4, r4, r4
$BB0_127:                               # %invcont61
                                        #   in Loop: Header=BB0_128 Depth=2
	ADD       r3, r9, r10
	ADD       r5, r9, r11
	LWI       r6, r19, 1040584
	SWI       r6, r3, 24
	LWI       r3, r19, 1040528
	SWI       r3, r19, 1040616
	LWI       r3, r19, 1040532
	SWI       r3, r19, 1040620
	LWI       r3, r19, 1040536
	SWI       r3, r19, 1040624
	LWI       r3, r19, 1040644
	ADDI      r3, r3, 1
	SWI       r3, r19, 1040644
	ADD       r3, r9, r4
	SWI       r6, r5, 28
	SWI       r6, r3, 32
$BB0_128:                               # %bb68.outer
                                        #   Parent Loop BB0_131 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_129 Depth 3
                                        #         Child Loop BB0_9 Depth 4
                                        #           Child Loop BB0_101 Depth 5
                                        #           Child Loop BB0_73 Depth 5
                                        #           Child Loop BB0_104 Depth 5
                                        #           Child Loop BB0_10 Depth 5
                                        #         Child Loop BB0_5 Depth 4
                                        #       Child Loop BB0_126 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #       Child Loop BB0_122 Depth 3
                                        #       Child Loop BB0_120 Depth 3
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_110 Depth 3
	LWI       r3, r19, 1040616
	SWI       r3, r19, 1040196
	LWI       r3, r19, 1040620
	SWI       r3, r19, 1040200
	LWI       r3, r19, 1040624
	SWI       r3, r19, 1040204
	LWI       r3, r19, 1040644
	MULI      r3, r3, 13
	SWI       r3, r19, 1040612
	LWI        r3, r19, 1040196
	SWI       r3, r19, 1040564
	LWI        r3, r19, 1040200
	SWI       r3, r19, 1040568
	LWI        r3, r19, 1040204
	SWI       r3, r19, 1040572
$BB0_129:                               # %bb69
                                        #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_9 Depth 4
                                        #           Child Loop BB0_101 Depth 5
                                        #           Child Loop BB0_73 Depth 5
                                        #           Child Loop BB0_104 Depth 5
                                        #           Child Loop BB0_10 Depth 5
                                        #         Child Loop BB0_5 Depth 4
	LWI       r3, r19, 1040604
	ADDI      r4, r0, 6
	ADDI      r5, r3, 1
	SWI       r5, r19, 1040604
	CMP       r3, r4, r3
	bltid     r3, ($BB0_5)
	NOP    
# BB#130:                               # %bb70
                                        #   in Loop: Header=BB0_131 Depth=1
	LWI       r3, r19, 1040628
	ADDI      r3, r3, -1
	SWI       r3, r19, 1040628
	ADD       r4, r0, r0
	CMP       r3, r4, r3
	beqid     r3, ($BB0_132)
	NOP    
$BB0_131:                               # %bb68.outer.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_128 Depth 2
                                        #       Child Loop BB0_129 Depth 3
                                        #         Child Loop BB0_9 Depth 4
                                        #           Child Loop BB0_101 Depth 5
                                        #           Child Loop BB0_73 Depth 5
                                        #           Child Loop BB0_104 Depth 5
                                        #           Child Loop BB0_10 Depth 5
                                        #         Child Loop BB0_5 Depth 4
                                        #       Child Loop BB0_126 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #       Child Loop BB0_122 Depth 3
                                        #       Child Loop BB0_120 Depth 3
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_110 Depth 3
	ADD       r3, r0, r0
	SWI       r3, r19, 1040604
	brid      ($BB0_128)
	NOP    
$BB0_132:                               # %invcont74
	LWI       r3, r19, 1040668
	FPCONV    r4, r3
	SWI       r4, r19, 1040672
	LWI       r4, r19, 1040632
	FPCONV    r5, r4
	SWI       r5, r19, 1040676
	ORI       r5, r0, -1073741824
	MUL       r3, r4, r3
	SWI       r3, r19, 1040748
	ATOMIC_INC r4, 0
	CMP       r3, r4, r3
	bleid     r3, ($BB0_390)
	NOP    
# BB#133:                               # %invcont83.lr.ph
	LWI       r3, r19, 1040672
	FPDIV     r3, r3, r5
	SWI       r3, r19, 1040732
	LWI       r3, r19, 1040676
	FPDIV     r3, r3, r5
	SWI       r3, r19, 1040736
	ADDI      r3, r19, 184
	LWI       r5, r19, 1040608
	SWI        r5, r19, 1040216
	LWI       r5, r19, 1040600
	SWI        r5, r19, 1040212
	LWI       r5, r19, 1040596
	SWI        r5, r19, 1040208
	ADD       r5, r0, r0
	SWI       r5, r19, 1040652
	LWI       r5, r19, 1040216
	SWI       r5, r19, 1040740
	ADDI      r3, r3, 32
	SWI       r3, r19, 1040744
$BB0_134:                               # %invcont83
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_245 Depth 2
                                        #       Child Loop BB0_246 Depth 3
                                        #       Child Loop BB0_337 Depth 3
                                        #       Child Loop BB0_309 Depth 3
                                        #       Child Loop BB0_340 Depth 3
                                        #     Child Loop BB0_135 Depth 2
                                        #       Child Loop BB0_136 Depth 3
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_230 Depth 3
                                        #     Child Loop BB0_353 Depth 2
	LWI       r3, r19, 1040668
	DIV       r5, r3, r4
	MUL       r3, r5, r3
	SWI       r3, r19, 1040656
	RSUB      r4, r3, r4
	SWI       r4, r19, 1040660
	FPCONV    r3, r5
	FPCONV    r4, r4
	LWI       r5, r19, 1040736
	FPADD     r3, r3, r5
	ORI       r5, r0, 1056964608
	LWI       r6, r19, 1040732
	FPADD     r4, r4, r6
	FPADD     r3, r3, r5
	FPADD     r4, r4, r5
	FPADD     r3, r3, r3
	FPADD     r4, r4, r4
	LWI       r5, r19, 1040676
	FPDIV     r3, r3, r5
	LWI       r5, r19, 1040672
	FPDIV     r4, r4, r5
	LWI       r5, r19, 1040724
	FPMUL     r5, r5, r3
	LWI       r6, r19, 1040712
	FPMUL     r6, r6, r4
	LWI       r7, r19, 1040720
	FPMUL     r7, r7, r3
	LWI       r8, r19, 1040708
	FPMUL     r8, r8, r4
	LWI       r9, r19, 1040716
	FPMUL     r4, r9, r4
	LWI       r9, r19, 1040728
	FPMUL     r3, r9, r3
	FPADD     r5, r5, r6
	FPADD     r6, r7, r8
	LWI       r7, r19, 1040700
	FPADD     r5, r5, r7
	LWI       r7, r19, 1040696
	FPADD     r6, r6, r7
	FPADD     r4, r4, r3
	LWI       r3, r19, 1040704
	FPADD     r4, r3, r4
	FPMUL     r3, r6, r6
	FPMUL     r7, r5, r5
	FPADD     r3, r3, r7
	FPMUL     r7, r4, r4
	FPADD     r3, r3, r7
	FPINVSQRT r3, r3
	ORI       r7, r0, 1065353216
	FPDIV     r3, r7, r3
	FPDIV     r4, r4, r3
	SWI        r4, r19, 1040228
	FPDIV     r4, r5, r3
	SWI       r4, r19, 1040556
	FPDIV     r3, r6, r3
	SWI       r3, r19, 1040552
	LWI       r5, r19, 1040228
	LWI       r6, r19, 1040652
	BITOR     r5, r6, r5
	SWI       r5, r19, 1040664
	SWI        r4, r19, 1040224
	SWI        r3, r19, 1040220
	SWI       r5, r19, 1040232
	ADD       r4, r0, r0
	SWI       r4, r19, 1040592
	LWI        r3, r19, 1040232
	SWI       r3, r19, 1040560
	ADDI      r3, r0, -1
	SWI       r3, r19, 1040544
	ADDI      r3, r0, 1343554297
	SWI       r3, r19, 1040540
	SWI       r4, r19, 1040584
	SWI       r4, r19, 1040588
	SWI       r4, r19, 1040568
	SWI       r4, r19, 1040576
	SWI       r4, r19, 1040572
	SWI       r4, r19, 1040612
	SWI       r4, r19, 1040604
	SWI       r4, r19, 1040616
	SWI       r4, r19, 1040624
	SWI       r4, r19, 1040620
	SWI       r4, r19, 1040628
$BB0_135:                               # %bb.i76
                                        #   Parent Loop BB0_134 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_136 Depth 3
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_230 Depth 3
	ADDI      r3, r0, 3
	ANDI      r3, r3, 31
	beqid     r3, ($BB0_137)
	ADDI      r4, r4, 0
$BB0_136:                               # %bb.i76
                                        #   Parent Loop BB0_134 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_136)
	ADDK      r4, r4, r4
$BB0_137:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	LWI       r3, r19, 1040580
	ADD       r3, r4, r3
	LOAD      r4, r3, 2
	LOAD      r5, r3, 1
	LOAD      r6, r3, 0
	LOAD      r7, r3, 5
	LOAD      r8, r3, 4
	LOAD      r9, r3, 3
	LWI       r10, r19, 1040596
	FPRSUB    r6, r10, r6
	FPRSUB    r9, r10, r9
	LWI       r10, r19, 1040552
	FPDIV     r6, r6, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r6, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_139)
	ADD       r20, r11, r0
# BB#138:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r20, r12, r0
$BB0_139:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r20, ($BB0_141)
	ADD       r10, r9, r0
# BB#140:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r10, r6, r0
$BB0_141:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_143)
	NOP    
# BB#142:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r6, r9, r0
$BB0_143:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r6, r9
	bneid     r20, ($BB0_145)
	ADD       r23, r11, r0
# BB#144:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r23, r12, r0
$BB0_145:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r22, ($BB0_147)
	ADD       r20, r11, r0
# BB#146:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r20, r12, r0
$BB0_147:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r23, ($BB0_149)
	NOP    
# BB#148:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r10, r21, r0
$BB0_149:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r20, ($BB0_151)
	NOP    
# BB#150:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r6, r9, r0
$BB0_151:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	FPGT      r9, r10, r6
	bneid     r9, ($BB0_153)
	NOP    
# BB#152:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r11, r12, r0
$BB0_153:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r11, ($BB0_225)
	NOP    
# BB#154:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r6, r9
	bneid     r9, ($BB0_156)
	NOP    
# BB#155:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	ADDI      r11, r0, 0
$BB0_156:                               # %bb.i76
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r11, ($BB0_225)
	NOP    
# BB#157:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	LWI       r9, r19, 1040600
	FPRSUB    r5, r9, r5
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 1040556
	FPDIV     r5, r5, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r5, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_159)
	ADD       r20, r11, r0
# BB#158:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r20, r12, r0
$BB0_159:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r20, ($BB0_161)
	ADD       r9, r8, r0
# BB#160:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r9, r5, r0
$BB0_161:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r20, ($BB0_163)
	NOP    
# BB#162:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r5, r8, r0
$BB0_163:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	FPGT      r8, r9, r10
	FPLT      r20, r5, r6
	bneid     r8, ($BB0_165)
	ADD       r21, r11, r0
# BB#164:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r21, r12, r0
$BB0_165:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r20, ($BB0_167)
	ADD       r8, r11, r0
# BB#166:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r8, r12, r0
$BB0_167:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r21, ($BB0_169)
	NOP    
# BB#168:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r9, r10, r0
$BB0_169:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r8, ($BB0_171)
	NOP    
# BB#170:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r5, r6, r0
$BB0_171:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	FPGT      r6, r9, r5
	bneid     r6, ($BB0_173)
	NOP    
# BB#172:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r11, r12, r0
$BB0_173:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r11, ($BB0_225)
	NOP    
# BB#174:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	ORI       r6, r0, 0
	ADDI      r8, r0, 1
	FPLT      r6, r5, r6
	bneid     r6, ($BB0_176)
	NOP    
# BB#175:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	ADDI      r8, r0, 0
$BB0_176:                               # %bb29.i.i82
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r8, ($BB0_225)
	NOP    
# BB#177:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	LWI       r6, r19, 1040608
	FPRSUB    r4, r6, r4
	FPRSUB    r6, r6, r7
	LWI       r7, r19, 1040560
	FPDIV     r4, r4, r7
	FPDIV     r6, r6, r7
	FPGT      r7, r4, r6
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_179)
	ADD       r11, r8, r0
# BB#178:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r11, r10, r0
$BB0_179:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r11, ($BB0_181)
	ADD       r7, r6, r0
# BB#180:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r7, r4, r0
$BB0_181:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r11, ($BB0_183)
	NOP    
# BB#182:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r4, r6, r0
$BB0_183:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	FPGT      r6, r7, r9
	FPLT      r11, r4, r5
	bneid     r6, ($BB0_185)
	ADD       r12, r8, r0
# BB#184:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r12, r10, r0
$BB0_185:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r11, ($BB0_187)
	ADD       r6, r8, r0
# BB#186:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r6, r10, r0
$BB0_187:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r6, ($BB0_189)
	NOP    
# BB#188:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r4, r5, r0
$BB0_189:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r12, ($BB0_191)
	NOP    
# BB#190:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r7, r9, r0
$BB0_191:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	FPGT      r5, r7, r4
	bneid     r5, ($BB0_193)
	NOP    
# BB#192:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r8, r10, r0
$BB0_193:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r8, ($BB0_225)
	NOP    
# BB#194:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	ORI       r5, r0, 0
	ADDI      r6, r0, 1
	FPLT      r4, r4, r5
	bneid     r4, ($BB0_196)
	NOP    
# BB#195:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	ADDI      r6, r0, 0
$BB0_196:                               # %bb62.i.i88
                                        #   in Loop: Header=BB0_135 Depth=2
	bneid     r6, ($BB0_225)
	NOP    
# BB#197:                               # %bb1.i89
                                        #   in Loop: Header=BB0_135 Depth=2
	LOAD      r4, r3, 7
	LOAD      r3, r3, 6
	SWI       r3, r19, 1040548
	ADD       r5, r0, r0
	CMP       r3, r5, r3
	bltid     r3, ($BB0_229)
	NOP    
# BB#198:                               # %bb6.preheader.i90
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r3, r0, r0
	LWI       r5, r19, 1040548
	CMP       r3, r3, r5
	bleid     r3, ($BB0_225)
	NOP    
$BB0_199:                               # %bb5.i103
                                        #   Parent Loop BB0_134 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	LOAD      r3, r4, 2
	LOAD      r5, r4, 1
	LOAD      r6, r4, 0
	LOAD      r7, r4, 5
	LOAD      r8, r4, 4
	LOAD      r9, r4, 3
	LOAD      r10, r4, 8
	LOAD      r11, r4, 7
	LOAD      r12, r4, 6
	FPRSUB    r7, r10, r7
	SWI       r7, r19, 1040564
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r19, 1040556
	FPMUL     r21, r20, r7
	LWI       r22, r19, 1040560
	FPMUL     r23, r8, r22
	FPRSUB    r6, r12, r6
	LOAD      r24, r4, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r19, 1040552
	FPMUL     r25, r23, r7
	FPRSUB    r3, r10, r3
	FPRSUB    r5, r11, r5
	LWI       r26, r19, 1040596
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r6
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r4, 9
	LWI       r28, r19, 1040600
	FPRSUB    r11, r11, r28
	FPMUL     r21, r21, r12
	FPRSUB    r20, r20, r23
	FPMUL     r23, r22, r5
	FPADD     r25, r25, r26
	FPMUL     r28, r5, r7
	FPMUL     r29, r8, r3
	FPMUL     r30, r9, r3
	FPMUL     r7, r6, r7
	MULI      r24, r24, 25
	LOAD      r27, r27, 9
	LWI       r31, r19, 1040608
	FPRSUB    r10, r10, r31
	FPRSUB    r28, r29, r28
	FPRSUB    r7, r7, r30
	ADD       r24, r27, r24
	FPMUL     r22, r22, r11
	FPADD     r21, r21, r26
	FPMUL     r27, r20, r3
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
	bneid     r23, ($BB0_201)
	NOP    
# BB#200:                               # %bb5.i103
                                        #   in Loop: Header=BB0_199 Depth=3
	ADDI      r21, r0, 0
$BB0_201:                               # %bb5.i103
                                        #   in Loop: Header=BB0_199 Depth=3
	bneid     r21, ($BB0_224)
	NOP    
# BB#202:                               # %bb5.i103
                                        #   in Loop: Header=BB0_199 Depth=3
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_204)
	NOP    
# BB#203:                               # %bb5.i103
                                        #   in Loop: Header=BB0_199 Depth=3
	ADDI      r21, r0, 0
$BB0_204:                               # %bb5.i103
                                        #   in Loop: Header=BB0_199 Depth=3
	bneid     r21, ($BB0_224)
	NOP    
# BB#205:                               # %bb73.i.i104
                                        #   in Loop: Header=BB0_199 Depth=3
	FPMUL     r7, r11, r3
	FPMUL     r21, r5, r10
	FPRSUB    r7, r21, r7
	FPMUL     r10, r6, r10
	FPMUL     r3, r12, r3
	FPRSUB    r3, r3, r10
	FPMUL     r5, r5, r12
	FPMUL     r6, r6, r11
	LWI       r10, r19, 1040552
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r5, r6, r5
	LWI       r6, r19, 1040556
	FPMUL     r6, r3, r6
	FPADD     r10, r10, r11
	LWI       r12, r19, 1040560
	FPMUL     r12, r5, r12
	FPADD     r6, r6, r10
	FPADD     r6, r12, r6
	FPMUL     r6, r6, r22
	ADDI      r10, r0, 1
	FPLT      r11, r6, r11
	bneid     r11, ($BB0_207)
	NOP    
# BB#206:                               # %bb73.i.i104
                                        #   in Loop: Header=BB0_199 Depth=3
	ADDI      r10, r0, 0
$BB0_207:                               # %bb73.i.i104
                                        #   in Loop: Header=BB0_199 Depth=3
	bneid     r10, ($BB0_224)
	NOP    
# BB#208:                               # %bb94.i55.i105
                                        #   in Loop: Header=BB0_199 Depth=3
	FPADD     r6, r6, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r6, r6, r10
	bneid     r6, ($BB0_210)
	NOP    
# BB#209:                               # %bb94.i55.i105
                                        #   in Loop: Header=BB0_199 Depth=3
	ADDI      r11, r0, 0
$BB0_210:                               # %bb94.i55.i105
                                        #   in Loop: Header=BB0_199 Depth=3
	bneid     r11, ($BB0_224)
	NOP    
# BB#211:                               # %bb96.i.i108
                                        #   in Loop: Header=BB0_199 Depth=3
	FPMUL     r6, r7, r9
	ORI       r7, r0, 0
	FPMUL     r3, r3, r8
	FPADD     r6, r6, r7
	LWI       r8, r19, 1040564
	FPMUL     r5, r5, r8
	FPADD     r3, r3, r6
	FPADD     r3, r5, r3
	FPMUL     r3, r3, r22
	FPUN      r5, r3, r7
	FPLE      r6, r3, r7
	BITOR     r5, r5, r6
	bneid     r5, ($BB0_213)
	ADDI      r7, r0, 1
# BB#212:                               # %bb96.i.i108
                                        #   in Loop: Header=BB0_199 Depth=3
	ADDI      r7, r0, 0
$BB0_213:                               # %bb96.i.i108
                                        #   in Loop: Header=BB0_199 Depth=3
	bneid     r7, ($BB0_224)
	NOP    
# BB#214:                               # %bb96.i.i108
                                        #   in Loop: Header=BB0_199 Depth=3
	ORI       r5, r0, 981668463
	ADDI      r6, r0, 1
	FPLT      r5, r3, r5
	bneid     r5, ($BB0_216)
	NOP    
# BB#215:                               # %bb96.i.i108
                                        #   in Loop: Header=BB0_199 Depth=3
	ADDI      r6, r0, 0
$BB0_216:                               # %bb96.i.i108
                                        #   in Loop: Header=BB0_199 Depth=3
	bneid     r6, ($BB0_224)
	NOP    
# BB#217:                               # %bb96.i.i108
                                        #   in Loop: Header=BB0_199 Depth=3
	ORI       r5, r0, 1343554297
	ADDI      r6, r0, 1
	FPEQ      r5, r3, r5
	bneid     r5, ($BB0_219)
	NOP    
# BB#218:                               # %bb96.i.i108
                                        #   in Loop: Header=BB0_199 Depth=3
	ADDI      r6, r0, 0
$BB0_219:                               # %bb96.i.i108
                                        #   in Loop: Header=BB0_199 Depth=3
	bneid     r6, ($BB0_224)
	NOP    
# BB#220:                               # %bb2.i.i.i109
                                        #   in Loop: Header=BB0_199 Depth=3
	LWI       r5, r19, 1040540
	SWI       r5, r19, 1040236
	LWI        r5, r19, 1040236
	FPUN      r6, r5, r3
	FPLE      r5, r5, r3
	BITOR     r5, r6, r5
	bneid     r5, ($BB0_222)
	ADDI      r7, r0, 1
# BB#221:                               # %bb2.i.i.i109
                                        #   in Loop: Header=BB0_199 Depth=3
	ADDI      r7, r0, 0
$BB0_222:                               # %bb2.i.i.i109
                                        #   in Loop: Header=BB0_199 Depth=3
	bneid     r7, ($BB0_224)
	NOP    
# BB#223:                               # %bb3.i.i.i160
                                        #   in Loop: Header=BB0_199 Depth=3
	LOAD      r5, r4, 2
	LOAD      r6, r4, 1
	LOAD      r7, r4, 0
	LOAD      r8, r4, 5
	LOAD      r9, r4, 4
	LOAD      r10, r4, 3
	LOAD      r11, r4, 8
	LOAD      r12, r4, 7
	LOAD      r20, r4, 6
	LOAD      r21, r4, 10
	LOAD      r22, r4, 9
	SWI       r22, r19, 1040640
	ADD       r22, r0, r0
	MULI      r21, r21, 25
	LOAD      r22, r22, 9
	ADD       r21, r22, r21
	LOAD      r22, r21, 6
	LOAD      r23, r21, 5
	LOAD      r21, r21, 4
	SWI        r22, r19, 1040280
	SWI        r23, r19, 1040284
	SWI        r21, r19, 1040288
	SWI        r11, r19, 1040268
	SWI        r12, r19, 1040272
	SWI        r20, r19, 1040276
	SWI        r8, r19, 1040256
	SWI        r9, r19, 1040260
	SWI        r10, r19, 1040264
	SWI        r5, r19, 1040244
	SWI        r6, r19, 1040248
	SWI        r7, r19, 1040252
	SWI        r3, r19, 1040240
	ADDI      r3, r0, 1060320051
	SWI       r3, r19, 1040632
	ADDI      r3, r0, 1050253722
	SWI       r3, r19, 1040636
	LWI       r3, r19, 1040280
	SWI       r3, r19, 1040592
	LWI       r5, r19, 1040284
	SWI       r5, r19, 1040584
	LWI       r5, r19, 1040288
	SWI       r5, r19, 1040588
	LWI       r5, r19, 1040268
	SWI       r5, r19, 1040568
	LWI       r5, r19, 1040272
	SWI       r5, r19, 1040576
	LWI       r5, r19, 1040276
	SWI       r5, r19, 1040572
	LWI       r5, r19, 1040256
	SWI       r5, r19, 1040612
	LWI       r5, r19, 1040260
	SWI       r5, r19, 1040604
	LWI       r5, r19, 1040264
	SWI       r5, r19, 1040616
	LWI       r5, r19, 1040244
	SWI       r5, r19, 1040624
	LWI       r5, r19, 1040248
	SWI       r5, r19, 1040620
	LWI       r5, r19, 1040252
	SWI       r5, r19, 1040628
	LWI       r3, r19, 1040240
	SWI       r3, r19, 1040540
$BB0_224:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i162
                                        #   in Loop: Header=BB0_199 Depth=3
	LWI       r3, r19, 1040548
	ADDI      r3, r3, -1
	SWI       r3, r19, 1040548
	ADDI      r4, r4, 11
	ADD       r5, r0, r0
	CMP       r3, r5, r3
	bneid     r3, ($BB0_199)
	NOP    
$BB0_225:                               # %bb7.i163
                                        #   in Loop: Header=BB0_135 Depth=2
	ADD       r4, r0, r0
	LWI       r3, r19, 1040544
	CMP       r4, r4, r3
	bltid     r4, ($BB0_232)
	NOP    
# BB#226:                               # %bb9.i164
                                        #   in Loop: Header=BB0_135 Depth=2
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r3, r19, 1040544
	beqid     r4, ($BB0_228)
	ADDI      r3, r3, 0
$BB0_227:                               # %bb9.i164
                                        #   Parent Loop BB0_134 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_227)
	ADDK      r3, r3, r3
$BB0_228:                               # %bb9.i164
                                        #   in Loop: Header=BB0_135 Depth=2
	ADDI      r4, r19, 56
	LW        r4, r4, r3
	LWI       r3, r19, 1040544
	ADDI      r3, r3, -1
	SWI       r3, r19, 1040544
	brid      ($BB0_135)
	NOP    
$BB0_229:                               # %bb3.i92
                                        #   in Loop: Header=BB0_135 Depth=2
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r5, r19, 1040544
	beqid     r3, ($BB0_231)
	ADDI      r5, r5, 0
$BB0_230:                               # %bb3.i92
                                        #   Parent Loop BB0_134 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_230)
	ADDK      r5, r5, r5
$BB0_231:                               # %bb3.i92
                                        #   in Loop: Header=BB0_135 Depth=2
	ADDI      r3, r19, 56
	LWI       r6, r19, 1040544
	ADDI      r6, r6, 1
	SWI       r6, r19, 1040544
	ADDI      r6, r4, 1
	ADD       r3, r3, r5
	brid      ($BB0_135)
	SWI       r6, r3, 4
$BB0_232:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit165
                                        #   in Loop: Header=BB0_134 Depth=1
	LWI       r4, r19, 1040540
	SWI       r4, r19, 1040292
	LWI        r4, r19, 1040292
	ORI       r3, r0, 1343554297
	ORI       r5, r0, 1057988018
	ORI       r6, r0, 1060806590
	ORI       r7, r0, 1065151889
	FPUN      r8, r4, r3
	FPGE      r3, r4, r3
	BITOR     r3, r8, r3
	bneid     r3, ($BB0_234)
	ADDI      r9, r0, 1
# BB#233:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit165
                                        #   in Loop: Header=BB0_134 Depth=1
	ADDI      r9, r0, 0
$BB0_234:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit165
                                        #   in Loop: Header=BB0_134 Depth=1
	bneid     r9, ($BB0_374)
	NOP    
# BB#235:                               # %bb.i38
                                        #   in Loop: Header=BB0_134 Depth=1
	LWI       r5, r19, 1040624
	SWI       r5, r19, 1040348
	LWI       r5, r19, 1040612
	SWI       r5, r19, 1040336
	LWI       r5, r19, 1040568
	SWI       r5, r19, 1040324
	LWI       r5, r19, 1040576
	SWI       r5, r19, 1040328
	LWI       r5, r19, 1040628
	SWI       r5, r19, 1040356
	LWI       r5, r19, 1040616
	SWI       r5, r19, 1040344
	LWI       r5, r19, 1040572
	SWI       r5, r19, 1040332
	LWI       r5, r19, 1040620
	SWI       r5, r19, 1040352
	LWI       r5, r19, 1040604
	SWI       r5, r19, 1040340
	LWI        r5, r19, 1040348
	LWI        r6, r19, 1040336
	LWI        r7, r19, 1040324
	LWI        r3, r19, 1040328
	LWI        r8, r19, 1040340
	LWI        r9, r19, 1040352
	LWI        r10, r19, 1040356
	LWI        r11, r19, 1040344
	LWI        r12, r19, 1040332
	FPRSUB    r5, r6, r5
	FPRSUB    r3, r3, r8
	FPRSUB    r10, r11, r10
	FPRSUB    r6, r7, r6
	FPRSUB    r7, r12, r11
	FPRSUB    r8, r8, r9
	FPMUL     r9, r8, r6
	FPMUL     r11, r3, r5
	FPMUL     r5, r7, r5
	FPMUL     r6, r10, r6
	FPRSUB    r9, r11, r9
	FPRSUB    r5, r6, r5
	FPMUL     r6, r3, r10
	FPMUL     r7, r7, r8
	LWI       r3, r19, 1040664
	SWI       r3, r19, 1040300
	FPRSUB    r6, r7, r6
	FPMUL     r7, r9, r9
	FPMUL     r3, r5, r5
	LWI        r8, r19, 1040300
	LWI       r10, r19, 1040552
	FPMUL     r11, r10, r10
	LWI       r12, r19, 1040556
	FPMUL     r20, r12, r12
	FPADD     r7, r7, r3
	FPMUL     r3, r6, r6
	FPADD     r7, r7, r3
	FPADD     r3, r11, r20
	FPMUL     r11, r8, r8
	FPADD     r3, r3, r11
	FPINVSQRT r7, r7
	ORI       r11, r0, 1065353216
	FPINVSQRT r3, r3
	FPDIV     r3, r11, r3
	FPDIV     r7, r11, r7
	FPDIV     r9, r9, r7
	FPDIV     r11, r10, r3
	FPDIV     r5, r5, r7
	FPDIV     r20, r12, r3
	FPMUL     r11, r11, r9
	ORI       r21, r0, 0
	FPDIV     r6, r6, r7
	FPDIV     r7, r8, r3
	FPMUL     r3, r20, r5
	FPADD     r11, r11, r21
	LWI       r20, r19, 1040740
	SWI       r20, r19, 1040316
	FPMUL     r8, r8, r4
	FPMUL     r12, r12, r4
	FPMUL     r4, r10, r4
	FPMUL     r7, r7, r6
	FPADD     r3, r3, r11
	FPADD     r7, r7, r3
	LWI       r3, r19, 1040636
	SWI       r3, r19, 1040304
	LWI       r3, r19, 1040632
	SWI       r3, r19, 1040296
	LWI        r3, r19, 1040316
	SWI        r8, r19, 1040320
	SWI        r12, r19, 1040312
	SWI        r4, r19, 1040308
	SWI        r6, r19, 1040368
	SWI        r5, r19, 1040364
	SWI        r9, r19, 1040360
	LWI       r10, r19, 1040364
	SWI       r10, r19, 1040616
	LWI       r10, r19, 1040360
	LWI       r11, r19, 1040368
	LWI        r20, r19, 1040304
	LWI        r22, r19, 1040296
	SWI       r22, r19, 1040624
	FPUN      r22, r7, r21
	FPLE      r7, r7, r21
	BITOR     r7, r22, r7
	bneid     r7, ($BB0_237)
	ADDI      r21, r0, 1
# BB#236:                               # %bb.i38
                                        #   in Loop: Header=BB0_134 Depth=1
	ADDI      r21, r0, 0
$BB0_237:                               # %bb.i38
                                        #   in Loop: Header=BB0_134 Depth=1
	LWI       r7, r19, 1040596
	FPADD     r4, r4, r7
	SWI       r4, r19, 1040564
	LWI       r4, r19, 1040600
	FPADD     r4, r12, r4
	SWI       r4, r19, 1040568
	FPADD     r4, r3, r8
	SWI       r4, r19, 1040572
	beqid     r21, ($BB0_239)
	NOP    
# BB#238:                               #   in Loop: Header=BB0_134 Depth=1
	SWI       r10, r19, 1040620
	LWI       r5, r19, 1040616
	brid      ($BB0_240)
	NOP    
$BB0_239:                               # %bb46.i
                                        #   in Loop: Header=BB0_134 Depth=1
	SWI        r6, r19, 1040380
	SWI        r5, r19, 1040376
	SWI        r9, r19, 1040372
	LWI       r5, r19, 1040380
	LWI       r4, r19, 1040376
	LWI       r6, r19, 1040372
	XORI      r4, r4, 2147483648
	SWI       r4, r19, 1040616
	XORI      r10, r6, 2147483648
	XORI      r11, r5, 2147483648
	SWI       r10, r19, 1040620
	ADD       r5, r4, r0
$BB0_240:                               # %bb53.i
                                        #   in Loop: Header=BB0_134 Depth=1
	LWI       r6, r19, 1040564
	LWI       r4, r19, 1040684
	FPRSUB    r4, r6, r4
	LWI       r7, r19, 1040568
	LWI       r6, r19, 1040688
	FPRSUB    r6, r7, r6
	LWI       r3, r19, 1040572
	LWI       r7, r19, 1040692
	FPRSUB    r7, r3, r7
	FPMUL     r3, r4, r4
	FPMUL     r8, r6, r6
	FPADD     r3, r3, r8
	FPMUL     r8, r7, r7
	FPADD     r3, r3, r8
	ORI       r8, r0, 1065353216
	FPINVSQRT r9, r3
	FPDIV     r8, r8, r9
	SWI       r10, r19, 1040384
	SWI       r5, r19, 1040388
	FPDIV     r4, r4, r8
	SWI       r4, r19, 1040552
	LWI        r5, r19, 1040384
	SWI       r11, r19, 1040392
	FPDIV     r6, r6, r8
	SWI       r6, r19, 1040556
	LWI        r9, r19, 1040388
	FPMUL     r4, r4, r5
	ORI       r5, r0, 0
	FPDIV     r7, r7, r8
	SWI       r7, r19, 1040560
	LWI        r8, r19, 1040392
	SWI       r8, r19, 1040604
	FPMUL     r6, r6, r9
	FPADD     r4, r4, r5
	FPMUL     r7, r7, r8
	FPADD     r4, r6, r4
	FPADD     r4, r7, r4
	SWI       r4, r19, 1040664
	FPUN      r6, r4, r5
	FPLE      r4, r4, r5
	BITOR     r4, r6, r4
	bneid     r4, ($BB0_242)
	ADDI      r7, r0, 1
# BB#241:                               # %bb53.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ADDI      r7, r0, 0
$BB0_242:                               # %bb53.i
                                        #   in Loop: Header=BB0_134 Depth=1
	FPMUL     r4, r20, r5
	SWI       r4, r19, 1040612
	beqid     r7, ($BB0_244)
	NOP    
# BB#243:                               #   in Loop: Header=BB0_134 Depth=1
	LWI       r3, r19, 1040612
	SWI       r3, r19, 1040540
	brid      ($BB0_350)
	NOP    
$BB0_244:                               # %bb94.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ADD       r4, r0, r0
	ADDI      r5, r0, -1
	SWI       r5, r19, 1040544
	FPINVSQRT r5, r3
	SWI       r5, r19, 1040628
$BB0_245:                               # %bb.i281
                                        #   Parent Loop BB0_134 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_246 Depth 3
                                        #       Child Loop BB0_337 Depth 3
                                        #       Child Loop BB0_309 Depth 3
                                        #       Child Loop BB0_340 Depth 3
	ADDI      r5, r0, 3
	ANDI      r5, r5, 31
	beqid     r5, ($BB0_247)
	ADDI      r4, r4, 0
$BB0_246:                               # %bb.i281
                                        #   Parent Loop BB0_134 Depth=1
                                        #     Parent Loop BB0_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_246)
	ADDK      r4, r4, r4
$BB0_247:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	LWI       r5, r19, 1040580
	ADD       r5, r4, r5
	LOAD      r4, r5, 2
	LOAD      r6, r5, 1
	LOAD      r7, r5, 0
	LOAD      r3, r5, 5
	LOAD      r8, r5, 4
	LOAD      r9, r5, 3
	LWI       r10, r19, 1040564
	FPRSUB    r7, r10, r7
	FPRSUB    r9, r10, r9
	LWI       r10, r19, 1040552
	FPDIV     r7, r7, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r7, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_249)
	ADD       r20, r11, r0
# BB#248:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r20, r12, r0
$BB0_249:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r20, ($BB0_251)
	ADD       r10, r9, r0
# BB#250:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r10, r7, r0
$BB0_251:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_253)
	NOP    
# BB#252:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r7, r9, r0
$BB0_253:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r7, r9
	bneid     r20, ($BB0_255)
	ADD       r23, r11, r0
# BB#254:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r23, r12, r0
$BB0_255:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r22, ($BB0_257)
	ADD       r20, r11, r0
# BB#256:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r20, r12, r0
$BB0_257:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r23, ($BB0_259)
	NOP    
# BB#258:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r10, r21, r0
$BB0_259:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r20, ($BB0_261)
	NOP    
# BB#260:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r7, r9, r0
$BB0_261:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	FPGT      r9, r10, r7
	bneid     r9, ($BB0_263)
	NOP    
# BB#262:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r11, r12, r0
$BB0_263:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r11, ($BB0_335)
	NOP    
# BB#264:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r7, r9
	bneid     r9, ($BB0_266)
	NOP    
# BB#265:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	ADDI      r11, r0, 0
$BB0_266:                               # %bb.i281
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r11, ($BB0_335)
	NOP    
# BB#267:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	LWI       r9, r19, 1040568
	FPRSUB    r6, r9, r6
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 1040556
	FPDIV     r6, r6, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r6, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_269)
	ADD       r20, r11, r0
# BB#268:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r20, r12, r0
$BB0_269:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r20, ($BB0_271)
	ADD       r9, r8, r0
# BB#270:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r9, r6, r0
$BB0_271:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r20, ($BB0_273)
	NOP    
# BB#272:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r6, r8, r0
$BB0_273:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	FPGT      r8, r9, r10
	FPLT      r20, r6, r7
	bneid     r8, ($BB0_275)
	ADD       r21, r11, r0
# BB#274:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r21, r12, r0
$BB0_275:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r20, ($BB0_277)
	ADD       r8, r11, r0
# BB#276:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r8, r12, r0
$BB0_277:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r21, ($BB0_279)
	NOP    
# BB#278:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r9, r10, r0
$BB0_279:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r8, ($BB0_281)
	NOP    
# BB#280:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r6, r7, r0
$BB0_281:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	FPGT      r7, r9, r6
	bneid     r7, ($BB0_283)
	NOP    
# BB#282:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r11, r12, r0
$BB0_283:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r11, ($BB0_335)
	NOP    
# BB#284:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	ORI       r7, r0, 0
	ADDI      r8, r0, 1
	FPLT      r7, r6, r7
	bneid     r7, ($BB0_286)
	NOP    
# BB#285:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	ADDI      r8, r0, 0
$BB0_286:                               # %bb29.i.i287
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r8, ($BB0_335)
	NOP    
# BB#287:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	LWI       r7, r19, 1040572
	FPRSUB    r4, r7, r4
	FPRSUB    r7, r7, r3
	LWI       r3, r19, 1040560
	FPDIV     r4, r4, r3
	FPDIV     r7, r7, r3
	FPGT      r3, r4, r7
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r3, ($BB0_289)
	ADD       r11, r8, r0
# BB#288:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r11, r10, r0
$BB0_289:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r11, ($BB0_291)
	ADD       r3, r7, r0
# BB#290:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r3, r4, r0
$BB0_291:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r11, ($BB0_293)
	NOP    
# BB#292:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r4, r7, r0
$BB0_293:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	FPGT      r7, r3, r9
	FPLT      r11, r4, r6
	bneid     r7, ($BB0_295)
	ADD       r12, r8, r0
# BB#294:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r12, r10, r0
$BB0_295:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r11, ($BB0_297)
	ADD       r7, r8, r0
# BB#296:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r7, r10, r0
$BB0_297:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r7, ($BB0_299)
	NOP    
# BB#298:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r4, r6, r0
$BB0_299:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r12, ($BB0_301)
	NOP    
# BB#300:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r3, r9, r0
$BB0_301:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	FPGT      r6, r3, r4
	bneid     r6, ($BB0_303)
	NOP    
# BB#302:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r8, r10, r0
$BB0_303:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r8, ($BB0_335)
	NOP    
# BB#304:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	ORI       r6, r0, 0
	ADDI      r7, r0, 1
	FPLT      r4, r4, r6
	bneid     r4, ($BB0_306)
	NOP    
# BB#305:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	ADDI      r7, r0, 0
$BB0_306:                               # %bb62.i.i293
                                        #   in Loop: Header=BB0_245 Depth=2
	bneid     r7, ($BB0_335)
	NOP    
# BB#307:                               # %bb1.i294
                                        #   in Loop: Header=BB0_245 Depth=2
	LOAD      r4, r5, 7
	LOAD      r5, r5, 6
	SWI       r5, r19, 1040548
	ADD       r6, r0, r0
	CMP       r5, r6, r5
	bltid     r5, ($BB0_339)
	NOP    
# BB#308:                               # %bb6.preheader.i295
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r5, r0, r0
	LWI       r6, r19, 1040548
	CMP       r5, r5, r6
	bleid     r5, ($BB0_335)
	NOP    
$BB0_309:                               # %bb5.i308
                                        #   Parent Loop BB0_134 Depth=1
                                        #     Parent Loop BB0_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	LOAD      r5, r4, 2
	LOAD      r6, r4, 1
	LOAD      r7, r4, 0
	LOAD      r3, r4, 5
	LOAD      r8, r4, 4
	LOAD      r9, r4, 3
	LOAD      r10, r4, 8
	LOAD      r11, r4, 7
	LOAD      r12, r4, 6
	FPRSUB    r3, r10, r3
	SWI       r3, r19, 1040576
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r19, 1040556
	FPMUL     r21, r20, r3
	LWI       r22, r19, 1040560
	FPMUL     r23, r8, r22
	FPRSUB    r7, r12, r7
	LOAD      r24, r4, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r19, 1040552
	FPMUL     r25, r23, r3
	FPRSUB    r5, r10, r5
	FPRSUB    r6, r11, r6
	LWI       r26, r19, 1040564
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r7
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r4, 9
	LWI       r28, r19, 1040568
	FPRSUB    r11, r11, r28
	FPMUL     r21, r21, r12
	FPRSUB    r20, r20, r23
	FPMUL     r23, r22, r6
	FPADD     r25, r25, r26
	FPMUL     r28, r6, r3
	FPMUL     r29, r8, r5
	FPMUL     r30, r9, r5
	FPMUL     r3, r7, r3
	MULI      r24, r24, 25
	LOAD      r27, r27, 9
	LWI       r31, r19, 1040572
	FPRSUB    r10, r10, r31
	FPRSUB    r28, r29, r28
	FPRSUB    r3, r3, r30
	ADD       r24, r27, r24
	FPMUL     r22, r22, r11
	FPADD     r21, r21, r26
	FPMUL     r27, r20, r5
	FPADD     r23, r23, r25
	FPMUL     r25, r8, r7
	FPMUL     r29, r9, r6
	FPRSUB    r25, r29, r25
	LOAD      r29, r24, 6
	FPMUL     r20, r20, r10
	FPADD     r21, r22, r21
	ORI       r22, r0, 1065353216
	FPADD     r23, r27, r23
	FPMUL     r27, r28, r28
	FPMUL     r3, r3, r3
	FPDIV     r22, r22, r23
	FPADD     r20, r20, r21
	LOAD      r21, r24, 5
	FPADD     r3, r27, r3
	FPMUL     r21, r25, r25
	FPMUL     r20, r20, r22
	FPADD     r3, r3, r21
	LOAD      r21, r24, 4
	ADDI      r21, r0, 1
	FPLT      r23, r20, r26
	FPINVSQRT r3, r3
	bneid     r23, ($BB0_311)
	NOP    
# BB#310:                               # %bb5.i308
                                        #   in Loop: Header=BB0_309 Depth=3
	ADDI      r21, r0, 0
$BB0_311:                               # %bb5.i308
                                        #   in Loop: Header=BB0_309 Depth=3
	bneid     r21, ($BB0_334)
	NOP    
# BB#312:                               # %bb5.i308
                                        #   in Loop: Header=BB0_309 Depth=3
	ORI       r3, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r3, r20, r3
	bneid     r3, ($BB0_314)
	NOP    
# BB#313:                               # %bb5.i308
                                        #   in Loop: Header=BB0_309 Depth=3
	ADDI      r21, r0, 0
$BB0_314:                               # %bb5.i308
                                        #   in Loop: Header=BB0_309 Depth=3
	bneid     r21, ($BB0_334)
	NOP    
# BB#315:                               # %bb73.i.i309
                                        #   in Loop: Header=BB0_309 Depth=3
	FPMUL     r3, r11, r5
	FPMUL     r21, r6, r10
	FPRSUB    r3, r21, r3
	FPMUL     r10, r7, r10
	FPMUL     r5, r12, r5
	FPRSUB    r5, r5, r10
	FPMUL     r6, r6, r12
	FPMUL     r7, r7, r11
	LWI       r10, r19, 1040552
	FPMUL     r10, r3, r10
	ORI       r11, r0, 0
	FPRSUB    r6, r7, r6
	LWI       r7, r19, 1040556
	FPMUL     r7, r5, r7
	FPADD     r10, r10, r11
	LWI       r12, r19, 1040560
	FPMUL     r12, r6, r12
	FPADD     r7, r7, r10
	FPADD     r7, r12, r7
	FPMUL     r7, r7, r22
	ADDI      r10, r0, 1
	FPLT      r11, r7, r11
	bneid     r11, ($BB0_317)
	NOP    
# BB#316:                               # %bb73.i.i309
                                        #   in Loop: Header=BB0_309 Depth=3
	ADDI      r10, r0, 0
$BB0_317:                               # %bb73.i.i309
                                        #   in Loop: Header=BB0_309 Depth=3
	bneid     r10, ($BB0_334)
	NOP    
# BB#318:                               # %bb94.i55.i310
                                        #   in Loop: Header=BB0_309 Depth=3
	FPADD     r7, r7, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r7, r7, r10
	bneid     r7, ($BB0_320)
	NOP    
# BB#319:                               # %bb94.i55.i310
                                        #   in Loop: Header=BB0_309 Depth=3
	ADDI      r11, r0, 0
$BB0_320:                               # %bb94.i55.i310
                                        #   in Loop: Header=BB0_309 Depth=3
	bneid     r11, ($BB0_334)
	NOP    
# BB#321:                               # %bb96.i.i313
                                        #   in Loop: Header=BB0_309 Depth=3
	FPMUL     r7, r3, r9
	ORI       r3, r0, 0
	FPMUL     r5, r5, r8
	FPADD     r7, r7, r3
	LWI       r8, r19, 1040576
	FPMUL     r6, r6, r8
	FPADD     r5, r5, r7
	FPADD     r5, r6, r5
	FPMUL     r5, r5, r22
	FPUN      r6, r5, r3
	FPLE      r7, r5, r3
	BITOR     r6, r6, r7
	bneid     r6, ($BB0_323)
	ADDI      r3, r0, 1
# BB#322:                               # %bb96.i.i313
                                        #   in Loop: Header=BB0_309 Depth=3
	ADDI      r3, r0, 0
$BB0_323:                               # %bb96.i.i313
                                        #   in Loop: Header=BB0_309 Depth=3
	bneid     r3, ($BB0_334)
	NOP    
# BB#324:                               # %bb96.i.i313
                                        #   in Loop: Header=BB0_309 Depth=3
	ORI       r6, r0, 981668463
	ADDI      r7, r0, 1
	FPLT      r6, r5, r6
	bneid     r6, ($BB0_326)
	NOP    
# BB#325:                               # %bb96.i.i313
                                        #   in Loop: Header=BB0_309 Depth=3
	ADDI      r7, r0, 0
$BB0_326:                               # %bb96.i.i313
                                        #   in Loop: Header=BB0_309 Depth=3
	bneid     r7, ($BB0_334)
	NOP    
# BB#327:                               # %bb96.i.i313
                                        #   in Loop: Header=BB0_309 Depth=3
	ORI       r6, r0, 1343554297
	ADDI      r7, r0, 1
	FPEQ      r6, r5, r6
	bneid     r6, ($BB0_329)
	NOP    
# BB#328:                               # %bb96.i.i313
                                        #   in Loop: Header=BB0_309 Depth=3
	ADDI      r7, r0, 0
$BB0_329:                               # %bb96.i.i313
                                        #   in Loop: Header=BB0_309 Depth=3
	bneid     r7, ($BB0_334)
	NOP    
# BB#330:                               # %bb2.i.i.i314
                                        #   in Loop: Header=BB0_309 Depth=3
	LWI       r6, r19, 1040540
	SWI       r6, r19, 1040396
	LWI        r6, r19, 1040396
	FPUN      r7, r6, r5
	FPLE      r6, r6, r5
	BITOR     r6, r7, r6
	bneid     r6, ($BB0_332)
	ADDI      r3, r0, 1
# BB#331:                               # %bb2.i.i.i314
                                        #   in Loop: Header=BB0_309 Depth=3
	ADDI      r3, r0, 0
$BB0_332:                               # %bb2.i.i.i314
                                        #   in Loop: Header=BB0_309 Depth=3
	bneid     r3, ($BB0_334)
	NOP    
# BB#333:                               # %bb3.i.i.i365
                                        #   in Loop: Header=BB0_309 Depth=3
	LOAD      r6, r4, 2
	LOAD      r6, r4, 1
	LOAD      r6, r4, 0
	LOAD      r6, r4, 5
	LOAD      r6, r4, 4
	LOAD      r6, r4, 3
	LOAD      r6, r4, 8
	LOAD      r6, r4, 7
	LOAD      r6, r4, 6
	LOAD      r6, r4, 10
	ADD       r7, r0, r0
	LOAD      r3, r4, 9
	MULI      r6, r6, 25
	LOAD      r7, r7, 9
	ADD       r6, r7, r6
	SWI        r5, r19, 1040400
	LOAD      r5, r6, 6
	LWI       r5, r19, 1040400
	SWI       r5, r19, 1040540
	LOAD      r5, r6, 5
	LOAD      r5, r6, 4
$BB0_334:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i367
                                        #   in Loop: Header=BB0_309 Depth=3
	LWI       r5, r19, 1040548
	ADDI      r5, r5, -1
	SWI       r5, r19, 1040548
	ADDI      r4, r4, 11
	ADD       r6, r0, r0
	CMP       r5, r6, r5
	bneid     r5, ($BB0_309)
	NOP    
$BB0_335:                               # %bb7.i368
                                        #   in Loop: Header=BB0_245 Depth=2
	ADD       r4, r0, r0
	LWI       r5, r19, 1040544
	CMP       r4, r4, r5
	bltid     r4, ($BB0_342)
	NOP    
# BB#336:                               # %bb9.i369
                                        #   in Loop: Header=BB0_245 Depth=2
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r5, r19, 1040544
	beqid     r4, ($BB0_338)
	ADDI      r5, r5, 0
$BB0_337:                               # %bb9.i369
                                        #   Parent Loop BB0_134 Depth=1
                                        #     Parent Loop BB0_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_337)
	ADDK      r5, r5, r5
$BB0_338:                               # %bb9.i369
                                        #   in Loop: Header=BB0_245 Depth=2
	ADDI      r4, r19, 56
	LW        r4, r4, r5
	LWI       r5, r19, 1040544
	ADDI      r5, r5, -1
	SWI       r5, r19, 1040544
	brid      ($BB0_245)
	NOP    
$BB0_339:                               # %bb3.i297
                                        #   in Loop: Header=BB0_245 Depth=2
	ADDI      r5, r0, 2
	ANDI      r5, r5, 31
	LWI       r6, r19, 1040544
	beqid     r5, ($BB0_341)
	ADDI      r6, r6, 0
$BB0_340:                               # %bb3.i297
                                        #   Parent Loop BB0_134 Depth=1
                                        #     Parent Loop BB0_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_340)
	ADDK      r6, r6, r6
$BB0_341:                               # %bb3.i297
                                        #   in Loop: Header=BB0_245 Depth=2
	ADDI      r5, r19, 56
	LWI       r7, r19, 1040544
	ADDI      r7, r7, 1
	SWI       r7, r19, 1040544
	ADDI      r7, r4, 1
	ADD       r5, r5, r6
	brid      ($BB0_245)
	SWI       r7, r5, 4
$BB0_342:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit370
                                        #   in Loop: Header=BB0_134 Depth=1
	LWI       r4, r19, 1040540
	SWI       r4, r19, 1040404
	ORI       r4, r0, 1065353216
	LWI        r5, r19, 1040404
	LWI       r6, r19, 1040628
	FPDIV     r4, r4, r6
	FPUN      r6, r5, r4
	FPGE      r4, r5, r4
	BITOR     r4, r6, r4
	bneid     r4, ($BB0_344)
	ADDI      r7, r0, 1
# BB#343:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit370
                                        #   in Loop: Header=BB0_134 Depth=1
	ADDI      r7, r0, 0
$BB0_344:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit370
                                        #   in Loop: Header=BB0_134 Depth=1
	bneid     r7, ($BB0_349)
	NOP    
# BB#345:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit370
                                        #   in Loop: Header=BB0_134 Depth=1
	ORI       r4, r0, 1008981770
	ADDI      r6, r0, 1
	FPGT      r4, r5, r4
	bneid     r4, ($BB0_347)
	NOP    
# BB#346:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit370
                                        #   in Loop: Header=BB0_134 Depth=1
	ADDI      r6, r0, 0
$BB0_347:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit370
                                        #   in Loop: Header=BB0_134 Depth=1
	beqid     r6, ($BB0_349)
	NOP    
# BB#348:                               #   in Loop: Header=BB0_134 Depth=1
	LWI       r4, r19, 1040612
	SWI       r4, r19, 1040540
	brid      ($BB0_350)
	NOP    
$BB0_349:                               # %bb98.i
                                        #   in Loop: Header=BB0_134 Depth=1
	LWI       r5, r19, 1040664
	LWI       r4, r19, 1040624
	FPMUL     r4, r4, r5
	LWI       r5, r19, 1040612
	FPADD     r5, r4, r5
	SWI       r5, r19, 1040612
	SWI        r4, r19, 1040408
	SWI        r5, r19, 1040412
	SWI       r5, r19, 1040540
$BB0_350:                               # %bb121.i
                                        #   in Loop: Header=BB0_134 Depth=1
	LWI       r4, r19, 1040588
	SWI       r4, r19, 1040436
	LWI       r4, r19, 1040584
	SWI       r4, r19, 1040428
	LWI       r4, r19, 1040592
	SWI       r4, r19, 1040432
	LWI        r20, r19, 1040436
	LWI        r21, r19, 1040428
	LWI       r5, r19, 1040620
	SWI       r5, r19, 1040420
	LWI       r5, r19, 1040616
	SWI       r5, r19, 1040416
	SWI       r4, r19, 1040424
	LWI        r4, r19, 1040432
	SWI       r4, r19, 1040544
	ORI       r4, r0, 0
	ADDI      r5, r0, 1
	LWI       r6, r19, 1040644
	CMP       r5, r5, r6
	bgeid     r5, ($BB0_352)
	NOP    
# BB#351:                               #   in Loop: Header=BB0_134 Depth=1
	ADD       r6, r4, r0
	brid      ($BB0_368)
	ADD       r5, r4, r0
$BB0_352:                               #   in Loop: Header=BB0_134 Depth=1
	LWI        r22, r19, 1040420
	LWI        r23, r19, 1040416
	LWI        r24, r19, 1040424
	LWI       r25, r19, 1040744
	LWI       r26, r19, 1040652
	ADD       r27, r6, r0
	ADD       r6, r4, r0
	ADD       r5, r4, r0
$BB0_353:                               # %bb.i.i
                                        #   Parent Loop BB0_134 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	LWI        r7, r25, -28
	LWI        r3, r25, -32
	LWI       r8, r19, 1040564
	FPRSUB    r8, r3, r8
	SWI        r7, r19, 1040440
	SWI        r3, r19, 1040444
	LWI       r9, r25, -24
	FPMUL     r8, r8, r8
	ORI       r10, r0, 1077936128
	ADDI      r11, r0, 1
	FPGT      r10, r8, r10
	bneid     r10, ($BB0_355)
	NOP    
# BB#354:                               # %bb.i.i
                                        #   in Loop: Header=BB0_353 Depth=2
	ADDI      r11, r0, 0
$BB0_355:                               # %bb.i.i
                                        #   in Loop: Header=BB0_353 Depth=2
	bneid     r11, ($BB0_367)
	NOP    
# BB#356:                               # %bb1.i.i.i
                                        #   in Loop: Header=BB0_353 Depth=2
	LWI       r10, r19, 1040568
	FPRSUB    r10, r7, r10
	FPMUL     r10, r10, r10
	FPADD     r8, r10, r8
	ORI       r10, r0, 1077936128
	ADDI      r11, r0, 1
	FPGT      r10, r8, r10
	bneid     r10, ($BB0_358)
	NOP    
# BB#357:                               # %bb1.i.i.i
                                        #   in Loop: Header=BB0_353 Depth=2
	ADDI      r11, r0, 0
$BB0_358:                               # %bb1.i.i.i
                                        #   in Loop: Header=BB0_353 Depth=2
	bneid     r11, ($BB0_367)
	NOP    
# BB#359:                               # %bb3.i.i.i
                                        #   in Loop: Header=BB0_353 Depth=2
	SWI       r9, r19, 1040448
	LWI        r10, r19, 1040448
	LWI       r11, r19, 1040572
	FPRSUB    r10, r10, r11
	FPMUL     r10, r10, r10
	FPADD     r28, r10, r8
	ORI       r8, r0, 1077936128
	ADDI      r10, r0, 1
	FPGT      r8, r28, r8
	bneid     r8, ($BB0_361)
	NOP    
# BB#360:                               # %bb3.i.i.i
                                        #   in Loop: Header=BB0_353 Depth=2
	ADDI      r10, r0, 0
$BB0_361:                               # %bb3.i.i.i
                                        #   in Loop: Header=BB0_353 Depth=2
	bneid     r10, ($BB0_367)
	NOP    
# BB#362:                               # %bb10.i.i
                                        #   in Loop: Header=BB0_353 Depth=2
	ADD       r29, r0, r0
	BITOR     r4, r9, r29
	SWI       r4, r19, 1040452
	FPMUL     r4, r3, r22
	ORI       r5, r0, 0
	LWI        r6, r19, 1040452
	FPMUL     r7, r7, r23
	FPADD     r4, r4, r5
	LWI       r3, r19, 1040604
	FPMUL     r6, r6, r3
	FPADD     r4, r7, r4
	FPADD     r4, r6, r4
	FPNEG     r6, r4
	ADDI      r4, r0, 1
	FPLT      r5, r6, r5
	bneid     r5, ($BB0_364)
	NOP    
# BB#363:                               # %bb10.i.i
                                        #   in Loop: Header=BB0_353 Depth=2
	ADDI      r4, r0, 0
$BB0_364:                               # %bb10.i.i
                                        #   in Loop: Header=BB0_353 Depth=2
	ADD       r30, r0, r0
	bneid     r4, ($BB0_366)
	ADD       r31, r30, r0
# BB#365:                               # %bb1.i.i
                                        #   in Loop: Header=BB0_353 Depth=2
	brlid     r15, __extendsfdf2
	ADDI      r1, r1, -8
	ADDI      r1, r1, 8
	ADD       r30, r3, r0
	ADD       r31, r4, r0
$BB0_366:                               # %llvm.trax.max.exit.i
                                        #   in Loop: Header=BB0_353 Depth=2
	LWI       r4, r19, 1040648
	BITOR     r4, r29, r4
	BITOR     r4, r4, r29
	SWI       r4, r19, 1040648
	ORI       r4, r0, -1082130432
	FPINVSQRT r5, r28
	ADDI      r1, r1, -8
	brlid     r15, __extendsfdf2
	FPDIV     r6, r4, r5
	ADDI      r1, r1, 8
	ADDI      r1, r1, -20
	ADDI      r28, r0, 1072693248
	ADD       r29, r0, r0
	ADD       r6, r3, r0
	ADD       r7, r4, r0
	ADD       r8, r28, r0
	brlid     r15, __adddf3
	ADD       r9, r29, r0
	ADDI      r1, r1, 20
	ADDI      r1, r1, -20
	ADD       r6, r3, r0
	ADD       r7, r4, r0
	ADD       r8, r28, r0
	brlid     r15, __divdf3
	ADD       r9, r29, r0
	ADDI      r1, r1, 20
	ADDI      r1, r1, -20
	ADD       r6, r30, r0
	ADD       r7, r31, r0
	ADD       r8, r3, r0
	brlid     r15, __muldf3
	ADD       r9, r4, r0
	ADDI      r1, r1, 20
	ADDI      r1, r1, -12
	LWI        r28, r25, -8
	ADD       r6, r3, r0
	brlid     r15, __truncdfsf2
	ADD       r7, r4, r0
	ADDI      r1, r1, 12
	LWI        r4, r25, -4
	LWI        r5, r25, 0
	FPADD     r6, r28, r3
	FPADD     r4, r4, r3
	FPADD     r7, r5, r3
	FPMUL     r5, r20, r6
	FPMUL     r6, r21, r4
	FPMUL     r4, r7, r24
$BB0_367:                               # %bb33.i.i
                                        #   in Loop: Header=BB0_353 Depth=2
	ADDI      r7, r0, -1
	ADDK      r27, r27, r7
	ADDKC      r26, r26, r7
	ADDI      r25, r25, 52
	ADD       r7, r0, r0
	BITOR     r3, r27, r26
	CMP       r7, r7, r3
	bneid     r7, ($BB0_353)
	NOP    
$BB0_368:                               # %invcont88
                                        #   in Loop: Header=BB0_134 Depth=1
	LWI       r7, r19, 1040540
	FPMUL     r7, r20, r7
	FPMUL     r5, r5, r7
	ORI       r3, r0, 0
	ADDI      r8, r0, 1
	FPLT      r7, r5, r3
	bneid     r7, ($BB0_370)
	NOP    
# BB#369:                               # %invcont88
                                        #   in Loop: Header=BB0_134 Depth=1
	ADDI      r8, r0, 0
$BB0_370:                               # %invcont88
                                        #   in Loop: Header=BB0_134 Depth=1
	LWI       r7, r19, 1040540
	FPMUL     r7, r21, r7
	LWI       r10, r19, 1040544
	LWI       r9, r19, 1040612
	FPMUL     r9, r9, r10
	FPMUL     r6, r6, r7
	bneid     r8, ($BB0_375)
	FPMUL     r7, r9, r4
# BB#371:                               # %bb1.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ORI       r3, r0, 1065353216
	ADDI      r4, r0, 1
	FPGT      r8, r5, r3
	bneid     r8, ($BB0_373)
	NOP    
# BB#372:                               # %bb1.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ADDI      r4, r0, 0
$BB0_373:                               # %bb1.i
                                        #   in Loop: Header=BB0_134 Depth=1
	bneid     r4, ($BB0_375)
	NOP    
$BB0_374:                               # %bb4.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ADD       r3, r5, r0
$BB0_375:                               # %bb5.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ORI       r4, r0, 0
	ADDI      r5, r0, 1
	FPLT      r8, r7, r4
	bneid     r8, ($BB0_377)
	NOP    
# BB#376:                               # %bb5.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ADDI      r5, r0, 0
$BB0_377:                               # %bb5.i
                                        #   in Loop: Header=BB0_134 Depth=1
	bneid     r5, ($BB0_382)
	NOP    
# BB#378:                               # %bb8.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ORI       r4, r0, 1065353216
	ADDI      r5, r0, 1
	FPGT      r8, r7, r4
	bneid     r8, ($BB0_380)
	NOP    
# BB#379:                               # %bb8.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ADDI      r5, r0, 0
$BB0_380:                               # %bb8.i
                                        #   in Loop: Header=BB0_134 Depth=1
	bneid     r5, ($BB0_382)
	NOP    
# BB#381:                               # %bb11.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ADD       r4, r7, r0
$BB0_382:                               # %bb12.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ORI       r5, r0, 0
	ADDI      r7, r0, 1
	FPLT      r8, r6, r5
	bneid     r8, ($BB0_384)
	NOP    
# BB#383:                               # %bb12.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ADDI      r7, r0, 0
$BB0_384:                               # %bb12.i
                                        #   in Loop: Header=BB0_134 Depth=1
	bneid     r7, ($BB0_389)
	NOP    
# BB#385:                               # %bb15.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ORI       r5, r0, 1065353216
	ADDI      r7, r0, 1
	FPGT      r8, r6, r5
	bneid     r8, ($BB0_387)
	NOP    
# BB#386:                               # %bb15.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ADDI      r7, r0, 0
$BB0_387:                               # %bb15.i
                                        #   in Loop: Header=BB0_134 Depth=1
	bneid     r7, ($BB0_389)
	NOP    
# BB#388:                               # %bb18.i
                                        #   in Loop: Header=BB0_134 Depth=1
	ADD       r5, r6, r0
$BB0_389:                               # %invcont100
                                        #   in Loop: Header=BB0_134 Depth=1
	LWI       r7, r19, 1040660
	LWI       r6, r19, 1040656
	ADD       r6, r6, r7
	MULI      r6, r6, 3
	LWI       r7, r19, 1040680
	ADD       r6, r6, r7
	STORE     r6, r3, 0
	STORE     r6, r5, 1
	STORE     r6, r4, 2
	ATOMIC_INC r4, 0
	LWI       r3, r19, 1040748
	CMP       r3, r4, r3
	bgtid     r3, ($BB0_134)
	NOP    
$BB0_390:                               # %return
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
	ADDI      r1, r1, 1040752
	rtsd      r15, 8
	ADD       r3, r0, r0
	.end	main
$tmp0:
	.size	main, ($tmp0)-main


