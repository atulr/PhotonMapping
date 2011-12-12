	.file	"rt.bc"
	.text
	.globl	main
	.align	2
	.type	main,@function
	.ent	main                    # @main
main:
	.frame	r19,800860,r15
	.mask	0xfff88000
# BB#0:                                 # %invcont8
	ADDI      r1, r1, -800860
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
	SWI       r4, r19, 800780
	LOAD      r4, r3, 4
	SWI       r4, r19, 800832
	LOAD      r4, r3, 7
	SWI       r4, r19, 800772
	LOAD      r4, r3, 2
	LOAD      r4, r3, 5
	LOAD      r4, r3, 12
	LOAD      r5, r4, 0
	SWI       r5, r19, 800784
	LOAD      r5, r4, 1
	SWI       r5, r19, 800788
	LOAD      r4, r4, 2
	SWI       r4, r19, 800792
	LOAD      r4, r3, 10
	LOAD      r5, r4, 0
	SWI       r5, r19, 800748
	LOAD      r5, r4, 1
	SWI       r5, r19, 800752
	LOAD      r5, r4, 2
	SWI       r5, r19, 800756
	ADDI      r5, r4, 9
	LOAD      r6, r5, 0
	LOAD      r6, r5, 1
	ADDI      r6, r4, 12
	LOAD      r5, r5, 2
	LOAD      r5, r6, 0
	SWI       r5, r19, 800796
	LOAD      r5, r6, 1
	SWI       r5, r19, 800800
	LOAD      r5, r6, 2
	SWI       r5, r19, 800804
	ADDI      r5, r4, 15
	LOAD      r6, r5, 0
	SWI       r6, r19, 800808
	LOAD      r6, r5, 1
	SWI       r6, r19, 800812
	LOAD      r5, r5, 2
	SWI       r5, r19, 800816
	ADDI      r4, r4, 18
	LOAD      r5, r4, 0
	SWI       r5, r19, 800820
	LOAD      r5, r4, 1
	SWI       r5, r19, 800824
	ADDI      r5, r19, 184
	ADDI      r5, r5, 16
	LOAD      r4, r4, 2
	SWI       r4, r19, 800828
	ADDI      r4, r0, 5000
	ADD       r8, r0, r0
$BB0_1:                                 # %bb.i58
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
	SWI       r4, r19, 800672
	ADDI      r1, r1, -4
	ADDI      r5, r0, -8
	BITAND    r4, r1, r5
	ADDI      r5, r4, -7040000
	SWI       r5, r19, 800740
	ADDI      r4, r4, -7039984
	ADD       r1, r5, r0
	ADDI      r5, r0, 220000
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
# BB#4:                                 # %bb20.preheader
	ADDI      r3, r19, 160216
	ADDI      r3, r3, 16
	ADD       r4, r0, r0
	ADDI      r5, r0, 20000
	ADD       r8, r0, r0
$BB0_5:                                 # %bb20
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
# BB#6:                                 # %invcont24
	ADD       r3, r0, r0
	SWI       r3, r19, 800768
	LOAD      r4, r3, 12
	LOAD      r5, r4, 0
	LOAD      r6, r4, 1
	LOAD      r4, r4, 2
	SWI        r5, r19, 800216
	SWI        r6, r19, 800220
	SWI        r4, r19, 800224
	LWI       r4, r19, 800216
	SWI       r4, r19, 800712
	LWI       r4, r19, 800220
	SWI       r4, r19, 800716
	LWI       r4, r19, 800224
	SWI       r4, r19, 800720
	ADDI      r4, r0, 110000
	SWI       r4, r19, 800776
	SWI       r3, r19, 800736
	brid      ($BB0_201)
	NOP    
$BB0_7:                                 # %bb.i86
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        #       Parent Loop BB0_198 Depth=3
                                        #         Parent Loop BB0_199 Depth=4
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
# BB#8:                                 # %bb.i86
                                        #   in Loop: Header=BB0_7 Depth=5
	ADDI      r8, r0, 0
$BB0_9:                                 # %bb.i86
                                        #   in Loop: Header=BB0_7 Depth=5
	bneid     r8, ($BB0_7)
	NOP    
# BB#10:                                # %invcont54
                                        #   in Loop: Header=BB0_199 Depth=4
	FPINVSQRT r6, r6
	ORI       r7, r0, 1065353216
	FPDIV     r6, r7, r6
	FPDIV     r5, r5, r6
	SWI       r5, r19, 800628
	FPDIV     r3, r3, r6
	SWI       r3, r19, 800632
	FPDIV     r4, r4, r6
	SWI       r4, r19, 800636
	SWI        r5, r19, 800524
	SWI        r3, r19, 800520
	SWI        r4, r19, 800528
	ADD       r3, r0, r0
	SWI       r3, r19, 800692
	LWI       r4, r19, 800528
	SWI       r4, r19, 800696
	ADDI      r4, r0, -1
	SWI       r4, r19, 800620
	ADDI      r4, r0, 1343554297
	SWI       r4, r19, 800640
	SWI       r3, r19, 800660
	SWI       r3, r19, 800664
	SWI       r3, r19, 800668
$BB0_11:                                # %bb.i
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        #       Parent Loop BB0_198 Depth=3
                                        #         Parent Loop BB0_199 Depth=4
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
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        #       Parent Loop BB0_198 Depth=3
                                        #         Parent Loop BB0_199 Depth=4
                                        #           Parent Loop BB0_11 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_12)
	ADDK      r3, r3, r3
$BB0_13:                                # %bb.i
                                        #   in Loop: Header=BB0_11 Depth=5
	LWI       r4, r19, 800672
	ADD       r4, r3, r4
	LOAD      r3, r4, 2
	LOAD      r5, r4, 1
	LOAD      r6, r4, 0
	LOAD      r7, r4, 5
	LOAD      r8, r4, 4
	LOAD      r9, r4, 3
	LWI       r10, r19, 800648
	FPRSUB    r6, r10, r6
	FPRSUB    r9, r10, r9
	LWI       r10, r19, 800632
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
	LWI       r9, r19, 800644
	FPRSUB    r5, r9, r5
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 800628
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
	LWI       r6, r19, 800652
	FPRSUB    r3, r6, r3
	FPRSUB    r6, r6, r7
	LWI       r7, r19, 800636
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
# BB#73:                                # %bb1.i29
                                        #   in Loop: Header=BB0_11 Depth=5
	LOAD      r3, r4, 7
	LOAD      r4, r4, 6
	SWI       r4, r19, 800624
	ADD       r5, r0, r0
	CMP       r4, r5, r4
	bltid     r4, ($BB0_105)
	NOP    
# BB#74:                                # %bb6.preheader.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r4, r0, r0
	LWI       r5, r19, 800624
	CMP       r4, r4, r5
	bleid     r4, ($BB0_101)
	NOP    
$BB0_75:                                # %bb5.i
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        #       Parent Loop BB0_198 Depth=3
                                        #         Parent Loop BB0_199 Depth=4
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
	SWI       r7, r19, 800656
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r19, 800628
	FPMUL     r21, r20, r7
	LWI       r22, r19, 800636
	FPMUL     r23, r8, r22
	FPRSUB    r6, r12, r6
	LOAD      r24, r3, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r19, 800632
	FPMUL     r25, r23, r7
	FPRSUB    r4, r10, r4
	FPRSUB    r5, r11, r5
	LWI       r26, r19, 800648
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r6
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r3, 9
	LWI       r28, r19, 800644
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
	LWI       r31, r19, 800652
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
# BB#76:                                # %bb5.i
                                        #   in Loop: Header=BB0_75 Depth=6
	ADDI      r21, r0, 0
$BB0_77:                                # %bb5.i
                                        #   in Loop: Header=BB0_75 Depth=6
	bneid     r21, ($BB0_100)
	NOP    
# BB#78:                                # %bb5.i
                                        #   in Loop: Header=BB0_75 Depth=6
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_80)
	NOP    
# BB#79:                                # %bb5.i
                                        #   in Loop: Header=BB0_75 Depth=6
	ADDI      r21, r0, 0
$BB0_80:                                # %bb5.i
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
	LWI       r10, r19, 800632
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r5, r6, r5
	LWI       r6, r19, 800628
	FPMUL     r6, r4, r6
	FPADD     r10, r10, r11
	LWI       r12, r19, 800636
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
	LWI       r8, r19, 800656
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
	LWI       r5, r19, 800640
	SWI       r5, r19, 800532
	LWI        r5, r19, 800532
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
	SWI       r22, r19, 800676
	ADD       r22, r0, r0
	MULI      r21, r21, 25
	LOAD      r22, r22, 9
	ADD       r21, r22, r21
	LOAD      r22, r21, 6
	LOAD      r23, r21, 5
	LOAD      r21, r21, 4
	SWI        r22, r19, 800576
	SWI        r23, r19, 800580
	SWI        r21, r19, 800584
	SWI        r11, r19, 800564
	SWI        r12, r19, 800568
	SWI        r20, r19, 800572
	SWI        r8, r19, 800552
	SWI        r9, r19, 800556
	SWI        r10, r19, 800560
	SWI        r5, r19, 800540
	SWI        r6, r19, 800544
	SWI        r7, r19, 800548
	SWI        r4, r19, 800536
	ADDI      r4, r0, 1060320051
	SWI       r4, r19, 800680
	ADDI      r4, r0, 1050253722
	SWI       r4, r19, 800684
	LWI       r9, r19, 800576
	SWI       r9, r19, 800660
	LWI       r9, r19, 800580
	SWI       r9, r19, 800664
	LWI       r9, r19, 800584
	SWI       r9, r19, 800668
	LWI       r4, r19, 800536
	SWI       r4, r19, 800640
$BB0_100:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i
                                        #   in Loop: Header=BB0_75 Depth=6
	LWI       r4, r19, 800624
	ADDI      r4, r4, -1
	SWI       r4, r19, 800624
	ADDI      r3, r3, 11
	ADD       r5, r0, r0
	CMP       r4, r5, r4
	bneid     r4, ($BB0_75)
	NOP    
$BB0_101:                               # %bb7.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADD       r3, r0, r0
	LWI       r4, r19, 800620
	CMP       r3, r3, r4
	bltid     r3, ($BB0_108)
	NOP    
# BB#102:                               # %bb9.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r4, r19, 800620
	beqid     r3, ($BB0_104)
	ADDI      r4, r4, 0
$BB0_103:                               # %bb9.i
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        #       Parent Loop BB0_198 Depth=3
                                        #         Parent Loop BB0_199 Depth=4
                                        #           Parent Loop BB0_11 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_103)
	ADDK      r4, r4, r4
$BB0_104:                               # %bb9.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADDI      r3, r19, 56
	LW        r3, r3, r4
	LWI       r4, r19, 800620
	ADDI      r4, r4, -1
	SWI       r4, r19, 800620
	brid      ($BB0_11)
	NOP    
$BB0_105:                               # %bb3.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r5, r19, 800620
	beqid     r4, ($BB0_107)
	ADDI      r5, r5, 0
$BB0_106:                               # %bb3.i
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        #       Parent Loop BB0_198 Depth=3
                                        #         Parent Loop BB0_199 Depth=4
                                        #           Parent Loop BB0_11 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_106)
	ADDK      r5, r5, r5
$BB0_107:                               # %bb3.i
                                        #   in Loop: Header=BB0_11 Depth=5
	ADDI      r4, r19, 56
	LWI       r6, r19, 800620
	ADDI      r6, r6, 1
	SWI       r6, r19, 800620
	ADDI      r6, r3, 1
	ADD       r4, r4, r5
	brid      ($BB0_11)
	SWI       r6, r4, 4
$BB0_108:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_199 Depth=4
	LWI       r3, r19, 800640
	SWI       r3, r19, 800588
	LWI        r3, r19, 800588
	ORI       r4, r0, 1343554297
	ADDI      r5, r0, 1
	FPLT      r4, r3, r4
	bneid     r4, ($BB0_110)
	NOP    
# BB#109:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_199 Depth=4
	ADDI      r5, r0, 0
$BB0_110:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_199 Depth=4
	bneid     r5, ($BB0_113)
	NOP    
# BB#111:                               # %invcont54.bb107_crit_edge
                                        #   in Loop: Header=BB0_199 Depth=4
	LWI       r3, r19, 800688
	ADDI      r4, r3, 1
	ORI       r5, r0, 0
	ADD       r6, r0, r0
	CMP       r3, r6, r3
	bleid     r3, ($BB0_199)
	NOP    
# BB#112:                               #   in Loop: Header=BB0_198 Depth=3
	ADD       r3, r5, r0
	brid      ($BB0_121)
	ADD       r6, r5, r0
