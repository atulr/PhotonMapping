	.file	"rt.bc"
	.text
	.globl	main
	.align	2
	.type	main,@function
	.ent	main                    # @main
main:
	.frame	r1,868,r15
	.mask	0xfff00000
# BB#0:                                 # %entry
	ADDI      r1, r1, -868
	SWI       r20, r1, 44
	SWI       r21, r1, 40
	SWI       r22, r1, 36
	SWI       r23, r1, 32
	SWI       r24, r1, 28
	SWI       r25, r1, 24
	SWI       r26, r1, 20
	SWI       r27, r1, 16
	SWI       r28, r1, 12
	SWI       r29, r1, 8
	SWI       r30, r1, 4
	SWI       r31, r1, 0
	ADD       r3, r0, r0
	LOAD      r4, r3, 1
	SWI       r4, r1, 864
	LOAD      r5, r3, 4
	LOAD      r6, r3, 7
	SWI       r6, r1, 848
	LOAD      r6, r3, 2
	SWI       r6, r1, 772
	LOAD      r6, r3, 5
	SWI       r6, r1, 776
	LOAD      r6, r3, 12
	LOAD      r7, r6, 0
	SWI       r7, r1, 748
	LOAD      r7, r6, 1
	SWI       r7, r1, 752
	LOAD      r6, r6, 2
	SWI       r6, r1, 756
	LOAD      r6, r3, 10
	LOAD      r7, r6, 0
	LOAD      r8, r6, 1
	LOAD      r9, r6, 2
	ADDI      r10, r6, 9
	LOAD      r11, r10, 0
	LOAD      r11, r10, 1
	ADDI      r11, r6, 12
	LOAD      r10, r10, 2
	LOAD      r10, r11, 0
	SWI       r10, r1, 780
	LOAD      r10, r11, 1
	SWI       r10, r1, 784
	LOAD      r10, r11, 2
	SWI       r10, r1, 788
	ADDI      r10, r6, 15
	LOAD      r11, r10, 0
	SWI       r11, r1, 792
	LOAD      r11, r10, 1
	SWI       r11, r1, 796
	LOAD      r10, r10, 2
	SWI       r10, r1, 800
	ADDI      r6, r6, 18
	LOAD      r10, r6, 0
	SWI       r10, r1, 804
	LOAD      r10, r6, 1
	SWI       r10, r1, 808
	LOAD      r6, r6, 2
	SWI       r6, r1, 812
	LOAD      r6, r3, 28
	LOAD      r6, r3, 29
	LOAD      r3, r3, 8
	SWI       r3, r1, 628
	FPCONV    r3, r4
	SWI       r3, r1, 840
	FPCONV    r3, r5
	SWI       r3, r1, 844
	ORI       r3, r0, -1073741824
	MUL       r4, r5, r4
	SWI       r4, r1, 852
	ATOMIC_INC r5, 0
	CMP       r4, r5, r4
	bleid     r4, ($BB0_293)
	NOP    
# BB#1:                                 # %bb.lr.ph
	LWI       r4, r1, 840
	FPDIV     r4, r4, r3
	SWI       r4, r1, 856
	LWI       r4, r1, 844
	FPDIV     r3, r4, r3
	SWI       r3, r1, 860
	SWI        r9, r1, 184
	SWI        r8, r1, 180
	SWI        r7, r1, 176
	ADD       r3, r0, r0
	SWI       r3, r1, 828
	LWI       r3, r1, 184
	SWI       r3, r1, 816
	LWI       r3, r1, 180
	SWI       r3, r1, 820
	LWI       r3, r1, 176
	SWI       r3, r1, 824
$BB0_2:                                 # %bb
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_269 Depth 3
                                        #         Child Loop BB0_265 Depth 4
                                        #         Child Loop BB0_5 Depth 4
                                        #           Child Loop BB0_6 Depth 5
                                        #           Child Loop BB0_97 Depth 5
                                        #           Child Loop BB0_69 Depth 5
                                        #           Child Loop BB0_100 Depth 5
                                        #         Child Loop BB0_115 Depth 4
                                        #           Child Loop BB0_116 Depth 5
                                        #           Child Loop BB0_207 Depth 5
                                        #           Child Loop BB0_179 Depth 5
                                        #           Child Loop BB0_210 Depth 5
	LWI       r3, r1, 864
	DIV       r4, r3, r5
	MUL       r3, r4, r3
	SWI       r3, r1, 832
	RSUB      r5, r3, r5
	SWI       r5, r1, 836
	FPCONV    r5, r5
	FPCONV    r3, r4
	LWI       r4, r1, 856
	FPADD     r5, r5, r4
	ORI       r4, r0, 1056964608
	LWI       r6, r1, 860
	FPADD     r3, r3, r6
	FPADD     r5, r5, r4
	FPADD     r3, r3, r4
	FPADD     r5, r5, r5
	FPADD     r3, r3, r3
	LWI       r4, r1, 840
	FPDIV     r5, r5, r4
	SWI       r5, r1, 764
	LWI       r5, r1, 844
	FPDIV     r5, r3, r5
	SWI       r5, r1, 768
	ADDI      r5, r0, 5
	SWI       r5, r1, 760
	ORI       r5, r0, 0
	ADD       r3, r0, r0
	SWI       r3, r1, 732
	ADD       r4, r5, r0
	ADD       r6, r5, r0
	SWI       r3, r1, 724
	SWI       r3, r1, 728
$BB0_3:                                 # %bb2
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_269 Depth 3
                                        #         Child Loop BB0_265 Depth 4
                                        #         Child Loop BB0_5 Depth 4
                                        #           Child Loop BB0_6 Depth 5
                                        #           Child Loop BB0_97 Depth 5
                                        #           Child Loop BB0_69 Depth 5
                                        #           Child Loop BB0_100 Depth 5
                                        #         Child Loop BB0_115 Depth 4
                                        #           Child Loop BB0_116 Depth 5
                                        #           Child Loop BB0_207 Depth 5
                                        #           Child Loop BB0_179 Depth 5
                                        #           Child Loop BB0_210 Depth 5
	RAND      r3
	ORI       r7, r0, -1090519040
	RAND      r8
	FPADD     r8, r8, r7
	FPADD     r3, r3, r7
	FPADD     r7, r8, r8
	FPADD     r3, r3, r3
	LWI       r8, r1, 776
	FPMUL     r7, r7, r8
	LWI       r8, r1, 772
	FPMUL     r3, r3, r8
	LWI       r8, r1, 768
	FPADD     r7, r8, r7
	LWI       r8, r1, 764
	FPADD     r3, r8, r3
	LWI       r8, r1, 808
	FPMUL     r8, r8, r7
	LWI       r9, r1, 796
	FPMUL     r9, r9, r3
	LWI       r10, r1, 804
	FPMUL     r10, r10, r7
	LWI       r11, r1, 792
	FPMUL     r11, r11, r3
	LWI       r12, r1, 812
	FPMUL     r7, r12, r7
	LWI       r12, r1, 800
	FPMUL     r3, r12, r3
	FPADD     r9, r8, r9
	FPADD     r11, r10, r11
	LWI       r12, r1, 784
	FPADD     r9, r9, r12
	LWI       r12, r1, 780
	FPADD     r11, r11, r12
	FPADD     r3, r3, r7
	LWI       r12, r1, 788
	FPADD     r3, r12, r3
	FPMUL     r12, r11, r11
	FPMUL     r20, r9, r9
	FPADD     r12, r12, r20
	FPMUL     r20, r3, r3
	FPADD     r12, r12, r20
	ORI       r20, r0, 1065353216
	SWI       r20, r1, 716
	FPINVSQRT r12, r12
	FPDIV     r12, r20, r12
	FPDIV     r3, r3, r12
	FPDIV     r9, r9, r12
	FPDIV     r11, r11, r12
	SWI        r3, r1, 208
	SWI        r9, r1, 204
	SWI        r11, r1, 200
	SWI        r7, r1, 188
	SWI        r8, r1, 192
	SWI        r10, r1, 196
	LWI       r3, r1, 208
	LWI       r7, r1, 204
	LWI       r8, r1, 200
	ADDI      r9, r0, -1
	SWI       r9, r1, 720
	LWI       r9, r1, 828
	BITOR     r3, r9, r3
	BITOR     r7, r9, r7
	BITOR     r8, r9, r8
	LWI       r9, r1, 816
	SWI       r9, r1, 700
	LWI       r9, r1, 820
	LWI       r10, r1, 824
	SWI       r20, r1, 708
	brid      ($BB0_269)
	SWI       r20, r1, 712
$BB0_4:                                 # %bb3
                                        #   in Loop: Header=BB0_269 Depth=3
	SWI       r10, r1, 232
	SWI       r9, r1, 228
	LWI       r5, r1, 700
	SWI       r5, r1, 224
	SWI       r8, r1, 220
	SWI       r7, r1, 216
	SWI       r3, r1, 212
	ADD       r5, r0, r0
	SWI       r5, r1, 680
	LWI        r3, r1, 232
	SWI       r3, r1, 608
	LWI        r3, r1, 228
	SWI       r3, r1, 612
	LWI        r3, r1, 224
	SWI       r3, r1, 596
	LWI        r3, r1, 220
	SWI       r3, r1, 584
	LWI        r3, r1, 216
	SWI       r3, r1, 588
	LWI        r3, r1, 212
	SWI       r3, r1, 592
	ADDI      r3, r0, -1
	SWI       r3, r1, 576
	ADDI      r3, r0, 1343554297
	SWI       r3, r1, 572
	SWI       r5, r1, 636
	SWI       r5, r1, 640
	SWI       r5, r1, 648
	SWI       r5, r1, 652
	SWI       r5, r1, 644
	SWI       r5, r1, 664
	SWI       r5, r1, 656
	SWI       r5, r1, 660
	SWI       r5, r1, 676
	SWI       r5, r1, 668
	SWI       r5, r1, 672
