	.file	"rt.bc"
	.text
	.globl	main
	.align	2
	.type	main,@function
	.ent	main                    # @main
main:
	.frame	r19,160776,r15
	.mask	0xfff88000
# BB#0:                                 # %invcont8
	ADDI      r1, r1, -160776
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
	SWI       r4, r19, 160712
	LOAD      r4, r3, 4
	SWI       r4, r19, 160772
	LOAD      r4, r3, 7
	SWI       r4, r19, 160716
	LOAD      r4, r3, 2
	LOAD      r4, r3, 5
	LOAD      r4, r3, 12
	LOAD      r5, r4, 0
	SWI       r5, r19, 160720
	LOAD      r5, r4, 1
	SWI       r5, r19, 160724
	LOAD      r4, r4, 2
	SWI       r4, r19, 160728
	LOAD      r4, r3, 10
	LOAD      r5, r4, 0
	SWI       r5, r19, 160672
	LOAD      r5, r4, 1
	SWI       r5, r19, 160676
	LOAD      r5, r4, 2
	SWI       r5, r19, 160680
	ADDI      r5, r4, 9
	LOAD      r6, r5, 0
	LOAD      r6, r5, 1
	ADDI      r6, r4, 12
	LOAD      r5, r5, 2
	LOAD      r5, r6, 0
	SWI       r5, r19, 160732
	LOAD      r5, r6, 1
	SWI       r5, r19, 160736
	LOAD      r5, r6, 2
	SWI       r5, r19, 160740
	ADDI      r5, r4, 15
	LOAD      r6, r5, 0
	SWI       r6, r19, 160744
	LOAD      r6, r5, 1
	SWI       r6, r19, 160748
	LOAD      r5, r5, 2
	SWI       r5, r19, 160752
	ADDI      r4, r4, 18
	LOAD      r5, r4, 0
	SWI       r5, r19, 160756
	LOAD      r5, r4, 1
	SWI       r5, r19, 160760
	ADDI      r5, r19, 184
	ADDI      r5, r5, 16
	LOAD      r4, r4, 2
	SWI       r4, r19, 160764
	ADDI      r4, r0, 5000
	ADD       r8, r0, r0
$BB0_1:                                 # %bb.i37
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
	SWI       r4, r19, 160616
	ADDI      r1, r1, -4
	ADDI      r5, r0, -8
	BITAND    r4, r1, r5
	ADDI      r5, r4, -8000000
	SWI       r5, r19, 160700
	LWI       r6, r19, 160680
	SWI        r6, r19, 160216
	LWI       r6, r19, 160216
	SWI       r6, r19, 160768
	ADDI      r4, r4, -7999984
	ADD       r1, r5, r0
	ADDI      r5, r0, 250000
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
# BB#4:                                 # %invcont15
	ADD       r3, r0, r0
	SWI       r3, r19, 160704
	LOAD      r4, r3, 12
	LOAD      r5, r4, 0
	LOAD      r6, r4, 1
	LOAD      r4, r4, 2
	SWI        r4, r19, 160228
	SWI        r6, r19, 160224
	SWI        r5, r19, 160220
	LWI       r4, r19, 160224
	SWI       r4, r19, 160660
	LWI       r5, r19, 160220
	SWI       r5, r19, 160656
	LWI       r6, r19, 160228
	SWI       r6, r19, 160684
	ADDI      r6, r0, 125000
	SWI       r6, r19, 160708
	SWI       r3, r19, 160636
	SWI       r4, r19, 160664
	SWI       r5, r19, 160668
	brid      ($BB0_154)
	NOP    
$BB0_5:                                 # %bb.i52
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        #       Parent Loop BB0_151 Depth=3
                                        #         Parent Loop BB0_152 Depth=4
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
	bneid     r7, ($BB0_7)
	NOP    
# BB#6:                                 # %bb.i52
                                        #   in Loop: Header=BB0_5 Depth=5
	ADDI      r8, r0, 0
$BB0_7:                                 # %bb.i52
                                        #   in Loop: Header=BB0_5 Depth=5
	bneid     r8, ($BB0_5)
	NOP    
# BB#8:                                 # %invcont30
                                        #   in Loop: Header=BB0_152 Depth=4
	FPINVSQRT r6, r6
	ORI       r7, r0, 1065353216
	FPDIV     r6, r7, r6
	FPDIV     r5, r5, r6
	SWI       r5, r19, 160576
	FPDIV     r3, r3, r6
	SWI       r3, r19, 160572
	FPDIV     r4, r4, r6
	SWI        r5, r19, 160464
	SWI        r3, r19, 160460
	SWI        r4, r19, 160468
	ADD       r3, r0, r0
	SWI       r3, r19, 160604
	LWI       r3, r19, 160468
	ADDI      r4, r0, 1
	LWI       r5, r19, 160632
	CMP       r4, r4, r5
	bltid     r4, ($BB0_28)
	NOP    
# BB#9:                                 # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	LWI       r4, r19, 160604
	BITOR     r4, r4, r3
	SWI       r4, r19, 160472
	LWI       r5, r19, 160572
	LWI       r4, r19, 160644
	FPADD     r4, r5, r4
	ORI       r5, r0, 1119092736
	LWI        r6, r19, 160472
	FPUN      r7, r4, r5
	FPLE      r5, r4, r5
	BITOR     r5, r7, r5
	bneid     r5, ($BB0_11)
	ADDI      r8, r0, 1
# BB#10:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	ADDI      r8, r0, 0
$BB0_11:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	LWI       r7, r19, 160604
	LWI       r5, r19, 160640
	BITOR     r5, r7, r5
	BITOR     r5, r7, r5
	SWI       r5, r19, 160640
	bneid     r8, ($BB0_28)
	NOP    
# BB#12:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	ORI       r5, r0, 1133903872
	FPUN      r7, r4, r5
	FPGE      r4, r4, r5
	BITOR     r4, r7, r4
	bneid     r4, ($BB0_14)
	ADDI      r5, r0, 1
# BB#13:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	ADDI      r5, r0, 0
$BB0_14:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	bneid     r5, ($BB0_28)
	NOP    
# BB#15:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	LWI       r5, r19, 160576
	LWI       r4, r19, 160648
	FPADD     r4, r5, r4
	ORI       r5, r0, 1117782016
	FPUN      r7, r4, r5
	FPLE      r5, r4, r5
	BITOR     r5, r7, r5
	bneid     r5, ($BB0_17)
	ADDI      r8, r0, 1
# BB#16:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	ADDI      r8, r0, 0
$BB0_17:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	bneid     r8, ($BB0_28)
	NOP    
# BB#18:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	ORI       r5, r0, 1133903872
	FPUN      r7, r4, r5
	FPGE      r4, r4, r5
	BITOR     r4, r7, r4
	bneid     r4, ($BB0_20)
	ADDI      r5, r0, 1
# BB#19:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	ADDI      r5, r0, 0
$BB0_20:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	bneid     r5, ($BB0_28)
	NOP    
# BB#21:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	LWI       r4, r19, 160588
	FPADD     r4, r4, r6
	ORI       r5, r0, 1133903872
	FPUN      r6, r4, r5
	FPLE      r5, r4, r5
	BITOR     r5, r6, r5
	bneid     r5, ($BB0_23)
	ADDI      r7, r0, 1
# BB#22:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	ADDI      r7, r0, 0
$BB0_23:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	bneid     r7, ($BB0_28)
	NOP    
# BB#24:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	ORI       r5, r0, 1135542272
	FPUN      r6, r4, r5
	FPGE      r4, r4, r5
	BITOR     r4, r6, r4
	bneid     r4, ($BB0_26)
	ADDI      r5, r0, 1
# BB#25:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	ADDI      r5, r0, 0
$BB0_26:                                # %bb43
                                        #   in Loop: Header=BB0_152 Depth=4
	bneid     r5, ($BB0_28)
	NOP    
# BB#27:                                # %invcont46
                                        #   in Loop: Header=BB0_152 Depth=4
	LWI       r4, r19, 160636
	ADDI      r5, r4, 1
	FPCONV    r4, r4
	PRINT     r4
	SWI       r5, r19, 160636
$BB0_28:                                # %invcont48
                                        #   in Loop: Header=BB0_152 Depth=4
	ADDI      r4, r0, 1343554297
	SWI       r4, r19, 160584
	SWI       r3, r19, 160476
	LWI        r3, r19, 160476
	SWI       r3, r19, 160580
	ADD       r3, r0, r0
	ADDI      r4, r0, -1
	SWI       r4, r19, 160564
	LWI       r4, r19, 160604
	SWI       r4, r19, 160608
	SWI       r4, r19, 160612
$BB0_29:                                # %bb.i
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        #       Parent Loop BB0_151 Depth=3
                                        #         Parent Loop BB0_152 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_121 Depth 6
                                        #             Child Loop BB0_93 Depth 6
                                        #             Child Loop BB0_124 Depth 6
                                        #             Child Loop BB0_30 Depth 6
	ADDI      r4, r0, 3
	ANDI      r4, r4, 31
	beqid     r4, ($BB0_31)
	ADDI      r3, r3, 0
$BB0_30:                                # %bb.i
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        #       Parent Loop BB0_151 Depth=3
                                        #         Parent Loop BB0_152 Depth=4
                                        #           Parent Loop BB0_29 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_30)
	ADDK      r3, r3, r3
$BB0_31:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	LWI       r4, r19, 160616
	ADD       r4, r3, r4
	LOAD      r3, r4, 2
	LOAD      r5, r4, 1
	LOAD      r6, r4, 0
	LOAD      r7, r4, 5
	LOAD      r8, r4, 4
	LOAD      r9, r4, 3
	LWI       r10, r19, 160592
	FPRSUB    r6, r10, r6
	FPRSUB    r9, r10, r9
	LWI       r10, r19, 160572
	FPDIV     r6, r6, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r6, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_33)
	ADD       r20, r11, r0
# BB#32:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r20, r12, r0
$BB0_33:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r20, ($BB0_35)
	ADD       r10, r9, r0
# BB#34:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r10, r6, r0
$BB0_35:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_37)
	NOP    
# BB#36:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r6, r9, r0
$BB0_37:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r6, r9
	bneid     r20, ($BB0_39)
	ADD       r23, r11, r0
# BB#38:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r23, r12, r0
$BB0_39:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r22, ($BB0_41)
	ADD       r20, r11, r0
# BB#40:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r20, r12, r0
$BB0_41:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r23, ($BB0_43)
	NOP    
# BB#42:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r10, r21, r0
$BB0_43:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r20, ($BB0_45)
	NOP    
# BB#44:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r6, r9, r0
$BB0_45:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	FPGT      r9, r10, r6
	bneid     r9, ($BB0_47)
	NOP    
# BB#46:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r11, r12, r0
$BB0_47:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r11, ($BB0_119)
	NOP    
# BB#48:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r6, r9
	bneid     r9, ($BB0_50)
	NOP    
# BB#49:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADDI      r11, r0, 0
$BB0_50:                                # %bb.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r11, ($BB0_119)
	NOP    
# BB#51:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	LWI       r9, r19, 160596
	FPRSUB    r5, r9, r5
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 160576
	FPDIV     r5, r5, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r5, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_53)
	ADD       r20, r11, r0
# BB#52:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r20, r12, r0
$BB0_53:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r20, ($BB0_55)
	ADD       r9, r8, r0