$BB0_113:                               # %invcont83
                                        #   in Loop: Header=BB0_198 Depth=3
	LWI       r9, r19, 800668
	SWI       r9, r19, 800600
	LWI       r9, r19, 800664
	SWI       r9, r19, 800596
	LWI        r4, r19, 800600
	SWI       r4, r19, 800700
	LWI        r5, r19, 800596
	SWI       r5, r19, 800704
	LWI       r9, r19, 800660
	SWI       r9, r19, 800592
	LWI        r6, r19, 800592
	SWI       r6, r19, 800708
	FPADD     r4, r4, r5
	FPADD     r4, r4, r6
	ORI       r5, r0, 1077936128
	FPUN      r6, r4, r5
	FPLE      r4, r4, r5
	BITOR     r4, r6, r4
	bneid     r4, ($BB0_115)
	ADDI      r5, r0, 1
# BB#114:                               # %invcont83
                                        #   in Loop: Header=BB0_198 Depth=3
	ADDI      r5, r0, 0
$BB0_115:                               # %invcont83
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r5, ($BB0_117)
	NOP    
# BB#116:                               # %bb84
                                        #   in Loop: Header=BB0_198 Depth=3
	ORI       r4, r0, 981668463
	LWI       r5, r19, 800700
	FPMUL     r5, r5, r4
	SWI       r5, r19, 800700
	LWI       r5, r19, 800704
	FPMUL     r5, r5, r4
	SWI       r5, r19, 800704
	LWI       r5, r19, 800708
	FPMUL     r5, r5, r4
	SWI       r5, r19, 800708
$BB0_117:                               # %invcont97
                                        #   in Loop: Header=BB0_198 Depth=3
	LWI       r7, r19, 800688
	ADDI      r4, r7, 1
	LWI       r5, r19, 800632
	FPMUL     r5, r5, r3
	LWI       r6, r19, 800628
	FPMUL     r8, r6, r3
	LWI       r6, r19, 800636
	FPMUL     r9, r6, r3
	LWI       r3, r19, 800648
	FPADD     r6, r5, r3
	LWI       r3, r19, 800644
	FPADD     r3, r8, r3
	LWI       r5, r19, 800652
	FPADD     r5, r5, r9
	SWI        r6, r19, 800604
	SWI        r3, r19, 800608
	SWI        r5, r19, 800612
	LWI       r8, r19, 800604
	SWI       r8, r19, 800712
	LWI       r8, r19, 800608
	SWI       r8, r19, 800716
	LWI       r8, r19, 800612
	SWI       r8, r19, 800720
	ADDI      r8, r0, 1
	CMP       r7, r8, r7
	bltid     r7, ($BB0_198)
	NOP    
# BB#118:                               # %bb107.thread
                                        #   in Loop: Header=BB0_198 Depth=3
	ADDI      r4, r0, 5
	ANDI      r4, r4, 31
	LWI       r7, r19, 800736
	beqid     r4, ($BB0_120)
	ADDI      r7, r7, 0
$BB0_119:                               # %bb107.thread
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        #       Parent Loop BB0_198 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_119)
	ADDK      r7, r7, r7
$BB0_120:                               # %bb107.thread
                                        #   in Loop: Header=BB0_198 Depth=3
	LWI       r4, r19, 800740
	ADD       r8, r4, r7
	SW         r6, r4, r7
	SWI        r3, r8, 4
	SWI        r5, r8, 8
	LWI       r4, r19, 800732
	SWI        r4, r8, 12
	LWI       r4, r19, 800728
	SWI        r4, r8, 16
	LWI       r4, r19, 800736
	ADDI      r4, r4, 1
	SWI       r4, r19, 800736
	ADD       r4, r0, r0
	LWI       r7, r19, 800724
	SWI        r7, r8, 20
	sbi       r4, r8, 24
$BB0_121:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	ORI       r4, r0, 1132756992
	ORI       r7, r0, 1134362657
	LWI       r8, r19, 800648
	FPRSUB    r4, r8, r4
	FPRSUB    r7, r8, r7
	LWI       r8, r19, 800632
	FPDIV     r9, r4, r8
	FPDIV     r4, r7, r8
	FPGT      r7, r9, r4
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_123)
	ADD       r11, r8, r0
# BB#122:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r11, r10, r0
$BB0_123:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r11, ($BB0_125)
	ADD       r7, r4, r0
# BB#124:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r7, r9, r0
$BB0_125:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	ORI       r12, r0, -803929351
	bneid     r11, ($BB0_127)
	NOP    
# BB#126:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r9, r4, r0
$BB0_127:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	ORI       r4, r0, 1343554297
	FPGT      r11, r7, r12
	FPLT      r20, r9, r4
	bneid     r11, ($BB0_129)
	ADD       r21, r8, r0
# BB#128:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r21, r10, r0
$BB0_129:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r20, ($BB0_131)
	ADD       r11, r8, r0
# BB#130:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r11, r10, r0
$BB0_131:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r21, ($BB0_133)
	NOP    
# BB#132:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r7, r12, r0
$BB0_133:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r11, ($BB0_135)
	NOP    
# BB#134:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r9, r4, r0
$BB0_135:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	FPGT      r4, r7, r9
	bneid     r4, ($BB0_137)
	NOP    
# BB#136:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r8, r10, r0
$BB0_137:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	LWI       r4, r19, 800688
	bneid     r8, ($BB0_198)
	ADDI      r4, r4, 1
# BB#138:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	ORI       r8, r0, 0
	ADDI      r10, r0, 1
	FPLT      r8, r9, r8
	bneid     r8, ($BB0_140)
	NOP    
# BB#139:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	ADDI      r10, r0, 0
$BB0_140:                               # %bb108
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r10, ($BB0_198)
	NOP    
# BB#141:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	ORI       r8, r0, 1133772800
	ORI       r10, r0, 1139015713
	LWI       r11, r19, 800644
	FPRSUB    r8, r11, r8
	FPRSUB    r10, r11, r10
	LWI       r11, r19, 800628
	FPDIV     r8, r8, r11
	FPDIV     r10, r10, r11
	FPGT      r11, r8, r10
	ADDI      r12, r0, 1
	ADDI      r20, r0, 0
	bneid     r11, ($BB0_143)
	ADD       r21, r12, r0
# BB#142:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r21, r20, r0
$BB0_143:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r21, ($BB0_145)
	ADD       r11, r10, r0
# BB#144:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r11, r8, r0
$BB0_145:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r21, ($BB0_147)
	NOP    
# BB#146:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r8, r10, r0
$BB0_147:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	FPGT      r10, r11, r7
	FPLT      r21, r8, r9
	bneid     r10, ($BB0_149)
	ADD       r22, r12, r0
# BB#148:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r22, r20, r0
$BB0_149:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r21, ($BB0_151)
	ADD       r10, r12, r0
# BB#150:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r10, r20, r0
$BB0_151:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r22, ($BB0_153)
	NOP    
# BB#152:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r11, r7, r0
$BB0_153:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r10, ($BB0_155)
	NOP    
# BB#154:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r8, r9, r0
$BB0_155:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	FPGT      r7, r11, r8
	bneid     r7, ($BB0_157)
	NOP    
# BB#156:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r12, r20, r0
$BB0_157:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r12, ($BB0_198)
	NOP    
# BB#158:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	ORI       r7, r0, 0
	ADDI      r9, r0, 1
	FPLT      r7, r8, r7
	bneid     r7, ($BB0_160)
	NOP    
# BB#159:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	ADDI      r9, r0, 0
$BB0_160:                               # %bb29.i387
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r9, ($BB0_198)
	NOP    
# BB#161:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	LWI       r7, r19, 800692
	LWI       r4, r19, 800696
	BITOR     r4, r7, r4
	SWI       r4, r19, 800616
	ORI       r4, r0, 0
	ORI       r7, r0, 1134886945
	LWI       r9, r19, 800652
	FPRSUB    r4, r9, r4
	LWI        r10, r19, 800616
	FPRSUB    r7, r9, r7
	FPDIV     r9, r4, r10
	FPDIV     r4, r7, r10
	FPGT      r7, r9, r4
	ADDI      r10, r0, 1
	ADDI      r12, r0, 0
	bneid     r7, ($BB0_163)
	ADD       r20, r10, r0
# BB#162:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r20, r12, r0
$BB0_163:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r20, ($BB0_165)
	ADD       r7, r4, r0
# BB#164:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r7, r9, r0
$BB0_165:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r20, ($BB0_167)
	NOP    
# BB#166:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r9, r4, r0
$BB0_167:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	FPGT      r4, r7, r11
	FPLT      r20, r9, r8
	bneid     r4, ($BB0_169)
	ADD       r21, r10, r0
# BB#168:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r21, r12, r0
$BB0_169:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r20, ($BB0_171)
	ADD       r4, r10, r0
# BB#170:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r4, r12, r0
$BB0_171:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r4, ($BB0_173)
	NOP    
# BB#172:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r9, r8, r0
$BB0_173:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r21, ($BB0_175)
	NOP    
# BB#174:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r7, r11, r0
$BB0_175:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	FPGT      r4, r7, r9
	bneid     r4, ($BB0_177)
	NOP    
# BB#176:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	ADD       r10, r12, r0
$BB0_177:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	LWI       r7, r19, 800692
	LWI       r4, r19, 800760
	BITOR     r8, r7, r4
	LWI       r4, r19, 800764
	BITOR     r11, r7, r4
	LWI       r4, r19, 800688
	BITOR     r8, r8, r7
	SWI       r8, r19, 800760
	BITOR     r7, r11, r7
	SWI       r7, r19, 800764
	bneid     r10, ($BB0_198)
	ADDI      r4, r4, 1
# BB#178:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	ORI       r7, r0, 0
	ADDI      r8, r0, 1
	FPLT      r7, r9, r7
	bneid     r7, ($BB0_180)
	NOP    
# BB#179:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	ADDI      r8, r0, 0
$BB0_180:                               # %bb62.i442
                                        #   in Loop: Header=BB0_198 Depth=3
	bneid     r8, ($BB0_198)
	NOP    
# BB#181:                               # %bb111
                                        #   in Loop: Header=BB0_196 Depth=2
	ADDI      r4, r0, 2
	ANDI      r7, r4, 31
	LWI       r8, r19, 800744
	beqid     r7, ($BB0_183)
	ADDI      r8, r8, 0
$BB0_182:                               # %bb111
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r7, r7, -1
	bneid     r7, ($BB0_182)
	ADDK      r8, r8, r8
$BB0_183:                               # %bb111
                                        #   in Loop: Header=BB0_196 Depth=2
	ANDI      r7, r4, 31
	LWI       r9, r19, 800744
	beqid     r7, ($BB0_185)
	ADDI      r9, r9, 0
$BB0_184:                               # %bb111
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r7, r7, -1
	bneid     r7, ($BB0_184)
	ADDK      r9, r9, r9
$BB0_185:                               # %bb111
                                        #   in Loop: Header=BB0_196 Depth=2
	ANDI      r7, r4, 31
	LWI       r10, r19, 800744
	beqid     r7, ($BB0_187)
	ADDI      r10, r10, 0
$BB0_186:                               # %bb111
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r7, r7, -1
	bneid     r7, ($BB0_186)
	ADDK      r10, r10, r10
$BB0_187:                               # %bb111
                                        #   in Loop: Header=BB0_196 Depth=2
	ADDI      r7, r19, 160216
	SW         r6, r7, r9
	ANDI      r6, r4, 31
	LWI       r9, r19, 800744
	beqid     r6, ($BB0_189)
	ADDI      r9, r9, 0
$BB0_188:                               # %bb111
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r6, r6, -1
	bneid     r6, ($BB0_188)
	ADDK      r9, r9, r9
$BB0_189:                               # %bb111
                                        #   in Loop: Header=BB0_196 Depth=2
	ADD       r6, r7, r8
	SWI        r3, r6, 4
	ANDI      r3, r4, 31
	LWI       r6, r19, 800744
	beqid     r3, ($BB0_191)
	ADDI      r6, r6, 0
$BB0_190:                               # %bb111
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_190)
	ADDK      r6, r6, r6
$BB0_191:                               # %bb111
                                        #   in Loop: Header=BB0_196 Depth=2
	ADD       r3, r7, r10
	SWI        r5, r3, 8
	ANDI      r4, r4, 31
	LWI       r3, r19, 800744
	beqid     r4, ($BB0_193)
	ADDI      r3, r3, 0
$BB0_192:                               # %bb111
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_192)
	ADDK      r3, r3, r3
$BB0_193:                               # %bb111
                                        #   in Loop: Header=BB0_196 Depth=2
	ADD       r4, r7, r9
	ADDI      r5, r0, 5
	LWI       r8, r19, 800732
	SWI        r8, r4, 12
	ANDI      r4, r5, 31
	LWI       r5, r19, 800768
	beqid     r4, ($BB0_195)
	ADDI      r5, r5, 0
$BB0_194:                               # %bb111
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_194)
	ADDK      r5, r5, r5