$BB0_5:                                 # %bb.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_269 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_6 Depth 5
                                        #           Child Loop BB0_97 Depth 5
                                        #           Child Loop BB0_69 Depth 5
                                        #           Child Loop BB0_100 Depth 5
	ADDI      r3, r0, 3
	ANDI      r3, r3, 31
	beqid     r3, ($BB0_7)
	ADDI      r5, r5, 0
$BB0_6:                                 # %bb.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_269 Depth=3
                                        #         Parent Loop BB0_5 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_6)
	ADDK      r5, r5, r5
$BB0_7:                                 # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	LWI       r3, r1, 628
	ADD       r3, r5, r3
	LOAD      r5, r3, 2
	LOAD      r4, r3, 1
	LOAD      r6, r3, 0
	LOAD      r7, r3, 5
	LOAD      r8, r3, 4
	LOAD      r9, r3, 3
	LWI       r10, r1, 608
	FPRSUB    r6, r10, r6
	FPRSUB    r9, r10, r9
	LWI       r10, r1, 584
	FPDIV     r6, r6, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r6, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_9)
	ADD       r20, r11, r0
# BB#8:                                 # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r20, r12, r0
$BB0_9:                                 # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r20, ($BB0_11)
	ADD       r10, r9, r0
# BB#10:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r10, r6, r0
$BB0_11:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_13)
	NOP    
# BB#12:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r6, r9, r0
$BB0_13:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r6, r9
	bneid     r20, ($BB0_15)
	ADD       r23, r11, r0
# BB#14:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r23, r12, r0
$BB0_15:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r22, ($BB0_17)
	ADD       r20, r11, r0
# BB#16:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r20, r12, r0
$BB0_17:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r23, ($BB0_19)
	NOP    
# BB#18:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r10, r21, r0
$BB0_19:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r20, ($BB0_21)
	NOP    
# BB#20:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r6, r9, r0
$BB0_21:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	FPGT      r9, r10, r6
	bneid     r9, ($BB0_23)
	NOP    
# BB#22:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r11, r12, r0
$BB0_23:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r11, ($BB0_95)
	NOP    
# BB#24:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r6, r9
	bneid     r9, ($BB0_26)
	NOP    
# BB#25:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADDI      r11, r0, 0
$BB0_26:                                # %bb.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r11, ($BB0_95)
	NOP    
# BB#27:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	LWI       r9, r1, 612
	FPRSUB    r4, r9, r4
	FPRSUB    r8, r9, r8
	LWI       r9, r1, 588
	FPDIV     r4, r4, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r4, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_29)
	ADD       r20, r11, r0
# BB#28:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r20, r12, r0
$BB0_29:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r20, ($BB0_31)
	ADD       r9, r8, r0
# BB#30:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r9, r4, r0
$BB0_31:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r20, ($BB0_33)
	NOP    
# BB#32:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r4, r8, r0
$BB0_33:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	FPGT      r8, r9, r10
	FPLT      r20, r4, r6
	bneid     r8, ($BB0_35)
	ADD       r21, r11, r0
# BB#34:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r21, r12, r0
$BB0_35:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r20, ($BB0_37)
	ADD       r8, r11, r0
# BB#36:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r8, r12, r0
$BB0_37:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r21, ($BB0_39)
	NOP    
# BB#38:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r9, r10, r0
$BB0_39:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r8, ($BB0_41)
	NOP    
# BB#40:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r4, r6, r0
$BB0_41:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	FPGT      r6, r9, r4
	bneid     r6, ($BB0_43)
	NOP    
# BB#42:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r11, r12, r0
$BB0_43:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r11, ($BB0_95)
	NOP    
# BB#44:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ORI       r6, r0, 0
	ADDI      r8, r0, 1
	FPLT      r6, r4, r6
	bneid     r6, ($BB0_46)
	NOP    
# BB#45:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADDI      r8, r0, 0
$BB0_46:                                # %bb29.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r8, ($BB0_95)
	NOP    
# BB#47:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	LWI       r6, r1, 596
	FPRSUB    r5, r6, r5
	FPRSUB    r6, r6, r7
	LWI       r7, r1, 592
	FPDIV     r5, r5, r7
	FPDIV     r6, r6, r7
	FPGT      r7, r5, r6
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_49)
	ADD       r11, r8, r0
# BB#48:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r11, r10, r0
$BB0_49:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r11, ($BB0_51)
	ADD       r7, r6, r0
# BB#50:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r7, r5, r0
$BB0_51:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r11, ($BB0_53)
	NOP    
# BB#52:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r5, r6, r0
$BB0_53:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	FPGT      r6, r7, r9
	FPLT      r11, r5, r4
	bneid     r6, ($BB0_55)
	ADD       r12, r8, r0
# BB#54:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r12, r10, r0
$BB0_55:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r11, ($BB0_57)
	ADD       r6, r8, r0
# BB#56:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r6, r10, r0
$BB0_57:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r6, ($BB0_59)
	NOP    
# BB#58:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r5, r4, r0
$BB0_59:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r12, ($BB0_61)
	NOP    
# BB#60:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r7, r9, r0
$BB0_61:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	FPGT      r4, r7, r5
	bneid     r4, ($BB0_63)
	NOP    
# BB#62:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r8, r10, r0
$BB0_63:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r8, ($BB0_95)
	NOP    
# BB#64:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ORI       r4, r0, 0
	ADDI      r6, r0, 1
	FPLT      r5, r5, r4
	bneid     r5, ($BB0_66)
	NOP    
# BB#65:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADDI      r6, r0, 0
$BB0_66:                                # %bb62.i.i
                                        #   in Loop: Header=BB0_5 Depth=4
	bneid     r6, ($BB0_95)
	NOP    
# BB#67:                                # %bb1.i163
                                        #   in Loop: Header=BB0_5 Depth=4
	LOAD      r5, r3, 7
	LOAD      r3, r3, 6
	SWI       r3, r1, 580
	ADD       r4, r0, r0
	CMP       r3, r4, r3
	bltid     r3, ($BB0_99)
	NOP    
# BB#68:                                # %bb6.preheader.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r3, r0, r0
	LWI       r4, r1, 580
	CMP       r3, r3, r4
	bleid     r3, ($BB0_95)
	NOP    
$BB0_69:                                # %bb5.i164
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_269 Depth=3
                                        #         Parent Loop BB0_5 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	LOAD      r3, r5, 2
	LOAD      r4, r5, 1
	LOAD      r6, r5, 0
	LOAD      r7, r5, 5
	LOAD      r8, r5, 4
	LOAD      r9, r5, 3
	LOAD      r10, r5, 8
	LOAD      r11, r5, 7
	LOAD      r12, r5, 6
	FPRSUB    r7, r10, r7
	SWI       r7, r1, 600
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r1, 588
	FPMUL     r21, r20, r7
	LWI       r22, r1, 592
	FPMUL     r23, r8, r22
	FPRSUB    r6, r12, r6
	LOAD      r24, r5, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r1, 584
	FPMUL     r25, r23, r7
	FPRSUB    r3, r10, r3
	FPRSUB    r4, r11, r4
	LWI       r26, r1, 608
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r6
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r5, 9
	LWI       r28, r1, 612
	FPRSUB    r11, r11, r28
	FPMUL     r21, r21, r12
	FPRSUB    r20, r20, r23
	FPMUL     r23, r22, r4
	FPADD     r25, r25, r26
	FPMUL     r28, r4, r7
	FPMUL     r29, r8, r3
	FPMUL     r30, r9, r3
	FPMUL     r7, r6, r7
	MULI      r24, r24, 25
	LOAD      r27, r27, 9
	LWI       r31, r1, 596
	FPRSUB    r10, r10, r31
	FPRSUB    r28, r29, r28
	FPRSUB    r7, r7, r30
	ADD       r24, r27, r24
	FPMUL     r22, r22, r11
	FPADD     r21, r21, r26
	FPMUL     r27, r20, r3
	FPADD     r23, r23, r25
	FPMUL     r25, r8, r6
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
	bneid     r23, ($BB0_71)
	NOP    
# BB#70:                                # %bb5.i164
                                        #   in Loop: Header=BB0_69 Depth=5
	ADDI      r21, r0, 0
$BB0_71:                                # %bb5.i164
                                        #   in Loop: Header=BB0_69 Depth=5
	bneid     r21, ($BB0_94)
	NOP    
# BB#72:                                # %bb5.i164
                                        #   in Loop: Header=BB0_69 Depth=5
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_74)
	NOP    
# BB#73:                                # %bb5.i164
                                        #   in Loop: Header=BB0_69 Depth=5
	ADDI      r21, r0, 0
$BB0_74:                                # %bb5.i164
                                        #   in Loop: Header=BB0_69 Depth=5
	bneid     r21, ($BB0_94)
	NOP    
# BB#75:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	FPMUL     r7, r11, r3
	FPMUL     r21, r4, r10
	FPRSUB    r7, r21, r7
	FPMUL     r10, r6, r10
	FPMUL     r3, r12, r3
	FPRSUB    r3, r3, r10
	FPMUL     r4, r4, r12
	FPMUL     r6, r6, r11
	LWI       r10, r1, 584
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r4, r6, r4
	LWI       r6, r1, 588
	FPMUL     r6, r3, r6
	FPADD     r10, r10, r11
	LWI       r12, r1, 592
	FPMUL     r12, r4, r12
	FPADD     r6, r6, r10
	FPADD     r6, r12, r6
	FPMUL     r6, r6, r22
	ADDI      r10, r0, 1
	FPLT      r11, r6, r11
	bneid     r11, ($BB0_77)
	NOP    