# BB#54:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r9, r5, r0
$BB0_55:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r20, ($BB0_57)
	NOP    
# BB#56:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r5, r8, r0
$BB0_57:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	FPGT      r8, r9, r10
	FPLT      r20, r5, r6
	bneid     r8, ($BB0_59)
	ADD       r21, r11, r0
# BB#58:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r21, r12, r0
$BB0_59:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r20, ($BB0_61)
	ADD       r8, r11, r0
# BB#60:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r8, r12, r0
$BB0_61:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r21, ($BB0_63)
	NOP    
# BB#62:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r9, r10, r0
$BB0_63:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r8, ($BB0_65)
	NOP    
# BB#64:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r5, r6, r0
$BB0_65:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	FPGT      r6, r9, r5
	bneid     r6, ($BB0_67)
	NOP    
# BB#66:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r11, r12, r0
$BB0_67:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r11, ($BB0_119)
	NOP    
# BB#68:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ORI       r6, r0, 0
	ADDI      r8, r0, 1
	FPLT      r6, r5, r6
	bneid     r6, ($BB0_70)
	NOP    
# BB#69:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADDI      r8, r0, 0
$BB0_70:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r8, ($BB0_119)
	NOP    
# BB#71:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	LWI       r6, r19, 160588
	FPRSUB    r3, r6, r3
	FPRSUB    r6, r6, r7
	LWI       r7, r19, 160580
	FPDIV     r3, r3, r7
	FPDIV     r6, r6, r7
	FPGT      r7, r3, r6
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_73)
	ADD       r11, r8, r0
# BB#72:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r11, r10, r0
$BB0_73:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r11, ($BB0_75)
	ADD       r7, r6, r0
# BB#74:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r7, r3, r0
$BB0_75:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r11, ($BB0_77)
	NOP    
# BB#76:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r3, r6, r0
$BB0_77:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	FPGT      r6, r7, r9
	FPLT      r11, r3, r5
	bneid     r6, ($BB0_79)
	ADD       r12, r8, r0
# BB#78:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r12, r10, r0
$BB0_79:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r11, ($BB0_81)
	ADD       r6, r8, r0
# BB#80:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r6, r10, r0
$BB0_81:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r6, ($BB0_83)
	NOP    
# BB#82:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r3, r5, r0
$BB0_83:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r12, ($BB0_85)
	NOP    
# BB#84:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r7, r9, r0
$BB0_85:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	FPGT      r5, r7, r3
	bneid     r5, ($BB0_87)
	NOP    
# BB#86:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r8, r10, r0
$BB0_87:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r8, ($BB0_119)
	NOP    
# BB#88:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ORI       r5, r0, 0
	ADDI      r6, r0, 1
	FPLT      r3, r3, r5
	bneid     r3, ($BB0_90)
	NOP    
# BB#89:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADDI      r6, r0, 0
$BB0_90:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_29 Depth=5
	bneid     r6, ($BB0_119)
	NOP    
# BB#91:                                # %bb1.i69
                                        #   in Loop: Header=BB0_29 Depth=5
	LOAD      r3, r4, 7
	LOAD      r4, r4, 6
	SWI       r4, r19, 160568
	ADD       r5, r0, r0
	CMP       r4, r5, r4
	bltid     r4, ($BB0_123)
	NOP    
# BB#92:                                # %bb6.preheader.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r4, r0, r0
	LWI       r5, r19, 160568
	CMP       r4, r4, r5
	bleid     r4, ($BB0_119)
	NOP    
$BB0_93:                                # %bb5.i70
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        #       Parent Loop BB0_151 Depth=3
                                        #         Parent Loop BB0_152 Depth=4
                                        #           Parent Loop BB0_29 Depth=5
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
	SWI       r7, r19, 160600
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r19, 160576
	FPMUL     r21, r20, r7
	LWI       r22, r19, 160580
	FPMUL     r23, r8, r22
	FPRSUB    r6, r12, r6
	LOAD      r24, r3, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r19, 160572
	FPMUL     r25, r23, r7
	FPRSUB    r4, r10, r4
	FPRSUB    r5, r11, r5
	LWI       r26, r19, 160592
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r6
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r3, 9
	LWI       r28, r19, 160596
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
	LWI       r31, r19, 160588
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
	bneid     r23, ($BB0_95)
	NOP    
# BB#94:                                # %bb5.i70
                                        #   in Loop: Header=BB0_93 Depth=6
	ADDI      r21, r0, 0
$BB0_95:                                # %bb5.i70
                                        #   in Loop: Header=BB0_93 Depth=6
	bneid     r21, ($BB0_118)
	NOP    
# BB#96:                                # %bb5.i70
                                        #   in Loop: Header=BB0_93 Depth=6
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_98)
	NOP    
# BB#97:                                # %bb5.i70
                                        #   in Loop: Header=BB0_93 Depth=6
	ADDI      r21, r0, 0
$BB0_98:                                # %bb5.i70
                                        #   in Loop: Header=BB0_93 Depth=6
	bneid     r21, ($BB0_118)
	NOP    
# BB#99:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	FPMUL     r7, r11, r4
	FPMUL     r21, r5, r10
	FPRSUB    r7, r21, r7
	FPMUL     r10, r6, r10
	FPMUL     r4, r12, r4
	FPRSUB    r4, r4, r10
	FPMUL     r5, r5, r12
	FPMUL     r6, r6, r11
	LWI       r10, r19, 160572
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r5, r6, r5
	LWI       r6, r19, 160576
	FPMUL     r6, r4, r6
	FPADD     r10, r10, r11
	LWI       r12, r19, 160580
	FPMUL     r12, r5, r12
	FPADD     r6, r6, r10
	FPADD     r6, r12, r6
	FPMUL     r6, r6, r22
	ADDI      r10, r0, 1
	FPLT      r11, r6, r11
	bneid     r11, ($BB0_101)
	NOP    
# BB#100:                               # %bb73.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	ADDI      r10, r0, 0
$BB0_101:                               # %bb73.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	bneid     r10, ($BB0_118)
	NOP    
# BB#102:                               # %bb94.i55.i
                                        #   in Loop: Header=BB0_93 Depth=6
	FPADD     r6, r6, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r6, r6, r10
	bneid     r6, ($BB0_104)
	NOP    
# BB#103:                               # %bb94.i55.i
                                        #   in Loop: Header=BB0_93 Depth=6
	ADDI      r11, r0, 0
$BB0_104:                               # %bb94.i55.i
                                        #   in Loop: Header=BB0_93 Depth=6
	bneid     r11, ($BB0_118)
	NOP    
# BB#105:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	FPMUL     r6, r7, r9
	ORI       r7, r0, 0
	FPMUL     r4, r4, r8
	FPADD     r6, r6, r7
	LWI       r8, r19, 160600
	FPMUL     r5, r5, r8
	FPADD     r4, r4, r6
	FPADD     r4, r5, r4
	FPMUL     r4, r4, r22
	FPUN      r5, r4, r7
	FPLE      r6, r4, r7
	BITOR     r5, r5, r6
	bneid     r5, ($BB0_107)
	ADDI      r7, r0, 1
# BB#106:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	ADDI      r7, r0, 0
$BB0_107:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	bneid     r7, ($BB0_118)
	NOP    
# BB#108:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	ORI       r5, r0, 981668463
	ADDI      r6, r0, 1
	FPLT      r5, r4, r5
	bneid     r5, ($BB0_110)
	NOP    
# BB#109:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	ADDI      r6, r0, 0
$BB0_110:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	bneid     r6, ($BB0_118)
	NOP    
# BB#111:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	ORI       r5, r0, 1343554297
	ADDI      r6, r0, 1
	FPEQ      r5, r4, r5
	bneid     r5, ($BB0_113)
	NOP    
# BB#112:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	ADDI      r6, r0, 0
$BB0_113:                               # %bb96.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	bneid     r6, ($BB0_118)
	NOP    
# BB#114:                               # %bb2.i.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	LWI       r5, r19, 160584
	SWI       r5, r19, 160480
	LWI        r5, r19, 160480
	FPUN      r6, r5, r4
	FPLE      r5, r5, r4
	BITOR     r5, r6, r5
	bneid     r5, ($BB0_116)
	ADDI      r7, r0, 1
# BB#115:                               # %bb2.i.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	ADDI      r7, r0, 0
$BB0_116:                               # %bb2.i.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
	bneid     r7, ($BB0_118)
	NOP    
# BB#117:                               # %bb3.i.i.i
                                        #   in Loop: Header=BB0_93 Depth=6
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
	SWI       r22, r19, 160620
	ADD       r22, r0, r0
	MULI      r21, r21, 25
	LOAD      r22, r22, 9
	ADD       r21, r22, r21
	LOAD      r22, r21, 6
	LOAD      r23, r21, 5
	LOAD      r21, r21, 4
	SWI        r22, r19, 160524
	SWI        r23, r19, 160528
	SWI        r21, r19, 160532
	SWI        r11, r19, 160512
	SWI        r12, r19, 160516
	SWI        r20, r19, 160520
	SWI        r8, r19, 160500
	SWI        r9, r19, 160504
	SWI        r10, r19, 160508
	SWI        r5, r19, 160488
	SWI        r6, r19, 160492
	SWI        r7, r19, 160496
	SWI        r4, r19, 160484
	ADDI      r4, r0, 1060320051
	SWI       r4, r19, 160624
	ADDI      r4, r0, 1050253722
	SWI       r4, r19, 160628
	LWI       r4, r19, 160524
	SWI       r4, r19, 160604
	LWI       r12, r19, 160528
	SWI       r12, r19, 160608
	LWI       r12, r19, 160532
	SWI       r12, r19, 160612
	LWI       r4, r19, 160484
	SWI       r4, r19, 160584
$BB0_118:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i
                                        #   in Loop: Header=BB0_93 Depth=6
	LWI       r4, r19, 160568
	ADDI      r4, r4, -1
	SWI       r4, r19, 160568
	ADDI      r3, r3, 11
	ADD       r5, r0, r0
	CMP       r4, r5, r4
	bneid     r4, ($BB0_93)
	NOP    
$BB0_119:                               # %bb7.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADD       r3, r0, r0
	LWI       r4, r19, 160564
	CMP       r3, r3, r4
	bltid     r3, ($BB0_126)
	NOP    
# BB#120:                               # %bb9.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r4, r19, 160564
	beqid     r3, ($BB0_122)
	ADDI      r4, r4, 0
$BB0_121:                               # %bb9.i
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        #       Parent Loop BB0_151 Depth=3
                                        #         Parent Loop BB0_152 Depth=4
                                        #           Parent Loop BB0_29 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_121)
	ADDK      r4, r4, r4
$BB0_122:                               # %bb9.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADDI      r3, r19, 56
	LW        r3, r3, r4
	LWI       r4, r19, 160564
	ADDI      r4, r4, -1
	SWI       r4, r19, 160564
	brid      ($BB0_29)
	NOP    
$BB0_123:                               # %bb3.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r5, r19, 160564
	beqid     r4, ($BB0_125)
	ADDI      r5, r5, 0
$BB0_124:                               # %bb3.i
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        #       Parent Loop BB0_151 Depth=3
                                        #         Parent Loop BB0_152 Depth=4
                                        #           Parent Loop BB0_29 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_124)
	ADDK      r5, r5, r5
