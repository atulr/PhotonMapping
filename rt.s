	.file	"rt.bc"
	.text
	.globl	main
	.align	2
	.type	main,@function
	.ent	main                    # @main
main:
	.frame	r19,160760,r15
	.mask	0xfff88000
# BB#0:                                 # %invcont8
	ADDI      r1, r1, -160760
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
	SWI       r4, r19, 160676
	LOAD      r4, r3, 4
	SWI       r4, r19, 160672
	LOAD      r4, r3, 7
	SWI       r4, r19, 160688
	LOAD      r4, r3, 2
	LOAD      r4, r3, 5
	LOAD      r4, r3, 12
	LOAD      r5, r4, 0
	SWI       r5, r19, 160692
	LOAD      r5, r4, 1
	SWI       r5, r19, 160696
	LOAD      r4, r4, 2
	SWI       r4, r19, 160700
	LOAD      r4, r3, 10
	LOAD      r5, r4, 0
	SWI       r5, r19, 160624
	LOAD      r5, r4, 1
	SWI       r5, r19, 160628
	LOAD      r5, r4, 2
	SWI       r5, r19, 160632
	ADDI      r5, r4, 9
	LOAD      r6, r5, 0
	LOAD      r6, r5, 1
	ADDI      r6, r4, 12
	LOAD      r5, r5, 2
	LOAD      r5, r6, 0
	SWI       r5, r19, 160704
	LOAD      r5, r6, 1
	SWI       r5, r19, 160708
	LOAD      r5, r6, 2
	SWI       r5, r19, 160712
	ADDI      r5, r4, 15
	LOAD      r6, r5, 0
	SWI       r6, r19, 160716
	LOAD      r6, r5, 1
	SWI       r6, r19, 160720
	LOAD      r5, r5, 2
	SWI       r5, r19, 160724
	ADDI      r4, r4, 18
	LOAD      r5, r4, 0
	SWI       r5, r19, 160728
	LOAD      r5, r4, 1
	SWI       r5, r19, 160732
	ADDI      r5, r19, 184
	ADDI      r5, r5, 16
	LOAD      r4, r4, 2
	SWI       r4, r19, 160736
	ADDI      r4, r0, 5000
	ADD       r8, r0, r0
$BB0_1:                                 # %bb.i38
                                        # =>This Inner Loop Header: Depth=1
	SWI       r0, r5, -16
	SWI       r0, r5, -12
	ADDI      r6, r0, 1065353216
	SWI       r0, r5, -8
	SWI       r6, r5, -4
	SWI       r6, r5, 0
	ADDI      r7, r0, -1
	ADDK      r4, r4, r7
	ADDKC      r3, r3, r7
	ADDI      r7, r5, 32
	SWI       r6, r5, 4
	BITOR     r6, r4, r3
	sbi       r8, r5, 8
	CMP       r6, r8, r6
	bneid     r6, ($BB0_1)
	ADD       r5, r7, r0
# BB#2:                                 # %invcont11
	ADDI      r3, r0, 1259902592
	SWI       r3, r19, 160200
	SWI       r3, r19, 160196
	ADDI      r4, r0, -887581056
	SWI       r3, r19, 160192
	SWI       r4, r19, 160212
	SWI       r4, r19, 160208
	ADD       r3, r0, r0
	SWI       r4, r19, 160204
	LOAD      r4, r3, 28
	LOAD      r4, r3, 29
	LOAD      r4, r3, 8
	SWI       r4, r19, 160600
	ADDI      r1, r1, -4
	ADDI      r5, r0, -8
	BITAND    r4, r1, r5
	ADDI      r5, r4, -6400000
	SWI       r5, r19, 160660
	ADDI      r4, r4, -6399984
	ADD       r1, r5, r0
	ADDI      r5, r0, 200000
	ADDI      r1, r1, 4
	ADD       r8, r0, r0
$BB0_3:                                 # %bb
                                        # =>This Inner Loop Header: Depth=1
	SWI       r0, r4, -16
	SWI       r0, r4, -12
	ADDI      r6, r0, 1065353216
	SWI       r0, r4, -8
	SWI       r6, r4, -4
	SWI       r6, r4, 0
	ADDI      r7, r0, -1
	ADDK      r5, r5, r7
	ADDKC      r3, r3, r7
	ADDI      r7, r4, 32
	SWI       r6, r4, 4
	BITOR     r6, r5, r3
	sbi       r8, r4, 8
	CMP       r6, r8, r6
	bneid     r6, ($BB0_3)
	ADD       r4, r7, r0
# BB#4:                                 # %bb13
	ADDI      r1, r1, -4
	ADDI      r4, r0, -8
	BITAND    r3, r1, r4
	ADDI      r4, r3, -3200000
	ADDI      r3, r3, -3199984
	ADD       r1, r4, r0
	ADD       r4, r0, r0
	ADDI      r5, r0, 100000
	ADDI      r1, r1, 4
	ADD       r8, r0, r0
$BB0_5:                                 # %bb14
                                        # =>This Inner Loop Header: Depth=1
	SWI       r0, r3, -16
	SWI       r0, r3, -12
	ADDI      r6, r0, 1065353216
	SWI       r0, r3, -8
	SWI       r6, r3, -4
	SWI       r6, r3, 0
	ADDI      r7, r0, -1
	ADDK      r5, r5, r7
	ADDKC      r4, r4, r7
	ADDI      r7, r3, 32
	SWI       r6, r3, 4
	BITOR     r6, r5, r4
	sbi       r8, r3, 8
	CMP       r6, r8, r6
	bneid     r6, ($BB0_5)
	ADD       r3, r7, r0
# BB#6:                                 # %invcont18
	ADD       r3, r0, r0
	SWI       r3, r19, 160664
	LOAD      r3, r3, 12
	LOAD      r4, r3, 0
	LOAD      r5, r3, 1
	LOAD      r3, r3, 2
	SWI        r4, r19, 160216
	SWI        r5, r19, 160220
	SWI        r3, r19, 160224
	LWI       r3, r19, 160216
	SWI       r3, r19, 160636
	LWI       r3, r19, 160220
	SWI       r3, r19, 160640
	LWI       r3, r19, 160224
	SWI       r3, r19, 160644
	ADDI      r3, r0, 100000
	SWI       r3, r19, 160668
	brid      ($BB0_136)
	NOP    
$BB0_7:                                 # %bb.i55
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        #       Parent Loop BB0_133 Depth=3
                                        #         Parent Loop BB0_134 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
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
# BB#8:                                 # %bb.i55
                                        #   in Loop: Header=BB0_7 Depth=5
	ADDI      r8, r0, 0
$BB0_9:                                 # %bb.i55
                                        #   in Loop: Header=BB0_7 Depth=5
	bneid     r8, ($BB0_7)
	NOP    
# BB#10:                                # %invcont46
                                        #   in Loop: Header=BB0_134 Depth=4
	FPINVSQRT r6, r6
	ORI       r7, r0, 1065353216
	FPDIV     r6, r7, r6
	FPDIV     r4, r4, r6
	SWI       r4, r19, 160556
	FPDIV     r5, r5, r6
	SWI       r5, r19, 160560
	FPDIV     r3, r3, r6
	SWI       r3, r19, 160564
	SWI        r4, r19, 160460
	SWI        r5, r19, 160456
	SWI        r3, r19, 160452
	ADD       r3, r0, r0
	SWI       r3, r19, 160596
	ADDI      r4, r0, -1
	SWI       r4, r19, 160548
	ADDI      r4, r0, 1343554297
	SWI       r4, r19, 160568
	SWI       r3, r19, 160588
	SWI       r3, r19, 160592
$BB0_11:                                # %bb.i
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        #       Parent Loop BB0_133 Depth=3
                                        #         Parent Loop BB0_134 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_103 Depth 6
                                        #             Child Loop BB0_75 Depth 6
                                        #             Child Loop BB0_106 Depth 6
                                        #             Child Loop BB0_12 Depth 6
	ADDI      r4, r0, 3
	ANDI      r4, r4, 31
	beqid     r4, ($BB0_13)
	ADDI      r3, r3, 0
$BB0_12:                                # %bb.i
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        #       Parent Loop BB0_133 Depth=3
                                        #         Parent Loop BB0_134 Depth=4
                                        #           Parent Loop BB0_11 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_12)
	ADDK      r3, r3, r3
$BB0_13:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	LWI       r4, r19, 160600
	ADD       r4, r3, r4
	LOAD      r3, r4, 2
	LOAD      r5, r4, 1
	LOAD      r6, r4, 0
	LOAD      r7, r4, 5
	LOAD      r8, r4, 4
	LOAD      r9, r4, 3
	LWI       r10, r19, 160572
	FPRSUB    r6, r10, r6
	FPRSUB    r9, r10, r9
	LWI       r10, r19, 160564
	FPDIV     r6, r6, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r6, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_15)
	ADD       r20, r11, r0
# BB#14:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r20, r12, r0
$BB0_15:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r20, ($BB0_17)
	ADD       r10, r9, r0
# BB#16:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r10, r6, r0
$BB0_17:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_19)
	NOP    
# BB#18:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r6, r9, r0
$BB0_19:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r6, r9
	bneid     r20, ($BB0_21)
	ADD       r23, r11, r0
# BB#20:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r23, r12, r0
$BB0_21:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r22, ($BB0_23)
	ADD       r20, r11, r0
# BB#22:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r20, r12, r0
$BB0_23:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r23, ($BB0_25)
	NOP    
# BB#24:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r10, r21, r0
$BB0_25:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r20, ($BB0_27)
	NOP    
# BB#26:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r6, r9, r0
$BB0_27:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	FPGT      r9, r10, r6
	bneid     r9, ($BB0_29)
	NOP    
# BB#28:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r11, r12, r0
$BB0_29:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r11, ($BB0_101)
	NOP    
# BB#30:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r6, r9
	bneid     r9, ($BB0_32)
	NOP    
# BB#31:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADDI      r11, r0, 0
$BB0_32:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r11, ($BB0_101)
	NOP    
# BB#33:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	LWI       r9, r19, 160576
	FPRSUB    r5, r9, r5
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 160560
	FPDIV     r5, r5, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r5, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_35)
	ADD       r20, r11, r0
# BB#34:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r20, r12, r0
$BB0_35:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r20, ($BB0_37)
	ADD       r9, r8, r0
# BB#36:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r9, r5, r0
$BB0_37:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r20, ($BB0_39)
	NOP    
# BB#38:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r5, r8, r0
$BB0_39:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	FPGT      r8, r9, r10
	FPLT      r20, r5, r6
	bneid     r8, ($BB0_41)
	ADD       r21, r11, r0
# BB#40:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r21, r12, r0
$BB0_41:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r20, ($BB0_43)
	ADD       r8, r11, r0
# BB#42:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r8, r12, r0
$BB0_43:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r21, ($BB0_45)
	NOP    
# BB#44:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r9, r10, r0
$BB0_45:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r8, ($BB0_47)
	NOP    
# BB#46:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r5, r6, r0
$BB0_47:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	FPGT      r6, r9, r5
	bneid     r6, ($BB0_49)
	NOP    
# BB#48:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r11, r12, r0
$BB0_49:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r11, ($BB0_101)
	NOP    
# BB#50:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ORI       r6, r0, 0
	ADDI      r8, r0, 1
	FPLT      r6, r5, r6
	bneid     r6, ($BB0_52)
	NOP    
# BB#51:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADDI      r8, r0, 0
$BB0_52:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r8, ($BB0_101)
	NOP    