# BB#76:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	ADDI      r10, r0, 0
$BB0_77:                                # %bb73.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	bneid     r10, ($BB0_94)
	NOP    
# BB#78:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_69 Depth=5
	FPADD     r6, r6, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r6, r6, r10
	bneid     r6, ($BB0_80)
	NOP    
# BB#79:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_69 Depth=5
	ADDI      r11, r0, 0
$BB0_80:                                # %bb94.i55.i
                                        #   in Loop: Header=BB0_69 Depth=5
	bneid     r11, ($BB0_94)
	NOP    
# BB#81:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	FPMUL     r6, r7, r9
	ORI       r7, r0, 0
	FPMUL     r3, r3, r8
	FPADD     r6, r6, r7
	LWI       r8, r1, 600
	FPMUL     r4, r4, r8
	FPADD     r3, r3, r6
	FPADD     r3, r4, r3
	FPMUL     r3, r3, r22
	FPUN      r4, r3, r7
	FPLE      r6, r3, r7
	BITOR     r4, r4, r6
	bneid     r4, ($BB0_83)
	ADDI      r7, r0, 1
# BB#82:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	ADDI      r7, r0, 0
$BB0_83:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	bneid     r7, ($BB0_94)
	NOP    
# BB#84:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	ORI       r4, r0, 981668463
	ADDI      r6, r0, 1
	FPLT      r4, r3, r4
	bneid     r4, ($BB0_86)
	NOP    
# BB#85:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	ADDI      r6, r0, 0
$BB0_86:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	bneid     r6, ($BB0_94)
	NOP    
# BB#87:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	ORI       r4, r0, 1343554297
	ADDI      r6, r0, 1
	FPEQ      r4, r3, r4
	bneid     r4, ($BB0_89)
	NOP    
# BB#88:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	ADDI      r6, r0, 0
$BB0_89:                                # %bb96.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	bneid     r6, ($BB0_94)
	NOP    
# BB#90:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	LWI       r4, r1, 572
	SWI       r4, r1, 236
	LWI        r4, r1, 236
	FPUN      r6, r4, r3
	FPLE      r4, r4, r3
	BITOR     r4, r6, r4
	bneid     r4, ($BB0_92)
	ADDI      r7, r0, 1
# BB#91:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	ADDI      r7, r0, 0
$BB0_92:                                # %bb2.i.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	bneid     r7, ($BB0_94)
	NOP    
# BB#93:                                # %bb3.i.i.i
                                        #   in Loop: Header=BB0_69 Depth=5
	LOAD      r4, r5, 2
	LOAD      r6, r5, 1
	LOAD      r7, r5, 0
	LOAD      r8, r5, 5
	LOAD      r9, r5, 4
	LOAD      r10, r5, 3
	LOAD      r11, r5, 8
	LOAD      r12, r5, 7
	LOAD      r20, r5, 6
	LOAD      r21, r5, 10
	LOAD      r22, r5, 9
	SWI       r22, r1, 692
	ADD       r22, r0, r0
	MULI      r21, r21, 25
	LOAD      r22, r22, 9
	ADD       r21, r22, r21
	LOAD      r22, r21, 6
	LOAD      r23, r21, 5
	LOAD      r21, r21, 4
	SWI        r22, r1, 280
	SWI        r23, r1, 284
	SWI        r21, r1, 288
	SWI        r11, r1, 268
	SWI        r12, r1, 272
	SWI        r20, r1, 276
	SWI        r8, r1, 256
	SWI        r9, r1, 260
	SWI        r10, r1, 264
	SWI        r4, r1, 244
	SWI        r6, r1, 248
	SWI        r7, r1, 252
	SWI        r3, r1, 240
	ADDI      r3, r0, 1060320051
	SWI       r3, r1, 684
	ADDI      r3, r0, 1050253722
	SWI       r3, r1, 688
	LWI       r3, r1, 280
	SWI       r3, r1, 680
	LWI       r4, r1, 284
	SWI       r4, r1, 636
	LWI       r4, r1, 288
	SWI       r4, r1, 640
	LWI       r4, r1, 268
	SWI       r4, r1, 648
	LWI       r4, r1, 272
	SWI       r4, r1, 652
	LWI       r4, r1, 276
	SWI       r4, r1, 644
	LWI       r4, r1, 256
	SWI       r4, r1, 664
	LWI       r4, r1, 260
	SWI       r4, r1, 656
	LWI       r4, r1, 264
	SWI       r4, r1, 660
	LWI       r4, r1, 244
	SWI       r4, r1, 676
	LWI       r4, r1, 248
	SWI       r4, r1, 668
	LWI       r4, r1, 252
	SWI       r4, r1, 672
	LWI       r3, r1, 240
	SWI       r3, r1, 572
$BB0_94:                                # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i
                                        #   in Loop: Header=BB0_69 Depth=5
	LWI       r3, r1, 580
	ADDI      r3, r3, -1
	SWI       r3, r1, 580
	ADDI      r5, r5, 11
	ADD       r4, r0, r0
	CMP       r3, r4, r3
	bneid     r3, ($BB0_69)
	NOP    
$BB0_95:                                # %bb7.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADD       r5, r0, r0
	LWI       r3, r1, 576
	CMP       r5, r5, r3
	bltid     r5, ($BB0_102)
	NOP    
# BB#96:                                # %bb9.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADDI      r5, r0, 2
	ANDI      r5, r5, 31
	LWI       r3, r1, 576
	beqid     r5, ($BB0_98)
	ADDI      r3, r3, 0
$BB0_97:                                # %bb9.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_269 Depth=3
                                        #         Parent Loop BB0_5 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_97)
	ADDK      r3, r3, r3
$BB0_98:                                # %bb9.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADDI      r5, r1, 48
	LW        r5, r5, r3
	LWI       r3, r1, 576
	ADDI      r3, r3, -1
	brid      ($BB0_5)
	SWI       r3, r1, 576
$BB0_99:                                # %bb3.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r4, r1, 576
	beqid     r3, ($BB0_101)
	ADDI      r4, r4, 0
$BB0_100:                               # %bb3.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_269 Depth=3
                                        #         Parent Loop BB0_5 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_100)
	ADDK      r4, r4, r4
$BB0_101:                               # %bb3.i
                                        #   in Loop: Header=BB0_5 Depth=4
	ADDI      r3, r1, 48
	LWI       r6, r1, 576
	ADDI      r6, r6, 1
	SWI       r6, r1, 576
	ADDI      r6, r5, 1
	ADD       r3, r3, r4
	brid      ($BB0_5)
	SWI       r6, r3, 4
$BB0_102:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_269 Depth=3
	LWI       r5, r1, 572
	SWI       r5, r1, 292
	LWI        r5, r1, 292
	SWI       r5, r1, 704
	ORI       r3, r0, 1343554297
	FPUN      r4, r5, r3
	FPGE      r5, r5, r3
	BITOR     r5, r4, r5
	bneid     r5, ($BB0_104)
	ADDI      r3, r0, 1
# BB#103:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r3, r0, 0
$BB0_104:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit
                                        #   in Loop: Header=BB0_269 Depth=3
	beqid     r3, ($BB0_106)
	NOP    
# BB#105:                               #   in Loop: Header=BB0_269 Depth=3
	ADDI      r5, r0, 1065151889
	ADDI      r3, r0, 1057988018
	ADDI      r4, r0, 1060806590
	brid      ($BB0_221)
	NOP    