$BB0_125:                               # %bb3.i
                                        #   in Loop: Header=BB0_29 Depth=5
	ADDI      r4, r19, 56
	LWI       r6, r19, 160564
	ADDI      r6, r6, 1
	SWI       r6, r19, 160564
	ADDI      r6, r3, 1
	ADD       r4, r4, r5
	brid      ($BB0_29)
	SWI       r6, r4, 4
$BB0_126:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_152 Depth=4
	LWI       r3, r19, 160584
	SWI       r3, r19, 160536
	LWI        r3, r19, 160536
	ORI       r4, r0, 1343554297
	FPUN      r5, r3, r4
	FPGE      r4, r3, r4
	BITOR     r4, r5, r4
	bneid     r4, ($BB0_128)
	ADDI      r6, r0, 1
# BB#127:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_152 Depth=4
	ADDI      r6, r0, 0
$BB0_128:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_152 Depth=4
	LWI       r4, r19, 160632
	bneid     r6, ($BB0_152)
	ADDI      r4, r4, 1
# BB#129:                               # %invcont78
                                        #   in Loop: Header=BB0_151 Depth=3
	LWI       r12, r19, 160612
	SWI       r12, r19, 160548
	LWI       r12, r19, 160608
	SWI       r12, r19, 160544
	LWI        r5, r19, 160548
	LWI        r6, r19, 160544
	LWI       r7, r19, 160604
	SWI       r7, r19, 160540
	LWI        r7, r19, 160540
	FPADD     r8, r5, r6
	FPADD     r8, r8, r7
	ORI       r9, r0, 1077936128
	FPUN      r10, r8, r9
	FPLE      r8, r8, r9
	BITOR     r8, r10, r8
	bneid     r8, ($BB0_131)
	ADDI      r9, r0, 1
# BB#130:                               # %invcont78
                                        #   in Loop: Header=BB0_151 Depth=3
	ADDI      r9, r0, 0
$BB0_131:                               # %invcont78
                                        #   in Loop: Header=BB0_151 Depth=3
	bneid     r9, ($BB0_133)
	NOP    
# BB#132:                               # %bb79
                                        #   in Loop: Header=BB0_151 Depth=3
	ORI       r8, r0, 981668463
	FPMUL     r5, r5, r8
	FPMUL     r6, r6, r8
	FPMUL     r7, r7, r8
$BB0_133:                               # %invcont92
                                        #   in Loop: Header=BB0_151 Depth=3
	LWI       r8, r19, 160580
	FPMUL     r8, r8, r3
	LWI       r9, r19, 160576
	FPMUL     r9, r9, r3
	LWI       r10, r19, 160572
	FPMUL     r3, r10, r3
	LWI       r10, r19, 160588
	FPADD     r8, r10, r8
	LWI       r10, r19, 160596
	FPADD     r9, r9, r10
	LWI       r10, r19, 160592
	FPADD     r3, r3, r10
	SWI        r8, r19, 160560
	SWI        r9, r19, 160556
	SWI        r3, r19, 160552
	LWI       r10, r19, 160556
	SWI       r10, r19, 160664
	LWI       r11, r19, 160552
	SWI       r11, r19, 160668
	LWI       r12, r19, 160560
	SWI       r12, r19, 160684
	ADDI      r12, r0, 1
	LWI       r20, r19, 160632
	CMP       r12, r12, r20
	SWI       r11, r19, 160656
	SWI       r10, r19, 160660
	bltid     r12, ($BB0_151)
	NOP    
# BB#134:                               # %bb93
                                        #   in Loop: Header=BB0_149 Depth=2
	ADDI      r10, r0, 2
	ANDI      r11, r10, 31
	LWI       r12, r19, 160652
	beqid     r11, ($BB0_136)
	ADDI      r12, r12, 0
$BB0_135:                               # %bb93
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r11, r11, -1
	bneid     r11, ($BB0_135)
	ADDK      r12, r12, r12
$BB0_136:                               # %bb93
                                        #   in Loop: Header=BB0_149 Depth=2
	ANDI      r11, r10, 31
	LWI       r20, r19, 160652
	beqid     r11, ($BB0_138)
	ADDI      r20, r20, 0
$BB0_137:                               # %bb93
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r11, r11, -1
	bneid     r11, ($BB0_137)
	ADDK      r20, r20, r20
$BB0_138:                               # %bb93
                                        #   in Loop: Header=BB0_149 Depth=2
	ANDI      r11, r10, 31
	LWI       r21, r19, 160652
	beqid     r11, ($BB0_140)
	ADDI      r21, r21, 0
$BB0_139:                               # %bb93
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r11, r11, -1
	bneid     r11, ($BB0_139)
	ADDK      r21, r21, r21
$BB0_140:                               # %bb93
                                        #   in Loop: Header=BB0_149 Depth=2
	LWI       r11, r19, 160700
	SW         r3, r11, r20
	ANDI      r3, r10, 31
	LWI       r11, r19, 160652
	beqid     r3, ($BB0_142)
	ADDI      r11, r11, 0
$BB0_141:                               # %bb93
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_141)
	ADDK      r11, r11, r11
$BB0_142:                               # %bb93
                                        #   in Loop: Header=BB0_149 Depth=2
	LWI       r3, r19, 160700
	ADD       r3, r3, r12
	SWI        r9, r3, 4
	ANDI      r3, r10, 31
	LWI       r9, r19, 160652
	beqid     r3, ($BB0_144)
	ADDI      r9, r9, 0
$BB0_143:                               # %bb93
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_143)
	ADDK      r9, r9, r9
$BB0_144:                               # %bb93
                                        #   in Loop: Header=BB0_149 Depth=2
	LWI       r3, r19, 160700
	ADD       r3, r3, r21
	SWI        r8, r3, 8
	ANDI      r3, r10, 31
	LWI       r8, r19, 160652
	beqid     r3, ($BB0_146)
	ADDI      r8, r8, 0
$BB0_145:                               # %bb93
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_145)
	ADDK      r8, r8, r8
$BB0_146:                               # %bb93
                                        #   in Loop: Header=BB0_149 Depth=2
	LWI       r3, r19, 160700
	ADD       r3, r3, r11
	ADDI      r10, r0, 5
	LWI       r11, r19, 160696
	SWI        r11, r3, 12
	ANDI      r3, r10, 31
	LWI       r10, r19, 160704
	beqid     r3, ($BB0_148)
	ADDI      r10, r10, 0
$BB0_147:                               # %bb93
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_147)
	ADDK      r10, r10, r10
$BB0_148:                               # %bb93
                                        #   in Loop: Header=BB0_149 Depth=2
	LWI       r3, r19, 160700
	ADD       r9, r3, r9
	ADD       r8, r3, r8
	LWI       r11, r19, 160692
	SWI        r11, r9, 16
	LWI       r9, r19, 160704
	ADDI      r9, r9, 1
	SWI       r9, r19, 160704
	ADD       r9, r0, r0
	ADD       r3, r3, r10
	LWI       r10, r19, 160688
	SWI        r10, r8, 20
	sbi       r9, r3, 24
	LWI       r3, r19, 160668
	SWI       r3, r19, 160656
	LWI       r3, r19, 160664
	SWI       r3, r19, 160660
$BB0_149:                               # %bb103.outer.outer
                                        #   Parent Loop BB0_154 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_151 Depth 3
                                        #         Child Loop BB0_152 Depth 4
                                        #           Child Loop BB0_29 Depth 5
                                        #             Child Loop BB0_121 Depth 6
                                        #             Child Loop BB0_93 Depth 6
                                        #             Child Loop BB0_124 Depth 6
                                        #             Child Loop BB0_30 Depth 6
                                        #           Child Loop BB0_5 Depth 5
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_145 Depth 3
                                        #       Child Loop BB0_143 Depth 3
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_139 Depth 3
                                        #       Child Loop BB0_137 Depth 3
                                        #       Child Loop BB0_135 Depth 3
                                        #       Child Loop BB0_150 Depth 3
	ADDI      r3, r0, 3
	ANDI      r3, r3, 31
	LWI       r8, r19, 160704
	ADDI      r8, r8, 0
	SWI       r8, r19, 160652
	beqid     r3, ($BB0_151)
	NOP    
$BB0_150:                               # %bb103.outer.outer
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	LWI       r8, r19, 160652
	ADDK      r8, r8, r8
	SWI       r8, r19, 160652
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_150)
	NOP    
$BB0_151:                               # %bb103.outer
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_152 Depth 4
                                        #           Child Loop BB0_29 Depth 5
                                        #             Child Loop BB0_121 Depth 6
                                        #             Child Loop BB0_93 Depth 6
                                        #             Child Loop BB0_124 Depth 6
                                        #             Child Loop BB0_30 Depth 6
                                        #           Child Loop BB0_5 Depth 5
	LWI       r3, r19, 160684
	SWI       r3, r19, 160232
	LWI       r3, r19, 160656
	SWI       r3, r19, 160248
	LWI       r3, r19, 160664
	SWI       r3, r19, 160236
	LWI       r3, r19, 160668
	SWI       r3, r19, 160240
	LWI       r3, r19, 160660
	SWI       r3, r19, 160244
	ORI       r3, r0, 1060320051
	FPMUL     r5, r5, r3
	SWI       r5, r19, 160696
	FPMUL     r5, r6, r3
	SWI       r5, r19, 160692
	FPMUL     r5, r7, r3
	SWI       r5, r19, 160688
	LWI        r5, r19, 160232
	SWI       r5, r19, 160588
	LWI        r5, r19, 160248
	SWI       r5, r19, 160644
	LWI        r5, r19, 160236
	SWI       r5, r19, 160648
	LWI        r5, r19, 160240
	SWI       r5, r19, 160592
	LWI        r5, r19, 160244
	SWI       r5, r19, 160596
$BB0_152:                               # %bb103
                                        #   Parent Loop BB0_154 Depth=1
                                        #     Parent Loop BB0_149 Depth=2
                                        #       Parent Loop BB0_151 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_29 Depth 5
                                        #             Child Loop BB0_121 Depth 6
                                        #             Child Loop BB0_93 Depth 6
                                        #             Child Loop BB0_124 Depth 6
                                        #             Child Loop BB0_30 Depth 6
                                        #           Child Loop BB0_5 Depth 5
	SWI       r4, r19, 160632
	ADDI      r5, r0, 3
	CMP       r4, r5, r4
	bltid     r4, ($BB0_5)
	NOP    
# BB#153:                               # %bb105
                                        #   in Loop: Header=BB0_154 Depth=1
	LWI       r4, r19, 160708
	ADDI      r4, r4, -1
	SWI       r4, r19, 160708
	ADD       r5, r0, r0
	CMP       r4, r5, r4
	beqid     r4, ($BB0_155)
	NOP    
$BB0_154:                               # %bb103.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_149 Depth 2
                                        #       Child Loop BB0_151 Depth 3
                                        #         Child Loop BB0_152 Depth 4
                                        #           Child Loop BB0_29 Depth 5
                                        #             Child Loop BB0_121 Depth 6
                                        #             Child Loop BB0_93 Depth 6
                                        #             Child Loop BB0_124 Depth 6
                                        #             Child Loop BB0_30 Depth 6
                                        #           Child Loop BB0_5 Depth 5
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_145 Depth 3
                                        #       Child Loop BB0_143 Depth 3
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_139 Depth 3
                                        #       Child Loop BB0_137 Depth 3
                                        #       Child Loop BB0_135 Depth 3
                                        #       Child Loop BB0_150 Depth 3
	ORI       r5, r0, 0
	ADD       r4, r0, r0
	ADD       r6, r5, r0
	brid      ($BB0_149)
	ADD       r7, r5, r0