$BB0_195:                               # %bb111
                                        #   in Loop: Header=BB0_196 Depth=2
	ADD       r4, r7, r6
	ADD       r3, r7, r3
	LWI       r6, r19, 800728
	SWI        r6, r4, 16
	LWI       r4, r19, 800688
	ADDI      r4, r4, 1
	LWI       r6, r19, 800768
	ADDI      r6, r6, 1
	SWI       r6, r19, 800768
	ADD       r6, r0, r0
	ADD       r5, r7, r5
	LWI       r7, r19, 800724
	SWI        r7, r3, 20
	sbi       r6, r5, 24
$BB0_196:                               # %bb113.outer.outer.outer
                                        #   Parent Loop BB0_201 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_198 Depth 3
                                        #         Child Loop BB0_119 Depth 4
                                        #         Child Loop BB0_199 Depth 4
                                        #           Child Loop BB0_11 Depth 5
                                        #             Child Loop BB0_103 Depth 6
                                        #             Child Loop BB0_75 Depth 6
                                        #             Child Loop BB0_106 Depth 6
                                        #             Child Loop BB0_12 Depth 6
                                        #           Child Loop BB0_7 Depth 5
                                        #       Child Loop BB0_194 Depth 3
                                        #       Child Loop BB0_192 Depth 3
                                        #       Child Loop BB0_190 Depth 3
                                        #       Child Loop BB0_188 Depth 3
                                        #       Child Loop BB0_186 Depth 3
                                        #       Child Loop BB0_184 Depth 3
                                        #       Child Loop BB0_182 Depth 3
                                        #       Child Loop BB0_197 Depth 3
	ADDI      r3, r0, 3
	ANDI      r3, r3, 31
	LWI       r5, r19, 800768
	ADDI      r5, r5, 0
	SWI       r5, r19, 800744
	beqid     r3, ($BB0_198)
	NOP    
$BB0_197:                               # %bb113.outer.outer.outer
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	LWI       r5, r19, 800744
	ADDK      r5, r5, r5
	SWI       r5, r19, 800744
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_197)
	NOP    
$BB0_198:                               # %bb113.outer
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_119 Depth 4
                                        #         Child Loop BB0_199 Depth 4
                                        #           Child Loop BB0_11 Depth 5
                                        #             Child Loop BB0_103 Depth 6
                                        #             Child Loop BB0_75 Depth 6
                                        #             Child Loop BB0_106 Depth 6
                                        #             Child Loop BB0_12 Depth 6
                                        #           Child Loop BB0_7 Depth 5
	LWI       r3, r19, 800712
	SWI       r3, r19, 800228
	LWI       r3, r19, 800716
	SWI       r3, r19, 800232
	LWI       r3, r19, 800720
	SWI       r3, r19, 800236
	ORI       r3, r0, 1060320051
	LWI       r5, r19, 800700
	FPMUL     r5, r5, r3
	SWI       r5, r19, 800732
	LWI       r5, r19, 800704
	FPMUL     r5, r5, r3
	SWI       r5, r19, 800728
	LWI       r5, r19, 800708
	FPMUL     r3, r5, r3
	SWI       r3, r19, 800724
	LWI        r3, r19, 800228
	SWI       r3, r19, 800648
	LWI        r3, r19, 800232
	SWI       r3, r19, 800644
	LWI        r3, r19, 800236
	SWI       r3, r19, 800652
$BB0_199:                               # %bb113
                                        #   Parent Loop BB0_201 Depth=1
                                        #     Parent Loop BB0_196 Depth=2
                                        #       Parent Loop BB0_198 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_11 Depth 5
                                        #             Child Loop BB0_103 Depth 6
                                        #             Child Loop BB0_75 Depth 6
                                        #             Child Loop BB0_106 Depth 6
                                        #             Child Loop BB0_12 Depth 6
                                        #           Child Loop BB0_7 Depth 5
	SWI       r4, r19, 800688
	ADDI      r3, r0, 3
	CMP       r4, r3, r4
	bltid     r4, ($BB0_7)
	NOP    
# BB#200:                               # %bb115
                                        #   in Loop: Header=BB0_201 Depth=1
	LWI       r4, r19, 800776
	ADDI      r4, r4, -1
	SWI       r4, r19, 800776
	ADD       r3, r0, r0
	CMP       r4, r3, r4
	beqid     r4, ($BB0_202)
	NOP    
$BB0_201:                               # %bb113.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_196 Depth 2
                                        #       Child Loop BB0_198 Depth 3
                                        #         Child Loop BB0_119 Depth 4
                                        #         Child Loop BB0_199 Depth 4
                                        #           Child Loop BB0_11 Depth 5
                                        #             Child Loop BB0_103 Depth 6
                                        #             Child Loop BB0_75 Depth 6
                                        #             Child Loop BB0_106 Depth 6
                                        #             Child Loop BB0_12 Depth 6
                                        #           Child Loop BB0_7 Depth 5
                                        #       Child Loop BB0_194 Depth 3
                                        #       Child Loop BB0_192 Depth 3
                                        #       Child Loop BB0_190 Depth 3
                                        #       Child Loop BB0_188 Depth 3
                                        #       Child Loop BB0_186 Depth 3
                                        #       Child Loop BB0_184 Depth 3
                                        #       Child Loop BB0_182 Depth 3
                                        #       Child Loop BB0_197 Depth 3
	ORI       r3, r0, 0
	SWI       r3, r19, 800700
	SWI       r3, r19, 800704
	SWI       r3, r19, 800708
	brid      ($BB0_196)
	ADD       r4, r0, r0
$BB0_202:                               # %invcont120
	ORI       r3, r0, 0
	LWI       r4, r19, 800780
	FPCONV    r5, r4
	SWI       r5, r19, 800744
	LWI       r5, r19, 800832
	FPCONV    r6, r5
	SWI       r6, r19, 800760
	ORI       r6, r0, -1073741824
	PRINT     r3
	MUL       r3, r5, r4
	SWI       r3, r19, 800856
	ATOMIC_INC r4, 0
	CMP       r3, r4, r3
	bleid     r3, ($BB0_545)
	NOP    
# BB#203:                               # %invcont129.lr.ph
	LWI       r3, r19, 800744
	FPDIV     r3, r3, r6
	SWI       r3, r19, 800764
	LWI       r3, r19, 800760
	FPDIV     r3, r3, r6
	SWI       r3, r19, 800776
	ORI       r3, r0, 1132756992
	ORI       r5, r0, 1134362657
	ORI       r6, r0, 1133772800
	ORI       r7, r0, 1139015713
	LWI       r8, r19, 800756
	SWI        r8, r19, 800248
	LWI       r8, r19, 800752
	SWI        r8, r19, 800244
	LWI       r9, r19, 800748
	SWI        r9, r19, 800240
	ADD       r10, r0, r0
	SWI       r10, r19, 800832
	LWI       r10, r19, 800248
	SWI       r10, r19, 800836
	FPRSUB    r3, r9, r3
	SWI       r3, r19, 800840
	FPRSUB    r3, r9, r5
	SWI       r3, r19, 800844
	FPRSUB    r3, r8, r6
	SWI       r3, r19, 800848
	FPRSUB    r3, r8, r7
	SWI       r3, r19, 800852
$BB0_204:                               # %invcont129
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_433 Depth 2
                                        #       Child Loop BB0_421 Depth 3
                                        #       Child Loop BB0_434 Depth 3
                                        #       Child Loop BB0_430 Depth 3
                                        #       Child Loop BB0_428 Depth 3
                                        #       Child Loop BB0_426 Depth 3
                                        #     Child Loop BB0_314 Depth 2
                                        #       Child Loop BB0_315 Depth 3
                                        #       Child Loop BB0_406 Depth 3
                                        #       Child Loop BB0_378 Depth 3
                                        #       Child Loop BB0_409 Depth 3
                                        #     Child Loop BB0_205 Depth 2
                                        #       Child Loop BB0_206 Depth 3
                                        #       Child Loop BB0_297 Depth 3
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_300 Depth 3
                                        #     Child Loop BB0_573 Depth 2
                                        #       Child Loop BB0_567 Depth 3
                                        #         Child Loop BB0_547 Depth 4
                                        #         Child Loop BB0_556 Depth 4
                                        #         Child Loop BB0_554 Depth 4
                                        #         Child Loop BB0_552 Depth 4
                                        #         Child Loop BB0_568 Depth 4
	LWI       r3, r19, 800780
	DIV       r5, r3, r4
	MUL       r3, r5, r3
	SWI       r3, r19, 800716
	RSUB      r4, r3, r4
	SWI       r4, r19, 800720
	FPCONV    r3, r5
	FPCONV    r4, r4
	LWI       r5, r19, 800776
	FPADD     r3, r3, r5
	ORI       r5, r0, 1056964608
	LWI       r6, r19, 800764
	FPADD     r4, r4, r6
	FPADD     r3, r3, r5
	FPADD     r4, r4, r5
	FPADD     r3, r3, r3
	FPADD     r4, r4, r4
	LWI       r5, r19, 800760
	FPDIV     r3, r3, r5
	LWI       r5, r19, 800744
	FPDIV     r4, r4, r5
	LWI       r5, r19, 800824
	FPMUL     r5, r5, r3
	LWI       r6, r19, 800812
	FPMUL     r6, r6, r4
	LWI       r7, r19, 800820
	FPMUL     r7, r7, r3
	LWI       r8, r19, 800808
	FPMUL     r8, r8, r4
	LWI       r9, r19, 800816
	FPMUL     r4, r9, r4
	LWI       r9, r19, 800828
	FPMUL     r3, r9, r3
	FPADD     r5, r5, r6
	FPADD     r6, r7, r8
	LWI       r7, r19, 800800
	FPADD     r5, r5, r7
	LWI       r7, r19, 800796
	FPADD     r6, r6, r7
	FPADD     r4, r4, r3
	LWI       r3, r19, 800804
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
	SWI        r4, r19, 800260
	FPDIV     r4, r5, r3
	SWI       r4, r19, 800632
	FPDIV     r3, r6, r3
	SWI       r3, r19, 800636
	LWI       r5, r19, 800260
	LWI       r6, r19, 800832
	BITOR     r5, r6, r5
	SWI       r5, r19, 800724
	SWI        r4, r19, 800256
	SWI        r3, r19, 800252
	SWI       r5, r19, 800264
	ADD       r4, r0, r0
	SWI       r4, r19, 800688
	LWI        r3, r19, 800264
	SWI       r3, r19, 800624
	ADDI      r3, r0, -1
	SWI       r3, r19, 800628
	ADDI      r3, r0, 1343554297
	SWI       r3, r19, 800620
	SWI       r4, r19, 800680
	SWI       r4, r19, 800684
	SWI       r4, r19, 800648
	SWI       r4, r19, 800652
	SWI       r4, r19, 800656
	SWI       r4, r19, 800660
	SWI       r4, r19, 800664
	SWI       r4, r19, 800676
	SWI       r4, r19, 800692
	SWI       r4, r19, 800696
	SWI       r4, r19, 800700
$BB0_205:                               # %bb.i77
                                        #   Parent Loop BB0_204 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_206 Depth 3
                                        #       Child Loop BB0_297 Depth 3
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_300 Depth 3
	ADDI      r3, r0, 3
	ANDI      r3, r3, 31
	beqid     r3, ($BB0_207)
	ADDI      r4, r4, 0
$BB0_206:                               # %bb.i77
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_205 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_206)
	ADDK      r4, r4, r4
$BB0_207:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	LWI       r3, r19, 800672
	ADD       r3, r4, r3
	LOAD      r4, r3, 2
	LOAD      r5, r3, 1
	LOAD      r6, r3, 0
	LOAD      r7, r3, 5
	LOAD      r8, r3, 4
	LOAD      r9, r3, 3
	LWI       r10, r19, 800748
	FPRSUB    r6, r10, r6
	FPRSUB    r9, r10, r9
	LWI       r10, r19, 800636
	FPDIV     r6, r6, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r6, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_209)
	ADD       r20, r11, r0
# BB#208:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r20, r12, r0
$BB0_209:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r20, ($BB0_211)
	ADD       r10, r9, r0
# BB#210:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r10, r6, r0
$BB0_211:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_213)
	NOP    
# BB#212:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r6, r9, r0
$BB0_213:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r6, r9
	bneid     r20, ($BB0_215)
	ADD       r23, r11, r0
# BB#214:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r23, r12, r0
$BB0_215:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r22, ($BB0_217)
	ADD       r20, r11, r0
# BB#216:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r20, r12, r0
$BB0_217:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r23, ($BB0_219)
	NOP    
# BB#218:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r10, r21, r0
$BB0_219:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r20, ($BB0_221)
	NOP    
# BB#220:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r6, r9, r0
$BB0_221:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	FPGT      r9, r10, r6
	bneid     r9, ($BB0_223)
	NOP    
# BB#222:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r11, r12, r0
$BB0_223:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r11, ($BB0_295)
	NOP    