$BB0_106:                               # %bb.i304
                                        #   in Loop: Header=BB0_269 Depth=3
	LWI       r5, r1, 676
	SWI       r5, r1, 344
	LWI       r5, r1, 664
	SWI       r5, r1, 332
	LWI       r5, r1, 648
	SWI       r5, r1, 320
	LWI       r5, r1, 652
	SWI       r5, r1, 324
	LWI       r5, r1, 672
	SWI       r5, r1, 352
	LWI       r5, r1, 660
	SWI       r5, r1, 340
	LWI       r5, r1, 644
	SWI       r5, r1, 328
	LWI       r5, r1, 668
	SWI       r5, r1, 348
	LWI       r5, r1, 656
	SWI       r5, r1, 336
	LWI        r5, r1, 344
	LWI        r3, r1, 332
	LWI        r4, r1, 320
	LWI        r6, r1, 324
	LWI        r7, r1, 336
	LWI        r8, r1, 348
	LWI        r9, r1, 352
	LWI        r10, r1, 340
	LWI        r11, r1, 328
	FPRSUB    r5, r3, r5
	FPRSUB    r6, r6, r7
	FPRSUB    r9, r10, r9
	FPRSUB    r3, r4, r3
	FPRSUB    r4, r11, r10
	FPRSUB    r7, r7, r8
	FPMUL     r8, r7, r3
	FPMUL     r10, r6, r5
	FPMUL     r5, r4, r5
	FPMUL     r3, r9, r3
	FPRSUB    r8, r10, r8
	FPRSUB    r5, r3, r5
	FPMUL     r3, r6, r9
	FPMUL     r4, r4, r7
	FPRSUB    r3, r4, r3
	FPMUL     r4, r8, r8
	FPMUL     r6, r5, r5
	LWI       r7, r1, 584
	FPMUL     r9, r7, r7
	LWI       r10, r1, 588
	FPMUL     r11, r10, r10
	FPADD     r4, r4, r6
	FPMUL     r6, r3, r3
	FPADD     r4, r4, r6
	FPADD     r6, r9, r11
	LWI       r9, r1, 592
	FPMUL     r11, r9, r9
	FPADD     r6, r6, r11
	FPINVSQRT r4, r4
	ORI       r11, r0, 1065353216
	FPINVSQRT r6, r6
	FPDIV     r6, r11, r6
	FPDIV     r4, r11, r4
	FPDIV     r8, r8, r4
	FPDIV     r11, r7, r6
	FPDIV     r5, r5, r4
	FPDIV     r12, r10, r6
	FPMUL     r11, r11, r8
	ORI       r20, r0, 0
	FPDIV     r3, r3, r4
	FPDIV     r4, r9, r6
	FPMUL     r6, r12, r5
	FPADD     r11, r11, r20
	LWI       r12, r1, 700
	SWI       r12, r1, 316
	LWI       r12, r1, 704
	FPMUL     r9, r9, r12
	FPMUL     r10, r10, r12
	FPMUL     r7, r7, r12
	FPMUL     r4, r4, r3
	FPADD     r6, r6, r11
	FPADD     r4, r4, r6
	LWI       r6, r1, 688
	SWI       r6, r1, 300
	LWI       r6, r1, 684
	SWI       r6, r1, 296
	LWI        r6, r1, 316
	SWI        r9, r1, 312
	SWI        r10, r1, 308
	SWI        r7, r1, 304
	LWI        r11, r1, 300
	LWI        r12, r1, 296
	SWI       r12, r1, 736
	FPUN      r12, r4, r20
	FPLE      r4, r4, r20
	BITOR     r4, r12, r4
	bneid     r4, ($BB0_108)
	ADDI      r20, r0, 1
# BB#107:                               # %bb.i304
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r20, r0, 0
$BB0_108:                               # %bb.i304
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r20, ($BB0_110)
	NOP    
# BB#109:                               # %bb46.i
                                        #   in Loop: Header=BB0_269 Depth=3
	FPNEG     r3, r3
	FPNEG     r5, r5
	FPNEG     r8, r8
	SWI        r3, r1, 364
	SWI        r5, r1, 360
	SWI        r8, r1, 356
$BB0_110:                               # %bb53.i305
                                        #   in Loop: Header=BB0_269 Depth=3
	LWI       r4, r1, 608
	FPADD     r4, r7, r4
	SWI       r4, r1, 616
	LWI       r7, r1, 612
	FPADD     r7, r10, r7
	SWI       r7, r1, 620
	FPADD     r6, r6, r9
	SWI       r6, r1, 624
	LWI       r9, r1, 748
	FPRSUB    r4, r4, r9
	LWI       r9, r1, 752
	FPRSUB    r7, r7, r9
	LWI       r9, r1, 756
	FPRSUB    r6, r6, r9
	FPMUL     r9, r4, r4
	FPMUL     r10, r7, r7
	FPADD     r9, r9, r10
	FPMUL     r10, r6, r6
	FPADD     r9, r9, r10
	ORI       r10, r0, 1065353216
	FPINVSQRT r12, r9
	FPDIV     r10, r10, r12
	FPDIV     r4, r4, r10
	SWI       r4, r1, 596
	FPDIV     r7, r7, r10
	SWI       r7, r1, 600
	FPMUL     r4, r4, r8
	ORI       r8, r0, 0
	FPDIV     r6, r6, r10
	SWI       r6, r1, 604
	FPMUL     r5, r7, r5
	FPADD     r4, r4, r8
	FPMUL     r3, r6, r3
	FPADD     r5, r5, r4
	FPADD     r5, r3, r5
	SWI       r5, r1, 744
	FPUN      r3, r5, r8
	FPLE      r5, r5, r8
	BITOR     r5, r3, r5
	bneid     r5, ($BB0_112)
	ADDI      r4, r0, 1
# BB#111:                               # %bb53.i305
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r4, r0, 0
$BB0_112:                               # %bb53.i305
                                        #   in Loop: Header=BB0_269 Depth=3
	FPMUL     r5, r11, r8
	beqid     r4, ($BB0_114)
	SWI       r5, r1, 696
# BB#113:                               #   in Loop: Header=BB0_269 Depth=3
	brid      ($BB0_220)
	LWI       r5, r1, 696
$BB0_114:                               # %bb94.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ADD       r5, r0, r0
	ADDI      r3, r0, -1
	SWI       r3, r1, 576
	FPINVSQRT r3, r9
	SWI       r3, r1, 740
$BB0_115:                               # %bb.i285
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_269 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_116 Depth 5
                                        #           Child Loop BB0_207 Depth 5
                                        #           Child Loop BB0_179 Depth 5
                                        #           Child Loop BB0_210 Depth 5
	ADDI      r3, r0, 3
	ANDI      r3, r3, 31
	beqid     r3, ($BB0_117)
	ADDI      r5, r5, 0
$BB0_116:                               # %bb.i285
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_269 Depth=3
                                        #         Parent Loop BB0_115 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_116)
	ADDK      r5, r5, r5
$BB0_117:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	LWI       r3, r1, 628
	ADD       r3, r5, r3
	LOAD      r5, r3, 2
	LOAD      r4, r3, 1
	LOAD      r6, r3, 0
	LOAD      r7, r3, 5
	LOAD      r8, r3, 4
	LOAD      r9, r3, 3
	LWI       r10, r1, 616
	FPRSUB    r6, r10, r6
	FPRSUB    r9, r10, r9
	LWI       r10, r1, 596
	FPDIV     r6, r6, r10
	FPDIV     r9, r9, r10
	FPGT      r10, r6, r9
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r10, ($BB0_119)
	ADD       r20, r11, r0
# BB#118:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r20, r12, r0
$BB0_119:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r20, ($BB0_121)
	ADD       r10, r9, r0
# BB#120:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r10, r6, r0
$BB0_121:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	ORI       r21, r0, -803929351
	bneid     r20, ($BB0_123)
	NOP    
# BB#122:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r6, r9, r0
$BB0_123:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	ORI       r9, r0, 1343554297
	FPGT      r20, r10, r21
	FPLT      r22, r6, r9
	bneid     r20, ($BB0_125)
	ADD       r23, r11, r0
# BB#124:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r23, r12, r0
$BB0_125:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r22, ($BB0_127)
	ADD       r20, r11, r0
# BB#126:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r20, r12, r0
$BB0_127:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r23, ($BB0_129)
	NOP    
# BB#128:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r10, r21, r0
$BB0_129:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r20, ($BB0_131)
	NOP    
# BB#130:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r6, r9, r0
$BB0_131:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	FPGT      r9, r10, r6
	bneid     r9, ($BB0_133)
	NOP    
# BB#132:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r11, r12, r0
$BB0_133:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r11, ($BB0_205)
	NOP    
# BB#134:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	ORI       r9, r0, 0
	ADDI      r11, r0, 1
	FPLT      r9, r6, r9
	bneid     r9, ($BB0_136)
	NOP    
# BB#135:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	ADDI      r11, r0, 0
$BB0_136:                               # %bb.i285
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r11, ($BB0_205)
	NOP    
# BB#137:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	LWI       r9, r1, 620
	FPRSUB    r4, r9, r4
	FPRSUB    r8, r9, r8
	LWI       r9, r1, 600
	FPDIV     r4, r4, r9
	FPDIV     r8, r8, r9
	FPGT      r9, r4, r8
	ADDI      r11, r0, 1
	ADDI      r12, r0, 0
	bneid     r9, ($BB0_139)
	ADD       r20, r11, r0
# BB#138:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r20, r12, r0
$BB0_139:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r20, ($BB0_141)
	ADD       r9, r8, r0
# BB#140:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r9, r4, r0
$BB0_141:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r20, ($BB0_143)
	NOP    
# BB#142:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r4, r8, r0
$BB0_143:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	FPGT      r8, r9, r10
	FPLT      r20, r4, r6
	bneid     r8, ($BB0_145)
	ADD       r21, r11, r0
# BB#144:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r21, r12, r0
$BB0_145:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r20, ($BB0_147)
	ADD       r8, r11, r0
# BB#146:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r8, r12, r0
$BB0_147:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r21, ($BB0_149)
	NOP    
# BB#148:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r9, r10, r0
$BB0_149:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r8, ($BB0_151)
	NOP    
# BB#150:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r4, r6, r0
$BB0_151:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	FPGT      r6, r9, r4
	bneid     r6, ($BB0_153)
	NOP    
# BB#152:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r11, r12, r0
$BB0_153:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r11, ($BB0_205)
	NOP    
# BB#154:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	ORI       r6, r0, 0
	ADDI      r8, r0, 1
	FPLT      r6, r4, r6
	bneid     r6, ($BB0_156)
	NOP    
# BB#155:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	ADDI      r8, r0, 0
$BB0_156:                               # %bb29.i.i291
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r8, ($BB0_205)
	NOP    
# BB#157:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	LWI       r6, r1, 624
	FPRSUB    r5, r6, r5
	FPRSUB    r6, r6, r7
	LWI       r7, r1, 604
	FPDIV     r5, r5, r7
	FPDIV     r6, r6, r7
	FPGT      r7, r5, r6
	ADDI      r8, r0, 1
	ADDI      r10, r0, 0
	bneid     r7, ($BB0_159)
	ADD       r11, r8, r0