$BB0_155:                               # %invcont109
	LWI       r3, r19, 160712
	FPCONV    r4, r3
	SWI       r4, r19, 160668
	LWI       r4, r19, 160772
	FPCONV    r5, r4
	SWI       r5, r19, 160684
	ORI       r5, r0, -1073741824
	MUL       r3, r4, r3
	SWI       r3, r19, 160708
	ATOMIC_INC r4, 0
	CMP       r3, r4, r3
	bleid     r3, ($BB0_413)
	NOP    
# BB#156:                               # %invcont118.lr.ph
	LWI       r3, r19, 160668
	FPDIV     r3, r3, r5
	SWI       r3, r19, 160688
	LWI       r3, r19, 160684
	FPDIV     r3, r3, r5
	SWI       r3, r19, 160692
	LWI       r3, r19, 160676
	SWI        r3, r19, 160256
	LWI       r3, r19, 160672
	SWI        r3, r19, 160252
	ADD       r3, r0, r0
	SWI       r3, r19, 160696
$BB0_157:                               # %invcont118
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_386 Depth 2
                                        #       Child Loop BB0_374 Depth 3
                                        #       Child Loop BB0_387 Depth 3
                                        #       Child Loop BB0_383 Depth 3
                                        #       Child Loop BB0_381 Depth 3
                                        #       Child Loop BB0_379 Depth 3
                                        #     Child Loop BB0_267 Depth 2
                                        #       Child Loop BB0_268 Depth 3
                                        #       Child Loop BB0_359 Depth 3
                                        #       Child Loop BB0_331 Depth 3
                                        #       Child Loop BB0_362 Depth 3
                                        #     Child Loop BB0_158 Depth 2
                                        #       Child Loop BB0_159 Depth 3
                                        #       Child Loop BB0_250 Depth 3
                                        #       Child Loop BB0_222 Depth 3
                                        #       Child Loop BB0_253 Depth 3
	LWI       r3, r19, 160712
	DIV       r5, r3, r4
	MUL       r3, r5, r3
	SWI       r3, r19, 160656
	RSUB      r4, r3, r4
	SWI       r4, r19, 160660
	FPCONV    r3, r5
	FPCONV    r4, r4
	LWI       r5, r19, 160692
	FPADD     r3, r3, r5
	ORI       r5, r0, 1056964608
	LWI       r6, r19, 160688
	FPADD     r4, r4, r6
	FPADD     r3, r3, r5
	FPADD     r4, r4, r5
	FPADD     r3, r3, r3
	FPADD     r4, r4, r4
	LWI       r5, r19, 160684
	FPDIV     r3, r3, r5
	LWI       r5, r19, 160668
	FPDIV     r4, r4, r5
	LWI       r5, r19, 160760
	FPMUL     r5, r5, r3
	LWI       r6, r19, 160748
	FPMUL     r6, r6, r4
	LWI       r7, r19, 160756
	FPMUL     r7, r7, r3
	LWI       r8, r19, 160744
	FPMUL     r8, r8, r4
	LWI       r9, r19, 160752
	FPMUL     r4, r9, r4
	LWI       r9, r19, 160764
	FPMUL     r3, r9, r3
	FPADD     r5, r5, r6
	FPADD     r6, r7, r8
	LWI       r7, r19, 160736
	FPADD     r5, r5, r7
	LWI       r7, r19, 160732
	FPADD     r6, r6, r7
	FPADD     r4, r4, r3
	LWI       r3, r19, 160740
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
	SWI        r4, r19, 160268
	FPDIV     r4, r5, r3
	SWI       r4, r19, 160576
	FPDIV     r3, r6, r3
	SWI       r3, r19, 160580
	LWI       r5, r19, 160268
	LWI       r6, r19, 160696
	BITOR     r5, r6, r5
	SWI       r5, r19, 160664
	SWI        r4, r19, 160264
	SWI        r3, r19, 160260
	SWI       r5, r19, 160272
	ADD       r4, r0, r0
	SWI       r4, r19, 160620
	LWI        r3, r19, 160272
	SWI       r3, r19, 160584
	ADDI      r3, r0, -1
	SWI       r3, r19, 160568
	ADDI      r3, r0, 1343554297
	SWI       r3, r19, 160564
	SWI       r4, r19, 160608
	SWI       r4, r19, 160612
	SWI       r4, r19, 160592
	SWI       r4, r19, 160596
	SWI       r4, r19, 160600
	SWI       r4, r19, 160604
	SWI       r4, r19, 160624
	SWI       r4, r19, 160628
	SWI       r4, r19, 160632
	SWI       r4, r19, 160636
	SWI       r4, r19, 160640
$BB0_158:                               # %bb.i146
                                        #   Parent Loop BB0_157 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_159 Depth 3
                                        #       Child Loop BB0_250 Depth 3
                                        #       Child Loop BB0_222 Depth 3
                                        #       Child Loop BB0_253 Depth 3
	ADDI      r3, r0, 3
	ANDI      r3, r3, 31
	beqid     r3, ($BB0_160)
	ADDI      r4, r4, 0
$BB0_159:                               # %bb.i146
                                        #   Parent Loop BB0_157 Depth=1
                                        #     Parent Loop BB0_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_159)
	ADDK      r4, r4, r4
$BB0_160:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	LWI       r3, r19, 160616
	ADD       r3, r4, r3
	LOAD      r4, r3, 2
	LOAD      r5, r3, 1
	LOAD      r6, r3, 0
	LOAD      r7, r3, 5
	LOAD      r8, r3, 4
	LOAD      r9, r3, 3
	LWI       r10, r19, 160672
	FPRSUB    r6, r10, r6
	FPRSUB    r9, r10, r9
	LWI       r10, r19, 160580
	FPDIV     r6, r6, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r6, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_162)
	ADD       r20, r11, r0
# BB#161:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r20, r12, r0
$BB0_162:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r20, ($BB0_164)
	ADD       r10, r9, r0
# BB#163:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r10, r6, r0
$BB0_164:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_166)
	NOP    
# BB#165:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r6, r9, r0
$BB0_166:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r6, r9
	bneid     r20, ($BB0_168)
	ADD       r23, r11, r0
# BB#167:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r23, r12, r0
$BB0_168:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r22, ($BB0_170)
	ADD       r20, r11, r0
# BB#169:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r20, r12, r0
$BB0_170:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r23, ($BB0_172)
	NOP    
# BB#171:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r10, r21, r0
$BB0_172:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r20, ($BB0_174)
	NOP    
# BB#173:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r6, r9, r0
$BB0_174:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	FPGT      r9, r10, r6
	bneid     r9, ($BB0_176)
	NOP    
# BB#175:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r11, r12, r0
$BB0_176:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r11, ($BB0_248)
	NOP    
# BB#177:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r6, r9
	bneid     r9, ($BB0_179)
	NOP    
# BB#178:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	ADDI      r11, r0, 0
$BB0_179:                               # %bb.i146
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r11, ($BB0_248)
	NOP    
# BB#180:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	LWI       r9, r19, 160676
	FPRSUB    r5, r9, r5
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 160576
	FPDIV     r5, r5, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r5, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_182)
	ADD       r20, r11, r0
# BB#181:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r20, r12, r0
$BB0_182:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r20, ($BB0_184)
	ADD       r9, r8, r0
# BB#183:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r9, r5, r0
$BB0_184:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r20, ($BB0_186)
	NOP    
# BB#185:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r5, r8, r0
$BB0_186:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	FPGT      r8, r9, r10
	FPLT      r20, r5, r6
	bneid     r8, ($BB0_188)
	ADD       r21, r11, r0
# BB#187:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r21, r12, r0
$BB0_188:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r20, ($BB0_190)
	ADD       r8, r11, r0
# BB#189:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r8, r12, r0
$BB0_190:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r21, ($BB0_192)
	NOP    
# BB#191:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r9, r10, r0
$BB0_192:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r8, ($BB0_194)
	NOP    
# BB#193:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r5, r6, r0
$BB0_194:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	FPGT      r6, r9, r5
	bneid     r6, ($BB0_196)
	NOP    
# BB#195:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r11, r12, r0
$BB0_196:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r11, ($BB0_248)
	NOP    
# BB#197:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	ORI       r6, r0, 0
	ADDI      r8, r0, 1
	FPLT      r6, r5, r6
	bneid     r6, ($BB0_199)
	NOP    
# BB#198:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	ADDI      r8, r0, 0
$BB0_199:                               # %bb29.i.i152
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r8, ($BB0_248)
	NOP    
# BB#200:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	LWI       r6, r19, 160680
	FPRSUB    r4, r6, r4
	FPRSUB    r6, r6, r7
	LWI       r7, r19, 160584
	FPDIV     r4, r4, r7
	FPDIV     r6, r6, r7
	FPGT      r7, r4, r6
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_202)
	ADD       r11, r8, r0
# BB#201:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r11, r10, r0
$BB0_202:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r11, ($BB0_204)
	ADD       r7, r6, r0
# BB#203:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r7, r4, r0
$BB0_204:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r11, ($BB0_206)
	NOP    
# BB#205:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r4, r6, r0
$BB0_206:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	FPGT      r6, r7, r9
	FPLT      r11, r4, r5
	bneid     r6, ($BB0_208)
	ADD       r12, r8, r0
# BB#207:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r12, r10, r0
$BB0_208:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r11, ($BB0_210)
	ADD       r6, r8, r0
# BB#209:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r6, r10, r0
$BB0_210:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r6, ($BB0_212)
	NOP    
# BB#211:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r4, r5, r0
$BB0_212:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r12, ($BB0_214)
	NOP    
# BB#213:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r7, r9, r0
$BB0_214:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	FPGT      r5, r7, r4
	bneid     r5, ($BB0_216)
	NOP    
# BB#215:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r8, r10, r0
$BB0_216:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r8, ($BB0_248)
	NOP    
# BB#217:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	ORI       r5, r0, 0
	ADDI      r6, r0, 1
	FPLT      r4, r4, r5
	bneid     r4, ($BB0_219)
	NOP    
# BB#218:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	ADDI      r6, r0, 0
$BB0_219:                               # %bb62.i.i158
                                        #   in Loop: Header=BB0_158 Depth=2
	bneid     r6, ($BB0_248)
	NOP    
# BB#220:                               # %bb1.i159
                                        #   in Loop: Header=BB0_158 Depth=2
	LOAD      r4, r3, 7
	LOAD      r3, r3, 6
	SWI       r3, r19, 160572
	ADD       r5, r0, r0
	CMP       r3, r5, r3
	bltid     r3, ($BB0_252)
	NOP    
# BB#221:                               # %bb6.preheader.i160
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r3, r0, r0
	LWI       r5, r19, 160572
	CMP       r3, r3, r5
	bleid     r3, ($BB0_248)
	NOP    
$BB0_222:                               # %bb5.i173
                                        #   Parent Loop BB0_157 Depth=1
                                        #     Parent Loop BB0_158 Depth=2
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
	SWI       r7, r19, 160588
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r19, 160576
	FPMUL     r21, r20, r7
	LWI       r22, r19, 160584
	FPMUL     r23, r8, r22
	FPRSUB    r6, r12, r6
	LOAD      r24, r4, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r19, 160580
	FPMUL     r25, r23, r7
	FPRSUB    r3, r10, r3
	FPRSUB    r5, r11, r5
	LWI       r26, r19, 160672
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r6
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r4, 9
	LWI       r28, r19, 160676
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
	LWI       r31, r19, 160680
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
	bneid     r23, ($BB0_224)
	NOP    