# BB#53:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	LWI       r6, r19, 160580
	FPRSUB    r3, r6, r3
	FPRSUB    r6, r6, r7
	LWI       r7, r19, 160556
	FPDIV     r3, r3, r7
	FPDIV     r6, r6, r7
	FPGT      r7, r3, r6
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_55)
	ADD       r11, r8, r0
# BB#54:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r11, r10, r0
$BB0_55:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r11, ($BB0_57)
	ADD       r7, r6, r0
# BB#56:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r7, r3, r0
$BB0_57:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r11, ($BB0_59)
	NOP    
# BB#58:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r3, r6, r0
$BB0_59:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	FPGT      r6, r7, r9
	FPLT      r11, r3, r5
	bneid     r6, ($BB0_61)
	ADD       r12, r8, r0
# BB#60:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r12, r10, r0
$BB0_61:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r11, ($BB0_63)
	ADD       r6, r8, r0
# BB#62:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r6, r10, r0
$BB0_63:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r6, ($BB0_65)
	NOP    
# BB#64:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r3, r5, r0
$BB0_65:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r12, ($BB0_67)
	NOP    
# BB#66:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r7, r9, r0
$BB0_67:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	FPGT      r5, r7, r3
	bneid     r5, ($BB0_69)
	NOP    
# BB#68:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r8, r10, r0
$BB0_69:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r8, ($BB0_101)
	NOP    
# BB#70:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ORI       r5, r0, 0
	ADDI      r6, r0, 1
	FPLT      r3, r3, r5
	bneid     r3, ($BB0_72)
	NOP    
# BB#71:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADDI      r6, r0, 0
$BB0_72:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_11 Depth=5
	bneid     r6, ($BB0_101)
	NOP    
# BB#73:                                # %bb1.i23
                                        #   in Loop: Header=BB0_11 Depth=5
	LOAD      r3, r4, 7
	LOAD      r4, r4, 6
	SWI       r4, r19, 160552
	ADD       r5, r0, r0
	CMP       r4, r5, r4
	bltid     r4, ($BB0_105)
	NOP    
# BB#74:                                # %bb6.preheader.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r4, r0, r0
	LWI       r5, r19, 160552
	CMP       r4, r4, r5
	bleid     r4, ($BB0_101)
	NOP    
$BB0_75:                                # %bb5.i24
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        #       Parent Loop BB0_133 Depth=3
                                        #         Parent Loop BB0_134 Depth=4
                                        #           Parent Loop BB0_11 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
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
	SWI       r7, r19, 160584
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r19, 160560
	FPMUL     r21, r20, r7
	LWI       r22, r19, 160556
	FPMUL     r23, r8, r22
	FPRSUB    r6, r12, r6
	LOAD      r24, r3, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r19, 160564
	FPMUL     r25, r23, r7
	FPRSUB    r4, r10, r4
	FPRSUB    r5, r11, r5
	LWI       r26, r19, 160572
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r6
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r3, 9
	LWI       r28, r19, 160576
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
	LWI       r31, r19, 160580
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
# BB#76:                                # %bb5.i24
                                        #   in Loop: Header=BB0_75 Depth=6
	ADDI      r21, r0, 0
$BB0_77:                                # %bb5.i24
                                        #   in Loop: Header=BB0_75 Depth=6
	bneid     r21, ($BB0_100)
	NOP    
# BB#78:                                # %bb5.i24
                                        #   in Loop: Header=BB0_75 Depth=6
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_80)
	NOP    
# BB#79:                                # %bb5.i24
                                        #   in Loop: Header=BB0_75 Depth=6
	ADDI      r21, r0, 0
$BB0_80:                                # %bb5.i24
                                        #   in Loop: Header=BB0_75 Depth=6
	bneid     r21, ($BB0_100)
	NOP    
# BB#81:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
	FPMUL     r7, r11, r4
	FPMUL     r21, r5, r10
	FPRSUB    r7, r21, r7
	FPMUL     r10, r6, r10
	FPMUL     r4, r12, r4
	FPRSUB    r4, r4, r10
	FPMUL     r5, r5, r12
	FPMUL     r6, r6, r11
	LWI       r10, r19, 160564
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r5, r6, r5
	LWI       r6, r19, 160560
	FPMUL     r6, r4, r6
	FPADD     r10, r10, r11
	LWI       r12, r19, 160556
	FPMUL     r12, r5, r12
	FPADD     r6, r6, r10
	FPADD     r6, r12, r6
	FPMUL     r6, r6, r22
	ADDI      r10, r0, 1
	FPLT      r11, r6, r11
	bneid     r11, ($BB0_83)
	NOP    
# BB#82:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
	ADDI      r10, r0, 0
$BB0_83:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
	bneid     r10, ($BB0_100)
	NOP    
# BB#84:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_75 Depth=6
	FPADD     r6, r6, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r6, r6, r10
	bneid     r6, ($BB0_86)
	NOP    
# BB#85:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_75 Depth=6
	ADDI      r11, r0, 0
$BB0_86:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_75 Depth=6
	bneid     r11, ($BB0_100)
	NOP    
# BB#87:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
	FPMUL     r6, r7, r9
	ORI       r7, r0, 0
	FPMUL     r4, r4, r8
	FPADD     r6, r6, r7
	LWI       r8, r19, 160584
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
                                        #   in Loop: Header=BB0_75 Depth=6
	ADDI      r7, r0, 0
$BB0_89:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
	bneid     r7, ($BB0_100)
	NOP    
# BB#90:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
	ORI       r5, r0, 981668463
	ADDI      r6, r0, 1
	FPLT      r5, r4, r5
	bneid     r5, ($BB0_92)
	NOP    
# BB#91:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
	ADDI      r6, r0, 0
$BB0_92:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
	bneid     r6, ($BB0_100)
	NOP    
# BB#93:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
	ORI       r5, r0, 1343554297
	ADDI      r6, r0, 1
	FPEQ      r5, r4, r5
	bneid     r5, ($BB0_95)
	NOP    
# BB#94:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
	ADDI      r6, r0, 0
$BB0_95:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
	bneid     r6, ($BB0_100)
	NOP    
# BB#96:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
	LWI       r5, r19, 160568
	SWI       r5, r19, 160464
	LWI        r5, r19, 160464
	FPUN      r6, r5, r4
	FPLE      r5, r5, r4
	BITOR     r5, r6, r5
	bneid     r5, ($BB0_98)
	ADDI      r7, r0, 1
# BB#97:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
	ADDI      r7, r0, 0
$BB0_98:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
	bneid     r7, ($BB0_100)
	NOP    
# BB#99:                                # %bb3.i.i.i
                                        #   in Loop: Header=BB0_75 Depth=6
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
	SWI       r22, r19, 160604
	ADD       r22, r0, r0
	MULI      r21, r21, 25
	LOAD      r22, r22, 9
	ADD       r21, r22, r21
	LOAD      r22, r21, 6
	LOAD      r23, r21, 5
	LOAD      r21, r21, 4
	SWI        r22, r19, 160508
	SWI        r23, r19, 160512
	SWI        r21, r19, 160516
	SWI        r11, r19, 160496
	SWI        r12, r19, 160500
	SWI        r20, r19, 160504
	SWI        r8, r19, 160484
	SWI        r9, r19, 160488
	SWI        r10, r19, 160492
	SWI        r5, r19, 160472
	SWI        r6, r19, 160476
	SWI        r7, r19, 160480
	SWI        r4, r19, 160468
	ADDI      r4, r0, 1060320051
	SWI       r4, r19, 160608
	ADDI      r4, r0, 1050253722
	SWI       r4, r19, 160612
	LWI       r4, r19, 160508
	SWI       r4, r19, 160596
	LWI       r9, r19, 160512
	SWI       r9, r19, 160588
	LWI       r9, r19, 160516
	SWI       r9, r19, 160592
	LWI       r4, r19, 160468
	SWI       r4, r19, 160568
$BB0_100:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i
                                        #   in Loop: Header=BB0_75 Depth=6
	LWI       r4, r19, 160552
	ADDI      r4, r4, -1
	SWI       r4, r19, 160552
	ADDI      r3, r3, 11
	ADD       r5, r0, r0
	CMP       r4, r5, r4
	bneid     r4, ($BB0_75)
	NOP    
$BB0_101:                               # %bb7.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r3, r0, r0
	LWI       r4, r19, 160548
	CMP       r3, r3, r4
	bltid     r3, ($BB0_108)
	NOP    
# BB#102:                               # %bb9.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r4, r19, 160548
	beqid     r3, ($BB0_104)
	ADDI      r4, r4, 0
$BB0_103:                               # %bb9.i
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        #       Parent Loop BB0_133 Depth=3
                                        #         Parent Loop BB0_134 Depth=4
                                        #           Parent Loop BB0_11 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_103)
	ADDK      r4, r4, r4
$BB0_104:                               # %bb9.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADDI      r3, r19, 56
	LW        r3, r3, r4
	LWI       r4, r19, 160548
	ADDI      r4, r4, -1
	SWI       r4, r19, 160548
	brid      ($BB0_11)
	NOP    
$BB0_105:                               # %bb3.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r5, r19, 160548
	beqid     r4, ($BB0_107)
	ADDI      r5, r5, 0
$BB0_106:                               # %bb3.i
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        #       Parent Loop BB0_133 Depth=3
                                        #         Parent Loop BB0_134 Depth=4
                                        #           Parent Loop BB0_11 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_106)
	ADDK      r5, r5, r5
$BB0_107:                               # %bb3.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADDI      r4, r19, 56
	LWI       r6, r19, 160548
	ADDI      r6, r6, 1
	SWI       r6, r19, 160548
	ADDI      r6, r3, 1
	ADD       r4, r4, r5
	brid      ($BB0_11)
	SWI       r6, r4, 4
$BB0_108:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_134 Depth=4
	LWI       r3, r19, 160568
	SWI       r3, r19, 160520
	LWI        r3, r19, 160520
	ORI       r4, r0, 1343554297
	FPUN      r5, r3, r4
	FPGE      r4, r3, r4
	BITOR     r4, r5, r4
	bneid     r4, ($BB0_110)
	ADDI      r6, r0, 1
# BB#109:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_134 Depth=4
	ADDI      r6, r0, 0
$BB0_110:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_134 Depth=4
	LWI       r4, r19, 160616
	ADDI      r4, r4, 1
	SWI       r4, r19, 160616
	bneid     r6, ($BB0_134)
	NOP    
# BB#111:                               # %invcont75
                                        #   in Loop: Header=BB0_133 Depth=3
	LWI       r9, r19, 160592
	SWI       r9, r19, 160532
	LWI       r9, r19, 160588
	SWI       r9, r19, 160528
	LWI        r4, r19, 160532
	LWI        r5, r19, 160528
	LWI       r6, r19, 160596
	SWI       r6, r19, 160524
	LWI        r6, r19, 160524
	FPADD     r7, r4, r5
	FPADD     r7, r7, r6
	ORI       r8, r0, 1077936128
	FPUN      r9, r7, r8
	FPLE      r7, r7, r8
	BITOR     r7, r9, r7
	bneid     r7, ($BB0_113)
	ADDI      r8, r0, 1
# BB#112:                               # %invcont75
                                        #   in Loop: Header=BB0_133 Depth=3
	ADDI      r8, r0, 0
$BB0_113:                               # %invcont75
                                        #   in Loop: Header=BB0_133 Depth=3
	bneid     r8, ($BB0_115)
	NOP    
# BB#114:                               # %bb76
                                        #   in Loop: Header=BB0_133 Depth=3
	ORI       r7, r0, 981668463
	FPMUL     r4, r4, r7
	FPMUL     r5, r5, r7
	FPMUL     r6, r6, r7