# BB#158:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r11, r10, r0
$BB0_159:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r11, ($BB0_161)
	ADD       r7, r6, r0
# BB#160:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r7, r5, r0
$BB0_161:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r11, ($BB0_163)
	NOP    
# BB#162:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r5, r6, r0
$BB0_163:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	FPGT      r6, r7, r9
	FPLT      r11, r5, r4
	bneid     r6, ($BB0_165)
	ADD       r12, r8, r0
# BB#164:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r12, r10, r0
$BB0_165:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r11, ($BB0_167)
	ADD       r6, r8, r0
# BB#166:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r6, r10, r0
$BB0_167:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r6, ($BB0_169)
	NOP    
# BB#168:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r5, r4, r0
$BB0_169:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r12, ($BB0_171)
	NOP    
# BB#170:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r7, r9, r0
$BB0_171:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	FPGT      r4, r7, r5
	bneid     r4, ($BB0_173)
	NOP    
# BB#172:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r8, r10, r0
$BB0_173:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r8, ($BB0_205)
	NOP    
# BB#174:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	ORI       r4, r0, 0
	ADDI      r6, r0, 1
	FPLT      r5, r5, r4
	bneid     r5, ($BB0_176)
	NOP    
# BB#175:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	ADDI      r6, r0, 0
$BB0_176:                               # %bb62.i.i297
                                        #   in Loop: Header=BB0_115 Depth=4
	bneid     r6, ($BB0_205)
	NOP    
# BB#177:                               # %bb1.i298
                                        #   in Loop: Header=BB0_115 Depth=4
	LOAD      r5, r3, 7
	LOAD      r3, r3, 6
	SWI       r3, r1, 580
	ADD       r4, r0, r0
	CMP       r3, r4, r3
	bltid     r3, ($BB0_209)
	NOP    
# BB#178:                               # %bb6.preheader.i299
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r3, r0, r0
	LWI       r4, r1, 580
	CMP       r3, r3, r4
	bleid     r3, ($BB0_205)
	NOP    
$BB0_179:                               # %bb5.i312
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_269 Depth=3
                                        #         Parent Loop BB0_115 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	LOAD      r3, r5, 2
	LOAD      r4, r5, 1
	LOAD      r6, r5, 0
	LOAD      r7, r5, 5
	LOAD      r8, r5, 4
	LOAD      r9, r5, 3
	LOAD      r10, r5, 8
	LOAD      r11, r5, 7
	LOAD      r12, r5, 6
	FPRSUB    r7, r10, r7
	SWI       r7, r1, 632
	FPRSUB    r8, r11, r8
	FPRSUB    r9, r12, r9
	LWI       r20, r1, 600
	FPMUL     r21, r20, r7
	LWI       r22, r1, 604
	FPMUL     r23, r8, r22
	FPRSUB    r6, r12, r6
	LOAD      r24, r5, 10
	FPRSUB    r21, r23, r21
	FPMUL     r22, r9, r22
	LWI       r23, r1, 596
	FPMUL     r25, r23, r7
	FPRSUB    r3, r10, r3
	FPRSUB    r4, r11, r4
	LWI       r26, r1, 616
	FPRSUB    r12, r12, r26
	FPRSUB    r22, r25, r22
	FPMUL     r23, r8, r23
	FPMUL     r20, r9, r20
	FPMUL     r25, r21, r6
	ORI       r26, r0, 0
	ADD       r27, r0, r0
	LOAD      r28, r5, 9
	LWI       r28, r1, 620
	FPRSUB    r11, r11, r28
	FPMUL     r21, r21, r12
	FPRSUB    r20, r20, r23
	FPMUL     r23, r22, r4
	FPADD     r25, r25, r26
	FPMUL     r28, r4, r7
	FPMUL     r29, r8, r3
	FPMUL     r30, r9, r3
	FPMUL     r7, r6, r7
	MULI      r24, r24, 25
	LOAD      r27, r27, 9
	LWI       r31, r1, 624
	FPRSUB    r10, r10, r31
	FPRSUB    r28, r29, r28
	FPRSUB    r7, r7, r30
	ADD       r24, r27, r24
	FPMUL     r22, r22, r11
	FPADD     r21, r21, r26
	FPMUL     r27, r20, r3
	FPADD     r23, r23, r25
	FPMUL     r25, r8, r6
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
	bneid     r23, ($BB0_181)
	NOP    
# BB#180:                               # %bb5.i312
                                        #   in Loop: Header=BB0_179 Depth=5
	ADDI      r21, r0, 0
$BB0_181:                               # %bb5.i312
                                        #   in Loop: Header=BB0_179 Depth=5
	bneid     r21, ($BB0_204)
	NOP    
# BB#182:                               # %bb5.i312
                                        #   in Loop: Header=BB0_179 Depth=5
	ORI       r7, r0, 1065353216
	ADDI      r21, r0, 1
	FPGT      r7, r20, r7
	bneid     r7, ($BB0_184)
	NOP    
# BB#183:                               # %bb5.i312
                                        #   in Loop: Header=BB0_179 Depth=5
	ADDI      r21, r0, 0
$BB0_184:                               # %bb5.i312
                                        #   in Loop: Header=BB0_179 Depth=5
	bneid     r21, ($BB0_204)
	NOP    
# BB#185:                               # %bb73.i.i313
                                        #   in Loop: Header=BB0_179 Depth=5
	FPMUL     r7, r11, r3
	FPMUL     r21, r4, r10
	FPRSUB    r7, r21, r7
	FPMUL     r10, r6, r10
	FPMUL     r3, r12, r3
	FPRSUB    r3, r3, r10
	FPMUL     r4, r4, r12
	FPMUL     r6, r6, r11
	LWI       r10, r1, 596
	FPMUL     r10, r7, r10
	ORI       r11, r0, 0
	FPRSUB    r4, r6, r4
	LWI       r6, r1, 600
	FPMUL     r6, r3, r6
	FPADD     r10, r10, r11
	LWI       r12, r1, 604
	FPMUL     r12, r4, r12
	FPADD     r6, r6, r10
	FPADD     r6, r12, r6
	FPMUL     r6, r6, r22
	ADDI      r10, r0, 1
	FPLT      r11, r6, r11
	bneid     r11, ($BB0_187)
	NOP    
# BB#186:                               # %bb73.i.i313
                                        #   in Loop: Header=BB0_179 Depth=5
	ADDI      r10, r0, 0
$BB0_187:                               # %bb73.i.i313
                                        #   in Loop: Header=BB0_179 Depth=5
	bneid     r10, ($BB0_204)
	NOP    
# BB#188:                               # %bb94.i55.i314
                                        #   in Loop: Header=BB0_179 Depth=5
	FPADD     r6, r6, r20
	ORI       r10, r0, 1065353216
	ADDI      r11, r0, 1
	FPGT      r6, r6, r10
	bneid     r6, ($BB0_190)
	NOP    
# BB#189:                               # %bb94.i55.i314
                                        #   in Loop: Header=BB0_179 Depth=5
	ADDI      r11, r0, 0
$BB0_190:                               # %bb94.i55.i314
                                        #   in Loop: Header=BB0_179 Depth=5
	bneid     r11, ($BB0_204)
	NOP    
# BB#191:                               # %bb96.i.i317
                                        #   in Loop: Header=BB0_179 Depth=5
	FPMUL     r6, r7, r9
	ORI       r7, r0, 0
	FPMUL     r3, r3, r8
	FPADD     r6, r6, r7
	LWI       r8, r1, 632
	FPMUL     r4, r4, r8
	FPADD     r3, r3, r6
	FPADD     r3, r4, r3
	FPMUL     r3, r3, r22
	FPUN      r4, r3, r7
	FPLE      r6, r3, r7
	BITOR     r4, r4, r6
	bneid     r4, ($BB0_193)
	ADDI      r7, r0, 1
# BB#192:                               # %bb96.i.i317
                                        #   in Loop: Header=BB0_179 Depth=5
	ADDI      r7, r0, 0
$BB0_193:                               # %bb96.i.i317
                                        #   in Loop: Header=BB0_179 Depth=5
	bneid     r7, ($BB0_204)
	NOP    
# BB#194:                               # %bb96.i.i317
                                        #   in Loop: Header=BB0_179 Depth=5
	ORI       r4, r0, 981668463
	ADDI      r6, r0, 1
	FPLT      r4, r3, r4
	bneid     r4, ($BB0_196)
	NOP    
# BB#195:                               # %bb96.i.i317
                                        #   in Loop: Header=BB0_179 Depth=5
	ADDI      r6, r0, 0
$BB0_196:                               # %bb96.i.i317
                                        #   in Loop: Header=BB0_179 Depth=5
	bneid     r6, ($BB0_204)
	NOP    
# BB#197:                               # %bb96.i.i317
                                        #   in Loop: Header=BB0_179 Depth=5
	ORI       r4, r0, 1343554297
	ADDI      r6, r0, 1
	FPEQ      r4, r3, r4
	bneid     r4, ($BB0_199)
	NOP    
# BB#198:                               # %bb96.i.i317
                                        #   in Loop: Header=BB0_179 Depth=5
	ADDI      r6, r0, 0
$BB0_199:                               # %bb96.i.i317
                                        #   in Loop: Header=BB0_179 Depth=5
	bneid     r6, ($BB0_204)
	NOP    
# BB#200:                               # %bb2.i.i.i318
                                        #   in Loop: Header=BB0_179 Depth=5
	LWI       r4, r1, 572
	SWI       r4, r1, 368
	LWI        r4, r1, 368
	FPUN      r6, r4, r3
	FPLE      r4, r4, r3
	BITOR     r4, r6, r4
	bneid     r4, ($BB0_202)
	ADDI      r7, r0, 1