# BB#224:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r6, r9
	bneid     r9, ($BB0_226)
	NOP    
# BB#225:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	ADDI      r11, r0, 0
$BB0_226:                               # %bb.i77
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r11, ($BB0_295)
	NOP    
# BB#227:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	LWI       r9, r19, 800752
	FPRSUB    r5, r9, r5
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 800632
	FPDIV     r5, r5, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r5, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_229)
	ADD       r20, r11, r0
# BB#228:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r20, r12, r0
$BB0_229:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r20, ($BB0_231)
	ADD       r9, r8, r0
# BB#230:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r9, r5, r0
$BB0_231:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r20, ($BB0_233)
	NOP    
# BB#232:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r5, r8, r0
$BB0_233:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	FPGT      r8, r9, r10
	FPLT      r20, r5, r6
	bneid     r8, ($BB0_235)
	ADD       r21, r11, r0
# BB#234:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r21, r12, r0
$BB0_235:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r20, ($BB0_237)
	ADD       r8, r11, r0
# BB#236:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r8, r12, r0
$BB0_237:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r21, ($BB0_239)
	NOP    
# BB#238:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r9, r10, r0
$BB0_239:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r8, ($BB0_241)
	NOP    
# BB#240:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r5, r6, r0
$BB0_241:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	FPGT      r6, r9, r5
	bneid     r6, ($BB0_243)
	NOP    
# BB#242:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r11, r12, r0
$BB0_243:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r11, ($BB0_295)
	NOP    
# BB#244:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	ORI       r6, r0, 0
	ADDI      r8, r0, 1
	FPLT      r6, r5, r6
	bneid     r6, ($BB0_246)
	NOP    
# BB#245:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	ADDI      r8, r0, 0
$BB0_246:                               # %bb29.i.i83
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r8, ($BB0_295)
	NOP    
# BB#247:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	LWI       r6, r19, 800756
	FPRSUB    r4, r6, r4
	FPRSUB    r6, r6, r7
	LWI       r7, r19, 800624
	FPDIV     r4, r4, r7
	FPDIV     r6, r6, r7
	FPGT      r7, r4, r6
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_249)
	ADD       r11, r8, r0
# BB#248:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r11, r10, r0
$BB0_249:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r11, ($BB0_251)
	ADD       r7, r6, r0
# BB#250:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r7, r4, r0
$BB0_251:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r11, ($BB0_253)
	NOP    
# BB#252:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r4, r6, r0
$BB0_253:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	FPGT      r6, r7, r9
	FPLT      r11, r4, r5
	bneid     r6, ($BB0_255)
	ADD       r12, r8, r0
# BB#254:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r12, r10, r0
$BB0_255:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r11, ($BB0_257)
	ADD       r6, r8, r0
# BB#256:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r6, r10, r0
$BB0_257:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r6, ($BB0_259)
	NOP    
# BB#258:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r4, r5, r0
$BB0_259:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r12, ($BB0_261)
	NOP    
# BB#260:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r7, r9, r0
$BB0_261:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	FPGT      r5, r7, r4
	bneid     r5, ($BB0_263)
	NOP    
# BB#262:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r8, r10, r0
$BB0_263:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r8, ($BB0_295)
	NOP    
# BB#264:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	ORI       r5, r0, 0
	ADDI      r6, r0, 1
	FPLT      r4, r4, r5
	bneid     r4, ($BB0_266)
	NOP    
# BB#265:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	ADDI      r6, r0, 0
$BB0_266:                               # %bb62.i.i89
                                        #   in Loop: Header=BB0_205 Depth=2
	bneid     r6, ($BB0_295)
	NOP    
# BB#267:                               # %bb1.i90
                                        #   in Loop: Header=BB0_205 Depth=2
	LOAD      r4, r3, 7
	LOAD      r3, r3, 6
	SWI       r3, r19, 800640
	ADD       r5, r0, r0
	CMP       r3, r5, r3
	bltid     r3, ($BB0_299)
	NOP    
# BB#268:                               # %bb6.preheader.i91
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r3, r0, r0
	LWI       r5, r19, 800640
	CMP       r3, r3, r5
	bleid     r3, ($BB0_295)
	NOP    
$BB0_269:                               # %bb5.i104
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_205 Depth=2
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
	SWI       r7, r19, 800644
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r19, 800632
	FPMUL     r21, r20, r7
	LWI       r22, r19, 800624
	FPMUL     r23, r8, r22
	FPRSUB    r6, r12, r6
	LOAD      r24, r4, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r19, 800636
	FPMUL     r25, r23, r7
	FPRSUB    r3, r10, r3
	FPRSUB    r5, r11, r5
	LWI       r26, r19, 800748
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r6
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r4, 9
	LWI       r28, r19, 800752
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
	LWI       r31, r19, 800756
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
	bneid     r23, ($BB0_271)
	NOP    
# BB#270:                               # %bb5.i104
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r21, r0, 0
$BB0_271:                               # %bb5.i104
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r21, ($BB0_294)
	NOP    
# BB#272:                               # %bb5.i104
                                        #   in Loop: Header=BB0_269 Depth=3
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_274)
	NOP    
# BB#273:                               # %bb5.i104
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r21, r0, 0
$BB0_274:                               # %bb5.i104
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r21, ($BB0_294)
	NOP    
# BB#275:                               # %bb73.i.i105
                                        #   in Loop: Header=BB0_269 Depth=3
	FPMUL     r7, r11, r3
	FPMUL     r21, r5, r10
	FPRSUB    r7, r21, r7
	FPMUL     r10, r6, r10
	FPMUL     r3, r12, r3
	FPRSUB    r3, r3, r10
	FPMUL     r5, r5, r12
	FPMUL     r6, r6, r11
	LWI       r10, r19, 800636
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r5, r6, r5
	LWI       r6, r19, 800632
	FPMUL     r6, r3, r6
	FPADD     r10, r10, r11
	LWI       r12, r19, 800624
	FPMUL     r12, r5, r12
	FPADD     r6, r6, r10
	FPADD     r6, r12, r6
	FPMUL     r6, r6, r22
	ADDI      r10, r0, 1
	FPLT      r11, r6, r11
	bneid     r11, ($BB0_277)
	NOP    
# BB#276:                               # %bb73.i.i105
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r10, r0, 0
$BB0_277:                               # %bb73.i.i105
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r10, ($BB0_294)
	NOP    
# BB#278:                               # %bb94.i55.i106
                                        #   in Loop: Header=BB0_269 Depth=3
	FPADD     r6, r6, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r6, r6, r10
	bneid     r6, ($BB0_280)
	NOP    
# BB#279:                               # %bb94.i55.i106
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r11, r0, 0
$BB0_280:                               # %bb94.i55.i106
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r11, ($BB0_294)
	NOP    
# BB#281:                               # %bb96.i.i109
                                        #   in Loop: Header=BB0_269 Depth=3
	FPMUL     r6, r7, r9
	ORI       r7, r0, 0
	FPMUL     r3, r3, r8
	FPADD     r6, r6, r7
	LWI       r8, r19, 800644
	FPMUL     r5, r5, r8
	FPADD     r3, r3, r6
	FPADD     r3, r5, r3
	FPMUL     r3, r3, r22
	FPUN      r5, r3, r7
	FPLE      r6, r3, r7
	BITOR     r5, r5, r6
	bneid     r5, ($BB0_283)
	ADDI      r7, r0, 1
# BB#282:                               # %bb96.i.i109
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r7, r0, 0
$BB0_283:                               # %bb96.i.i109
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r7, ($BB0_294)
	NOP    
# BB#284:                               # %bb96.i.i109
                                        #   in Loop: Header=BB0_269 Depth=3
	ORI       r5, r0, 981668463
	ADDI      r6, r0, 1
	FPLT      r5, r3, r5
	bneid     r5, ($BB0_286)
	NOP    
# BB#285:                               # %bb96.i.i109
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r6, r0, 0
$BB0_286:                               # %bb96.i.i109
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r6, ($BB0_294)
	NOP    
# BB#287:                               # %bb96.i.i109
                                        #   in Loop: Header=BB0_269 Depth=3
	ORI       r5, r0, 1343554297
	ADDI      r6, r0, 1
	FPEQ      r5, r3, r5
	bneid     r5, ($BB0_289)
	NOP    
# BB#288:                               # %bb96.i.i109
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r6, r0, 0
$BB0_289:                               # %bb96.i.i109
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r6, ($BB0_294)
	NOP    
# BB#290:                               # %bb2.i.i.i110
                                        #   in Loop: Header=BB0_269 Depth=3
	LWI       r5, r19, 800620
	SWI       r5, r19, 800268
	LWI        r5, r19, 800268
	FPUN      r6, r5, r3
	FPLE      r5, r5, r3
	BITOR     r5, r6, r5
	bneid     r5, ($BB0_292)
	ADDI      r7, r0, 1
# BB#291:                               # %bb2.i.i.i110
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r7, r0, 0
$BB0_292:                               # %bb2.i.i.i110
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r7, ($BB0_294)
	NOP    
# BB#293:                               # %bb3.i.i.i161
                                        #   in Loop: Header=BB0_269 Depth=3
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
	SWI       r22, r19, 800708
	ADD       r22, r0, r0
	MULI      r21, r21, 25
	LOAD      r22, r22, 9
	ADD       r21, r22, r21
	LOAD      r22, r21, 6
	LOAD      r23, r21, 5
	LOAD      r21, r21, 4
	SWI        r22, r19, 800312
	SWI        r23, r19, 800316
	SWI        r21, r19, 800320
	SWI        r11, r19, 800300
	SWI        r12, r19, 800304
	SWI        r20, r19, 800308
	SWI        r8, r19, 800288
	SWI        r9, r19, 800292
	SWI        r10, r19, 800296
	SWI        r5, r19, 800276
	SWI        r6, r19, 800280
	SWI        r7, r19, 800284
	SWI        r3, r19, 800272
	ADDI      r3, r0, 1060320051
	SWI       r3, r19, 800704
	ADDI      r3, r0, 1050253722
	SWI       r3, r19, 800712
	LWI       r3, r19, 800312
	SWI       r3, r19, 800688
	LWI       r6, r19, 800316
	SWI       r6, r19, 800680
	LWI       r6, r19, 800320
	SWI       r6, r19, 800684
	LWI       r5, r19, 800300
	SWI       r5, r19, 800648
	LWI       r5, r19, 800304
	SWI       r5, r19, 800652
	LWI       r5, r19, 800308
	SWI       r5, r19, 800656
	LWI       r5, r19, 800288
	SWI       r5, r19, 800660
	LWI       r5, r19, 800292
	SWI       r5, r19, 800664
	LWI       r5, r19, 800296
	SWI       r5, r19, 800676
	LWI       r5, r19, 800276
	SWI       r5, r19, 800692
	LWI       r5, r19, 800280
	SWI       r5, r19, 800696
	LWI       r5, r19, 800284
	SWI       r5, r19, 800700
	LWI       r3, r19, 800272
	SWI       r3, r19, 800620
$BB0_294:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i163
                                        #   in Loop: Header=BB0_269 Depth=3
	LWI       r3, r19, 800640
	ADDI      r3, r3, -1
	SWI       r3, r19, 800640
	ADDI      r4, r4, 11
	ADD       r5, r0, r0
	CMP       r3, r5, r3
	bneid     r3, ($BB0_269)
	NOP    
$BB0_295:                               # %bb7.i164
                                        #   in Loop: Header=BB0_205 Depth=2
	ADD       r4, r0, r0
	LWI       r3, r19, 800628
	CMP       r4, r4, r3
	bltid     r4, ($BB0_302)
	NOP    
# BB#296:                               # %bb9.i165
                                        #   in Loop: Header=BB0_205 Depth=2
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r3, r19, 800628
	beqid     r4, ($BB0_298)
	ADDI      r3, r3, 0
$BB0_297:                               # %bb9.i165
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_205 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_297)
	ADDK      r3, r3, r3
$BB0_298:                               # %bb9.i165
                                        #   in Loop: Header=BB0_205 Depth=2
	ADDI      r4, r19, 56
	LW        r4, r4, r3
	LWI       r3, r19, 800628
	ADDI      r3, r3, -1
	SWI       r3, r19, 800628
	brid      ($BB0_205)
	NOP    
$BB0_299:                               # %bb3.i93
                                        #   in Loop: Header=BB0_205 Depth=2
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r5, r19, 800628
	beqid     r3, ($BB0_301)
	ADDI      r5, r5, 0
$BB0_300:                               # %bb3.i93
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_205 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_300)
	ADDK      r5, r5, r5
$BB0_301:                               # %bb3.i93
                                        #   in Loop: Header=BB0_205 Depth=2
	ADDI      r3, r19, 56
	LWI       r6, r19, 800628
	ADDI      r6, r6, 1
	SWI       r6, r19, 800628
	ADDI      r6, r4, 1
	ADD       r3, r3, r5
	brid      ($BB0_205)
	SWI       r6, r3, 4