# BB#223:                               # %bb5.i173
                                        #   in Loop: Header=BB0_222 Depth=3
	ADDI      r21, r0, 0
$BB0_224:                               # %bb5.i173
                                        #   in Loop: Header=BB0_222 Depth=3
	bneid     r21, ($BB0_247)
	NOP    
# BB#225:                               # %bb5.i173
                                        #   in Loop: Header=BB0_222 Depth=3
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_227)
	NOP    
# BB#226:                               # %bb5.i173
                                        #   in Loop: Header=BB0_222 Depth=3
	ADDI      r21, r0, 0
$BB0_227:                               # %bb5.i173
                                        #   in Loop: Header=BB0_222 Depth=3
	bneid     r21, ($BB0_247)
	NOP    
# BB#228:                               # %bb73.i.i174
                                        #   in Loop: Header=BB0_222 Depth=3
	FPMUL     r7, r11, r3
	FPMUL     r21, r5, r10
	FPRSUB    r7, r21, r7
	FPMUL     r10, r6, r10
	FPMUL     r3, r12, r3
	FPRSUB    r3, r3, r10
	FPMUL     r5, r5, r12
	FPMUL     r6, r6, r11
	LWI       r10, r19, 160580
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r5, r6, r5
	LWI       r6, r19, 160576
	FPMUL     r6, r3, r6
	FPADD     r10, r10, r11
	LWI       r12, r19, 160584
	FPMUL     r12, r5, r12
	FPADD     r6, r6, r10
	FPADD     r6, r12, r6
	FPMUL     r6, r6, r22
	ADDI      r10, r0, 1
	FPLT      r11, r6, r11
	bneid     r11, ($BB0_230)
	NOP    
# BB#229:                               # %bb73.i.i174
                                        #   in Loop: Header=BB0_222 Depth=3
	ADDI      r10, r0, 0
$BB0_230:                               # %bb73.i.i174
                                        #   in Loop: Header=BB0_222 Depth=3
	bneid     r10, ($BB0_247)
	NOP    
# BB#231:                               # %bb94.i55.i175
                                        #   in Loop: Header=BB0_222 Depth=3
	FPADD     r6, r6, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r6, r6, r10
	bneid     r6, ($BB0_233)
	NOP    
# BB#232:                               # %bb94.i55.i175
                                        #   in Loop: Header=BB0_222 Depth=3
	ADDI      r11, r0, 0
$BB0_233:                               # %bb94.i55.i175
                                        #   in Loop: Header=BB0_222 Depth=3
	bneid     r11, ($BB0_247)
	NOP    
# BB#234:                               # %bb96.i.i178
                                        #   in Loop: Header=BB0_222 Depth=3
	FPMUL     r6, r7, r9
	ORI       r7, r0, 0
	FPMUL     r3, r3, r8
	FPADD     r6, r6, r7
	LWI       r8, r19, 160588
	FPMUL     r5, r5, r8
	FPADD     r3, r3, r6
	FPADD     r3, r5, r3
	FPMUL     r3, r3, r22
	FPUN      r5, r3, r7
	FPLE      r6, r3, r7
	BITOR     r5, r5, r6
	bneid     r5, ($BB0_236)
	ADDI      r7, r0, 1
# BB#235:                               # %bb96.i.i178
                                        #   in Loop: Header=BB0_222 Depth=3
	ADDI      r7, r0, 0
$BB0_236:                               # %bb96.i.i178
                                        #   in Loop: Header=BB0_222 Depth=3
	bneid     r7, ($BB0_247)
	NOP    
# BB#237:                               # %bb96.i.i178
                                        #   in Loop: Header=BB0_222 Depth=3
	ORI       r5, r0, 981668463
	ADDI      r6, r0, 1
	FPLT      r5, r3, r5
	bneid     r5, ($BB0_239)
	NOP    
# BB#238:                               # %bb96.i.i178
                                        #   in Loop: Header=BB0_222 Depth=3
	ADDI      r6, r0, 0
$BB0_239:                               # %bb96.i.i178
                                        #   in Loop: Header=BB0_222 Depth=3
	bneid     r6, ($BB0_247)
	NOP    
# BB#240:                               # %bb96.i.i178
                                        #   in Loop: Header=BB0_222 Depth=3
	ORI       r5, r0, 1343554297
	ADDI      r6, r0, 1
	FPEQ      r5, r3, r5
	bneid     r5, ($BB0_242)
	NOP    
# BB#241:                               # %bb96.i.i178
                                        #   in Loop: Header=BB0_222 Depth=3
	ADDI      r6, r0, 0
$BB0_242:                               # %bb96.i.i178
                                        #   in Loop: Header=BB0_222 Depth=3
	bneid     r6, ($BB0_247)
	NOP    
# BB#243:                               # %bb2.i.i.i179
                                        #   in Loop: Header=BB0_222 Depth=3
	LWI       r5, r19, 160564
	SWI       r5, r19, 160276
	LWI        r5, r19, 160276
	FPUN      r6, r5, r3
	FPLE      r5, r5, r3
	BITOR     r5, r6, r5
	bneid     r5, ($BB0_245)
	ADDI      r7, r0, 1
# BB#244:                               # %bb2.i.i.i179
                                        #   in Loop: Header=BB0_222 Depth=3
	ADDI      r7, r0, 0
$BB0_245:                               # %bb2.i.i.i179
                                        #   in Loop: Header=BB0_222 Depth=3
	bneid     r7, ($BB0_247)
	NOP    
# BB#246:                               # %bb3.i.i.i230
                                        #   in Loop: Header=BB0_222 Depth=3
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
	SWI       r22, r19, 160648
	ADD       r22, r0, r0
	MULI      r21, r21, 25
	LOAD      r22, r22, 9
	ADD       r21, r22, r21
	LOAD      r22, r21, 6
	LOAD      r23, r21, 5
	LOAD      r21, r21, 4
	SWI        r22, r19, 160320
	SWI        r23, r19, 160324
	SWI        r21, r19, 160328
	SWI        r11, r19, 160308
	SWI        r12, r19, 160312
	SWI        r20, r19, 160316
	SWI        r8, r19, 160296
	SWI        r9, r19, 160300
	SWI        r10, r19, 160304
	SWI        r5, r19, 160284
	SWI        r6, r19, 160288
	SWI        r7, r19, 160292
	SWI        r3, r19, 160280
	ADDI      r3, r0, 1060320051
	SWI       r3, r19, 160644
	ADDI      r3, r0, 1050253722
	SWI       r3, r19, 160652
	LWI       r3, r19, 160320
	SWI       r3, r19, 160620
	LWI       r5, r19, 160324
	SWI       r5, r19, 160608
	LWI       r5, r19, 160328
	SWI       r5, r19, 160612
	LWI       r5, r19, 160308
	SWI       r5, r19, 160592
	LWI       r5, r19, 160312
	SWI       r5, r19, 160596
	LWI       r5, r19, 160316
	SWI       r5, r19, 160600
	LWI       r5, r19, 160296
	SWI       r5, r19, 160604
	LWI       r5, r19, 160300
	SWI       r5, r19, 160624
	LWI       r5, r19, 160304
	SWI       r5, r19, 160628
	LWI       r5, r19, 160284
	SWI       r5, r19, 160632
	LWI       r5, r19, 160288
	SWI       r5, r19, 160636
	LWI       r5, r19, 160292
	SWI       r5, r19, 160640
	LWI       r3, r19, 160280
	SWI       r3, r19, 160564
$BB0_247:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i232
                                        #   in Loop: Header=BB0_222 Depth=3
	LWI       r3, r19, 160572
	ADDI      r3, r3, -1
	SWI       r3, r19, 160572
	ADDI      r4, r4, 11
	ADD       r5, r0, r0
	CMP       r3, r5, r3
	bneid     r3, ($BB0_222)
	NOP    
$BB0_248:                               # %bb7.i233
                                        #   in Loop: Header=BB0_158 Depth=2
	ADD       r4, r0, r0
	LWI       r3, r19, 160568
	CMP       r4, r4, r3
	bltid     r4, ($BB0_255)
	NOP    
# BB#249:                               # %bb9.i234
                                        #   in Loop: Header=BB0_158 Depth=2
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r3, r19, 160568
	beqid     r4, ($BB0_251)
	ADDI      r3, r3, 0
$BB0_250:                               # %bb9.i234
                                        #   Parent Loop BB0_157 Depth=1
                                        #     Parent Loop BB0_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_250)
	ADDK      r3, r3, r3
$BB0_251:                               # %bb9.i234
                                        #   in Loop: Header=BB0_158 Depth=2
	ADDI      r4, r19, 56
	LW        r4, r4, r3
	LWI       r3, r19, 160568
	ADDI      r3, r3, -1
	SWI       r3, r19, 160568
	brid      ($BB0_158)
	NOP    
$BB0_252:                               # %bb3.i162
                                        #   in Loop: Header=BB0_158 Depth=2
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r5, r19, 160568
	beqid     r3, ($BB0_254)
	ADDI      r5, r5, 0
$BB0_253:                               # %bb3.i162
                                        #   Parent Loop BB0_157 Depth=1
                                        #     Parent Loop BB0_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_253)
	ADDK      r5, r5, r5
$BB0_254:                               # %bb3.i162
                                        #   in Loop: Header=BB0_158 Depth=2
	ADDI      r3, r19, 56
	LWI       r6, r19, 160568
	ADDI      r6, r6, 1
	SWI       r6, r19, 160568
	ADDI      r6, r4, 1
	ADD       r3, r3, r5
	brid      ($BB0_158)
	SWI       r6, r3, 4
$BB0_255:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit235
                                        #   in Loop: Header=BB0_157 Depth=1
	LWI       r4, r19, 160564
	SWI       r4, r19, 160368
	LWI       r5, r19, 160640
	SWI       r5, r19, 160364
	LWI       r5, r19, 160636
	SWI       r5, r19, 160360
	LWI       r5, r19, 160632
	SWI       r5, r19, 160356
	LWI       r5, r19, 160628
	SWI       r5, r19, 160352
	LWI       r5, r19, 160624
	SWI       r5, r19, 160348
	LWI       r5, r19, 160604
	SWI       r5, r19, 160344
	LWI       r5, r19, 160600
	SWI       r5, r19, 160340
	LWI       r5, r19, 160596
	SWI       r5, r19, 160336
	LWI       r5, r19, 160592
	SWI       r5, r19, 160332
	LWI        r4, r19, 160368
	SWI       r4, r19, 160624
	ORI       r3, r0, 1343554297
	LWI        r5, r19, 160364
	LWI        r6, r19, 160360
	LWI        r7, r19, 160356
	LWI        r8, r19, 160352
	LWI        r9, r19, 160348
	LWI        r10, r19, 160344
	LWI        r11, r19, 160340
	LWI        r12, r19, 160336
	LWI        r20, r19, 160332
	ADDI      r21, r0, 1
	FPLT      r4, r4, r3
	bneid     r4, ($BB0_257)
	NOP    
# BB#256:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit235
                                        #   in Loop: Header=BB0_157 Depth=1
	ADDI      r21, r0, 0