$BB0_115:                               # %invcont89
                                        #   in Loop: Header=BB0_133 Depth=3
	LWI       r7, r19, 160616
	ADDI      r7, r7, -1
	LWI       r8, r19, 160564
	FPMUL     r8, r8, r3
	LWI       r9, r19, 160560
	FPMUL     r9, r9, r3
	LWI       r10, r19, 160556
	FPMUL     r3, r10, r3
	LWI       r10, r19, 160572
	FPADD     r8, r8, r10
	LWI       r10, r19, 160576
	FPADD     r9, r9, r10
	LWI       r10, r19, 160580
	FPADD     r3, r10, r3
	SWI        r8, r19, 160536
	SWI        r9, r19, 160540
	SWI        r3, r19, 160544
	LWI       r10, r19, 160536
	SWI       r10, r19, 160636
	LWI       r10, r19, 160540
	SWI       r10, r19, 160640
	LWI       r10, r19, 160544
	SWI       r10, r19, 160644
	ADDI      r10, r0, 1
	CMP       r7, r10, r7
	bltid     r7, ($BB0_133)
	NOP    
# BB#116:                               # %bb90
                                        #   in Loop: Header=BB0_131 Depth=2
	ADDI      r7, r0, 2
	ANDI      r10, r7, 31
	LWI       r11, r19, 160620
	beqid     r10, ($BB0_118)
	ADDI      r11, r11, 0
$BB0_117:                               # %bb90
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r10, r10, -1
	bneid     r10, ($BB0_117)
	ADDK      r11, r11, r11
$BB0_118:                               # %bb90
                                        #   in Loop: Header=BB0_131 Depth=2
	ANDI      r10, r7, 31
	LWI       r12, r19, 160620
	beqid     r10, ($BB0_120)
	ADDI      r12, r12, 0
$BB0_119:                               # %bb90
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r10, r10, -1
	bneid     r10, ($BB0_119)
	ADDK      r12, r12, r12
$BB0_120:                               # %bb90
                                        #   in Loop: Header=BB0_131 Depth=2
	ANDI      r10, r7, 31
	LWI       r20, r19, 160620
	beqid     r10, ($BB0_122)
	ADDI      r20, r20, 0
$BB0_121:                               # %bb90
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r10, r10, -1
	bneid     r10, ($BB0_121)
	ADDK      r20, r20, r20
$BB0_122:                               # %bb90
                                        #   in Loop: Header=BB0_131 Depth=2
	LWI       r10, r19, 160660
	SW         r8, r10, r12
	ANDI      r8, r7, 31
	LWI       r10, r19, 160620
	beqid     r8, ($BB0_124)
	ADDI      r10, r10, 0
$BB0_123:                               # %bb90
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r8, r8, -1
	bneid     r8, ($BB0_123)
	ADDK      r10, r10, r10
$BB0_124:                               # %bb90
                                        #   in Loop: Header=BB0_131 Depth=2
	LWI       r8, r19, 160660
	ADD       r8, r8, r11
	SWI        r9, r8, 4
	ANDI      r8, r7, 31
	LWI       r9, r19, 160620
	beqid     r8, ($BB0_126)
	ADDI      r9, r9, 0
$BB0_125:                               # %bb90
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r8, r8, -1
	bneid     r8, ($BB0_125)
	ADDK      r9, r9, r9
$BB0_126:                               # %bb90
                                        #   in Loop: Header=BB0_131 Depth=2
	LWI       r8, r19, 160660
	ADD       r8, r8, r20
	SWI        r3, r8, 8
	ANDI      r3, r7, 31
	LWI       r7, r19, 160620
	beqid     r3, ($BB0_128)
	ADDI      r7, r7, 0
$BB0_127:                               # %bb90
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_127)
	ADDK      r7, r7, r7
$BB0_128:                               # %bb90
                                        #   in Loop: Header=BB0_131 Depth=2
	LWI       r3, r19, 160660
	ADD       r3, r3, r10
	ADDI      r8, r0, 5
	LWI       r10, r19, 160656
	SWI        r10, r3, 12
	ANDI      r3, r8, 31
	LWI       r8, r19, 160664
	beqid     r3, ($BB0_130)
	ADDI      r8, r8, 0
$BB0_129:                               # %bb90
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_129)
	ADDK      r8, r8, r8
$BB0_130:                               # %bb90
                                        #   in Loop: Header=BB0_131 Depth=2
	LWI       r3, r19, 160660
	ADD       r9, r3, r9
	ADD       r7, r3, r7
	LWI       r10, r19, 160652
	SWI        r10, r9, 16
	LWI       r9, r19, 160664
	ADDI      r9, r9, 1
	SWI       r9, r19, 160664
	ADD       r9, r0, r0
	ADD       r3, r3, r8
	LWI       r8, r19, 160648
	SWI        r8, r7, 20
	sbi       r9, r3, 24
$BB0_131:                               # %bb100.outer.outer
                                        #   Parent Loop BB0_136 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_133 Depth 3
                                        #         Child Loop BB0_134 Depth 4
                                        #           Child Loop BB0_11 Depth 5
                                        #             Child Loop BB0_103 Depth 6
                                        #             Child Loop BB0_75 Depth 6
                                        #             Child Loop BB0_106 Depth 6
                                        #             Child Loop BB0_12 Depth 6
                                        #           Child Loop BB0_7 Depth 5
                                        #       Child Loop BB0_129 Depth 3
                                        #       Child Loop BB0_127 Depth 3
                                        #       Child Loop BB0_125 Depth 3
                                        #       Child Loop BB0_123 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_119 Depth 3
                                        #       Child Loop BB0_117 Depth 3
                                        #       Child Loop BB0_132 Depth 3
	ADDI      r3, r0, 3
	ANDI      r3, r3, 31
	LWI       r7, r19, 160664
	ADDI      r7, r7, 0
	SWI       r7, r19, 160620
	beqid     r3, ($BB0_133)
	NOP    
$BB0_132:                               # %bb100.outer.outer
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	LWI       r7, r19, 160620
	ADDK      r7, r7, r7
	SWI       r7, r19, 160620
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_132)
	NOP    
$BB0_133:                               # %bb100.outer
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_134 Depth 4
                                        #           Child Loop BB0_11 Depth 5
                                        #             Child Loop BB0_103 Depth 6
                                        #             Child Loop BB0_75 Depth 6
                                        #             Child Loop BB0_106 Depth 6
                                        #             Child Loop BB0_12 Depth 6
                                        #           Child Loop BB0_7 Depth 5
	LWI       r3, r19, 160636
	SWI       r3, r19, 160228
	LWI       r3, r19, 160640
	SWI       r3, r19, 160232
	LWI       r3, r19, 160644
	SWI       r3, r19, 160236
	ORI       r3, r0, 1060320051
	FPMUL     r4, r4, r3
	SWI       r4, r19, 160656
	FPMUL     r4, r5, r3
	SWI       r4, r19, 160652
	FPMUL     r4, r6, r3
	SWI       r4, r19, 160648
	LWI        r4, r19, 160228
	SWI       r4, r19, 160572
	LWI        r4, r19, 160232
	SWI       r4, r19, 160576
	LWI        r4, r19, 160236
	SWI       r4, r19, 160580
$BB0_134:                               # %bb100
                                        #   Parent Loop BB0_136 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        #       Parent Loop BB0_133 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_11 Depth 5
                                        #             Child Loop BB0_103 Depth 6
                                        #             Child Loop BB0_75 Depth 6
                                        #             Child Loop BB0_106 Depth 6
                                        #             Child Loop BB0_12 Depth 6
                                        #           Child Loop BB0_7 Depth 5
	ADDI      r4, r0, 3
	LWI       r5, r19, 160616
	CMP       r4, r4, r5
	bltid     r4, ($BB0_7)
	NOP    
# BB#135:                               # %bb102
                                        #   in Loop: Header=BB0_136 Depth=1
	LWI       r4, r19, 160668
	ADDI      r4, r4, -1
	SWI       r4, r19, 160668
	ADD       r5, r0, r0
	CMP       r4, r5, r4
	beqid     r4, ($BB0_137)
	NOP    
$BB0_136:                               # %bb100.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_131 Depth 2
                                        #       Child Loop BB0_133 Depth 3
                                        #         Child Loop BB0_134 Depth 4
                                        #           Child Loop BB0_11 Depth 5
                                        #             Child Loop BB0_103 Depth 6
                                        #             Child Loop BB0_75 Depth 6
                                        #             Child Loop BB0_106 Depth 6
                                        #             Child Loop BB0_12 Depth 6
                                        #           Child Loop BB0_7 Depth 5
                                        #       Child Loop BB0_129 Depth 3
                                        #       Child Loop BB0_127 Depth 3
                                        #       Child Loop BB0_125 Depth 3
                                        #       Child Loop BB0_123 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_119 Depth 3
                                        #       Child Loop BB0_117 Depth 3
                                        #       Child Loop BB0_132 Depth 3
	ORI       r4, r0, 0
	ADD       r5, r0, r0
	SWI       r5, r19, 160616
	ADD       r5, r4, r0
	brid      ($BB0_131)
	ADD       r6, r4, r0
$BB0_137:                               # %invcont106
	LWI       r3, r19, 160676
	FPCONV    r4, r3
	SWI       r4, r19, 160680
	LWI       r4, r19, 160672
	FPCONV    r5, r4
	SWI       r5, r19, 160684
	ORI       r5, r0, -1073741824
	MUL       r3, r4, r3
	SWI       r3, r19, 160752
	ATOMIC_INC r4, 0
	CMP       r3, r4, r3
	bleid     r3, ($BB0_395)
	NOP    
# BB#138:                               # %invcont116.lr.ph
	LWI       r3, r19, 160680
	FPDIV     r3, r3, r5
	SWI       r3, r19, 160740
	LWI       r3, r19, 160684
	FPDIV     r3, r3, r5
	SWI       r3, r19, 160744
	LWI       r3, r19, 160632
	SWI        r3, r19, 160248
	LWI       r3, r19, 160628
	SWI        r3, r19, 160244
	LWI       r3, r19, 160624
	SWI        r3, r19, 160240
	ADD       r3, r0, r0
	SWI       r3, r19, 160756
	LWI       r5, r19, 160248
	SWI       r5, r19, 160748
	SWI       r3, r19, 160652