# BB#201:                               # %bb2.i.i.i318
                                        #   in Loop: Header=BB0_179 Depth=5
	ADDI      r7, r0, 0
$BB0_202:                               # %bb2.i.i.i318
                                        #   in Loop: Header=BB0_179 Depth=5
	bneid     r7, ($BB0_204)
	NOP    
# BB#203:                               # %bb3.i.i.i369
                                        #   in Loop: Header=BB0_179 Depth=5
	LOAD      r4, r5, 2
	LOAD      r4, r5, 1
	LOAD      r4, r5, 0
	LOAD      r4, r5, 5
	LOAD      r4, r5, 4
	LOAD      r4, r5, 3
	LOAD      r4, r5, 8
	LOAD      r4, r5, 7
	LOAD      r4, r5, 6
	LOAD      r4, r5, 10
	ADD       r6, r0, r0
	LOAD      r7, r5, 9
	MULI      r4, r4, 25
	LOAD      r6, r6, 9
	ADD       r4, r6, r4
	SWI        r3, r1, 372
	LOAD      r3, r4, 6
	LWI       r3, r1, 372
	SWI       r3, r1, 572
	LOAD      r3, r4, 5
	LOAD      r3, r4, 4
$BB0_204:                               # %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i371
                                        #   in Loop: Header=BB0_179 Depth=5
	LWI       r3, r1, 580
	ADDI      r3, r3, -1
	SWI       r3, r1, 580
	ADDI      r5, r5, 11
	ADD       r4, r0, r0
	CMP       r3, r4, r3
	bneid     r3, ($BB0_179)
	NOP    
$BB0_205:                               # %bb7.i372
                                        #   in Loop: Header=BB0_115 Depth=4
	ADD       r5, r0, r0
	LWI       r3, r1, 576
	CMP       r5, r5, r3
	bltid     r5, ($BB0_212)
	NOP    
# BB#206:                               # %bb9.i373
                                        #   in Loop: Header=BB0_115 Depth=4
	ADDI      r5, r0, 2
	ANDI      r5, r5, 31
	LWI       r3, r1, 576
	beqid     r5, ($BB0_208)
	ADDI      r3, r3, 0
$BB0_207:                               # %bb9.i373
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_269 Depth=3
                                        #         Parent Loop BB0_115 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ADDI      r5, r5, -1
	bneid     r5, ($BB0_207)
	ADDK      r3, r3, r3
$BB0_208:                               # %bb9.i373
                                        #   in Loop: Header=BB0_115 Depth=4
	ADDI      r5, r1, 48
	LW        r5, r5, r3
	LWI       r3, r1, 576
	ADDI      r3, r3, -1
	brid      ($BB0_115)
	SWI       r3, r1, 576
$BB0_209:                               # %bb3.i301
                                        #   in Loop: Header=BB0_115 Depth=4
	ADDI      r3, r0, 2
	ANDI      r3, r3, 31
	LWI       r4, r1, 576
	beqid     r3, ($BB0_211)
	ADDI      r4, r4, 0
$BB0_210:                               # %bb3.i301
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_269 Depth=3
                                        #         Parent Loop BB0_115 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ADDI      r3, r3, -1
	bneid     r3, ($BB0_210)
	ADDK      r4, r4, r4
$BB0_211:                               # %bb3.i301
                                        #   in Loop: Header=BB0_115 Depth=4
	ADDI      r3, r1, 48
	LWI       r6, r1, 576
	ADDI      r6, r6, 1
	SWI       r6, r1, 576
	ADDI      r6, r5, 1
	ADD       r3, r3, r4
	brid      ($BB0_115)
	SWI       r6, r3, 4
$BB0_212:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit374
                                        #   in Loop: Header=BB0_269 Depth=3
	LWI       r5, r1, 572
	SWI       r5, r1, 376
	ORI       r5, r0, 1065353216
	LWI        r3, r1, 376
	LWI       r4, r1, 740
	FPDIV     r5, r5, r4
	FPUN      r4, r3, r5
	FPGE      r5, r3, r5
	BITOR     r5, r4, r5
	bneid     r5, ($BB0_214)
	ADDI      r6, r0, 1
# BB#213:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit374
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r6, r0, 0
$BB0_214:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit374
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r6, ($BB0_219)
	NOP    
# BB#215:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit374
                                        #   in Loop: Header=BB0_269 Depth=3
	ORI       r5, r0, 1008981770
	ADDI      r4, r0, 1
	FPGT      r5, r3, r5
	bneid     r5, ($BB0_217)
	NOP    
# BB#216:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit374
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r4, r0, 0
$BB0_217:                               # %_ZN3BVH9intersectER9HitRecordR3Ray.exit374
                                        #   in Loop: Header=BB0_269 Depth=3
	beqid     r4, ($BB0_219)
	NOP    
# BB#218:                               #   in Loop: Header=BB0_269 Depth=3
	brid      ($BB0_220)
	LWI       r5, r1, 696
$BB0_219:                               # %bb98.i
                                        #   in Loop: Header=BB0_269 Depth=3
	LWI       r3, r1, 744
	LWI       r5, r1, 736
	FPMUL     r5, r5, r3
	LWI       r3, r1, 696
	FPADD     r3, r5, r3
	SWI       r3, r1, 696
	ADD       r5, r3, r0
$BB0_220:                               # %bb121.i
                                        #   in Loop: Header=BB0_269 Depth=3
	LWI       r3, r1, 680
	SWI       r3, r1, 388
	LWI       r4, r1, 640
	SWI       r4, r1, 396
	LWI       r4, r1, 636
	SWI       r4, r1, 380
	LWI        r3, r1, 388
	LWI        r4, r1, 396
	LWI        r6, r1, 380
	LWI       r7, r1, 696
	FPMUL     r3, r7, r3
	FPMUL     r4, r4, r5
	FPMUL     r5, r6, r5
	SWI        r3, r1, 392
	SWI        r4, r1, 400
	SWI        r5, r1, 384
	LWI       r5, r1, 392
	LWI       r3, r1, 400
	LWI       r4, r1, 384
$BB0_221:                               # %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit
                                        #   in Loop: Header=BB0_269 Depth=3
	SWI       r3, r1, 424
	SWI       r4, r1, 416
	SWI       r5, r1, 420
	LWI       r8, r1, 728
	SWI       r8, r1, 404
	LWI       r8, r1, 724
	SWI       r8, r1, 408
	LWI       r5, r1, 732
	SWI       r5, r1, 412
	LWI        r5, r1, 424
	LWI        r3, r1, 416
	LWI        r4, r1, 420
	LWI       r6, r1, 716
	FPMUL     r5, r6, r5
	LWI        r6, r1, 404
	LWI       r24, r1, 708
	FPMUL     r3, r24, r3
	LWI        r7, r1, 408
	LWI        r8, r1, 412
	LWI       r24, r1, 712
	FPMUL     r9, r4, r24
	FPADD     r5, r5, r6
	FPADD     r4, r3, r7
	FPADD     r6, r8, r9
	SWI        r5, r1, 436
	SWI        r4, r1, 428
	SWI        r6, r1, 432
	ORI       r3, r0, 1343554297
	LWI       r8, r1, 436
	SWI       r8, r1, 728
	LWI       r8, r1, 428
	SWI       r8, r1, 724
	LWI       r7, r1, 432
	SWI       r7, r1, 732
	LWI       r7, r1, 704
	FPUN      r8, r7, r3
	FPGE      r3, r7, r3
	BITOR     r3, r8, r3
	bneid     r3, ($BB0_223)
	ADDI      r7, r0, 1
# BB#222:                               # %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r7, r0, 0
$BB0_223:                               # %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r7, ($BB0_270)
	NOP    