$BB0_257:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit235
                                        #   in Loop: Header=BB0_157 Depth=1
	bneid     r21, ($BB0_259)
	NOP    
# BB#258:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit235.invcont123_crit_edge
                                        #   in Loop: Header=BB0_157 Depth=1
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
	LWI       r8, r19, 160624
	LWI       r7, r19, 160580
	FPMUL     r7, r7, r8
	LWI       r9, r19, 160576
	FPMUL     r8, r9, r8
	FPADD     r4, r6, r4
	FPMUL     r5, r5, r5
	ADD       r6, r0, r0
	LWI       r9, r19, 160672
	FPADD     r7, r7, r9
	SWI       r7, r19, 160592
	LWI       r7, r19, 160676
	FPADD     r7, r8, r7
	SWI       r7, r19, 160596
	FPADD     r4, r4, r5
	SWI       r4, r19, 160628
	ORI       r4, r0, 1057988018
	ADDI      r5, r0, 1060806590
	ADDI      r7, r0, 1065151889
	brid      ($BB0_372)
	NOP    
$BB0_259:                               # %bb.i263
                                        #   in Loop: Header=BB0_157 Depth=1
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
	LWI       r6, r19, 160664
	SWI       r6, r19, 160376
	FPMUL     r6, r9, r9
	FPMUL     r7, r4, r4
	LWI        r3, r19, 160376
	LWI       r8, r19, 160580
	FPMUL     r10, r8, r8
	LWI       r11, r19, 160576
	FPMUL     r12, r11, r11
	FPADD     r6, r6, r7
	FPMUL     r7, r5, r5
	FPADD     r6, r6, r7
	SWI       r6, r19, 160628
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
	LWI       r12, r19, 160768
	SWI       r12, r19, 160388
	LWI       r12, r19, 160624
	FPMUL     r3, r3, r12
	FPMUL     r11, r11, r12
	FPMUL     r8, r8, r12
	FPMUL     r6, r6, r5
	FPADD     r7, r7, r10
	FPADD     r6, r6, r7
	LWI       r7, r19, 160644
	SWI       r7, r19, 160372
	LWI        r7, r19, 160388
	SWI        r3, r19, 160392
	SWI        r11, r19, 160384
	SWI        r8, r19, 160380
	LWI        r10, r19, 160372
	SWI       r10, r19, 160632
	FPUN      r10, r6, r20
	FPLE      r6, r6, r20
	BITOR     r6, r10, r6
	bneid     r6, ($BB0_261)
	ADDI      r12, r0, 1
# BB#260:                               # %bb.i263
                                        #   in Loop: Header=BB0_157 Depth=1
	ADDI      r12, r0, 0
$BB0_261:                               # %bb.i263
                                        #   in Loop: Header=BB0_157 Depth=1
	bneid     r12, ($BB0_263)
	NOP    
# BB#262:                               # %bb46.i
                                        #   in Loop: Header=BB0_157 Depth=1
	FPNEG     r9, r9
	FPNEG     r4, r4
	FPNEG     r5, r5
$BB0_263:                               # %bb53.i
                                        #   in Loop: Header=BB0_157 Depth=1
	LWI       r6, r19, 160672
	FPADD     r6, r8, r6
	SWI       r6, r19, 160592
	LWI       r8, r19, 160676
	FPADD     r8, r11, r8
	SWI       r8, r19, 160596
	FPADD     r7, r7, r3
	SWI       r7, r19, 160600
	LWI       r3, r19, 160720
	FPRSUB    r6, r6, r3
	LWI       r3, r19, 160724
	FPRSUB    r3, r8, r3
	LWI       r8, r19, 160728
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
	SWI       r6, r19, 160576
	FPDIV     r3, r3, r10
	SWI       r3, r19, 160580
	ORI       r11, r0, 0
	FPMUL     r6, r6, r9
	FPDIV     r7, r7, r10
	SWI       r7, r19, 160588
	FPMUL     r4, r3, r4
	FPADD     r6, r6, r11
	FPMUL     r5, r7, r5
	FPADD     r4, r4, r6
	FPADD     r4, r5, r4
	SWI       r4, r19, 160640
	FPUN      r5, r4, r11
	FPLE      r4, r4, r11
	BITOR     r4, r5, r4
	bneid     r4, ($BB0_265)
	ADDI      r6, r0, 1
# BB#264:                               # %bb53.i
                                        #   in Loop: Header=BB0_157 Depth=1
	ADDI      r6, r0, 0
$BB0_265:                               # %bb53.i
                                        #   in Loop: Header=BB0_157 Depth=1
	bneid     r6, ($BB0_371)
	NOP    
# BB#266:                               # %bb88.i
                                        #   in Loop: Header=BB0_157 Depth=1
	ADD       r4, r0, r0
	ADDI      r5, r0, -1
	SWI       r5, r19, 160568
	FPINVSQRT r5, r8
	SWI       r5, r19, 160636
$BB0_267:                               # %bb.i314
                                        #   Parent Loop BB0_157 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_268 Depth 3
                                        #       Child Loop BB0_359 Depth 3
                                        #       Child Loop BB0_331 Depth 3
                                        #       Child Loop BB0_362 Depth 3
	ADDI      r5, r0, 3
	ANDI      r5, r5, 31
	beqid     r5, ($BB0_269)
	ADDI      r4, r4, 0
$BB0_268:                               # %bb.i314
                                        #   Parent Loop BB0_157 Depth=1
                                        #     Parent Loop BB0_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_268)
	ADDK      r4, r4, r4
$BB0_269:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	LWI       r5, r19, 160616
	ADD       r5, r4, r5
	LOAD      r4, r5, 2
	LOAD      r6, r5, 1
	LOAD      r7, r5, 0
	LOAD      r11, r5, 5
	LOAD      r3, r5, 4
	LOAD      r8, r5, 3
	LWI       r9, r19, 160592
	FPRSUB    r7, r9, r7
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 160576
	FPDIV     r7, r7, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r7, r8
	ADDI      r10, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_271)
	ADD       r20, r10, r0
# BB#270:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r20, r12, r0
$BB0_271:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r20, ($BB0_273)
	ADD       r9, r8, r0
# BB#272:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r9, r7, r0
$BB0_273:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_275)
	NOP    
# BB#274:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r7, r8, r0
$BB0_275:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	ORI       r8, r0, 1343554297
	FPGT      r20, r9, r21
	FPLT      r22, r7, r8
	bneid     r20, ($BB0_277)
	ADD       r23, r10, r0
# BB#276:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r23, r12, r0
$BB0_277:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r22, ($BB0_279)
	ADD       r20, r10, r0
# BB#278:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r20, r12, r0
$BB0_279:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r23, ($BB0_281)
	NOP    
# BB#280:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r9, r21, r0
$BB0_281:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r20, ($BB0_283)
	NOP    
# BB#282:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r7, r8, r0
$BB0_283:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	FPGT      r8, r9, r7
	bneid     r8, ($BB0_285)
	NOP    
# BB#284:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r10, r12, r0
$BB0_285:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r10, ($BB0_357)
	NOP    
# BB#286:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	ORI       r8, r0, 0
	ADDI      r10, r0, 1
	FPLT      r8, r7, r8
	bneid     r8, ($BB0_288)
	NOP    
# BB#287:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	ADDI      r10, r0, 0
$BB0_288:                               # %bb.i314
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r10, ($BB0_357)
	NOP    
# BB#289:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	LWI       r8, r19, 160596
	FPRSUB    r6, r8, r6
	FPRSUB    r3, r8, r3
	LWI       r8, r19, 160580
	FPDIV     r6, r6, r8
	FPDIV     r3, r3, r8
	FPGT      r8, r6, r3
	ADDI      r10, r0, 1
	ADDI      r12, r0, 0
	bneid     r8, ($BB0_291)
	ADD       r20, r10, r0
# BB#290:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r20, r12, r0
$BB0_291:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r20, ($BB0_293)
	ADD       r8, r3, r0
# BB#292:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r8, r6, r0
$BB0_293:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r20, ($BB0_295)
	NOP    
# BB#294:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r6, r3, r0
$BB0_295:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	FPGT      r3, r8, r9
	FPLT      r20, r6, r7
	bneid     r3, ($BB0_297)
	ADD       r21, r10, r0
# BB#296:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r21, r12, r0
$BB0_297:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r20, ($BB0_299)
	ADD       r3, r10, r0
# BB#298:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r3, r12, r0
$BB0_299:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r21, ($BB0_301)
	NOP    
# BB#300:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r8, r9, r0
$BB0_301:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r3, ($BB0_303)
	NOP    
# BB#302:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r6, r7, r0
$BB0_303:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	FPGT      r7, r8, r6
	bneid     r7, ($BB0_305)
	NOP    
# BB#304:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r10, r12, r0
$BB0_305:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r10, ($BB0_357)
	NOP    
# BB#306:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	ORI       r7, r0, 0
	ADDI      r3, r0, 1
	FPLT      r7, r6, r7
	bneid     r7, ($BB0_308)
	NOP    
# BB#307:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	ADDI      r3, r0, 0
$BB0_308:                               # %bb29.i.i320
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r3, ($BB0_357)
	NOP    
# BB#309:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	LWI       r7, r19, 160600
	FPRSUB    r4, r7, r4
	FPRSUB    r7, r7, r11
	LWI       r11, r19, 160588
	FPDIV     r4, r4, r11
	FPDIV     r7, r7, r11
	FPGT      r11, r4, r7
	ADDI      r3, r0, 1
	ADDI      r9, r0, 0
	bneid     r11, ($BB0_311)
	ADD       r10, r3, r0
# BB#310:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r10, r9, r0
$BB0_311:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r10, ($BB0_313)
	ADD       r11, r7, r0
# BB#312:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r11, r4, r0
$BB0_313:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r10, ($BB0_315)
	NOP    
# BB#314:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r4, r7, r0
$BB0_315:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	FPGT      r7, r11, r8
	FPLT      r10, r4, r6
	bneid     r7, ($BB0_317)
	ADD       r12, r3, r0
# BB#316:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r12, r9, r0
$BB0_317:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r10, ($BB0_319)
	ADD       r7, r3, r0
# BB#318:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r7, r9, r0
$BB0_319:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r7, ($BB0_321)
	NOP    
# BB#320:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r4, r6, r0
$BB0_321:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r12, ($BB0_323)
	NOP    
# BB#322:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r11, r8, r0
$BB0_323:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	FPGT      r6, r11, r4
	bneid     r6, ($BB0_325)
	NOP    
# BB#324:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r3, r9, r0
$BB0_325:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r3, ($BB0_357)
	NOP    
# BB#326:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	ORI       r6, r0, 0
	ADDI      r7, r0, 1
	FPLT      r4, r4, r6
	bneid     r4, ($BB0_328)
	NOP    
# BB#327:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	ADDI      r7, r0, 0
$BB0_328:                               # %bb62.i.i326
                                        #   in Loop: Header=BB0_267 Depth=2
	bneid     r7, ($BB0_357)
	NOP    
# BB#329:                               # %bb1.i327
                                        #   in Loop: Header=BB0_267 Depth=2
	LOAD      r4, r5, 7
	LOAD      r5, r5, 6
	SWI       r5, r19, 160572
	ADD       r6, r0, r0
	CMP       r5, r6, r5
	bltid     r5, ($BB0_361)
	NOP    