$BB0_302:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit166
                                        #   in Loop: Header=BB0_204 Depth=1
	LWI       r4, r19, 800620
	SWI       r4, r19, 800360
	LWI       r5, r19, 800700
	SWI       r5, r19, 800356
	LWI       r5, r19, 800696
	SWI       r5, r19, 800352
	LWI       r5, r19, 800692
	SWI       r5, r19, 800348
	LWI       r5, r19, 800676
	SWI       r5, r19, 800344
	LWI       r5, r19, 800664
	SWI       r5, r19, 800340
	LWI       r5, r19, 800660
	SWI       r5, r19, 800336
	LWI       r5, r19, 800656
	SWI       r5, r19, 800332
	LWI       r5, r19, 800652
	SWI       r5, r19, 800328
	LWI       r5, r19, 800648
	SWI       r5, r19, 800324
	LWI        r4, r19, 800360
	SWI       r4, r19, 800692
	ORI       r3, r0, 1343554297
	LWI        r5, r19, 800356
	LWI        r6, r19, 800352
	LWI        r7, r19, 800348
	LWI        r8, r19, 800344
	LWI        r9, r19, 800340
	LWI        r10, r19, 800336
	LWI        r11, r19, 800332
	LWI        r12, r19, 800328
	LWI        r20, r19, 800324
	ADDI      r21, r0, 1
	FPLT      r4, r4, r3
	bneid     r4, ($BB0_304)
	NOP    
# BB#303:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit166
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r21, r0, 0
$BB0_304:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit166
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r21, ($BB0_306)
	NOP    
# BB#305:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit166.invcont134_crit_edge
                                        #   in Loop: Header=BB0_204 Depth=1
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
	LWI       r8, r19, 800692
	LWI       r7, r19, 800636
	FPMUL     r7, r7, r8
	LWI       r9, r19, 800632
	FPMUL     r8, r9, r8
	FPADD     r4, r6, r4
	FPMUL     r5, r5, r5
	ADD       r6, r0, r0
	LWI       r9, r19, 800748
	FPADD     r7, r7, r9
	SWI       r7, r19, 800656
	LWI       r7, r19, 800752
	FPADD     r7, r8, r7
	SWI       r7, r19, 800660
	FPADD     r4, r4, r5
	SWI       r4, r19, 800696
	ORI       r4, r0, 1057988018
	ADDI      r5, r0, 1060806590
	ADDI      r7, r0, 1065151889
	brid      ($BB0_419)
	NOP    
$BB0_306:                               # %bb.i705
                                        #   in Loop: Header=BB0_204 Depth=1
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
	LWI       r6, r19, 800724
	SWI       r6, r19, 800368
	FPMUL     r6, r9, r9
	FPMUL     r7, r4, r4
	LWI        r3, r19, 800368
	LWI       r8, r19, 800636
	FPMUL     r10, r8, r8
	LWI       r11, r19, 800632
	FPMUL     r12, r11, r11
	FPADD     r6, r6, r7
	FPMUL     r7, r5, r5
	FPADD     r6, r6, r7
	SWI       r6, r19, 800696
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
	LWI       r12, r19, 800692
	FPMUL     r3, r3, r12
	FPMUL     r11, r11, r12
	FPMUL     r8, r8, r12
	FPMUL     r6, r6, r5
	FPADD     r7, r7, r10
	FPADD     r6, r6, r7
	LWI       r7, r19, 800704
	SWI       r7, r19, 800364
	SWI        r3, r19, 800380
	SWI        r11, r19, 800376
	SWI        r8, r19, 800372
	LWI        r7, r19, 800364
	SWI       r7, r19, 800700
	FPUN      r7, r6, r20
	FPLE      r6, r6, r20
	BITOR     r6, r7, r6
	bneid     r6, ($BB0_308)
	ADDI      r10, r0, 1
# BB#307:                               # %bb.i705
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r10, r0, 0
$BB0_308:                               # %bb.i705
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r10, ($BB0_310)
	NOP    
# BB#309:                               # %bb46.i711
                                        #   in Loop: Header=BB0_204 Depth=1
	FPNEG     r9, r9
	FPNEG     r4, r4
	FPNEG     r5, r5
$BB0_310:                               # %bb53.i
                                        #   in Loop: Header=BB0_204 Depth=1
	LWI       r6, r19, 800748
	FPADD     r6, r8, r6
	SWI       r6, r19, 800656
	LWI       r7, r19, 800752
	FPADD     r7, r11, r7
	SWI       r7, r19, 800660
	LWI       r8, r19, 800756
	FPADD     r3, r8, r3
	SWI       r3, r19, 800664
	LWI       r8, r19, 800784
	FPRSUB    r6, r6, r8
	LWI       r8, r19, 800788
	FPRSUB    r7, r7, r8
	LWI       r8, r19, 800792
	FPRSUB    r3, r3, r8
	FPMUL     r8, r6, r6
	FPMUL     r10, r7, r7
	FPADD     r8, r8, r10
	FPMUL     r10, r3, r3
	FPADD     r8, r8, r10
	ORI       r10, r0, 1065353216
	FPINVSQRT r11, r8
	FPDIV     r10, r10, r11
	FPDIV     r6, r6, r10
	SWI       r6, r19, 800644
	FPDIV     r7, r7, r10
	SWI       r7, r19, 800648
	ORI       r11, r0, 0
	FPMUL     r6, r6, r9
	FPDIV     r3, r3, r10
	SWI       r3, r19, 800652
	FPMUL     r4, r7, r4
	FPADD     r6, r6, r11
	FPMUL     r5, r3, r5
	FPADD     r4, r4, r6
	FPADD     r4, r5, r4
	SWI       r4, r19, 800732
	FPUN      r5, r4, r11
	FPLE      r4, r4, r11
	BITOR     r4, r5, r4
	bneid     r4, ($BB0_312)
	ADDI      r6, r0, 1
# BB#311:                               # %bb53.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r6, r0, 0
$BB0_312:                               # %bb53.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r6, ($BB0_418)
	NOP    
# BB#313:                               # %bb88.i713
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r4, r0, r0
	ADDI      r5, r0, -1
	SWI       r5, r19, 800628
	FPINVSQRT r5, r8
	SWI       r5, r19, 800728
$BB0_314:                               # %bb.i236
                                        #   Parent Loop BB0_204 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_315 Depth 3
                                        #       Child Loop BB0_406 Depth 3
                                        #       Child Loop BB0_378 Depth 3
                                        #       Child Loop BB0_409 Depth 3
	ADDI      r5, r0, 3
	ANDI      r5, r5, 31
	beqid     r5, ($BB0_316)
	ADDI      r4, r4, 0
$BB0_315:                               # %bb.i236
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_314 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_315)
	ADDK      r4, r4, r4
$BB0_316:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	LWI       r5, r19, 800672
	ADD       r5, r4, r5
	LOAD      r4, r5, 2
	LOAD      r6, r5, 1
	LOAD      r7, r5, 0
	LOAD      r11, r5, 5
	LOAD      r3, r5, 4
	LOAD      r8, r5, 3
	LWI       r9, r19, 800656
	FPRSUB    r7, r9, r7
	FPRSUB    r8, r9, r8
	LWI       r9, r19, 800644
	FPDIV     r7, r7, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r7, r8
	ADDI      r10, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_318)
	ADD       r20, r10, r0
# BB#317:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r20, r12, r0
$BB0_318:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r20, ($BB0_320)
	ADD       r9, r8, r0
# BB#319:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r9, r7, r0
$BB0_320:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_322)
	NOP    
# BB#321:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r7, r8, r0
$BB0_322:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	ORI       r8, r0, 1343554297
	FPGT      r20, r9, r21
	FPLT      r22, r7, r8
	bneid     r20, ($BB0_324)
	ADD       r23, r10, r0
# BB#323:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r23, r12, r0
$BB0_324:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r22, ($BB0_326)
	ADD       r20, r10, r0
# BB#325:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r20, r12, r0
$BB0_326:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r23, ($BB0_328)
	NOP    
# BB#327:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r9, r21, r0
$BB0_328:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r20, ($BB0_330)
	NOP    
# BB#329:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r7, r8, r0
$BB0_330:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	FPGT      r8, r9, r7
	bneid     r8, ($BB0_332)
	NOP    
# BB#331:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r10, r12, r0
$BB0_332:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r10, ($BB0_404)
	NOP    
# BB#333:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	ORI       r8, r0, 0
	ADDI      r10, r0, 1
	FPLT      r8, r7, r8
	bneid     r8, ($BB0_335)
	NOP    
# BB#334:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	ADDI      r10, r0, 0
$BB0_335:                               # %bb.i236
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r10, ($BB0_404)
	NOP    
# BB#336:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	LWI       r8, r19, 800660
	FPRSUB    r6, r8, r6
	FPRSUB    r3, r8, r3
	LWI       r8, r19, 800648
	FPDIV     r6, r6, r8
	FPDIV     r3, r3, r8
	FPGT      r8, r6, r3
	ADDI      r10, r0, 1
	ADDI      r12, r0, 0
	bneid     r8, ($BB0_338)
	ADD       r20, r10, r0
# BB#337:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r20, r12, r0
$BB0_338:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r20, ($BB0_340)
	ADD       r8, r3, r0
# BB#339:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r8, r6, r0
$BB0_340:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r20, ($BB0_342)
	NOP    
# BB#341:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r6, r3, r0
$BB0_342:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	FPGT      r3, r8, r9
	FPLT      r20, r6, r7
	bneid     r3, ($BB0_344)
	ADD       r21, r10, r0
# BB#343:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r21, r12, r0
$BB0_344:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r20, ($BB0_346)
	ADD       r3, r10, r0
# BB#345:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r3, r12, r0
$BB0_346:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r21, ($BB0_348)
	NOP    
# BB#347:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r8, r9, r0
$BB0_348:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r3, ($BB0_350)
	NOP    
# BB#349:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r6, r7, r0
$BB0_350:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	FPGT      r7, r8, r6
	bneid     r7, ($BB0_352)
	NOP    
# BB#351:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r10, r12, r0
$BB0_352:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r10, ($BB0_404)
	NOP    
# BB#353:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	ORI       r7, r0, 0
	ADDI      r3, r0, 1
	FPLT      r7, r6, r7
	bneid     r7, ($BB0_355)
	NOP    
# BB#354:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	ADDI      r3, r0, 0
$BB0_355:                               # %bb29.i.i242
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r3, ($BB0_404)
	NOP    
# BB#356:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	LWI       r7, r19, 800664
	FPRSUB    r4, r7, r4
	FPRSUB    r7, r7, r11
	LWI       r11, r19, 800652
	FPDIV     r4, r4, r11
	FPDIV     r7, r7, r11
	FPGT      r11, r4, r7
	ADDI      r3, r0, 1
	ADDI      r9, r0, 0
	bneid     r11, ($BB0_358)
	ADD       r10, r3, r0
# BB#357:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r10, r9, r0
$BB0_358:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r10, ($BB0_360)
	ADD       r11, r7, r0
# BB#359:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r11, r4, r0
$BB0_360:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r10, ($BB0_362)
	NOP    
# BB#361:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r4, r7, r0
$BB0_362:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	FPGT      r7, r11, r8
	FPLT      r10, r4, r6
	bneid     r7, ($BB0_364)
	ADD       r12, r3, r0
# BB#363:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r12, r9, r0
$BB0_364:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r10, ($BB0_366)
	ADD       r7, r3, r0
# BB#365:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r7, r9, r0
$BB0_366:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r7, ($BB0_368)
	NOP    
# BB#367:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r4, r6, r0
$BB0_368:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r12, ($BB0_370)
	NOP    
# BB#369:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r11, r8, r0
$BB0_370:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	FPGT      r6, r11, r4
	bneid     r6, ($BB0_372)
	NOP    
# BB#371:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r3, r9, r0
$BB0_372:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r3, ($BB0_404)
	NOP    
# BB#373:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	ORI       r6, r0, 0
	ADDI      r7, r0, 1
	FPLT      r4, r4, r6
	bneid     r4, ($BB0_375)
	NOP    
# BB#374:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	ADDI      r7, r0, 0
$BB0_375:                               # %bb62.i.i248
                                        #   in Loop: Header=BB0_314 Depth=2
	bneid     r7, ($BB0_404)
	NOP    
# BB#376:                               # %bb1.i249
                                        #   in Loop: Header=BB0_314 Depth=2
	LOAD      r4, r5, 7
	LOAD      r5, r5, 6
	SWI       r5, r19, 800640
	ADD       r6, r0, r0
	CMP       r5, r6, r5
	bltid     r5, ($BB0_408)
	NOP    
# BB#377:                               # %bb6.preheader.i250
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r5, r0, r0
	LWI       r6, r19, 800640
	CMP       r5, r5, r6
	bleid     r5, ($BB0_404)
	NOP    