# BB#224:                               # %bb31
                                        #   in Loop: Header=BB0_269 Depth=3
	LWI       r3, r1, 676
	SWI       r3, r1, 492
	LWI       r3, r1, 664
	SWI       r3, r1, 480
	LWI       r3, r1, 648
	SWI       r3, r1, 468
	LWI       r3, r1, 652
	SWI       r3, r1, 472
	LWI       r3, r1, 672
	SWI       r3, r1, 500
	LWI       r3, r1, 660
	SWI       r3, r1, 488
	LWI       r3, r1, 644
	SWI       r3, r1, 476
	LWI       r3, r1, 668
	SWI       r3, r1, 496
	LWI       r3, r1, 656
	SWI       r3, r1, 484
	LWI        r3, r1, 492
	LWI        r7, r1, 480
	LWI        r8, r1, 468
	LWI        r9, r1, 472
	LWI        r10, r1, 484
	LWI        r11, r1, 496
	LWI        r12, r1, 500
	LWI        r20, r1, 488
	LWI        r21, r1, 476
	FPRSUB    r3, r7, r3
	FPRSUB    r9, r9, r10
	FPRSUB    r12, r20, r12
	FPRSUB    r7, r8, r7
	FPRSUB    r8, r21, r20
	FPRSUB    r10, r10, r11
	FPMUL     r11, r10, r7
	FPMUL     r20, r9, r3
	FPMUL     r3, r8, r3
	FPMUL     r7, r12, r7
	FPRSUB    r11, r20, r11
	FPRSUB    r3, r7, r3
	FPMUL     r7, r9, r12
	FPMUL     r8, r8, r10
	FPRSUB    r7, r8, r7
	FPMUL     r8, r11, r11
	FPMUL     r9, r3, r3
	LWI       r10, r1, 584
	FPMUL     r12, r10, r10
	LWI       r20, r1, 588
	FPMUL     r21, r20, r20
	FPADD     r8, r8, r9
	FPMUL     r9, r7, r7
	FPADD     r8, r8, r9
	FPADD     r9, r12, r21
	LWI       r12, r1, 592
	FPMUL     r21, r12, r12
	FPADD     r9, r9, r21
	FPINVSQRT r8, r8
	ORI       r21, r0, 1065353216
	FPINVSQRT r9, r9
	FPDIV     r9, r21, r9
	FPDIV     r8, r21, r8
	FPDIV     r11, r11, r8
	FPDIV     r21, r10, r9
	FPDIV     r3, r3, r8
	FPDIV     r22, r20, r9
	FPMUL     r21, r21, r11
	ORI       r23, r0, 0
	FPDIV     r7, r7, r8
	FPDIV     r8, r12, r9
	FPMUL     r9, r22, r3
	FPADD     r21, r21, r23
	LWI       r22, r1, 640
	SWI       r22, r1, 464
	LWI       r22, r1, 636
	SWI       r22, r1, 456
	LWI       r22, r1, 680
	SWI       r22, r1, 452
	LWI       r22, r1, 700
	SWI       r22, r1, 460
	LWI       r22, r1, 704
	FPMUL     r12, r12, r22
	FPMUL     r20, r20, r22
	FPMUL     r10, r10, r22
	FPMUL     r8, r8, r7
	FPADD     r9, r9, r21
	FPADD     r8, r8, r9
	LWI        r9, r1, 460
	SWI        r12, r1, 448
	SWI        r20, r1, 444
	SWI        r10, r1, 440
	LWI        r21, r1, 464
	LWI        r22, r1, 456
	LWI        r24, r1, 452
	FPUN      r25, r8, r23
	FPLE      r8, r8, r23
	BITOR     r8, r25, r8
	bneid     r8, ($BB0_226)
	ADDI      r23, r0, 1
# BB#225:                               # %bb31
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r23, r0, 0
$BB0_226:                               # %bb31
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r23, ($BB0_228)
	NOP    
# BB#227:                               # %bb.i42
                                        #   in Loop: Header=BB0_269 Depth=3
	FPNEG     r7, r7
	FPNEG     r3, r3
	FPNEG     r11, r11
	SWI        r7, r1, 512
	SWI        r3, r1, 508
	SWI        r11, r1, 504
$BB0_228:                               # %bb52.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ORI       r8, r0, 0
	FPUN      r23, r11, r8
	FPGE      r8, r11, r8
	BITOR     r8, r23, r8
	bneid     r8, ($BB0_230)
	ADDI      r25, r0, 1
# BB#229:                               # %bb52.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r25, r0, 0
$BB0_230:                               # %bb52.i
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r25, ($BB0_232)
	ADD       r8, r11, r0
# BB#231:                               # %bb.i145.i
                                        #   in Loop: Header=BB0_269 Depth=3
	FPNEG     r8, r11
$BB0_232:                               # %_Z4fabsf.exit147.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ORI       r23, r0, 0
	FPUN      r25, r3, r23
	FPGE      r23, r3, r23
	BITOR     r23, r25, r23
	bneid     r23, ($BB0_234)
	ADDI      r26, r0, 1
# BB#233:                               # %_Z4fabsf.exit147.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r26, r0, 0
$BB0_234:                               # %_Z4fabsf.exit147.i
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r26, ($BB0_236)
	ADD       r23, r3, r0
# BB#235:                               # %bb.i138.i
                                        #   in Loop: Header=BB0_269 Depth=3
	FPNEG     r23, r3
$BB0_236:                               # %_Z4fabsf.exit140.i
                                        #   in Loop: Header=BB0_269 Depth=3
	FPUN      r25, r8, r23
	FPGE      r8, r8, r23
	BITOR     r8, r25, r8
	bneid     r8, ($BB0_238)
	ADDI      r23, r0, 1
# BB#237:                               # %_Z4fabsf.exit140.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r23, r0, 0
$BB0_238:                               # %_Z4fabsf.exit140.i
                                        #   in Loop: Header=BB0_269 Depth=3
	LWI       r8, r1, 716
	FPMUL     r8, r21, r8
	SWI       r8, r1, 716
	LWI       r8, r1, 708
	FPMUL     r8, r22, r8
	SWI       r8, r1, 708
	LWI       r8, r1, 712
	FPMUL     r8, r8, r24
	SWI       r8, r1, 712
	LWI       r8, r1, 608
	FPADD     r8, r10, r8
	LWI       r10, r1, 612
	FPADD     r10, r20, r10
	bneid     r23, ($BB0_251)
	FPADD     r9, r9, r12
# BB#239:                               # %bb53.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ORI       r12, r0, 0
	FPUN      r20, r11, r12
	FPGE      r12, r11, r12
	BITOR     r12, r20, r12
	bneid     r12, ($BB0_241)
	ADDI      r21, r0, 1
# BB#240:                               # %bb53.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r21, r0, 0
$BB0_241:                               # %bb53.i
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r21, ($BB0_243)
	ADD       r12, r11, r0
# BB#242:                               # %bb.i131.i
                                        #   in Loop: Header=BB0_269 Depth=3
	FPNEG     r12, r11
$BB0_243:                               # %_Z4fabsf.exit133.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ORI       r20, r0, 0
	FPUN      r21, r7, r20
	FPGE      r20, r7, r20
	BITOR     r20, r21, r20
	bneid     r20, ($BB0_245)
	ADDI      r22, r0, 1
# BB#244:                               # %_Z4fabsf.exit133.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r22, r0, 0
$BB0_245:                               # %_Z4fabsf.exit133.i
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r22, ($BB0_247)
	ADD       r20, r7, r0
# BB#246:                               # %bb.i124.i
                                        #   in Loop: Header=BB0_269 Depth=3
	FPNEG     r20, r7
$BB0_247:                               # %_Z4fabsf.exit126.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ORI       r21, r0, 0
	ADDI      r22, r0, 1
	FPLT      r12, r12, r20
	bneid     r12, ($BB0_249)
	NOP    
# BB#248:                               # %_Z4fabsf.exit126.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r22, r0, 0
$BB0_249:                               # %_Z4fabsf.exit126.i
                                        #   in Loop: Header=BB0_269 Depth=3
	beqid     r22, ($BB0_251)
	NOP    
# BB#250:                               #   in Loop: Header=BB0_269 Depth=3
	ADDI      r12, r0, 1065353216
	brid      ($BB0_264)
	ADD       r20, r0, r0
$BB0_251:                               # %bb58.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ORI       r12, r0, 0
	FPUN      r20, r3, r12
	FPGE      r12, r3, r12
	BITOR     r12, r20, r12
	bneid     r12, ($BB0_253)
	ADDI      r21, r0, 1
# BB#252:                               # %bb58.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r21, r0, 0
$BB0_253:                               # %bb58.i
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r21, ($BB0_255)
	ADD       r12, r3, r0
# BB#254:                               # %bb.i114.i
                                        #   in Loop: Header=BB0_269 Depth=3
	FPNEG     r12, r3
$BB0_255:                               # %_Z4fabsf.exit116.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ORI       r20, r0, 0
	FPUN      r21, r7, r20
	FPGE      r20, r7, r20
	BITOR     r20, r21, r20
	bneid     r20, ($BB0_257)
	ADDI      r22, r0, 1
# BB#256:                               # %_Z4fabsf.exit116.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r22, r0, 0
$BB0_257:                               # %_Z4fabsf.exit116.i
                                        #   in Loop: Header=BB0_269 Depth=3
	bneid     r22, ($BB0_259)
	ADD       r20, r7, r0
# BB#258:                               # %bb.i.i
                                        #   in Loop: Header=BB0_269 Depth=3
	FPNEG     r20, r7
$BB0_259:                               # %_Z4fabsf.exit.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ORI       r21, r0, 0
	ADDI      r22, r0, 1
	FPLT      r12, r12, r20
	bneid     r12, ($BB0_261)
	NOP    
# BB#260:                               # %_Z4fabsf.exit.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ADDI      r22, r0, 0
$BB0_261:                               # %_Z4fabsf.exit.i
                                        #   in Loop: Header=BB0_269 Depth=3
	beqid     r22, ($BB0_263)
	NOP    
# BB#262:                               #   in Loop: Header=BB0_269 Depth=3
	ADDI      r20, r0, 1065353216
	brid      ($BB0_264)
	ADD       r12, r0, r0
$BB0_263:                               # %bb61.i
                                        #   in Loop: Header=BB0_269 Depth=3
	ADD       r20, r0, r0
	ORI       r21, r0, 1065353216
	ADD       r12, r20, r0
$BB0_264:                               # %bb62.i
                                        #   in Loop: Header=BB0_269 Depth=3
	SWI       r20, r1, 516
	SWI       r12, r1, 520
	LWI        r12, r1, 516
	LWI        r20, r1, 520
	FPMUL     r22, r3, r21
	FPMUL     r23, r12, r7
	FPMUL     r24, r20, r7
	FPMUL     r21, r11, r21
	FPRSUB    r22, r23, r22
	FPRSUB    r21, r21, r24
	FPMUL     r12, r12, r11
	FPMUL     r20, r20, r3
	FPRSUB    r12, r20, r12
	FPMUL     r20, r22, r22
	FPMUL     r23, r21, r21
	FPADD     r20, r20, r23
	FPMUL     r23, r12, r12
	FPADD     r20, r20, r23
	ORI       r23, r0, 1065353216
	FPINVSQRT r20, r20
	FPDIV     r20, r23, r20
	FPDIV     r22, r22, r20
	FPDIV     r12, r12, r20
	FPDIV     r20, r21, r20
	FPMUL     r21, r22, r7
	FPMUL     r23, r11, r12
	FPMUL     r24, r20, r7
	FPRSUB    r21, r23, r21
	FPMUL     r23, r22, r3