$BB0_139:                               # %invcont116
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_368 Depth 2
                                        #       Child Loop BB0_356 Depth 3
                                        #       Child Loop BB0_369 Depth 3
                                        #       Child Loop BB0_365 Depth 3
                                        #       Child Loop BB0_363 Depth 3
                                        #       Child Loop BB0_361 Depth 3
                                        #     Child Loop BB0_249 Depth 2
                                        #       Child Loop BB0_250 Depth 3
                                        #       Child Loop BB0_341 Depth 3
                                        #       Child Loop BB0_313 Depth 3
                                        #       Child Loop BB0_344 Depth 3
                                        #     Child Loop BB0_140 Depth 2
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_232 Depth 3
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	LWI       r3, r19, 160676
	DIV       r5, r3, r4
	MUL       r3, r5, r3
	SWI       r3, r19, 160656
	RSUB      r4, r3, r4
	SWI       r4, r19, 160668
	FPCONV    r3, r5
	FPCONV    r4, r4
	LWI       r5, r19, 160744
	FPADD     r3, r3, r5
	ORI       r5, r0, 1056964608
	LWI       r6, r19, 160740
	FPADD     r4, r4, r6
	FPADD     r3, r3, r5
	FPADD     r4, r4, r5
	FPADD     r3, r3, r3
	FPADD     r4, r4, r4
	LWI       r5, r19, 160684
	FPDIV     r3, r3, r5
	LWI       r5, r19, 160680
	FPDIV     r4, r4, r5
	LWI       r5, r19, 160732
	FPMUL     r5, r5, r3
	LWI       r6, r19, 160720
	FPMUL     r6, r6, r4
	LWI       r7, r19, 160728
	FPMUL     r7, r7, r3
	LWI       r8, r19, 160716
	FPMUL     r8, r8, r4
	LWI       r9, r19, 160724
	FPMUL     r4, r9, r4
	LWI       r9, r19, 160736
	FPMUL     r3, r9, r3
	FPADD     r5, r5, r6
	FPADD     r6, r7, r8
	LWI       r7, r19, 160708
	FPADD     r5, r5, r7
	LWI       r7, r19, 160704
	FPADD     r6, r6, r7
	FPADD     r4, r4, r3
	LWI       r3, r19, 160712
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
	SWI        r4, r19, 160260
	FPDIV     r4, r5, r3
	SWI       r4, r19, 160560
	FPDIV     r3, r6, r3
	SWI       r3, r19, 160564
	LWI       r5, r19, 160260
	LWI       r6, r19, 160756
	BITOR     r5, r6, r5
	SWI       r5, r19, 160672
	SWI        r4, r19, 160256
	SWI        r3, r19, 160252
	SWI       r5, r19, 160264
	ADD       r4, r0, r0
	SWI       r4, r19, 160604
	LWI        r3, r19, 160264
	SWI       r3, r19, 160568
	ADDI      r3, r0, -1
	SWI       r3, r19, 160552
	ADDI      r3, r0, 1343554297
	SWI       r3, r19, 160548
	SWI       r4, r19, 160592
	SWI       r4, r19, 160596
	SWI       r4, r19, 160576
	SWI       r4, r19, 160580
	SWI       r4, r19, 160584
	SWI       r4, r19, 160588
	SWI       r4, r19, 160608
	SWI       r4, r19, 160612
	SWI       r4, r19, 160616
	SWI       r4, r19, 160620
	SWI       r4, r19, 160636
$BB0_140:                               # %bb.i72
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_232 Depth 3
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	ADDI      r3, r0, 3
	ANDI      r3, r3, 31
	beqid     r3, ($BB0_142)
	ADDI      r4, r4, 0
$BB0_141:                               # %bb.i72
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_141)
	ADDK      r4, r4, r4
$BB0_142:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	LWI       r3, r19, 160600
	ADD       r3, r4, r3
	LOAD      r4, r3, 2
	LOAD      r5, r3, 1
	LOAD      r6, r3, 0
	LOAD      r7, r3, 5
	LOAD      r8, r3, 4
	LOAD      r9, r3, 3
	LWI       r10, r19, 160624
	FPRSUB    r6, r10, r6
	FPRSUB    r9, r10, r9
	LWI       r10, r19, 160564
	FPDIV     r6, r6, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r6, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_144)
	ADD       r20, r11, r0
# BB#143:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r20, r12, r0
$BB0_144:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r20, ($BB0_146)
	ADD       r10, r9, r0
# BB#145:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r10, r6, r0
$BB0_146:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_148)
	NOP    
# BB#147:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r6, r9, r0
$BB0_148:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r6, r9
	bneid     r20, ($BB0_150)
	ADD       r23, r11, r0
# BB#149:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r23, r12, r0
$BB0_150:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r22, ($BB0_152)
	ADD       r20, r11, r0
# BB#151:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r20, r12, r0
$BB0_152:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r23, ($BB0_154)
	NOP    
# BB#153:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r10, r21, r0
$BB0_154:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r20, ($BB0_156)
	NOP    
# BB#155:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r6, r9, r0
$BB0_156:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	FPGT      r9, r10, r6
	bneid     r9, ($BB0_158)
	NOP    
# BB#157:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r11, r12, r0
$BB0_158:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r11, ($BB0_230)
	NOP    
# BB#159:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r6, r9
	bneid     r9, ($BB0_161)
	NOP    
# BB#160:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	ADDI      r11, r0, 0
$BB0_161:                               # %bb.i72
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r11, ($BB0_230)
	NOP    
# BB#162:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	LWI       r9, r19, 160628
	FPRSUB    r5, r9, r5
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 160560
	FPDIV     r5, r5, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r5, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_164)
	ADD       r20, r11, r0
# BB#163:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r20, r12, r0
$BB0_164:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r20, ($BB0_166)
	ADD       r9, r8, r0
# BB#165:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r9, r5, r0
$BB0_166:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r20, ($BB0_168)
	NOP    
# BB#167:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r5, r8, r0
$BB0_168:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	FPGT      r8, r9, r10
	FPLT      r20, r5, r6
	bneid     r8, ($BB0_170)
	ADD       r21, r11, r0
# BB#169:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r21, r12, r0
$BB0_170:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r20, ($BB0_172)
	ADD       r8, r11, r0
# BB#171:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r8, r12, r0
$BB0_172:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r21, ($BB0_174)
	NOP    
# BB#173:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r9, r10, r0
$BB0_174:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r8, ($BB0_176)
	NOP    
# BB#175:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r5, r6, r0
$BB0_176:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	FPGT      r6, r9, r5
	bneid     r6, ($BB0_178)
	NOP    
# BB#177:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r11, r12, r0
$BB0_178:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r11, ($BB0_230)
	NOP    
# BB#179:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	ORI       r6, r0, 0
	ADDI      r8, r0, 1
	FPLT      r6, r5, r6
	bneid     r6, ($BB0_181)
	NOP    
# BB#180:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	ADDI      r8, r0, 0
$BB0_181:                               # %bb29.i.i78
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r8, ($BB0_230)
	NOP    
# BB#182:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	LWI       r6, r19, 160632
	FPRSUB    r4, r6, r4
	FPRSUB    r6, r6, r7
	LWI       r7, r19, 160568
	FPDIV     r4, r4, r7
	FPDIV     r6, r6, r7
	FPGT      r7, r4, r6
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_184)
	ADD       r11, r8, r0
# BB#183:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r11, r10, r0
$BB0_184:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r11, ($BB0_186)
	ADD       r7, r6, r0
# BB#185:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r7, r4, r0
$BB0_186:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r11, ($BB0_188)
	NOP    
# BB#187:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r4, r6, r0
$BB0_188:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	FPGT      r6, r7, r9
	FPLT      r11, r4, r5
	bneid     r6, ($BB0_190)
	ADD       r12, r8, r0
# BB#189:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r12, r10, r0
$BB0_190:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r11, ($BB0_192)
	ADD       r6, r8, r0
# BB#191:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r6, r10, r0
$BB0_192:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r6, ($BB0_194)
	NOP    
# BB#193:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r4, r5, r0
$BB0_194:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r12, ($BB0_196)
	NOP    
# BB#195:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r7, r9, r0
$BB0_196:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	FPGT      r5, r7, r4
	bneid     r5, ($BB0_198)
	NOP    
# BB#197:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r8, r10, r0
$BB0_198:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r8, ($BB0_230)
	NOP    
# BB#199:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	ORI       r5, r0, 0
	ADDI      r6, r0, 1
	FPLT      r4, r4, r5
	bneid     r4, ($BB0_201)
	NOP    
# BB#200:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	ADDI      r6, r0, 0
$BB0_201:                               # %bb62.i.i84
                                        #   in Loop: Header=BB0_140 Depth=2
	bneid     r6, ($BB0_230)
	NOP    
# BB#202:                               # %bb1.i85
                                        #   in Loop: Header=BB0_140 Depth=2
	LOAD      r4, r3, 7
	LOAD      r3, r3, 6
	SWI       r3, r19, 160556
	ADD       r5, r0, r0
	CMP       r3, r5, r3
	bltid     r3, ($BB0_234)
	NOP    
# BB#203:                               # %bb6.preheader.i86
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r3, r0, r0
	LWI       r5, r19, 160556
	CMP       r3, r3, r5
	bleid     r3, ($BB0_230)
	NOP    
$BB0_204:                               # %bb5.i99
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
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
	SWI       r7, r19, 160572
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r19, 160560
	FPMUL     r21, r20, r7
	LWI       r22, r19, 160568
	FPMUL     r23, r8, r22
	FPRSUB    r6, r12, r6
	LOAD      r24, r4, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r19, 160564
	FPMUL     r25, r23, r7
	FPRSUB    r3, r10, r3
	FPRSUB    r5, r11, r5
	LWI       r26, r19, 160624
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r6
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r4, 9
	LWI       r28, r19, 160628
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
	LWI       r31, r19, 160632
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
	bneid     r23, ($BB0_206)
	NOP    
# BB#205:                               # %bb5.i99
                                        #   in Loop: Header=BB0_204 Depth=3
	ADDI      r21, r0, 0
$BB0_206:                               # %bb5.i99
                                        #   in Loop: Header=BB0_204 Depth=3
	bneid     r21, ($BB0_229)
	NOP    
# BB#207:                               # %bb5.i99
                                        #   in Loop: Header=BB0_204 Depth=3
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_209)
	NOP    
# BB#208:                               # %bb5.i99
                                        #   in Loop: Header=BB0_204 Depth=3
	ADDI      r21, r0, 0
$BB0_209:                               # %bb5.i99
                                        #   in Loop: Header=BB0_204 Depth=3
	bneid     r21, ($BB0_229)
	NOP    
# BB#210:                               # %bb73.i.i100
                                        #   in Loop: Header=BB0_204 Depth=3
	FPMUL     r7, r11, r3
	FPMUL     r21, r5, r10
	FPRSUB    r7, r21, r7
	FPMUL     r10, r6, r10
	FPMUL     r3, r12, r3
	FPRSUB    r3, r3, r10
	FPMUL     r5, r5, r12
	FPMUL     r6, r6, r11
	LWI       r10, r19, 160564
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r5, r6, r5
	LWI       r6, r19, 160560
	FPMUL     r6, r3, r6
	FPADD     r10, r10, r11
	LWI       r12, r19, 160568
	FPMUL     r12, r5, r12
	FPADD     r6, r6, r10
	FPADD     r6, r12, r6
	FPMUL     r6, r6, r22
	ADDI      r10, r0, 1
	FPLT      r11, r6, r11
	bneid     r11, ($BB0_212)
	NOP    
# BB#211:                               # %bb73.i.i100
                                        #   in Loop: Header=BB0_204 Depth=3
	ADDI      r10, r0, 0
$BB0_212:                               # %bb73.i.i100
                                        #   in Loop: Header=BB0_204 Depth=3
	bneid     r10, ($BB0_229)
	NOP    
# BB#213:                               # %bb94.i55.i101
                                        #   in Loop: Header=BB0_204 Depth=3
	FPADD     r6, r6, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r6, r6, r10
	bneid     r6, ($BB0_215)
	NOP    
# BB#214:                               # %bb94.i55.i101
                                        #   in Loop: Header=BB0_204 Depth=3
	ADDI      r11, r0, 0
$BB0_215:                               # %bb94.i55.i101
                                        #   in Loop: Header=BB0_204 Depth=3
	bneid     r11, ($BB0_229)
	NOP    
# BB#216:                               # %bb96.i.i104
                                        #   in Loop: Header=BB0_204 Depth=3
	FPMUL     r6, r7, r9
	ORI       r7, r0, 0
	FPMUL     r3, r3, r8
	FPADD     r6, r6, r7
	LWI       r8, r19, 160572
	FPMUL     r5, r5, r8
	FPADD     r3, r3, r6
	FPADD     r3, r5, r3
	FPMUL     r3, r3, r22
	FPUN      r5, r3, r7
	FPLE      r6, r3, r7
	BITOR     r5, r5, r6
	bneid     r5, ($BB0_218)
	ADDI      r7, r0, 1