$BB0_378:                               # %bb5.i263
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_314 Depth=2
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
	SWI       r11, r19, 800676
	FPRSUB    r3, r10, r3
	FPRSUB    r8, r12, r8
	LWI       r20, r19, 800648
	FPMUL     r21, r20, r11
	LWI       r22, r19, 800652
	FPMUL     r23, r3, r22
	FPRSUB    r7, r12, r7
	LOAD      r24, r4, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r8, r22
	LWI       r23, r19, 800644
	FPMUL     r25, r23, r11
	FPRSUB    r5, r9, r5
	FPRSUB    r6, r10, r6
	LWI       r26, r19, 800656
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r3, r23
	FPMUL     r20, r8, r20
	FPMUL     r25, r21, r7
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r4, 9
	LWI       r28, r19, 800660
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
	LWI       r31, r19, 800664
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
	bneid     r23, ($BB0_380)
	NOP    
# BB#379:                               # %bb5.i263
                                        #   in Loop: Header=BB0_378 Depth=3
	ADDI      r21, r0, 0
$BB0_380:                               # %bb5.i263
                                        #   in Loop: Header=BB0_378 Depth=3
	bneid     r21, ($BB0_403)
	NOP    
# BB#381:                               # %bb5.i263
                                        #   in Loop: Header=BB0_378 Depth=3
	ORI       r11, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r11, r20, r11
	bneid     r11, ($BB0_383)
	NOP    
# BB#382:                               # %bb5.i263
                                        #   in Loop: Header=BB0_378 Depth=3
	ADDI      r21, r0, 0
$BB0_383:                               # %bb5.i263
                                        #   in Loop: Header=BB0_378 Depth=3
	bneid     r21, ($BB0_403)
	NOP    
# BB#384:                               # %bb73.i.i264
                                        #   in Loop: Header=BB0_378 Depth=3
	FPMUL     r11, r10, r5
	FPMUL     r21, r6, r9
	FPRSUB    r11, r21, r11
	FPMUL     r9, r7, r9
	FPMUL     r5, r12, r5
	FPRSUB    r5, r5, r9
	FPMUL     r6, r6, r12
	FPMUL     r7, r7, r10
	LWI       r9, r19, 800644
	FPMUL     r9, r11, r9
	ORI       r10, r0, 0
	FPRSUB    r6, r7, r6
	LWI       r7, r19, 800648
	FPMUL     r7, r5, r7
	FPADD     r9, r9, r10
	LWI       r12, r19, 800652
	FPMUL     r12, r6, r12
	FPADD     r7, r7, r9
	FPADD     r7, r12, r7
	FPMUL     r7, r7, r22
	ADDI      r9, r0, 1
	FPLT      r10, r7, r10
	bneid     r10, ($BB0_386)
	NOP    
# BB#385:                               # %bb73.i.i264
                                        #   in Loop: Header=BB0_378 Depth=3
	ADDI      r9, r0, 0
$BB0_386:                               # %bb73.i.i264
                                        #   in Loop: Header=BB0_378 Depth=3
	bneid     r9, ($BB0_403)
	NOP    
# BB#387:                               # %bb94.i55.i265
                                        #   in Loop: Header=BB0_378 Depth=3
	FPADD     r7, r7, r20
	ORI       r9, r0, 1065353216
	ADDI      r10, r0, 1
	FPGT      r7, r7, r9
	bneid     r7, ($BB0_389)
	NOP    
# BB#388:                               # %bb94.i55.i265
                                        #   in Loop: Header=BB0_378 Depth=3
	ADDI      r10, r0, 0
$BB0_389:                               # %bb94.i55.i265
                                        #   in Loop: Header=BB0_378 Depth=3
	bneid     r10, ($BB0_403)
	NOP    
# BB#390:                               # %bb96.i.i268
                                        #   in Loop: Header=BB0_378 Depth=3
	FPMUL     r7, r11, r8
	ORI       r11, r0, 0
	FPMUL     r5, r5, r3
	FPADD     r7, r7, r11
	LWI       r3, r19, 800676
	FPMUL     r6, r6, r3
	FPADD     r5, r5, r7
	FPADD     r5, r6, r5
	FPMUL     r5, r5, r22
	FPUN      r6, r5, r11
	FPLE      r7, r5, r11
	BITOR     r6, r6, r7
	bneid     r6, ($BB0_392)
	ADDI      r11, r0, 1
# BB#391:                               # %bb96.i.i268
                                        #   in Loop: Header=BB0_378 Depth=3
	ADDI      r11, r0, 0
$BB0_392:                               # %bb96.i.i268
                                        #   in Loop: Header=BB0_378 Depth=3
	bneid     r11, ($BB0_403)
	NOP    
# BB#393:                               # %bb96.i.i268
                                        #   in Loop: Header=BB0_378 Depth=3
	ORI       r6, r0, 981668463
	ADDI      r7, r0, 1
	FPLT      r6, r5, r6
	bneid     r6, ($BB0_395)
	NOP    
# BB#394:                               # %bb96.i.i268
                                        #   in Loop: Header=BB0_378 Depth=3
	ADDI      r7, r0, 0
$BB0_395:                               # %bb96.i.i268
                                        #   in Loop: Header=BB0_378 Depth=3
	bneid     r7, ($BB0_403)
	NOP    
# BB#396:                               # %bb96.i.i268
                                        #   in Loop: Header=BB0_378 Depth=3
	ORI       r6, r0, 1343554297
	ADDI      r7, r0, 1
	FPEQ      r6, r5, r6
	bneid     r6, ($BB0_398)
	NOP    
# BB#397:                               # %bb96.i.i268
                                        #   in Loop: Header=BB0_378 Depth=3
	ADDI      r7, r0, 0
$BB0_398:                               # %bb96.i.i268
                                        #   in Loop: Header=BB0_378 Depth=3
	bneid     r7, ($BB0_403)
	NOP    
# BB#399:                               # %bb2.i.i.i269
                                        #   in Loop: Header=BB0_378 Depth=3
	LWI       r6, r19, 800620
	SWI       r6, r19, 800384
	LWI        r6, r19, 800384
	FPUN      r7, r6, r5
	FPLE      r6, r6, r5
	BITOR     r6, r7, r6
	bneid     r6, ($BB0_401)
	ADDI      r11, r0, 1
# BB#400:                               # %bb2.i.i.i269
                                        #   in Loop: Header=BB0_378 Depth=3
	ADDI      r11, r0, 0
$BB0_401:                               # %bb2.i.i.i269
                                        #   in Loop: Header=BB0_378 Depth=3
	bneid     r11, ($BB0_403)
	NOP    
# BB#402:                               # %bb3.i.i.i320
                                        #   in Loop: Header=BB0_378 Depth=3
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
	SWI        r5, r19, 800388
	LOAD      r5, r6, 6
	LWI       r5, r19, 800388
	SWI       r5, r19, 800620
	LOAD      r5, r6, 5
	LOAD      r5, r6, 4
$BB0_403:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i322
                                        #   in Loop: Header=BB0_378 Depth=3
	LWI       r5, r19, 800640
	ADDI      r5, r5, -1
	SWI       r5, r19, 800640
	ADDI      r4, r4, 11
	ADD       r6, r0, r0
	CMP       r5, r6, r5
	bneid     r5, ($BB0_378)
	NOP    
$BB0_404:                               # %bb7.i323
                                        #   in Loop: Header=BB0_314 Depth=2
	ADD       r4, r0, r0
	LWI       r5, r19, 800628
	CMP       r4, r4, r5
	bltid     r4, ($BB0_411)
	NOP    
# BB#405:                               # %bb9.i324
                                        #   in Loop: Header=BB0_314 Depth=2
	ADDI      r4, r0, 2
	ANDI      r4, r4, 31
	LWI       r5, r19, 800628
	beqid     r4, ($BB0_407)
	ADDI      r5, r5, 0
$BB0_406:                               # %bb9.i324
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_314 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r4, r4, -1
	bneid     r4, ($BB0_406)
	ADDK      r5, r5, r5
$BB0_407:                               # %bb9.i324
                                        #   in Loop: Header=BB0_314 Depth=2
	ADDI      r4, r19, 56
	LW        r4, r4, r5
	LWI       r5, r19, 800628
	ADDI      r5, r5, -1
	SWI       r5, r19, 800628
	brid      ($BB0_314)
	NOP    
$BB0_408:                               # %bb3.i252
                                        #   in Loop: Header=BB0_314 Depth=2
	ADDI      r5, r0, 2
	ANDI      r5, r5, 31
	LWI       r6, r19, 800628
	beqid     r5, ($BB0_410)
	ADDI      r6, r6, 0
$BB0_409:                               # %bb3.i252
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_314 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_409)
	ADDK      r6, r6, r6
$BB0_410:                               # %bb3.i252
                                        #   in Loop: Header=BB0_314 Depth=2
	ADDI      r5, r19, 56
	LWI       r7, r19, 800628
	ADDI      r7, r7, 1
	SWI       r7, r19, 800628
	ADDI      r7, r4, 1
	ADD       r5, r5, r6
	brid      ($BB0_314)
	SWI       r7, r5, 4
$BB0_411:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit325
                                        #   in Loop: Header=BB0_204 Depth=1
	LWI       r4, r19, 800620
	SWI       r4, r19, 800392
	ORI       r4, r0, 1065353216
	LWI        r5, r19, 800392
	LWI       r6, r19, 800728
	FPDIV     r4, r4, r6
	ORI       r11, r0, 0
	FPUN      r6, r5, r4
	FPGE      r4, r5, r4
	BITOR     r4, r6, r4
	bneid     r4, ($BB0_413)
	ADDI      r7, r0, 1
# BB#412:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit325
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r7, r0, 0
$BB0_413:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit325
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r7, ($BB0_417)
	NOP    
# BB#414:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit325
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r4, r0, 1008981770
	ADDI      r6, r0, 1
	FPGT      r4, r5, r4
	bneid     r4, ($BB0_416)
	NOP    
# BB#415:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit325
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r6, r0, 0
$BB0_416:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit325
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r6, ($BB0_418)
	NOP    
$BB0_417:                               # %bb92.i722
                                        #   in Loop: Header=BB0_204 Depth=1
	LWI       r5, r19, 800732
	LWI       r4, r19, 800700
	FPMUL     r4, r4, r5
	ORI       r5, r0, 0
	FPADD     r11, r4, r5
$BB0_418:                               # %bb115.i
                                        #   in Loop: Header=BB0_204 Depth=1
	LWI       r6, r19, 800680
	SWI       r6, r19, 800396
	LWI       r4, r19, 800688
	SWI       r4, r19, 800404
	LWI        r4, r19, 800396
	LWI        r5, r19, 800404
	LWI       r6, r19, 800684
	SWI       r6, r19, 800412
	FPMUL     r4, r4, r11
	FPMUL     r5, r11, r5
	LWI        r7, r19, 800412
	SWI        r4, r19, 800400
	SWI        r5, r19, 800408
	ADD       r6, r0, r0
	FPMUL     r4, r7, r11
	LWI       r5, r19, 800400
	LWI       r7, r19, 800408
$BB0_419:                               # %invcont134
                                        #   in Loop: Header=BB0_204 Depth=1
	LWI       r8, r19, 800692
	LWI       r3, r19, 800624
	FPMUL     r3, r3, r8
	LWI       r8, r19, 800756
	FPADD     r3, r8, r3
	ADD       r8, r0, r0
	ORI       r9, r0, 0
	BITOR     r6, r7, r6
	LWI       r7, r19, 800696
	FPINVSQRT r7, r7
	ADD       r7, r9, r0
	ADD       r10, r9, r0
	brid      ($BB0_433)
	ADD       r11, r8, r0
$BB0_420:                               # %bb.i540
                                        #   in Loop: Header=BB0_433 Depth=2
	ADDI      r20, r0, 5
	ANDI      r20, r20, 31
	beqid     r20, ($BB0_422)
	ADDI      r21, r8, 0
$BB0_421:                               # %bb.i540
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_433 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r20, r20, -1
	bneid     r20, ($BB0_421)
	ADDK      r21, r21, r21
$BB0_422:                               # %bb.i540
                                        #   in Loop: Header=BB0_433 Depth=2
	LWI       r20, r19, 800740
	ADD       r22, r20, r21
	LWI       r23, r22, 8
	SWI       r23, r19, 800420
	LWI        r22, r22, 4
	LW         r20, r20, r21
	LWI       r21, r19, 800656
	FPRSUB    r21, r21, r20
	LWI       r23, r19, 800660
	FPRSUB    r23, r23, r22
	LWI        r24, r19, 800420
	FPRSUB    r24, r3, r24
	FPMUL     r21, r21, r21
	FPMUL     r23, r23, r23
	FPADD     r21, r21, r23
	FPMUL     r23, r24, r24
	SWI        r22, r19, 800424
	SWI        r20, r19, 800416
	FPADD     r20, r21, r23
	ORI       r21, r0, 1133543424
	FPUN      r22, r20, r21
	FPGE      r20, r20, r21
	BITOR     r20, r22, r20
	bneid     r20, ($BB0_424)
	ADDI      r21, r0, 1