# BB#330:                               # %bb6.preheader.i328
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r5, r0, r0
	LWI       r6, r19, 160572
	CMP       r5, r5, r6
	bleid     r5, ($BB0_357)
	NOP    
$BB0_331:                               # %bb5.i341
                                        #   Parent Loop BB0_157 Depth=1
                                        #     Parent Loop BB0_267 Depth=2
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
	SWI       r11, r19, 160604
	FPRSUB    r3, r10, r3
	FPRSUB    r8, r12, r8
	LWI       r20, r19, 160580
	FPMUL     r21, r20, r11
	LWI       r22, r19, 160588
	FPMUL     r23, r3, r22
	FPRSUB    r7, r12, r7
	LOAD      r24, r4, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r8, r22
	LWI       r23, r19, 160576
	FPMUL     r25, r23, r11
	FPRSUB    r5, r9, r5
	FPRSUB    r6, r10, r6
	LWI       r26, r19, 160592
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r3, r23
	FPMUL     r20, r8, r20
	FPMUL     r25, r21, r7
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r4, 9
	LWI       r28, r19, 160596
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
	LWI       r31, r19, 160600
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
	bneid     r23, ($BB0_333)
	NOP    
# BB#332:                               # %bb5.i341
                                        #   in Loop: Header=BB0_331 Depth=3
	ADDI      r21, r0, 0
$BB0_333:                               # %bb5.i341
                                        #   in Loop: Header=BB0_331 Depth=3
	bneid     r21, ($BB0_356)
	NOP    
# BB#334:                               # %bb5.i341
                                        #   in Loop: Header=BB0_331 Depth=3
	ORI       r11, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r11, r20, r11
	bneid     r11, ($BB0_336)
	NOP    
# BB#335:                               # %bb5.i341
                                        #   in Loop: Header=BB0_331 Depth=3
	ADDI      r21, r0, 0
$BB0_336:                               # %bb5.i341
                                        #   in Loop: Header=BB0_331 Depth=3
	bneid     r21, ($BB0_356)
	NOP    
# BB#337:                               # %bb73.i.i342
                                        #   in Loop: Header=BB0_331 Depth=3
	FPMUL     r11, r10, r5
	FPMUL     r21, r6, r9
	FPRSUB    r11, r21, r11
	FPMUL     r9, r7, r9
	FPMUL     r5, r12, r5
	FPRSUB    r5, r5, r9
	FPMUL     r6, r6, r12
	FPMUL     r7, r7, r10
	LWI       r9, r19, 160576
	FPMUL     r9, r11, r9
	ORI       r10, r0, 0
	FPRSUB    r6, r7, r6
	LWI       r7, r19, 160580
	FPMUL     r7, r5, r7
	FPADD     r9, r9, r10
	LWI       r12, r19, 160588
	FPMUL     r12, r6, r12
	FPADD     r7, r7, r9
	FPADD     r7, r12, r7
	FPMUL     r7, r7, r22
	ADDI      r9, r0, 1
	FPLT      r10, r7, r10
	bneid     r10, ($BB0_339)
	NOP    
# BB#338:                               # %bb73.i.i342
                                        #   in Loop: Header=BB0_331 Depth=3
	ADDI      r9, r0, 0
$BB0_339:                               # %bb73.i.i342
                                        #   in Loop: Header=BB0_331 Depth=3
	bneid     r9, ($BB0_356)
	NOP    
# BB#340:                               # %bb94.i55.i343
                                        #   in Loop: Header=BB0_331 Depth=3
	FPADD     r7, r7, r20
	ORI       r9, r0, 1065353216
	ADDI      r10, r0, 1
	FPGT      r7, r7, r9
	bneid     r7, ($BB0_342)
	NOP    
# BB#341:                               # %bb94.i55.i343
                                        #   in Loop: Header=BB0_331 Depth=3
	ADDI      r10, r0, 0
$BB0_342:                               # %bb94.i55.i343
                                        #   in Loop: Header=BB0_331 Depth=3
	bneid     r10, ($BB0_356)
	NOP    
# BB#343:                               # %bb96.i.i346
                                        #   in Loop: Header=BB0_331 Depth=3
	FPMUL     r7, r11, r8
	ORI       r11, r0, 0
	FPMUL     r5, r5, r3
	FPADD     r7, r7, r11
	LWI       r3, r19, 160604
	FPMUL     r6, r6, r3
	FPADD     r5, r5, r7
	FPADD     r5, r6, r5
	FPMUL     r5, r5, r22
	FPUN      r6, r5, r11
	FPLE      r7, r5, r11
	BITOR     r6, r6, r7
	bneid     r6, ($BB0_345)
	ADDI      r11, r0, 1
# BB#344:                               # %bb96.i.i346
                                        #   in Loop: Header=BB0_331 Depth=3
	ADDI      r11, r0, 0
$BB0_345:                               # %bb96.i.i346
                                        #   in Loop: Header=BB0_331 Depth=3
	bneid     r11, ($BB0_356)
	NOP    
# BB#346:                               # %bb96.i.i346
                                        #   in Loop: Header=BB0_331 Depth=3
	ORI       r6, r0, 981668463
	ADDI      r7, r0, 1
	FPLT      r6, r5, r6
	bneid     r6, ($BB0_348)
	NOP    
# BB#347:                               # %bb96.i.i346
                                        #   in Loop: Header=BB0_331 Depth=3
	ADDI      r7, r0, 0
$BB0_348:                               # %bb96.i.i346
                                        #   in Loop: Header=BB0_331 Depth=3
	bneid     r7, ($BB0_356)
	NOP    
# BB#349:                               # %bb96.i.i346
                                        #   in Loop: Header=BB0_331 Depth=3
	ORI       r6, r0, 1343554297
	ADDI      r7, r0, 1
	FPEQ      r6, r5, r6
	bneid     r6, ($BB0_351)
	NOP    
# BB#350:                               # %bb96.i.i346
                                        #   in Loop: Header=BB0_331 Depth=3
	ADDI      r7, r0, 0
$BB0_351:                               # %bb96.i.i346
                                        #   in Loop: Header=BB0_331 Depth=3
	bneid     r7, ($BB0_356)
	NOP    
# BB#352:                               # %bb2.i.i.i347
                                        #   in Loop: Header=BB0_331 Depth=3
	LWI       r6, r19, 160564
	SWI       r6, r19, 160396
	LWI        r6, r19, 160396
	FPUN      r7, r6, r5
	FPLE      r6, r6, r5
	BITOR     r6, r7, r6
	bneid     r6, ($BB0_354)
	ADDI      r11, r0, 1
# BB#353:                               # %bb2.i.i.i347
                                        #   in Loop: Header=BB0_331 Depth=3
	ADDI      r11, r0, 0
$BB0_354:                               # %bb2.i.i.i347
                                        #   in Loop: Header=BB0_331 Depth=3
	bneid     r11, ($BB0_356)
	NOP    
# BB#355:                               # %bb3.i.i.i398
                                        #   in Loop: Header=BB0_331 Depth=3
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
	SWI        r5, r19, 160400
	LOAD      r5, r6, 6
	LWI       r5, r19, 160400
	SWI       r5, r19, 160564
	LOAD      r5, r6, 5
	LOAD      r5, r6, 4
$BB0_356:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i400
                                        #   in Loop: Header=BB0_331 Depth=3
	LWI       r5, r19, 160572
	ADDI      r5, r5, -1
	SWI       r5, r19, 160572
	ADDI      r4, r4, 11
	ADD       r6, r0, r0
	CMP       r5, r6, r5
	bneid     r5, ($BB0_331)
	NOP    
$BB0_357:                               # %bb7.i401
                                        #   in Loop: Header=BB0_267 Depth=2
	ADD       r4, r0, r0
	LWI       r5, r19, 160568
	CMP       r4, r4, r5
	bltid     r4, ($BB0_364)
	NOP    
# BB#358:                               # %bb9.i402
                                        #   in Loop: Header=BB0_267 Depth=2
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r5, r19, 160568
	beqid     r4, ($BB0_360)
	ADDI      r5, r5, 0
$BB0_359:                               # %bb9.i402
                                        #   Parent Loop BB0_157 Depth=1
                                        #     Parent Loop BB0_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_359)
	ADDK      r5, r5, r5
$BB0_360:                               # %bb9.i402
                                        #   in Loop: Header=BB0_267 Depth=2
	ADDI      r4, r19, 56
	LW        r4, r4, r5
	LWI       r5, r19, 160568
	ADDI      r5, r5, -1
	SWI       r5, r19, 160568
	brid      ($BB0_267)
	NOP    
$BB0_361:                               # %bb3.i330
                                        #   in Loop: Header=BB0_267 Depth=2
	ADDI      r5, r0, 2
	ANDI      r5, r5, 31
	LWI       r6, r19, 160568
	beqid     r5, ($BB0_363)
	ADDI      r6, r6, 0
$BB0_362:                               # %bb3.i330
                                        #   Parent Loop BB0_157 Depth=1
                                        #     Parent Loop BB0_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_362)
	ADDK      r6, r6, r6
$BB0_363:                               # %bb3.i330
                                        #   in Loop: Header=BB0_267 Depth=2
	ADDI      r5, r19, 56
	LWI       r7, r19, 160568
	ADDI      r7, r7, 1
	SWI       r7, r19, 160568
	ADDI      r7, r4, 1
	ADD       r5, r5, r6
	brid      ($BB0_267)
	SWI       r7, r5, 4
$BB0_364:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit403
                                        #   in Loop: Header=BB0_157 Depth=1
	LWI       r4, r19, 160564
	SWI       r4, r19, 160404
	ORI       r4, r0, 1065353216
	LWI        r5, r19, 160404
	LWI       r6, r19, 160636
	FPDIV     r4, r4, r6
	ORI       r11, r0, 0
	FPUN      r6, r5, r4
	FPGE      r4, r5, r4
	BITOR     r4, r6, r4
	bneid     r4, ($BB0_366)
	ADDI      r7, r0, 1
# BB#365:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit403
                                        #   in Loop: Header=BB0_157 Depth=1
	ADDI      r7, r0, 0
$BB0_366:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit403
                                        #   in Loop: Header=BB0_157 Depth=1
	bneid     r7, ($BB0_370)
	NOP    
# BB#367:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit403
                                        #   in Loop: Header=BB0_157 Depth=1
	ORI       r4, r0, 1008981770
	ADDI      r6, r0, 1
	FPGT      r4, r5, r4
	bneid     r4, ($BB0_369)
	NOP    
# BB#368:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit403
                                        #   in Loop: Header=BB0_157 Depth=1
	ADDI      r6, r0, 0
$BB0_369:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit403
                                        #   in Loop: Header=BB0_157 Depth=1
	bneid     r6, ($BB0_371)
	NOP    
$BB0_370:                               # %bb92.i
                                        #   in Loop: Header=BB0_157 Depth=1
	LWI       r5, r19, 160640
	LWI       r4, r19, 160632
	FPMUL     r4, r4, r5
	ORI       r5, r0, 0
	FPADD     r11, r4, r5
$BB0_371:                               # %bb115.i
                                        #   in Loop: Header=BB0_157 Depth=1
	LWI       r5, r19, 160608
	SWI       r5, r19, 160408
	LWI       r4, r19, 160620
	SWI       r4, r19, 160416
	LWI        r4, r19, 160408
	LWI        r5, r19, 160416
	LWI       r6, r19, 160612
	SWI       r6, r19, 160424
	FPMUL     r4, r4, r11
	FPMUL     r5, r11, r5
	LWI        r7, r19, 160424
	SWI        r4, r19, 160412
	SWI        r5, r19, 160420
	ADD       r6, r0, r0
	FPMUL     r4, r7, r11
	LWI       r5, r19, 160412
	LWI       r7, r19, 160420