$BB0_265:                               # %bb89.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_269 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	RAND      r25
	RAND      r26
	FPADD     r25, r25, r25
	ORI       r27, r0, -1082130432
	FPADD     r26, r26, r26
	FPADD     r25, r25, r27
	FPADD     r26, r26, r27
	FPMUL     r27, r25, r25
	FPMUL     r28, r26, r26
	FPADD     r29, r27, r28
	ORI       r30, r0, 1065353216
	ADDI      r31, r0, 1
	FPGE      r29, r29, r30
	bneid     r29, ($BB0_267)
	NOP    
# BB#266:                               # %bb89.i
                                        #   in Loop: Header=BB0_265 Depth=4
	ADDI      r31, r0, 0
$BB0_267:                               # %bb89.i
                                        #   in Loop: Header=BB0_265 Depth=4
	bneid     r31, ($BB0_265)
	NOP    
# BB#268:                               # %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit
                                        #   in Loop: Header=BB0_269 Depth=3
	ORI       r29, r0, 1065353216
	FPRSUB    r27, r27, r29
	FPRSUB    r27, r28, r27
	FPMUL     r28, r20, r11
	FPMUL     r30, r3, r12
	FPINVSQRT r27, r27
	FPRSUB    r23, r23, r28
	FPRSUB    r24, r24, r30
	FPDIV     r27, r29, r27
	ORI       r28, r0, 981668463
	FPMUL     r23, r23, r26
	FPMUL     r12, r12, r25
	FPMUL     r21, r21, r26
	FPMUL     r20, r20, r25
	FPMUL     r24, r24, r26
	FPMUL     r22, r22, r25
	FPMUL     r25, r7, r27
	FPADD     r12, r12, r23
	FPMUL     r26, r3, r27
	FPADD     r20, r21, r20
	FPMUL     r27, r11, r27
	FPADD     r22, r24, r22
	FPMUL     r7, r7, r28
	FPMUL     r3, r3, r28
	FPMUL     r11, r11, r28
	FPADD     r12, r12, r25
	FPADD     r20, r26, r20
	FPADD     r22, r27, r22
	FPADD     r7, r9, r7
	FPADD     r3, r3, r10
	FPADD     r8, r11, r8
	SWI        r25, r1, 548
	SWI        r26, r1, 552
	SWI        r27, r1, 556
	SWI        r23, r1, 544
	SWI        r21, r1, 524
	SWI        r24, r1, 540
	SWI        r12, r1, 560
	SWI        r20, r1, 564
	SWI        r22, r1, 568
	SWI        r7, r1, 536
	SWI        r3, r1, 528
	SWI        r8, r1, 532
	LWI       r3, r1, 560
	LWI       r7, r1, 564
	LWI       r8, r1, 568
	LWI       r9, r1, 536
	SWI       r9, r1, 700
	LWI       r9, r1, 528
	LWI       r10, r1, 532
$BB0_269:                               # %bb49
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_265 Depth 4
                                        #         Child Loop BB0_5 Depth 4
                                        #           Child Loop BB0_6 Depth 5
                                        #           Child Loop BB0_97 Depth 5
                                        #           Child Loop BB0_69 Depth 5
                                        #           Child Loop BB0_100 Depth 5
                                        #         Child Loop BB0_115 Depth 4
                                        #           Child Loop BB0_116 Depth 5
                                        #           Child Loop BB0_207 Depth 5
                                        #           Child Loop BB0_179 Depth 5
                                        #           Child Loop BB0_210 Depth 5
	LWI       r11, r1, 720
	ADDI      r11, r11, 1
	SWI       r11, r1, 720
	ADDI      r12, r0, 5
	CMP       r11, r12, r11
	bltid     r11, ($BB0_4)
	NOP    
$BB0_270:                               # %bb50
                                        #   in Loop: Header=BB0_3 Depth=2
	LWI       r3, r1, 760
	ADDI      r3, r3, -1
	SWI       r3, r1, 760
	ADD       r7, r0, r0
	CMP       r3, r7, r3
	bneid     r3, ($BB0_3)
	NOP    
# BB#271:                               # %bb52
                                        #   in Loop: Header=BB0_2 Depth=1
	ORI       r3, r0, 1045220557
	FPMUL     r5, r5, r3
	ORI       r7, r0, 0
	ADDI      r8, r0, 1
	FPLT      r9, r5, r7
	bneid     r9, ($BB0_273)
	NOP    
# BB#272:                               # %bb52
                                        #   in Loop: Header=BB0_2 Depth=1
	ADDI      r8, r0, 0
$BB0_273:                               # %bb52
                                        #   in Loop: Header=BB0_2 Depth=1
	bneid     r8, ($BB0_278)
	NOP    
# BB#274:                               # %bb1.i
                                        #   in Loop: Header=BB0_2 Depth=1
	ORI       r7, r0, 1065353216
	ADDI      r8, r0, 1
	FPGT      r9, r5, r7
	bneid     r9, ($BB0_276)
	NOP    
# BB#275:                               # %bb1.i
                                        #   in Loop: Header=BB0_2 Depth=1
	ADDI      r8, r0, 0
$BB0_276:                               # %bb1.i
                                        #   in Loop: Header=BB0_2 Depth=1
	bneid     r8, ($BB0_278)
	NOP    
# BB#277:                               # %bb4.i
                                        #   in Loop: Header=BB0_2 Depth=1
	ADD       r7, r5, r0
$BB0_278:                               # %bb5.i
                                        #   in Loop: Header=BB0_2 Depth=1
	FPMUL     r5, r6, r3
	ORI       r6, r0, 0
	ADDI      r8, r0, 1
	FPLT      r9, r5, r6
	bneid     r9, ($BB0_280)
	NOP    
# BB#279:                               # %bb5.i
                                        #   in Loop: Header=BB0_2 Depth=1
	ADDI      r8, r0, 0
$BB0_280:                               # %bb5.i
                                        #   in Loop: Header=BB0_2 Depth=1
	bneid     r8, ($BB0_285)
	NOP    
# BB#281:                               # %bb8.i
                                        #   in Loop: Header=BB0_2 Depth=1
	ORI       r6, r0, 1065353216
	ADDI      r8, r0, 1
	FPGT      r9, r5, r6
	bneid     r9, ($BB0_283)
	NOP    
# BB#282:                               # %bb8.i
                                        #   in Loop: Header=BB0_2 Depth=1
	ADDI      r8, r0, 0
$BB0_283:                               # %bb8.i
                                        #   in Loop: Header=BB0_2 Depth=1
	bneid     r8, ($BB0_285)
	NOP    
# BB#284:                               # %bb11.i
                                        #   in Loop: Header=BB0_2 Depth=1
	ADD       r6, r5, r0
$BB0_285:                               # %bb12.i
                                        #   in Loop: Header=BB0_2 Depth=1
	FPMUL     r5, r4, r3
	ORI       r3, r0, 0
	ADDI      r4, r0, 1
	FPLT      r8, r5, r3
	bneid     r8, ($BB0_287)
	NOP    
# BB#286:                               # %bb12.i
                                        #   in Loop: Header=BB0_2 Depth=1
	ADDI      r4, r0, 0
$BB0_287:                               # %bb12.i
                                        #   in Loop: Header=BB0_2 Depth=1
	bneid     r4, ($BB0_292)
	NOP    
# BB#288:                               # %bb15.i
                                        #   in Loop: Header=BB0_2 Depth=1
	ORI       r3, r0, 1065353216
	ADDI      r4, r0, 1
	FPGT      r8, r5, r3
	bneid     r8, ($BB0_290)
	NOP    
# BB#289:                               # %bb15.i
                                        #   in Loop: Header=BB0_2 Depth=1
	ADDI      r4, r0, 0
$BB0_290:                               # %bb15.i
                                        #   in Loop: Header=BB0_2 Depth=1
	bneid     r4, ($BB0_292)
	NOP    
# BB#291:                               # %bb18.i
                                        #   in Loop: Header=BB0_2 Depth=1
	ADD       r3, r5, r0
$BB0_292:                               # %_ZN5Image3setEii5Color.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	LWI       r4, r1, 836
	LWI       r5, r1, 832
	ADD       r5, r5, r4
	MULI      r5, r5, 3
	LWI       r4, r1, 848
	ADD       r5, r5, r4
	STORE     r5, r7, 0
	STORE     r5, r3, 1
	STORE     r5, r6, 2
	ATOMIC_INC r5, 0
	LWI       r3, r1, 852
	CMP       r3, r5, r3
	bgtid     r3, ($BB0_2)
	NOP    
$BB0_293:                               # %return
	ADD       r3, r0, r0
	LWI       r31, r1, 0
	LWI       r30, r1, 4
	LWI       r29, r1, 8
	LWI       r28, r1, 12
	LWI       r27, r1, 16
	LWI       r26, r1, 20
	LWI       r25, r1, 24
	LWI       r24, r1, 28
	LWI       r23, r1, 32
	LWI       r22, r1, 36
	LWI       r21, r1, 40
	LWI       r20, r1, 44
	rtsd      r15, 8
	ADDI      r1, r1, 868
	.end	main
$tmp0:
	.size	main, ($tmp0)-main