# BB#423:                               # %bb.i540
                                        #   in Loop: Header=BB0_433 Depth=2
	ADDI      r21, r0, 0
$BB0_424:                               # %bb.i540
                                        #   in Loop: Header=BB0_433 Depth=2
	bneid     r21, ($BB0_432)
	NOP    
# BB#425:                               # %bb45.i549
                                        #   in Loop: Header=BB0_433 Depth=2
	ADDI      r20, r0, 2
	ANDI      r21, r20, 31
	beqid     r21, ($BB0_427)
	ADDI      r22, r12, 0
$BB0_426:                               # %bb45.i549
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_433 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r21, r21, -1
	bneid     r21, ($BB0_426)
	ADDK      r22, r22, r22
$BB0_427:                               # %bb45.i549
                                        #   in Loop: Header=BB0_433 Depth=2
	ANDI      r21, r20, 31
	beqid     r21, ($BB0_429)
	ADDI      r23, r12, 0
$BB0_428:                               # %bb45.i549
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_433 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r21, r21, -1
	bneid     r21, ($BB0_428)
	ADDK      r23, r23, r23
$BB0_429:                               # %bb45.i549
                                        #   in Loop: Header=BB0_433 Depth=2
	ANDI      r20, r20, 31
	beqid     r20, ($BB0_431)
	ADDI      r12, r12, 0
$BB0_430:                               # %bb45.i549
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_433 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r20, r20, -1
	bneid     r20, ($BB0_430)
	ADDK      r12, r12, r12
$BB0_431:                               # %bb45.i549
                                        #   in Loop: Header=BB0_433 Depth=2
	LWI       r20, r19, 800740
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
	bgtid     r12, ($BB0_437)
	NOP    
$BB0_432:                               # %bb46.i550
                                        #   in Loop: Header=BB0_433 Depth=2
	ADDI      r8, r8, 1
$BB0_433:                               # %bb47.i
                                        #   Parent Loop BB0_204 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_421 Depth 3
                                        #       Child Loop BB0_434 Depth 3
                                        #       Child Loop BB0_430 Depth 3
                                        #       Child Loop BB0_428 Depth 3
                                        #       Child Loop BB0_426 Depth 3
	ADDI      r12, r0, 3
	ANDI      r20, r12, 31
	beqid     r20, ($BB0_435)
	ADDI      r12, r8, 0
$BB0_434:                               # %bb47.i
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_433 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ADDI      r20, r20, -1
	bneid     r20, ($BB0_434)
	ADDK      r12, r12, r12
$BB0_435:                               # %bb47.i
                                        #   in Loop: Header=BB0_433 Depth=2
	LWI       r20, r19, 800736
	CMP       r20, r20, r8
	bltid     r20, ($BB0_420)
	NOP    
# BB#436:                               # %bb48.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r3, r0, 0
	ADD       r8, r0, r0
	CMP       r8, r8, r11
	ADD       r12, r3, r0
	beqid     r8, ($BB0_438)
	ADD       r20, r3, r0
$BB0_437:                               # %bb49.i
                                        #   in Loop: Header=BB0_204 Depth=1
	LWI       r3, r19, 800684
	SWI       r3, r19, 800428
	LWI       r3, r19, 800680
	SWI       r3, r19, 800436
	LWI       r3, r19, 800688
	SWI       r3, r19, 800432
	FPCONV    r3, r11
	LWI        r12, r19, 800428
	FPDIV     r20, r9, r3
	LWI        r8, r19, 800436
	FPDIV     r7, r7, r3
	FPDIV     r9, r10, r3
	LWI        r10, r19, 800432
	FPMUL     r3, r12, r20
	FPMUL     r12, r8, r7
	FPMUL     r20, r9, r10
$BB0_438:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	LWI       r8, r19, 800636
	LWI       r7, r19, 800840
	FPDIV     r7, r7, r8
	LWI       r9, r19, 800844
	FPDIV     r8, r9, r8
	FPGT      r9, r7, r8
	ADDI      r10, r0, 1
	ADDI      r11, r0, 0
	bneid     r9, ($BB0_440)
	ADD       r21, r10, r0
# BB#439:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r21, r11, r0
$BB0_440:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	SWI       r5, r19, 800444
	bneid     r21, ($BB0_442)
	ADD       r5, r8, r0
# BB#441:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r5, r7, r0
$BB0_442:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r9, r0, -803929351
	bneid     r21, ($BB0_444)
	NOP    
# BB#443:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r7, r8, r0
$BB0_444:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r8, r0, 1343554297
	LWI        r21, r19, 800444
	SWI       r6, r19, 800440
	FPGT      r6, r5, r9
	FPLT      r22, r7, r8
	bneid     r6, ($BB0_446)
	ADD       r23, r10, r0
# BB#445:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r23, r11, r0
$BB0_446:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r22, ($BB0_448)
	ADD       r6, r10, r0
# BB#447:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r6, r11, r0
$BB0_448:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	FPADD     r12, r12, r21
	SWI       r12, r19, 800628
	FPADD     r4, r3, r4
	SWI       r4, r19, 800620
	SWI        r12, r19, 800452
	SWI        r4, r19, 800448
	LWI        r4, r19, 800440
	bneid     r23, ($BB0_450)
	NOP    
# BB#449:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r5, r9, r0
$BB0_450:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r6, ($BB0_452)
	NOP    
# BB#451:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r7, r8, r0
$BB0_452:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	LWI       r3, r19, 800452
	LWI       r6, r19, 800448
	FPGT      r8, r5, r7
	bneid     r8, ($BB0_454)
	NOP    
# BB#453:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r10, r11, r0
$BB0_454:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r10, ($BB0_523)
	FPADD     r4, r4, r20
# BB#455:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r8, r0, 0
	ADDI      r9, r0, 1
	FPLT      r8, r7, r8
	bneid     r8, ($BB0_457)
	NOP    
# BB#456:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r9, r0, 0
$BB0_457:                               # %invcont159
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r9, ($BB0_523)
	NOP    
# BB#458:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	LWI       r9, r19, 800632
	LWI       r8, r19, 800848
	FPDIV     r8, r8, r9
	LWI       r10, r19, 800852
	FPDIV     r9, r10, r9
	FPGT      r10, r8, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_460)
	ADD       r20, r11, r0
# BB#459:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r20, r12, r0
$BB0_460:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r20, ($BB0_462)
	ADD       r10, r9, r0
# BB#461:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r10, r8, r0
$BB0_462:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r20, ($BB0_464)
	NOP    
# BB#463:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r8, r9, r0
$BB0_464:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	FPGT      r9, r10, r5
	FPLT      r20, r8, r7
	bneid     r9, ($BB0_466)
	ADD       r21, r11, r0
# BB#465:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r21, r12, r0
$BB0_466:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r20, ($BB0_468)
	ADD       r9, r11, r0
# BB#467:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r9, r12, r0
$BB0_468:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r21, ($BB0_470)
	NOP    
# BB#469:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r10, r5, r0
$BB0_470:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r9, ($BB0_472)
	NOP    
# BB#471:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r8, r7, r0
$BB0_472:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	FPGT      r5, r10, r8
	bneid     r5, ($BB0_474)
	NOP    
# BB#473:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r11, r12, r0
$BB0_474:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r11, ($BB0_523)
	NOP    
# BB#475:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r5, r0, 0
	ADDI      r7, r0, 1
	FPLT      r5, r8, r5
	bneid     r5, ($BB0_477)
	NOP    
# BB#476:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r7, r0, 0
$BB0_477:                               # %bb29.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r7, ($BB0_523)
	NOP    
# BB#478:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	LWI       r5, r19, 800836
	SWI       r5, r19, 800456
	LWI        r5, r19, 800456
	ORI       r7, r0, 0
	ORI       r9, r0, 1134886945
	LWI       r11, r19, 800724
	SWI       r11, r19, 800460
	FPRSUB    r7, r5, r7
	LWI        r11, r19, 800460
	FPRSUB    r9, r5, r9
	FPDIV     r7, r7, r11
	FPDIV     r9, r9, r11
	FPGT      r11, r7, r9
	ADDI      r12, r0, 1
	ADDI      r20, r0, 0
	bneid     r11, ($BB0_480)
	ADD       r21, r12, r0
# BB#479:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r21, r20, r0
$BB0_480:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r21, ($BB0_482)
	ADD       r11, r9, r0
# BB#481:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r11, r7, r0
$BB0_482:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r21, ($BB0_484)
	NOP    
# BB#483:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r7, r9, r0
$BB0_484:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	FPGT      r9, r11, r10
	FPLT      r21, r7, r8
	bneid     r9, ($BB0_486)
	ADD       r22, r12, r0
# BB#485:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r22, r20, r0
$BB0_486:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r21, ($BB0_488)
	ADD       r9, r12, r0
# BB#487:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r9, r20, r0
$BB0_488:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r22, ($BB0_490)
	NOP    
# BB#489:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r11, r10, r0
$BB0_490:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r9, ($BB0_492)
	NOP    
# BB#491:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r7, r8, r0
$BB0_492:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	FPGT      r8, r11, r7
	bneid     r8, ($BB0_494)
	NOP    
# BB#493:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r12, r20, r0
$BB0_494:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r12, ($BB0_523)
	NOP    
# BB#495:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r8, r0, 0
	ADDI      r9, r0, 1
	FPLT      r8, r7, r8
	bneid     r8, ($BB0_497)
	NOP    
# BB#496:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r9, r0, 0
$BB0_497:                               # %bb62.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r9, ($BB0_523)
	NOP    
# BB#498:                               # %bb46.i.preheader
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r3, r0, 0
	ADDI      r6, r0, 1
	FPLT      r8, r11, r7
	bneid     r8, ($BB0_500)
	NOP    
# BB#499:                               # %bb46.i.preheader
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r6, r0, 0
$BB0_500:                               # %bb46.i.preheader
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r8, r0, r0
	ADD       r9, r3, r0
	ADD       r10, r3, r0
	ADD       r12, r3, r0
	ADD       r20, r3, r0
	bneid     r6, ($BB0_573)
	ADD       r21, r3, r0
$BB0_501:                               # %invcont191
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r6, r0, 1065353216
	FPDIV     r6, r6, r11
	FPMUL     r5, r9, r6
	FPMUL     r7, r10, r6
	LWI       r8, r19, 800628
	FPADD     r8, r5, r8
	LWI       r9, r19, 800620
	FPADD     r9, r7, r9
	FPMUL     r10, r3, r6
	SWI        r10, r19, 800492
	SWI        r5, r19, 800496
	SWI        r7, r19, 800500
	SWI        r8, r19, 800504
	SWI        r9, r19, 800508
	ORI       r5, r0, 0
	LWI       r3, r19, 800504
	LWI       r6, r19, 800508
	ADDI      r7, r0, 1
	FPLT      r11, r9, r5
	bneid     r11, ($BB0_503)
	NOP    
# BB#502:                               # %invcont191
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r7, r0, 0
$BB0_503:                               # %invcont191
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r7, ($BB0_508)
	NOP    
# BB#504:                               # %bb1.i443
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r5, r0, 1065353216
	ADDI      r7, r0, 1
	FPGT      r11, r9, r5
	bneid     r11, ($BB0_506)
	NOP    
# BB#505:                               # %bb1.i443
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r7, r0, 0
$BB0_506:                               # %bb1.i443
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r7, ($BB0_508)
	NOP    
# BB#507:                               # %bb4.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r5, r9, r0
$BB0_508:                               # %bb5.i444
                                        #   in Loop: Header=BB0_204 Depth=1
	FPADD     r4, r4, r10
	ORI       r7, r0, 0
	ADDI      r9, r0, 1
	FPLT      r10, r4, r7
	bneid     r10, ($BB0_510)
	NOP    
# BB#509:                               # %bb5.i444
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r9, r0, 0
$BB0_510:                               # %bb5.i444
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r9, ($BB0_515)
	NOP    
# BB#511:                               # %bb8.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r7, r0, 1065353216
	ADDI      r9, r0, 1
	FPGT      r10, r4, r7
	bneid     r10, ($BB0_513)
	NOP    
# BB#512:                               # %bb8.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r9, r0, 0
$BB0_513:                               # %bb8.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r9, ($BB0_515)
	NOP    
# BB#514:                               # %bb11.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r7, r4, r0
$BB0_515:                               # %bb12.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r9, r0, 0
	ADDI      r10, r0, 1
	FPLT      r11, r8, r9
	bneid     r11, ($BB0_517)
	NOP    