$BB0_372:                               # %invcont123
                                        #   in Loop: Header=BB0_157 Depth=1
	LWI       r8, r19, 160624
	LWI       r3, r19, 160584
	FPMUL     r3, r3, r8
	LWI       r8, r19, 160680
	FPADD     r3, r8, r3
	ADD       r8, r0, r0
	ORI       r9, r0, 0
	BITOR     r6, r7, r6
	LWI       r7, r19, 160628
	FPINVSQRT r7, r7
	ADD       r7, r9, r0
	ADD       r10, r9, r0
	brid      ($BB0_386)
	ADD       r11, r8, r0
$BB0_373:                               # %bb.i351
                                        #   in Loop: Header=BB0_386 Depth=2
	ADDI      r20, r0, 5
	ANDI      r20, r20, 31
	beqid     r20, ($BB0_375)
	ADDI      r21, r8, 0
$BB0_374:                               # %bb.i351
                                        #   Parent Loop BB0_157 Depth=1
                                        #     Parent Loop BB0_386 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r20, r20, -1
	bneid     r20, ($BB0_374)
	ADDK      r21, r21, r21
$BB0_375:                               # %bb.i351
                                        #   in Loop: Header=BB0_386 Depth=2
	LWI       r20, r19, 160700
	ADD       r22, r20, r21
	LWI       r23, r22, 8
	SWI       r23, r19, 160432
	LWI        r22, r22, 4
	LW         r20, r20, r21
	LWI       r21, r19, 160592
	FPRSUB    r21, r21, r20
	LWI       r23, r19, 160596
	FPRSUB    r23, r23, r22
	LWI        r24, r19, 160432
	FPRSUB    r24, r3, r24
	FPMUL     r21, r21, r21
	FPMUL     r23, r23, r23
	FPADD     r21, r21, r23
	FPMUL     r23, r24, r24
	SWI        r22, r19, 160436
	SWI        r20, r19, 160428
	FPADD     r20, r21, r23
	ORI       r21, r0, 1133543424
	FPUN      r22, r20, r21
	FPGE      r20, r20, r21
	BITOR     r20, r22, r20
	bneid     r20, ($BB0_377)
	ADDI      r21, r0, 1
# BB#376:                               # %bb.i351
                                        #   in Loop: Header=BB0_386 Depth=2
	ADDI      r21, r0, 0
$BB0_377:                               # %bb.i351
                                        #   in Loop: Header=BB0_386 Depth=2
	bneid     r21, ($BB0_385)
	NOP    
# BB#378:                               # %bb45.i
                                        #   in Loop: Header=BB0_386 Depth=2
	ADDI      r20, r0, 2
	ANDI      r21, r20, 31
	beqid     r21, ($BB0_380)
	ADDI      r22, r12, 0
$BB0_379:                               # %bb45.i
                                        #   Parent Loop BB0_157 Depth=1
                                        #     Parent Loop BB0_386 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r21, r21, -1
	bneid     r21, ($BB0_379)
	ADDK      r22, r22, r22
$BB0_380:                               # %bb45.i
                                        #   in Loop: Header=BB0_386 Depth=2
	ANDI      r21, r20, 31
	beqid     r21, ($BB0_382)
	ADDI      r23, r12, 0
$BB0_381:                               # %bb45.i
                                        #   Parent Loop BB0_157 Depth=1
                                        #     Parent Loop BB0_386 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r21, r21, -1
	bneid     r21, ($BB0_381)
	ADDK      r23, r23, r23
$BB0_382:                               # %bb45.i
                                        #   in Loop: Header=BB0_386 Depth=2
	ANDI      r20, r20, 31
	beqid     r20, ($BB0_384)
	ADDI      r12, r12, 0
$BB0_383:                               # %bb45.i
                                        #   Parent Loop BB0_157 Depth=1
                                        #     Parent Loop BB0_386 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r20, r20, -1
	bneid     r20, ($BB0_383)
	ADDK      r12, r12, r12
$BB0_384:                               # %bb45.i
                                        #   in Loop: Header=BB0_386 Depth=2
	LWI       r20, r19, 160700
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
	bgtid     r12, ($BB0_390)
	NOP    
$BB0_385:                               # %bb46.i359
                                        #   in Loop: Header=BB0_386 Depth=2
	ADDI      r8, r8, 1
$BB0_386:                               # %bb47.i
                                        #   Parent Loop BB0_157 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_374 Depth 3
                                        #       Child Loop BB0_387 Depth 3
                                        #       Child Loop BB0_383 Depth 3
                                        #       Child Loop BB0_381 Depth 3
                                        #       Child Loop BB0_379 Depth 3
	ADDI      r12, r0, 3
	ANDI      r20, r12, 31
	beqid     r20, ($BB0_388)
	ADDI      r12, r8, 0
$BB0_387:                               # %bb47.i
                                        #   Parent Loop BB0_157 Depth=1
                                        #     Parent Loop BB0_386 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r20, r20, -1
	bneid     r20, ($BB0_387)
	ADDK      r12, r12, r12
$BB0_388:                               # %bb47.i
                                        #   in Loop: Header=BB0_386 Depth=2
	LWI       r20, r19, 160704
	CMP       r20, r20, r8
	bltid     r20, ($BB0_373)
	NOP    
# BB#389:                               # %bb48.i
                                        #   in Loop: Header=BB0_157 Depth=1
	ORI       r3, r0, 0
	ADD       r8, r0, r0
	CMP       r8, r8, r11
	ADD       r12, r3, r0
	beqid     r8, ($BB0_391)
	ADD       r20, r3, r0
$BB0_390:                               # %bb49.i
                                        #   in Loop: Header=BB0_157 Depth=1
	LWI       r3, r19, 160612
	SWI       r3, r19, 160440
	LWI       r3, r19, 160608
	SWI       r3, r19, 160448
	LWI       r3, r19, 160620
	SWI       r3, r19, 160444
	FPCONV    r3, r11
	LWI        r12, r19, 160440
	FPDIV     r20, r9, r3
	LWI        r8, r19, 160448
	FPDIV     r7, r7, r3
	FPDIV     r3, r10, r3
	LWI        r9, r19, 160444
	FPMUL     r20, r12, r20
	FPMUL     r12, r8, r7
	FPMUL     r3, r3, r9
$BB0_391:                               # %invcont148
                                        #   in Loop: Header=BB0_157 Depth=1
	SWI       r5, r19, 160456
	SWI       r6, r19, 160452
	LWI        r5, r19, 160456
	LWI        r6, r19, 160452
	FPADD     r4, r20, r4
	ORI       r7, r0, 0
	ADDI      r8, r0, 1
	FPLT      r9, r4, r7
	bneid     r9, ($BB0_393)
	NOP    
# BB#392:                               # %invcont148
                                        #   in Loop: Header=BB0_157 Depth=1
	ADDI      r8, r0, 0
$BB0_393:                               # %invcont148
                                        #   in Loop: Header=BB0_157 Depth=1
	bneid     r8, ($BB0_398)
	NOP    
# BB#394:                               # %bb1.i
                                        #   in Loop: Header=BB0_157 Depth=1
	ORI       r7, r0, 1065353216
	ADDI      r8, r0, 1
	FPGT      r9, r4, r7
	bneid     r9, ($BB0_396)
	NOP    
# BB#395:                               # %bb1.i
                                        #   in Loop: Header=BB0_157 Depth=1
	ADDI      r8, r0, 0
$BB0_396:                               # %bb1.i
                                        #   in Loop: Header=BB0_157 Depth=1
	bneid     r8, ($BB0_398)
	NOP    
# BB#397:                               # %bb4.i
                                        #   in Loop: Header=BB0_157 Depth=1
	ADD       r7, r4, r0
$BB0_398:                               # %bb5.i
                                        #   in Loop: Header=BB0_157 Depth=1
	FPADD     r4, r6, r3
	ORI       r3, r0, 0
	ADDI      r6, r0, 1
	FPLT      r8, r4, r3
	bneid     r8, ($BB0_400)
	NOP    
# BB#399:                               # %bb5.i
                                        #   in Loop: Header=BB0_157 Depth=1
	ADDI      r6, r0, 0
$BB0_400:                               # %bb5.i
                                        #   in Loop: Header=BB0_157 Depth=1
	bneid     r6, ($BB0_405)
	NOP    
# BB#401:                               # %bb8.i
                                        #   in Loop: Header=BB0_157 Depth=1
	ORI       r3, r0, 1065353216
	ADDI      r6, r0, 1
	FPGT      r8, r4, r3
	bneid     r8, ($BB0_403)
	NOP    
# BB#402:                               # %bb8.i
                                        #   in Loop: Header=BB0_157 Depth=1
	ADDI      r6, r0, 0
$BB0_403:                               # %bb8.i
                                        #   in Loop: Header=BB0_157 Depth=1
	bneid     r6, ($BB0_405)
	NOP    
# BB#404:                               # %bb11.i
                                        #   in Loop: Header=BB0_157 Depth=1
	ADD       r3, r4, r0
$BB0_405:                               # %bb12.i
                                        #   in Loop: Header=BB0_157 Depth=1
	FPADD     r4, r12, r5
	ORI       r5, r0, 0
	ADDI      r6, r0, 1
	FPLT      r8, r4, r5
	bneid     r8, ($BB0_407)
	NOP    
# BB#406:                               # %bb12.i
                                        #   in Loop: Header=BB0_157 Depth=1
	ADDI      r6, r0, 0
$BB0_407:                               # %bb12.i
                                        #   in Loop: Header=BB0_157 Depth=1
	bneid     r6, ($BB0_412)
	NOP    
# BB#408:                               # %bb15.i
                                        #   in Loop: Header=BB0_157 Depth=1
	ORI       r5, r0, 1065353216
	ADDI      r6, r0, 1
	FPGT      r8, r4, r5
	bneid     r8, ($BB0_410)
	NOP    
# BB#409:                               # %bb15.i
                                        #   in Loop: Header=BB0_157 Depth=1
	ADDI      r6, r0, 0
$BB0_410:                               # %bb15.i
                                        #   in Loop: Header=BB0_157 Depth=1
	bneid     r6, ($BB0_412)
	NOP    
# BB#411:                               # %bb18.i
                                        #   in Loop: Header=BB0_157 Depth=1
	ADD       r5, r4, r0
$BB0_412:                               # %invcont160
                                        #   in Loop: Header=BB0_157 Depth=1
	LWI       r6, r19, 160660
	LWI       r4, r19, 160656
	ADD       r4, r4, r6
	MULI      r4, r4, 3
	LWI       r6, r19, 160716
	ADD       r4, r4, r6
	STORE     r4, r7, 0
	STORE     r4, r5, 1
	STORE     r4, r3, 2
	ATOMIC_INC r4, 0
	LWI       r3, r19, 160708
	CMP       r3, r4, r3
	bgtid     r3, ($BB0_157)
	NOP    
$BB0_413:                               # %return
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
	ADDI      r1, r1, 160776
	rtsd      r15, 8
	ADD       r3, r0, r0
	.end	main
$tmp0:
	.size	main, ($tmp0)-main