# BB#217:                               # %bb96.i.i104
                                        #   in Loop: Header=BB0_204 Depth=3
	ADDI      r7, r0, 0
$BB0_218:                               # %bb96.i.i104
                                        #   in Loop: Header=BB0_204 Depth=3
	bneid     r7, ($BB0_229)
	NOP    
# BB#219:                               # %bb96.i.i104
                                        #   in Loop: Header=BB0_204 Depth=3
	ORI       r5, r0, 981668463
	ADDI      r6, r0, 1
	FPLT      r5, r3, r5
	bneid     r5, ($BB0_221)
	NOP    
# BB#220:                               # %bb96.i.i104
                                        #   in Loop: Header=BB0_204 Depth=3
	ADDI      r6, r0, 0
$BB0_221:                               # %bb96.i.i104
                                        #   in Loop: Header=BB0_204 Depth=3
	bneid     r6, ($BB0_229)
	NOP    
# BB#222:                               # %bb96.i.i104
                                        #   in Loop: Header=BB0_204 Depth=3
	ORI       r5, r0, 1343554297
	ADDI      r6, r0, 1
	FPEQ      r5, r3, r5
	bneid     r5, ($BB0_224)
	NOP    
# BB#223:                               # %bb96.i.i104
                                        #   in Loop: Header=BB0_204 Depth=3
	ADDI      r6, r0, 0
$BB0_224:                               # %bb96.i.i104
                                        #   in Loop: Header=BB0_204 Depth=3
	bneid     r6, ($BB0_229)
	NOP    
# BB#225:                               # %bb2.i.i.i105
                                        #   in Loop: Header=BB0_204 Depth=3
	LWI       r5, r19, 160548
	SWI       r5, r19, 160268
	LWI        r5, r19, 160268
	FPUN      r6, r5, r3
	FPLE      r5, r5, r3
	BITOR     r5, r6, r5
	bneid     r5, ($BB0_227)
	ADDI      r7, r0, 1
# BB#226:                               # %bb2.i.i.i105
                                        #   in Loop: Header=BB0_204 Depth=3
	ADDI      r7, r0, 0
$BB0_227:                               # %bb2.i.i.i105
                                        #   in Loop: Header=BB0_204 Depth=3
	bneid     r7, ($BB0_229)
	NOP    
# BB#228:                               # %bb3.i.i.i156
                                        #   in Loop: Header=BB0_204 Depth=3
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
	SWI       r22, r19, 160644
	ADD       r22, r0, r0
	MULI      r21, r21, 25
	LOAD      r22, r22, 9
	ADD       r21, r22, r21
	LOAD      r22, r21, 6
	LOAD      r23, r21, 5
	LOAD      r21, r21, 4
	SWI        r22, r19, 160312
	SWI        r23, r19, 160316
	SWI        r21, r19, 160320
	SWI        r11, r19, 160300
	SWI        r12, r19, 160304
	SWI        r20, r19, 160308
	SWI        r8, r19, 160288
	SWI        r9, r19, 160292
	SWI        r10, r19, 160296
	SWI        r5, r19, 160276
	SWI        r6, r19, 160280
	SWI        r7, r19, 160284
	SWI        r3, r19, 160272
	ADDI      r3, r0, 1060320051
	SWI       r3, r19, 160640
	ADDI      r3, r0, 1050253722
	SWI       r3, r19, 160648
	LWI       r3, r19, 160312
	SWI       r3, r19, 160604
	LWI       r5, r19, 160316
	SWI       r5, r19, 160592
	LWI       r5, r19, 160320
	SWI       r5, r19, 160596
	LWI       r5, r19, 160300
	SWI       r5, r19, 160576
	LWI       r5, r19, 160304
	SWI       r5, r19, 160580
	LWI       r5, r19, 160308
	SWI       r5, r19, 160584
	LWI       r5, r19, 160288
	SWI       r5, r19, 160588
	LWI       r5, r19, 160292
	SWI       r5, r19, 160608
	LWI       r5, r19, 160296
	SWI       r5, r19, 160612
	LWI       r5, r19, 160276
	SWI       r5, r19, 160616
	LWI       r5, r19, 160280
	SWI       r5, r19, 160620
	LWI       r5, r19, 160284
	SWI       r5, r19, 160636
	LWI       r3, r19, 160272
	SWI       r3, r19, 160548
$BB0_229:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i158
                                        #   in Loop: Header=BB0_204 Depth=3
	LWI       r3, r19, 160556
	ADDI      r3, r3, -1
	SWI       r3, r19, 160556
	ADDI      r4, r4, 11
	ADD       r5, r0, r0
	CMP       r3, r5, r3
	bneid     r3, ($BB0_204)
	NOP    
$BB0_230:                               # %bb7.i159
                                        #   in Loop: Header=BB0_140 Depth=2
	ADD       r4, r0, r0
	LWI       r3, r19, 160552
	CMP       r4, r4, r3
	bltid     r4, ($BB0_237)
	NOP    
# BB#231:                               # %bb9.i160
                                        #   in Loop: Header=BB0_140 Depth=2
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r3, r19, 160552
	beqid     r4, ($BB0_233)
	ADDI      r3, r3, 0
$BB0_232:                               # %bb9.i160
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_232)
	ADDK      r3, r3, r3
$BB0_233:                               # %bb9.i160
                                        #   in Loop: Header=BB0_140 Depth=2
	ADDI      r4, r19, 56
	LW        r4, r4, r3
	LWI       r3, r19, 160552
	ADDI      r3, r3, -1
	SWI       r3, r19, 160552
	brid      ($BB0_140)
	NOP    
$BB0_234:                               # %bb3.i88
                                        #   in Loop: Header=BB0_140 Depth=2
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r5, r19, 160552
	beqid     r3, ($BB0_236)
	ADDI      r5, r5, 0
$BB0_235:                               # %bb3.i88
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_235)
	ADDK      r5, r5, r5
$BB0_236:                               # %bb3.i88
                                        #   in Loop: Header=BB0_140 Depth=2
	ADDI      r3, r19, 56
	LWI       r6, r19, 160552
	ADDI      r6, r6, 1
	SWI       r6, r19, 160552
	ADDI      r6, r4, 1
	ADD       r3, r3, r5
	brid      ($BB0_140)
	SWI       r6, r3, 4
$BB0_237:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit161
                                        #   in Loop: Header=BB0_139 Depth=1
	LWI       r4, r19, 160548
	SWI       r4, r19, 160360
	LWI       r5, r19, 160636
	SWI       r5, r19, 160356
	LWI       r5, r19, 160620
	SWI       r5, r19, 160352
	LWI       r5, r19, 160616
	SWI       r5, r19, 160348
	LWI       r5, r19, 160612
	SWI       r5, r19, 160344
	LWI       r5, r19, 160608
	SWI       r5, r19, 160340
	LWI       r5, r19, 160588
	SWI       r5, r19, 160336
	LWI       r5, r19, 160584
	SWI       r5, r19, 160332
	LWI       r5, r19, 160580
	SWI       r5, r19, 160328
	LWI       r5, r19, 160576
	SWI       r5, r19, 160324
	LWI        r4, r19, 160360
	SWI       r4, r19, 160608
	ORI       r3, r0, 1343554297
	LWI        r5, r19, 160356
	LWI        r6, r19, 160352
	LWI        r7, r19, 160348
	LWI        r8, r19, 160344
	LWI        r9, r19, 160340
	LWI        r10, r19, 160336
	LWI        r11, r19, 160332
	LWI        r12, r19, 160328
	LWI        r20, r19, 160324
	LWI       r21, r19, 160652
	FPCONV    r21, r21
	ADDI      r22, r0, 1
	FPLT      r4, r4, r3
	PRINT     r21
	bneid     r4, ($BB0_239)
	NOP    
# BB#238:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit161
                                        #   in Loop: Header=BB0_139 Depth=1
	ADDI      r22, r0, 0
$BB0_239:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit161
                                        #   in Loop: Header=BB0_139 Depth=1
	LWI       r4, r19, 160652
	ADDI      r4, r4, 1
	SWI       r4, r19, 160652
	bneid     r22, ($BB0_241)
	NOP    
# BB#240:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit161.invcont121_crit_edge
                                        #   in Loop: Header=BB0_139 Depth=1
	FPRSUB    r4, r10, r7
	FPRSUB    r7, r12, r9
	FPRSUB    r5, r8, r5
	FPRSUB    r10, r20, r10
	FPRSUB    r8, r11, r8
	FPRSUB    r6, r9, r6
	FPMUL     r9, r6, r10
	FPMUL     r11, r7, r4
	FPMUL     r4, r8, r4
	FPMUL     r10, r5, r10
	FPRSUB    r9, r11, r9
	FPRSUB    r4, r10, r4
	FPMUL     r5, r7, r5
	FPMUL     r6, r8, r6
	FPRSUB    r5, r6, r5
	FPMUL     r6, r9, r9
	FPMUL     r4, r4, r4
	LWI       r8, r19, 160608
	LWI       r7, r19, 160564
	FPMUL     r7, r7, r8
	LWI       r9, r19, 160560
	FPMUL     r8, r9, r8
	FPADD     r4, r6, r4
	FPMUL     r5, r5, r5
	ADD       r6, r0, r0
	LWI       r9, r19, 160624
	FPADD     r7, r7, r9
	SWI       r7, r19, 160576
	LWI       r7, r19, 160628
	FPADD     r7, r8, r7
	SWI       r7, r19, 160580
	FPADD     r4, r4, r5
	SWI       r4, r19, 160612
	ORI       r4, r0, 1057988018
	ADDI      r5, r0, 1060806590
	ADDI      r7, r0, 1065151889
	brid      ($BB0_354)
	NOP    
$BB0_241:                               # %bb.i233
                                        #   in Loop: Header=BB0_139 Depth=1
	FPRSUB    r4, r10, r7
	FPRSUB    r7, r12, r9
	FPRSUB    r5, r8, r5
	FPRSUB    r3, r20, r10
	FPRSUB    r8, r11, r8
	FPRSUB    r6, r9, r6
	FPMUL     r9, r6, r3
	FPMUL     r10, r7, r4
	FPMUL     r4, r8, r4
	FPMUL     r3, r5, r3
	FPRSUB    r9, r10, r9
	FPRSUB    r4, r3, r4
	FPMUL     r5, r7, r5
	FPMUL     r6, r8, r6
	FPRSUB    r5, r6, r5
	LWI       r6, r19, 160672
	SWI       r6, r19, 160368
	FPMUL     r6, r9, r9
	FPMUL     r7, r4, r4
	LWI        r3, r19, 160368
	LWI       r8, r19, 160564
	FPMUL     r10, r8, r8
	LWI       r11, r19, 160560
	FPMUL     r12, r11, r11
	FPADD     r6, r6, r7
	FPMUL     r7, r5, r5
	FPADD     r6, r6, r7
	SWI       r6, r19, 160612
	FPADD     r7, r10, r12
	FPMUL     r10, r3, r3
	FPADD     r7, r7, r10
	FPINVSQRT r6, r6
	ORI       r10, r0, 1065353216
	FPINVSQRT r7, r7
	FPDIV     r7, r10, r7
	FPDIV     r6, r10, r6
	FPDIV     r9, r9, r6
	FPDIV     r10, r8, r7
	FPDIV     r4, r4, r6
	FPDIV     r12, r11, r7
	FPMUL     r10, r10, r9
	ORI       r20, r0, 0
	FPDIV     r5, r5, r6
	FPDIV     r6, r3, r7
	FPMUL     r7, r12, r4
	FPADD     r10, r10, r20
	LWI       r12, r19, 160748
	SWI       r12, r19, 160380
	LWI       r12, r19, 160608
	FPMUL     r3, r3, r12
	FPMUL     r11, r11, r12
	FPMUL     r8, r8, r12
	FPMUL     r6, r6, r5
	FPADD     r7, r7, r10
	FPADD     r6, r6, r7
	LWI       r7, r19, 160640
	SWI       r7, r19, 160364
	LWI        r7, r19, 160380
	SWI        r3, r19, 160384
	SWI        r11, r19, 160376
	SWI        r8, r19, 160372
	LWI        r10, r19, 160364
	SWI       r10, r19, 160616
	FPUN      r10, r6, r20
	FPLE      r6, r6, r20
	BITOR     r6, r10, r6
	bneid     r6, ($BB0_243)
	ADDI      r12, r0, 1