# BB#516:                               # %bb12.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r10, r0, 0
$BB0_517:                               # %bb12.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r10, ($BB0_522)
	NOP    
# BB#518:                               # %bb15.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r9, r0, 1065353216
	ADDI      r10, r0, 1
	FPGT      r11, r8, r9
	bneid     r11, ($BB0_520)
	NOP    
# BB#519:                               # %bb15.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r10, r0, 0
$BB0_520:                               # %bb15.i
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r10, ($BB0_522)
	NOP    
# BB#521:                               # %bb18.i
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r9, r8, r0
$BB0_522:                               # %_ZN5Image3setEii5Color.exit
                                        #   in Loop: Header=BB0_204 Depth=1
	LWI       r10, r19, 800720
	LWI       r8, r19, 800716
	ADD       r8, r8, r10
	MULI      r8, r8, 3
	LWI       r10, r19, 800772
	ADD       r8, r8, r10
	STORE     r8, r5, 0
	STORE     r8, r9, 1
	STORE     r8, r7, 2
$BB0_523:                               # %invcont198
                                        #   in Loop: Header=BB0_204 Depth=1
	SWI       r6, r19, 800512
	LWI        r5, r19, 800512
	ORI       r6, r0, 0
	ADDI      r7, r0, 1
	FPLT      r8, r5, r6
	bneid     r8, ($BB0_525)
	NOP    
# BB#524:                               # %invcont198
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r7, r0, 0
$BB0_525:                               # %invcont198
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r7, ($BB0_530)
	NOP    
# BB#526:                               # %bb1.i449
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r6, r0, 1065353216
	ADDI      r7, r0, 1
	FPGT      r8, r5, r6
	bneid     r8, ($BB0_528)
	NOP    
# BB#527:                               # %bb1.i449
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r7, r0, 0
$BB0_528:                               # %bb1.i449
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r7, ($BB0_530)
	NOP    
# BB#529:                               # %bb4.i450
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r6, r5, r0
$BB0_530:                               # %bb5.i452
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r5, r0, 0
	ADDI      r7, r0, 1
	FPLT      r8, r4, r5
	bneid     r8, ($BB0_532)
	NOP    
# BB#531:                               # %bb5.i452
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r7, r0, 0
$BB0_532:                               # %bb5.i452
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r7, ($BB0_537)
	NOP    
# BB#533:                               # %bb8.i453
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r5, r0, 1065353216
	ADDI      r7, r0, 1
	FPGT      r8, r4, r5
	bneid     r8, ($BB0_535)
	NOP    
# BB#534:                               # %bb8.i453
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r7, r0, 0
$BB0_535:                               # %bb8.i453
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r7, ($BB0_537)
	NOP    
# BB#536:                               # %bb11.i454
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r5, r4, r0
$BB0_537:                               # %bb12.i459
                                        #   in Loop: Header=BB0_204 Depth=1
	SWI       r3, r19, 800516
	LWI        r4, r19, 800516
	ORI       r3, r0, 0
	ADDI      r7, r0, 1
	FPLT      r8, r4, r3
	bneid     r8, ($BB0_539)
	NOP    
# BB#538:                               # %bb12.i459
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r7, r0, 0
$BB0_539:                               # %bb12.i459
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r7, ($BB0_544)
	NOP    
# BB#540:                               # %bb15.i460
                                        #   in Loop: Header=BB0_204 Depth=1
	ORI       r3, r0, 1065353216
	ADDI      r7, r0, 1
	FPGT      r8, r4, r3
	bneid     r8, ($BB0_542)
	NOP    
# BB#541:                               # %bb15.i460
                                        #   in Loop: Header=BB0_204 Depth=1
	ADDI      r7, r0, 0
$BB0_542:                               # %bb15.i460
                                        #   in Loop: Header=BB0_204 Depth=1
	bneid     r7, ($BB0_544)
	NOP    
# BB#543:                               # %bb18.i461
                                        #   in Loop: Header=BB0_204 Depth=1
	ADD       r3, r4, r0
$BB0_544:                               # %_ZN5Image3setEii5Color.exit463
                                        #   in Loop: Header=BB0_204 Depth=1
	LWI       r7, r19, 800720
	LWI       r4, r19, 800716
	ADD       r4, r4, r7
	MULI      r4, r4, 3
	LWI       r7, r19, 800772
	ADD       r4, r4, r7
	STORE     r4, r6, 0
	STORE     r4, r3, 1
	STORE     r4, r5, 2
	ATOMIC_INC r4, 0
	LWI       r3, r19, 800856
	CMP       r3, r4, r3
	bgtid     r3, ($BB0_204)
	NOP    
$BB0_545:                               # %return
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
	ADDI      r1, r1, 800860
	rtsd      r15, 8
	ADD       r3, r0, r0
$BB0_546:                               # %bb1.i
                                        #   in Loop: Header=BB0_567 Depth=3
	LWI       r26, r19, 800624
	FPMUL     r26, r26, r11
	SWI        r26, r19, 800472
	ADDI      r26, r0, 5
	LWI       r27, r19, 800472
	ANDI      r26, r26, 31
	beqid     r26, ($BB0_548)
	ADDI      r28, r6, 0
$BB0_547:                               # %bb1.i
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_573 Depth=2
                                        #       Parent Loop BB0_567 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r26, r26, -1
	bneid     r26, ($BB0_547)
	ADDK      r28, r28, r28
$BB0_548:                               # %bb1.i
                                        #   in Loop: Header=BB0_567 Depth=3
	ADDI      r26, r19, 160216
	BITOR     r27, r22, r27
	ADD       r29, r26, r28
	LWI       r30, r29, 8
	SWI       r27, r19, 800476
	SWI       r30, r19, 800488
	LWI        r27, r29, 4
	LW         r26, r26, r28
	LWI        r28, r19, 800476
	FPRSUB    r29, r23, r26
	FPRSUB    r30, r24, r27
	LWI        r31, r19, 800488
	FPADD     r28, r5, r28
	FPRSUB    r28, r28, r31
	FPMUL     r29, r29, r29
	FPMUL     r30, r30, r30
	FPADD     r29, r29, r30
	FPMUL     r28, r28, r28
	SWI        r27, r19, 800484
	SWI        r26, r19, 800480
	FPADD     r26, r29, r28
	ORI       r27, r0, 1176256512
	FPUN      r28, r26, r27
	FPGE      r26, r26, r27
	BITOR     r26, r28, r26
	bneid     r26, ($BB0_550)
	ADDI      r27, r0, 1
# BB#549:                               # %bb1.i
                                        #   in Loop: Header=BB0_567 Depth=3
	ADDI      r27, r0, 0
$BB0_550:                               # %bb1.i
                                        #   in Loop: Header=BB0_567 Depth=3
	LWI       r26, r19, 800668
	BITOR     r26, r26, r22
	SWI       r26, r19, 800668
	bneid     r27, ($BB0_558)
	NOP    
# BB#551:                               # %bb39.i
                                        #   in Loop: Header=BB0_567 Depth=3
	ADDI      r26, r0, 2
	ANDI      r27, r26, 31
	beqid     r27, ($BB0_553)
	ADDI      r28, r25, 0
$BB0_552:                               # %bb39.i
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_573 Depth=2
                                        #       Parent Loop BB0_567 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r27, r27, -1
	bneid     r27, ($BB0_552)
	ADDK      r28, r28, r28
$BB0_553:                               # %bb39.i
                                        #   in Loop: Header=BB0_567 Depth=3
	ANDI      r27, r26, 31
	beqid     r27, ($BB0_555)
	ADDI      r29, r25, 0
$BB0_554:                               # %bb39.i
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_573 Depth=2
                                        #       Parent Loop BB0_567 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r27, r27, -1
	bneid     r27, ($BB0_554)
	ADDK      r29, r29, r29
$BB0_555:                               # %bb39.i
                                        #   in Loop: Header=BB0_567 Depth=3
	ANDI      r26, r26, 31
	beqid     r26, ($BB0_557)
	ADDI      r25, r25, 0
$BB0_556:                               # %bb39.i
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_573 Depth=2
                                        #       Parent Loop BB0_567 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r26, r26, -1
	bneid     r26, ($BB0_556)
	ADDK      r25, r25, r25
$BB0_557:                               # %bb39.i
                                        #   in Loop: Header=BB0_567 Depth=3
	ADDI      r26, r19, 160216
	ADD       r27, r26, r28
	ADD       r28, r26, r29
	ADD       r25, r26, r25
	LWI        r26, r27, 12
	LWI        r27, r28, 16
	LWI        r25, r25, 20
	ADDI      r8, r8, 1
	FPADD     r21, r21, r26
	FPADD     r20, r20, r27
	FPADD     r12, r12, r25
	ADDI      r25, r0, 20
	CMP       r25, r25, r8
	bgtid     r25, ($BB0_570)
	NOP    
$BB0_558:                               # %bb40.i
                                        #   in Loop: Header=BB0_567 Depth=3
	ADD       r25, r0, r0
	ADDI      r26, r0, 1
	CMP       r25, r25, r8
	beqid     r25, ($BB0_560)
	NOP    
# BB#559:                               # %bb40.i
                                        #   in Loop: Header=BB0_567 Depth=3
	ADDI      r26, r0, 0
$BB0_560:                               # %bb40.i
                                        #   in Loop: Header=BB0_567 Depth=3
	bneid     r26, ($BB0_562)
	NOP    
# BB#561:                               # %bb40.i
                                        #   in Loop: Header=BB0_567 Depth=3
	ADD       r10, r21, r0
$BB0_562:                               # %bb40.i
                                        #   in Loop: Header=BB0_567 Depth=3
	bneid     r26, ($BB0_564)
	NOP    
# BB#563:                               # %bb40.i
                                        #   in Loop: Header=BB0_567 Depth=3
	ADD       r9, r20, r0
$BB0_564:                               # %bb40.i
                                        #   in Loop: Header=BB0_567 Depth=3
	bneid     r26, ($BB0_566)
	NOP    
# BB#565:                               # %bb40.i
                                        #   in Loop: Header=BB0_567 Depth=3
	ADD       r3, r12, r0
$BB0_566:                               # %bb40.i
                                        #   in Loop: Header=BB0_567 Depth=3
	ADDI      r6, r6, 1
$BB0_567:                               # %bb44.i
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_573 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_547 Depth 4
                                        #         Child Loop BB0_556 Depth 4
                                        #         Child Loop BB0_554 Depth 4
                                        #         Child Loop BB0_552 Depth 4
                                        #         Child Loop BB0_568 Depth 4
	ADDI      r25, r0, 3
	ANDI      r26, r25, 31
	beqid     r26, ($BB0_569)
	ADDI      r25, r6, 0
$BB0_568:                               # %bb44.i
                                        #   Parent Loop BB0_204 Depth=1
                                        #     Parent Loop BB0_573 Depth=2
                                        #       Parent Loop BB0_567 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ADDI      r26, r26, -1
	bneid     r26, ($BB0_568)
	ADDK      r25, r25, r25
$BB0_569:                               # %bb44.i
                                        #   in Loop: Header=BB0_567 Depth=3
	LWI       r26, r19, 800768
	CMP       r26, r26, r6
	bltid     r26, ($BB0_546)
	NOP    
$BB0_570:                               # %bb45.i
                                        #   in Loop: Header=BB0_573 Depth=2
	ORI       r6, r0, 1065353216
	FPADD     r11, r11, r6
	FPUN      r6, r11, r7
	FPGE      r22, r11, r7
	BITOR     r6, r6, r22
	bneid     r6, ($BB0_572)
	ADDI      r23, r0, 1
# BB#571:                               # %bb45.i
                                        #   in Loop: Header=BB0_573 Depth=2
	ADDI      r23, r0, 0
$BB0_572:                               # %bb45.i
                                        #   in Loop: Header=BB0_573 Depth=2
	bneid     r23, ($BB0_501)
	NOP    
$BB0_573:                               # %bb44.i.preheader
                                        #   Parent Loop BB0_204 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_567 Depth 3
                                        #         Child Loop BB0_547 Depth 4
                                        #         Child Loop BB0_556 Depth 4
                                        #         Child Loop BB0_554 Depth 4
                                        #         Child Loop BB0_552 Depth 4
                                        #         Child Loop BB0_568 Depth 4
	LWI       r6, r19, 800632
	FPMUL     r6, r6, r11
	LWI       r22, r19, 800636
	FPMUL     r23, r22, r11
	SWI        r6, r19, 800468
	SWI        r23, r19, 800464
	ADD       r22, r0, r0
	LWI       r24, r19, 800748
	FPADD     r23, r23, r24
	LWI       r24, r19, 800752
	FPADD     r24, r6, r24
	LWI       r6, r19, 800468
	LWI       r6, r19, 800464
	brid      ($BB0_567)
	ADD       r6, r22, r0
	.end	main
$tmp0:
	.size	main, ($tmp0)-main