# BB#242:                               # %bb.i233
                                        #   in Loop: Header=BB0_139 Depth=1
	ADDI      r12, r0, 0
$BB0_243:                               # %bb.i233
                                        #   in Loop: Header=BB0_139 Depth=1
	bneid     r12, ($BB0_245)
	NOP    
# BB#244:                               # %bb46.i
                                        #   in Loop: Header=BB0_139 Depth=1
	FPNEG     r9, r9
	FPNEG     r4, r4
	FPNEG     r5, r5
$BB0_245:                               # %bb53.i
                                        #   in Loop: Header=BB0_139 Depth=1
	LWI       r6, r19, 160624
	FPADD     r6, r8, r6
	SWI       r6, r19, 160576
	LWI       r8, r19, 160628
	FPADD     r8, r11, r8
	SWI       r8, r19, 160580
	FPADD     r7, r7, r3
	SWI       r7, r19, 160584
	LWI       r3, r19, 160692
	FPRSUB    r6, r6, r3
	LWI       r3, r19, 160696
	FPRSUB    r3, r8, r3
	LWI       r8, r19, 160700
	FPRSUB    r7, r7, r8
	FPMUL     r8, r6, r6
	FPMUL     r10, r3, r3
	FPADD     r8, r8, r10
	FPMUL     r10, r7, r7
	FPADD     r8, r8, r10
	ORI       r10, r0, 1065353216
	FPINVSQRT r11, r8
	FPDIV     r10, r10, r11
	FPDIV     r6, r6, r10
	SWI       r6, r19, 160560
	FPDIV     r3, r3, r10
	SWI       r3, r19, 160564
	ORI       r11, r0, 0
	FPMUL     r6, r6, r9
	FPDIV     r7, r7, r10
	SWI       r7, r19, 160572
	FPMUL     r4, r3, r4
	FPADD     r6, r6, r11
	FPMUL     r5, r7, r5
	FPADD     r4, r4, r6
	FPADD     r4, r5, r4
	SWI       r4, r19, 160636
	FPUN      r5, r4, r11
	FPLE      r4, r4, r11
	BITOR     r4, r5, r4
	bneid     r4, ($BB0_247)
	ADDI      r6, r0, 1
# BB#246:                               # %bb53.i
                                        #   in Loop: Header=BB0_139 Depth=1
	ADDI      r6, r0, 0
$BB0_247:                               # %bb53.i
                                        #   in Loop: Header=BB0_139 Depth=1
	bneid     r6, ($BB0_353)
	NOP    
# BB#248:                               # %bb88.i
                                        #   in Loop: Header=BB0_139 Depth=1
	ADD       r4, r0, r0
	ADDI      r5, r0, -1
	SWI       r5, r19, 160552
	FPINVSQRT r5, r8
	SWI       r5, r19, 160620
$BB0_249:                               # %bb.i231
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_250 Depth 3
                                        #       Child Loop BB0_341 Depth 3
                                        #       Child Loop BB0_313 Depth 3
                                        #       Child Loop BB0_344 Depth 3
	ADDI      r5, r0, 3
	ANDI      r5, r5, 31
	beqid     r5, ($BB0_251)
	ADDI      r4, r4, 0
$BB0_250:                               # %bb.i231
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_250)
	ADDK      r4, r4, r4
$BB0_251:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	LWI       r5, r19, 160600
	ADD       r5, r4, r5
	LOAD      r4, r5, 2
	LOAD      r6, r5, 1
	LOAD      r7, r5, 0
	LOAD      r11, r5, 5
	LOAD      r3, r5, 4
	LOAD      r8, r5, 3
	LWI       r9, r19, 160576
	FPRSUB    r7, r9, r7
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 160560
	FPDIV     r7, r7, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r7, r8
	ADDI      r10, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_253)
	ADD       r20, r10, r0
# BB#252:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r20, r12, r0
$BB0_253:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r20, ($BB0_255)
	ADD       r9, r8, r0
# BB#254:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r9, r7, r0
$BB0_255:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_257)
	NOP    
# BB#256:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r7, r8, r0
$BB0_257:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	ORI       r8, r0, 1343554297
	FPGT      r20, r9, r21
	FPLT      r22, r7, r8
	bneid     r20, ($BB0_259)
	ADD       r23, r10, r0
# BB#258:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r23, r12, r0
$BB0_259:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r22, ($BB0_261)
	ADD       r20, r10, r0
# BB#260:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r20, r12, r0
$BB0_261:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r23, ($BB0_263)
	NOP    
# BB#262:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r9, r21, r0
$BB0_263:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r20, ($BB0_265)
	NOP    
# BB#264:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r7, r8, r0
$BB0_265:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	FPGT      r8, r9, r7
	bneid     r8, ($BB0_267)
	NOP    
# BB#266:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r10, r12, r0
$BB0_267:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r10, ($BB0_339)
	NOP    
# BB#268:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	ORI       r8, r0, 0
	ADDI      r10, r0, 1
	FPLT      r8, r7, r8
	bneid     r8, ($BB0_270)
	NOP    
# BB#269:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	ADDI      r10, r0, 0
$BB0_270:                               # %bb.i231
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r10, ($BB0_339)
	NOP    
# BB#271:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	LWI       r8, r19, 160580
	FPRSUB    r6, r8, r6
	FPRSUB    r3, r8, r3
	LWI       r8, r19, 160564
	FPDIV     r6, r6, r8
	FPDIV     r3, r3, r8
	FPGT      r8, r6, r3
	ADDI      r10, r0, 1
	ADDI      r12, r0, 0
	bneid     r8, ($BB0_273)
	ADD       r20, r10, r0
# BB#272:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r20, r12, r0
$BB0_273:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r20, ($BB0_275)
	ADD       r8, r3, r0
# BB#274:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r8, r6, r0
$BB0_275:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r20, ($BB0_277)
	NOP    
# BB#276:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r6, r3, r0
$BB0_277:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	FPGT      r3, r8, r9
	FPLT      r20, r6, r7
	bneid     r3, ($BB0_279)
	ADD       r21, r10, r0
# BB#278:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r21, r12, r0
$BB0_279:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r20, ($BB0_281)
	ADD       r3, r10, r0
# BB#280:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r3, r12, r0
$BB0_281:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r21, ($BB0_283)
	NOP    
# BB#282:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r8, r9, r0
$BB0_283:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r3, ($BB0_285)
	NOP    
# BB#284:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r6, r7, r0
$BB0_285:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	FPGT      r7, r8, r6
	bneid     r7, ($BB0_287)
	NOP    
# BB#286:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r10, r12, r0
$BB0_287:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r10, ($BB0_339)
	NOP    
# BB#288:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	ORI       r7, r0, 0
	ADDI      r3, r0, 1
	FPLT      r7, r6, r7
	bneid     r7, ($BB0_290)
	NOP    
# BB#289:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	ADDI      r3, r0, 0
$BB0_290:                               # %bb29.i.i237
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r3, ($BB0_339)
	NOP    
# BB#291:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	LWI       r7, r19, 160584
	FPRSUB    r4, r7, r4
	FPRSUB    r7, r7, r11
	LWI       r11, r19, 160572
	FPDIV     r4, r4, r11
	FPDIV     r7, r7, r11
	FPGT      r11, r4, r7
	ADDI      r3, r0, 1
	ADDI      r9, r0, 0
	bneid     r11, ($BB0_293)
	ADD       r10, r3, r0
# BB#292:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r10, r9, r0
$BB0_293:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r10, ($BB0_295)
	ADD       r11, r7, r0
# BB#294:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r11, r4, r0
$BB0_295:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r10, ($BB0_297)
	NOP    
# BB#296:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r4, r7, r0
$BB0_297:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	FPGT      r7, r11, r8
	FPLT      r10, r4, r6
	bneid     r7, ($BB0_299)
	ADD       r12, r3, r0
# BB#298:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r12, r9, r0
$BB0_299:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r10, ($BB0_301)
	ADD       r7, r3, r0
# BB#300:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r7, r9, r0
$BB0_301:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r7, ($BB0_303)
	NOP    
# BB#302:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r4, r6, r0
$BB0_303:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r12, ($BB0_305)
	NOP    
# BB#304:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r11, r8, r0
$BB0_305:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	FPGT      r6, r11, r4
	bneid     r6, ($BB0_307)
	NOP    
# BB#306:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r3, r9, r0
$BB0_307:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r3, ($BB0_339)
	NOP    
# BB#308:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	ORI       r6, r0, 0
	ADDI      r7, r0, 1
	FPLT      r4, r4, r6
	bneid     r4, ($BB0_310)
	NOP    
# BB#309:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	ADDI      r7, r0, 0
$BB0_310:                               # %bb62.i.i243
                                        #   in Loop: Header=BB0_249 Depth=2
	bneid     r7, ($BB0_339)
	NOP    
# BB#311:                               # %bb1.i244
                                        #   in Loop: Header=BB0_249 Depth=2
	LOAD      r4, r5, 7
	LOAD      r5, r5, 6
	SWI       r5, r19, 160556
	ADD       r6, r0, r0
	CMP       r5, r6, r5
	bltid     r5, ($BB0_343)
	NOP    
# BB#312:                               # %bb6.preheader.i245
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r5, r0, r0
	LWI       r6, r19, 160556
	CMP       r5, r5, r6
	bleid     r5, ($BB0_339)
	NOP    
$BB0_313:                               # %bb5.i258
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	LOAD      r5, r4, 2
	LOAD      r6, r4, 1
	LOAD      r7, r4, 0
	LOAD      r11, r4, 5
	LOAD      r3, r4, 4
	LOAD      r8, r4, 3
	LOAD      r9, r4, 8
	LOAD      r10, r4, 7
	LOAD      r12, r4, 6
	FPRSUB    r11, r9, r11
	SWI       r11, r19, 160588
	FPRSUB    r3, r10, r3
	FPRSUB    r8, r12, r8
	LWI       r20, r19, 160564
	FPMUL     r21, r20, r11
	LWI       r22, r19, 160572
	FPMUL     r23, r3, r22
	FPRSUB    r7, r12, r7
	LOAD      r24, r4, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r8, r22
	LWI       r23, r19, 160560
	FPMUL     r25, r23, r11
	FPRSUB    r5, r9, r5
	FPRSUB    r6, r10, r6
	LWI       r26, r19, 160576
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r3, r23
	FPMUL     r20, r8, r20
	FPMUL     r25, r21, r7
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r4, 9
	LWI       r28, r19, 160580
	FPRSUB    r10, r10, r28
	FPMUL     r21, r21, r12
	FPRSUB    r20, r20, r23
	FPMUL     r23, r22, r6
	FPADD     r25, r25, r26
	FPMUL     r28, r6, r11
	FPMUL     r29, r3, r5
	FPMUL     r30, r8, r5
	FPMUL     r11, r7, r11
	MULI      r24, r24, 25
	LOAD      r27, r27, 9
	LWI       r31, r19, 160584
	FPRSUB    r9, r9, r31
	FPRSUB    r28, r29, r28
	FPRSUB    r11, r11, r30
	ADD       r24, r27, r24
	FPMUL     r22, r22, r10
	FPADD     r21, r21, r26
	FPMUL     r27, r20, r5
	FPADD     r23, r23, r25
	FPMUL     r25, r3, r7
	FPMUL     r29, r8, r6
	FPRSUB    r25, r29, r25
	LOAD      r29, r24, 6
	FPMUL     r20, r20, r9
	FPADD     r21, r22, r21
	ORI       r22, r0, 1065353216
	FPADD     r23, r27, r23
	FPMUL     r27, r28, r28
	FPMUL     r11, r11, r11
	FPDIV     r22, r22, r23
	FPADD     r20, r20, r21
	LOAD      r21, r24, 5
	FPADD     r11, r27, r11
	FPMUL     r21, r25, r25
	FPMUL     r20, r20, r22
	FPADD     r11, r11, r21
	LOAD      r21, r24, 4
	ADDI      r21, r0, 1
	FPLT      r23, r20, r26
	FPINVSQRT r11, r11
	bneid     r23, ($BB0_315)
	NOP    
# BB#314:                               # %bb5.i258
                                        #   in Loop: Header=BB0_313 Depth=3
	ADDI      r21, r0, 0
$BB0_315:                               # %bb5.i258
                                        #   in Loop: Header=BB0_313 Depth=3
	bneid     r21, ($BB0_338)
	NOP    
# BB#316:                               # %bb5.i258
                                        #   in Loop: Header=BB0_313 Depth=3
	ORI       r11, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r11, r20, r11
	bneid     r11, ($BB0_318)
	NOP    
# BB#317:                               # %bb5.i258
                                        #   in Loop: Header=BB0_313 Depth=3
	ADDI      r21, r0, 0
$BB0_318:                               # %bb5.i258
                                        #   in Loop: Header=BB0_313 Depth=3
	bneid     r21, ($BB0_338)
	NOP    
# BB#319:                               # %bb73.i.i259
                                        #   in Loop: Header=BB0_313 Depth=3
	FPMUL     r11, r10, r5
	FPMUL     r21, r6, r9
	FPRSUB    r11, r21, r11
	FPMUL     r9, r7, r9
	FPMUL     r5, r12, r5
	FPRSUB    r5, r5, r9
	FPMUL     r6, r6, r12
	FPMUL     r7, r7, r10
	LWI       r9, r19, 160560
	FPMUL     r9, r11, r9
	ORI       r10, r0, 0
	FPRSUB    r6, r7, r6
	LWI       r7, r19, 160564
	FPMUL     r7, r5, r7
	FPADD     r9, r9, r10
	LWI       r12, r19, 160572
	FPMUL     r12, r6, r12
	FPADD     r7, r7, r9
	FPADD     r7, r12, r7
	FPMUL     r7, r7, r22
	ADDI      r9, r0, 1
	FPLT      r10, r7, r10
	bneid     r10, ($BB0_321)
	NOP    
# BB#320:                               # %bb73.i.i259
                                        #   in Loop: Header=BB0_313 Depth=3
	ADDI      r9, r0, 0
$BB0_321:                               # %bb73.i.i259
                                        #   in Loop: Header=BB0_313 Depth=3
	bneid     r9, ($BB0_338)
	NOP    
# BB#322:                               # %bb94.i55.i260
                                        #   in Loop: Header=BB0_313 Depth=3
	FPADD     r7, r7, r20
	ORI       r9, r0, 1065353216
	ADDI      r10, r0, 1
	FPGT      r7, r7, r9
	bneid     r7, ($BB0_324)
	NOP    
# BB#323:                               # %bb94.i55.i260
                                        #   in Loop: Header=BB0_313 Depth=3
	ADDI      r10, r0, 0
$BB0_324:                               # %bb94.i55.i260
                                        #   in Loop: Header=BB0_313 Depth=3
	bneid     r10, ($BB0_338)
	NOP    
# BB#325:                               # %bb96.i.i263
                                        #   in Loop: Header=BB0_313 Depth=3
	FPMUL     r7, r11, r8
	ORI       r11, r0, 0
	FPMUL     r5, r5, r3
	FPADD     r7, r7, r11
	LWI       r3, r19, 160588
	FPMUL     r6, r6, r3
	FPADD     r5, r5, r7
	FPADD     r5, r6, r5
	FPMUL     r5, r5, r22
	FPUN      r6, r5, r11
	FPLE      r7, r5, r11
	BITOR     r6, r6, r7
	bneid     r6, ($BB0_327)
	ADDI      r11, r0, 1
# BB#326:                               # %bb96.i.i263
                                        #   in Loop: Header=BB0_313 Depth=3
	ADDI      r11, r0, 0
$BB0_327:                               # %bb96.i.i263
                                        #   in Loop: Header=BB0_313 Depth=3
	bneid     r11, ($BB0_338)
	NOP    
# BB#328:                               # %bb96.i.i263
                                        #   in Loop: Header=BB0_313 Depth=3
	ORI       r6, r0, 981668463
	ADDI      r7, r0, 1
	FPLT      r6, r5, r6
	bneid     r6, ($BB0_330)
	NOP    
# BB#329:                               # %bb96.i.i263
                                        #   in Loop: Header=BB0_313 Depth=3
	ADDI      r7, r0, 0
$BB0_330:                               # %bb96.i.i263
                                        #   in Loop: Header=BB0_313 Depth=3
	bneid     r7, ($BB0_338)
	NOP    
# BB#331:                               # %bb96.i.i263
                                        #   in Loop: Header=BB0_313 Depth=3
	ORI       r6, r0, 1343554297
	ADDI      r7, r0, 1
	FPEQ      r6, r5, r6
	bneid     r6, ($BB0_333)
	NOP    
# BB#332:                               # %bb96.i.i263
                                        #   in Loop: Header=BB0_313 Depth=3
	ADDI      r7, r0, 0
$BB0_333:                               # %bb96.i.i263
                                        #   in Loop: Header=BB0_313 Depth=3
	bneid     r7, ($BB0_338)
	NOP    
# BB#334:                               # %bb2.i.i.i264
                                        #   in Loop: Header=BB0_313 Depth=3
	LWI       r6, r19, 160548
	SWI       r6, r19, 160388
	LWI        r6, r19, 160388
	FPUN      r7, r6, r5
	FPLE      r6, r6, r5
	BITOR     r6, r7, r6
	bneid     r6, ($BB0_336)
	ADDI      r11, r0, 1
# BB#335:                               # %bb2.i.i.i264
                                        #   in Loop: Header=BB0_313 Depth=3
	ADDI      r11, r0, 0
$BB0_336:                               # %bb2.i.i.i264
                                        #   in Loop: Header=BB0_313 Depth=3
	bneid     r11, ($BB0_338)
	NOP    
# BB#337:                               # %bb3.i.i.i315
                                        #   in Loop: Header=BB0_313 Depth=3
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
	LOAD      r11, r4, 9
	MULI      r6, r6, 25
	LOAD      r7, r7, 9
	ADD       r6, r7, r6
	SWI        r5, r19, 160392
	LOAD      r5, r6, 6
	LWI       r5, r19, 160392
	SWI       r5, r19, 160548
	LOAD      r5, r6, 5
	LOAD      r5, r6, 4
$BB0_338:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i317
                                        #   in Loop: Header=BB0_313 Depth=3
	LWI       r5, r19, 160556
	ADDI      r5, r5, -1
	SWI       r5, r19, 160556
	ADDI      r4, r4, 11
	ADD       r6, r0, r0
	CMP       r5, r6, r5
	bneid     r5, ($BB0_313)
	NOP    
$BB0_339:                               # %bb7.i318
                                        #   in Loop: Header=BB0_249 Depth=2
	ADD       r4, r0, r0
	LWI       r5, r19, 160552
	CMP       r4, r4, r5
	bltid     r4, ($BB0_346)
	NOP    
# BB#340:                               # %bb9.i319
                                        #   in Loop: Header=BB0_249 Depth=2
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r5, r19, 160552
	beqid     r4, ($BB0_342)
	ADDI      r5, r5, 0
$BB0_341:                               # %bb9.i319
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_341)
	ADDK      r5, r5, r5
$BB0_342:                               # %bb9.i319
                                        #   in Loop: Header=BB0_249 Depth=2
	ADDI      r4, r19, 56
	LW        r4, r4, r5
	LWI       r5, r19, 160552
	ADDI      r5, r5, -1
	SWI       r5, r19, 160552
	brid      ($BB0_249)
	NOP    
$BB0_343:                               # %bb3.i247
                                        #   in Loop: Header=BB0_249 Depth=2
	ADDI      r5, r0, 2
	ANDI      r5, r5, 31
	LWI       r6, r19, 160552
	beqid     r5, ($BB0_345)
	ADDI      r6, r6, 0
$BB0_344:                               # %bb3.i247
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_344)
	ADDK      r6, r6, r6
$BB0_345:                               # %bb3.i247
                                        #   in Loop: Header=BB0_249 Depth=2
	ADDI      r5, r19, 56
	LWI       r7, r19, 160552
	ADDI      r7, r7, 1
	SWI       r7, r19, 160552
	ADDI      r7, r4, 1
	ADD       r5, r5, r6
	brid      ($BB0_249)
	SWI       r7, r5, 4
$BB0_346:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit320
                                        #   in Loop: Header=BB0_139 Depth=1
	LWI       r4, r19, 160548
	SWI       r4, r19, 160396
	ORI       r4, r0, 1065353216
	LWI        r5, r19, 160396
	LWI       r6, r19, 160620
	FPDIV     r4, r4, r6
	ORI       r11, r0, 0
	FPUN      r6, r5, r4
	FPGE      r4, r5, r4
	BITOR     r4, r6, r4
	bneid     r4, ($BB0_348)
	ADDI      r7, r0, 1
# BB#347:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit320
                                        #   in Loop: Header=BB0_139 Depth=1
	ADDI      r7, r0, 0
$BB0_348:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit320
                                        #   in Loop: Header=BB0_139 Depth=1
	bneid     r7, ($BB0_352)
	NOP    
# BB#349:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit320
                                        #   in Loop: Header=BB0_139 Depth=1
	ORI       r4, r0, 1008981770
	ADDI      r6, r0, 1
	FPGT      r4, r5, r4
	bneid     r4, ($BB0_351)
	NOP    
# BB#350:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit320
                                        #   in Loop: Header=BB0_139 Depth=1
	ADDI      r6, r0, 0
$BB0_351:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit320
                                        #   in Loop: Header=BB0_139 Depth=1
	bneid     r6, ($BB0_353)
	NOP    
$BB0_352:                               # %bb92.i
                                        #   in Loop: Header=BB0_139 Depth=1
	LWI       r5, r19, 160636
	LWI       r4, r19, 160616
	FPMUL     r4, r4, r5
	ORI       r5, r0, 0
	FPADD     r11, r4, r5
$BB0_353:                               # %bb115.i
                                        #   in Loop: Header=BB0_139 Depth=1
	LWI       r5, r19, 160592
	SWI       r5, r19, 160400
	LWI       r4, r19, 160604
	SWI       r4, r19, 160408
	LWI        r4, r19, 160400
	LWI        r5, r19, 160408
	LWI       r6, r19, 160596
	SWI       r6, r19, 160416
	FPMUL     r4, r4, r11
	FPMUL     r5, r11, r5
	LWI        r7, r19, 160416
	SWI        r4, r19, 160404
	SWI        r5, r19, 160412
	ADD       r6, r0, r0
	FPMUL     r4, r7, r11
	LWI       r5, r19, 160404
	LWI       r7, r19, 160412
$BB0_354:                               # %invcont121
                                        #   in Loop: Header=BB0_139 Depth=1
	LWI       r8, r19, 160608
	LWI       r3, r19, 160568
	FPMUL     r3, r3, r8
	LWI       r8, r19, 160632
	FPADD     r3, r8, r3
	ADD       r8, r0, r0
	ORI       r9, r0, 0
	BITOR     r6, r7, r6
	LWI       r7, r19, 160612
	FPINVSQRT r7, r7
	ADD       r7, r9, r0
	ADD       r10, r9, r0
	brid      ($BB0_368)
	ADD       r11, r8, r0
$BB0_355:                               # %bb.i320
                                        #   in Loop: Header=BB0_368 Depth=2
	ADDI      r20, r0, 5
	ANDI      r20, r20, 31
	beqid     r20, ($BB0_357)
	ADDI      r21, r8, 0
$BB0_356:                               # %bb.i320
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_368 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r20, r20, -1
	bneid     r20, ($BB0_356)
	ADDK      r21, r21, r21
$BB0_357:                               # %bb.i320
                                        #   in Loop: Header=BB0_368 Depth=2
	LWI       r20, r19, 160660
	ADD       r22, r20, r21
	LWI       r23, r22, 8
	SWI       r23, r19, 160424
	LWI        r22, r22, 4
	LW         r20, r20, r21
	LWI       r21, r19, 160576
	FPRSUB    r21, r21, r20
	LWI       r23, r19, 160580
	FPRSUB    r23, r23, r22
	LWI        r24, r19, 160424
	FPRSUB    r24, r3, r24
	FPMUL     r21, r21, r21
	FPMUL     r23, r23, r23
	FPADD     r21, r21, r23
	FPMUL     r23, r24, r24
	SWI        r22, r19, 160428
	SWI        r20, r19, 160420
	FPADD     r20, r21, r23
	ORI       r21, r0, 1133543424
	FPUN      r22, r20, r21
	FPGE      r20, r20, r21
	BITOR     r20, r22, r20
	bneid     r20, ($BB0_359)
	ADDI      r21, r0, 1
# BB#358:                               # %bb.i320
                                        #   in Loop: Header=BB0_368 Depth=2
	ADDI      r21, r0, 0
$BB0_359:                               # %bb.i320
                                        #   in Loop: Header=BB0_368 Depth=2
	bneid     r21, ($BB0_367)
	NOP    
# BB#360:                               # %bb45.i
                                        #   in Loop: Header=BB0_368 Depth=2
	ADDI      r20, r0, 2
	ANDI      r21, r20, 31
	beqid     r21, ($BB0_362)
	ADDI      r22, r12, 0
$BB0_361:                               # %bb45.i
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_368 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r21, r21, -1
	bneid     r21, ($BB0_361)
	ADDK      r22, r22, r22
$BB0_362:                               # %bb45.i
                                        #   in Loop: Header=BB0_368 Depth=2
	ANDI      r21, r20, 31
	beqid     r21, ($BB0_364)
	ADDI      r23, r12, 0
$BB0_363:                               # %bb45.i
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_368 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r21, r21, -1
	bneid     r21, ($BB0_363)
	ADDK      r23, r23, r23
$BB0_364:                               # %bb45.i
                                        #   in Loop: Header=BB0_368 Depth=2
	ANDI      r20, r20, 31
	beqid     r20, ($BB0_366)
	ADDI      r12, r12, 0
$BB0_365:                               # %bb45.i
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_368 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r20, r20, -1
	bneid     r20, ($BB0_365)
	ADDK      r12, r12, r12
$BB0_366:                               # %bb45.i
                                        #   in Loop: Header=BB0_368 Depth=2
	LWI       r20, r19, 160660
	ADD       r21, r20, r22
	ADD       r22, r20, r23
	ADD       r12, r20, r12
	LWI        r20, r21, 12
	LWI        r21, r22, 16
	LWI        r12, r12, 20
	ADDI      r11, r11, 1
	FPADD     r9, r9, r20
	FPADD     r7, r7, r21
	FPADD     r10, r10, r12
	ADDI      r12, r0, 10
	CMP       r12, r12, r11
	bgtid     r12, ($BB0_372)
	NOP    
$BB0_367:                               # %bb46.i328
                                        #   in Loop: Header=BB0_368 Depth=2
	ADDI      r8, r8, 1
$BB0_368:                               # %bb47.i
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_356 Depth 3
                                        #       Child Loop BB0_369 Depth 3
                                        #       Child Loop BB0_365 Depth 3
                                        #       Child Loop BB0_363 Depth 3
                                        #       Child Loop BB0_361 Depth 3
	ADDI      r12, r0, 3
	ANDI      r20, r12, 31
	beqid     r20, ($BB0_370)
	ADDI      r12, r8, 0
$BB0_369:                               # %bb47.i
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_368 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r20, r20, -1
	bneid     r20, ($BB0_369)
	ADDK      r12, r12, r12
$BB0_370:                               # %bb47.i
                                        #   in Loop: Header=BB0_368 Depth=2
	LWI       r20, r19, 160664
	CMP       r20, r20, r8
	bltid     r20, ($BB0_355)
	NOP    
# BB#371:                               # %bb48.i
                                        #   in Loop: Header=BB0_139 Depth=1
	ORI       r3, r0, 0
	ADD       r8, r0, r0
	CMP       r8, r8, r11
	ADD       r12, r3, r0
	beqid     r8, ($BB0_373)
	ADD       r20, r3, r0
$BB0_372:                               # %bb49.i
                                        #   in Loop: Header=BB0_139 Depth=1
	LWI       r3, r19, 160596
	SWI       r3, r19, 160432
	LWI       r3, r19, 160592
	SWI       r3, r19, 160440
	LWI       r3, r19, 160604
	SWI       r3, r19, 160436
	FPCONV    r3, r11
	LWI        r12, r19, 160432
	FPDIV     r20, r9, r3
	LWI        r8, r19, 160440
	FPDIV     r7, r7, r3
	FPDIV     r3, r10, r3
	LWI        r9, r19, 160436
	FPMUL     r20, r12, r20
	FPMUL     r12, r8, r7
	FPMUL     r3, r3, r9
$BB0_373:                               # %invcont146
                                        #   in Loop: Header=BB0_139 Depth=1
	SWI       r5, r19, 160448
	SWI       r6, r19, 160444
	LWI        r5, r19, 160448
	LWI        r6, r19, 160444
	FPADD     r4, r20, r4
	ORI       r7, r0, 0
	ADDI      r8, r0, 1
	FPLT      r9, r4, r7
	bneid     r9, ($BB0_375)
	NOP    
# BB#374:                               # %invcont146
                                        #   in Loop: Header=BB0_139 Depth=1
	ADDI      r8, r0, 0
$BB0_375:                               # %invcont146
                                        #   in Loop: Header=BB0_139 Depth=1
	bneid     r8, ($BB0_380)
	NOP    
# BB#376:                               # %bb1.i
                                        #   in Loop: Header=BB0_139 Depth=1
	ORI       r7, r0, 1065353216
	ADDI      r8, r0, 1
	FPGT      r9, r4, r7
	bneid     r9, ($BB0_378)
	NOP    
# BB#377:                               # %bb1.i
                                        #   in Loop: Header=BB0_139 Depth=1
	ADDI      r8, r0, 0
$BB0_378:                               # %bb1.i
                                        #   in Loop: Header=BB0_139 Depth=1
	bneid     r8, ($BB0_380)
	NOP    
# BB#379:                               # %bb4.i
                                        #   in Loop: Header=BB0_139 Depth=1
	ADD       r7, r4, r0
$BB0_380:                               # %bb5.i
                                        #   in Loop: Header=BB0_139 Depth=1
	FPADD     r4, r6, r3
	ORI       r3, r0, 0
	ADDI      r6, r0, 1
	FPLT      r8, r4, r3
	bneid     r8, ($BB0_382)
	NOP    
# BB#381:                               # %bb5.i
                                        #   in Loop: Header=BB0_139 Depth=1
	ADDI      r6, r0, 0
$BB0_382:                               # %bb5.i
                                        #   in Loop: Header=BB0_139 Depth=1
	bneid     r6, ($BB0_387)
	NOP    
# BB#383:                               # %bb8.i
                                        #   in Loop: Header=BB0_139 Depth=1
	ORI       r3, r0, 1065353216
	ADDI      r6, r0, 1
	FPGT      r8, r4, r3
	bneid     r8, ($BB0_385)
	NOP    
# BB#384:                               # %bb8.i
                                        #   in Loop: Header=BB0_139 Depth=1
	ADDI      r6, r0, 0
$BB0_385:                               # %bb8.i
                                        #   in Loop: Header=BB0_139 Depth=1
	bneid     r6, ($BB0_387)
	NOP    
# BB#386:                               # %bb11.i
                                        #   in Loop: Header=BB0_139 Depth=1
	ADD       r3, r4, r0
$BB0_387:                               # %bb12.i
                                        #   in Loop: Header=BB0_139 Depth=1
	FPADD     r4, r12, r5
	ORI       r5, r0, 0
	ADDI      r6, r0, 1
	FPLT      r8, r4, r5
	bneid     r8, ($BB0_389)
	NOP    
# BB#388:                               # %bb12.i
                                        #   in Loop: Header=BB0_139 Depth=1
	ADDI      r6, r0, 0
$BB0_389:                               # %bb12.i
                                        #   in Loop: Header=BB0_139 Depth=1
	bneid     r6, ($BB0_394)
	NOP    
# BB#390:                               # %bb15.i
                                        #   in Loop: Header=BB0_139 Depth=1
	ORI       r5, r0, 1065353216
	ADDI      r6, r0, 1
	FPGT      r8, r4, r5
	bneid     r8, ($BB0_392)
	NOP    
# BB#391:                               # %bb15.i
                                        #   in Loop: Header=BB0_139 Depth=1
	ADDI      r6, r0, 0
$BB0_392:                               # %bb15.i
                                        #   in Loop: Header=BB0_139 Depth=1
	bneid     r6, ($BB0_394)
	NOP    
# BB#393:                               # %bb18.i
                                        #   in Loop: Header=BB0_139 Depth=1
	ADD       r5, r4, r0
$BB0_394:                               # %invcont158
                                        #   in Loop: Header=BB0_139 Depth=1
	LWI       r6, r19, 160668
	LWI       r4, r19, 160656
	ADD       r4, r4, r6
	MULI      r4, r4, 3
	LWI       r6, r19, 160688
	ADD       r4, r4, r6
	STORE     r4, r7, 0
	STORE     r4, r5, 1
	STORE     r4, r3, 2
	ATOMIC_INC r4, 0
	LWI       r3, r19, 160752
	CMP       r3, r4, r3
	bgtid     r3, ($BB0_139)
	NOP    
$BB0_395:                               # %return
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
	ADDI      r1, r1, 160760
	rtsd      r15, 8
	ADD       r3, r0, r0
	.end	main
$tmp0:
	.size	main, ($tmp0)-main


