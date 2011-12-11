#BEGIN Preamble
	REG	r0
	REG	r1
	REG	r2
	REG	r3
	REG	r4
	REG	r5
	REG	r6
	REG	r7
	REG	r8
	REG	r9
	REG	r10
	REG	r11
	REG	r12
	REG	r13
	REG	r14
	REG	r15
	REG	r16
	REG	r17
	REG	r18
	REG	r19
	REG	r20
	REG	r21
	REG	r22
	REG	r23
	REG	r24
	REG	r25
	REG	r26
	REG	r27
	REG	r28
	REG	r29
	REG	r30
	REG	r31
	LOADIMM	r0, 0
	ADDI	r1, r0, 8388608
start:	brlid	r15, main
	NOP
	HALT
abort:	ADDI	r5, r0, -1
	PRINT	r5
	HALT
#END Preamble
#	.file	"rt.bc"
#	.text
#	.globl	main
#	.align	2
#	.type	main,@function
#	.ent	main                    # @main
main:
#	.frame	r19,160776,r15
#	.mask	0xfff88000
	ADDI	r1,	r1,	-160776
	SWI	r15,	r1,	0
	SWI	r19,	r1,	4
	ADDK	r19,	r1,	r0
	SWI	r20,	r19,	52
	SWI	r21,	r19,	48
	SWI	r22,	r19,	44
	SWI	r23,	r19,	40
	SWI	r24,	r19,	36
	SWI	r25,	r19,	32
	SWI	r26,	r19,	28
	SWI	r27,	r19,	24
	SWI	r28,	r19,	20
	SWI	r29,	r19,	16
	SWI	r30,	r19,	12
	SWI	r31,	r19,	8
	ADD	r3,	r0,	r0
	LOAD	r4,	r3,	1
	SWI	r4,	r19,	160712
	LOAD	r4,	r3,	4
	SWI	r4,	r19,	160772
	LOAD	r4,	r3,	7
	SWI	r4,	r19,	160716
	LOAD	r4,	r3,	2
	LOAD	r4,	r3,	5
	LOAD	r4,	r3,	12
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	160720
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	160724
	LOAD	r4,	r4,	2
	SWI	r4,	r19,	160728
	LOAD	r4,	r3,	10
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	160672
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	160676
	LOAD	r5,	r4,	2
	SWI	r5,	r19,	160680
	ADDI	r5,	r4,	9
	LOAD	r6,	r5,	0
	LOAD	r6,	r5,	1
	ADDI	r6,	r4,	12
	LOAD	r5,	r5,	2
	LOAD	r5,	r6,	0
	SWI	r5,	r19,	160732
	LOAD	r5,	r6,	1
	SWI	r5,	r19,	160736
	LOAD	r5,	r6,	2
	SWI	r5,	r19,	160740
	ADDI	r5,	r4,	15
	LOAD	r6,	r5,	0
	SWI	r6,	r19,	160744
	LOAD	r6,	r5,	1
	SWI	r6,	r19,	160748
	LOAD	r5,	r5,	2
	SWI	r5,	r19,	160752
	ADDI	r4,	r4,	18
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	160756
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	160760
	ADDI	r5,	r19,	184
	ADDI	r5,	r5,	16
	LOAD	r4,	r4,	2
	SWI	r4,	r19,	160764
	ADDI	r4,	r0,	5000
	ADD	r8,	r0,	r0
$0BB0_1:
	SWI	r0,	r5,	-16
	SWI	r0,	r5,	-12
	ADDI	r6,	r0,	1065353216
	SWI	r0,	r5,	-8
	SWI	r6,	r5,	-4
	SWI	r6,	r5,	0
	ADDI	r7,	r0,	-1
	ADDK	r4,	r4,	r7
	ADDKC	r3,	r3,	r7
	ADDI	r7,	r5,	32
	SWI	r6,	r5,	4
	BITOR	r6,	r4,	r3
	sbi	r8,	r5,	8
	CMP	r6,	r8,	r6
	bneid	r6,	$0BB0_1
	ADD	r5,	r7,	r0
	ADDI	r3,	r0,	1259902592
	SWI	r3,	r19,	160200
	SWI	r3,	r19,	160196
	ADDI	r4,	r0,	-887581056
	SWI	r3,	r19,	160192
	SWI	r4,	r19,	160212
	SWI	r4,	r19,	160208
	ADD	r3,	r0,	r0
	SWI	r4,	r19,	160204
	LOAD	r4,	r3,	28
	LOAD	r4,	r3,	29
	LOAD	r4,	r3,	8
	SWI	r4,	r19,	160616
	ADDI	r1,	r1,	-4
	ADDI	r5,	r0,	-8
	BITAND	r4,	r1,	r5
	ADDI	r5,	r4,	-8000000
	SWI	r5,	r19,	160700
	LWI	r6,	r19,	160680
	SWI	r6,	r19,	160216
	LWI	r6,	r19,	160216
	SWI	r6,	r19,	160768
	ADDI	r4,	r4,	-7999984
	ADD	r1,	r5,	r0
	ADDI	r5,	r0,	250000
	ADDI	r1,	r1,	4
	ADD	r8,	r0,	r0
$0BB0_3:
	SWI	r0,	r4,	-16
	SWI	r0,	r4,	-12
	ADDI	r6,	r0,	1065353216
	SWI	r0,	r4,	-8
	SWI	r6,	r4,	-4
	SWI	r6,	r4,	0
	ADDI	r7,	r0,	-1
	ADDK	r5,	r5,	r7
	ADDKC	r3,	r3,	r7
	ADDI	r7,	r4,	32
	SWI	r6,	r4,	4
	BITOR	r6,	r5,	r3
	sbi	r8,	r4,	8
	CMP	r6,	r8,	r6
	bneid	r6,	$0BB0_3
	ADD	r4,	r7,	r0
	ADD	r3,	r0,	r0
	SWI	r3,	r19,	160704
	LOAD	r4,	r3,	12
	LOAD	r5,	r4,	0
	LOAD	r6,	r4,	1
	LOAD	r4,	r4,	2
	SWI	r4,	r19,	160228
	SWI	r6,	r19,	160224
	SWI	r5,	r19,	160220
	LWI	r4,	r19,	160224
	SWI	r4,	r19,	160660
	LWI	r5,	r19,	160220
	SWI	r5,	r19,	160656
	LWI	r6,	r19,	160228
	SWI	r6,	r19,	160684
	ADDI	r6,	r0,	125000
	SWI	r6,	r19,	160708
	SWI	r3,	r19,	160636
	SWI	r4,	r19,	160664
	SWI	r5,	r19,	160668
	brid	$0BB0_154
	NOP
$0BB0_5:
	RAND	r3
	ORI	r4,	r0,	-1090519040
	RAND	r5
	FPADD	r3,	r3,	r4
	FPADD	r5,	r5,	r4
	RAND	r6
	FPADD	r3,	r3,	r3
	FPADD	r5,	r5,	r5
	FPADD	r4,	r6,	r4
	FPADD	r4,	r4,	r4
	FPMUL	r6,	r3,	r3
	FPMUL	r7,	r5,	r5
	FPADD	r6,	r6,	r7
	FPMUL	r7,	r4,	r4
	FPADD	r6,	r6,	r7
	ORI	r7,	r0,	1065353216
	ADDI	r8,	r0,	1
	FPGT	r7,	r6,	r7
	bneid	r7,	$0BB0_7
	NOP
	ADDI	r8,	r0,	0
$0BB0_7:
	bneid	r8,	$0BB0_5
	NOP
	FPINVSQRT	r6,	r6
	ORI	r7,	r0,	1065353216
	FPDIV	r6,	r7,	r6
	FPDIV	r5,	r5,	r6
	SWI	r5,	r19,	160576
	FPDIV	r3,	r3,	r6
	SWI	r3,	r19,	160572
	FPDIV	r4,	r4,	r6
	SWI	r5,	r19,	160464
	SWI	r3,	r19,	160460
	SWI	r4,	r19,	160468
	ADD	r3,	r0,	r0
	SWI	r3,	r19,	160604
	LWI	r3,	r19,	160468
	ADDI	r4,	r0,	1
	LWI	r5,	r19,	160632
	CMP	r4,	r4,	r5
	bltid	r4,	$0BB0_28
	NOP
	LWI	r4,	r19,	160604
	BITOR	r4,	r4,	r3
	SWI	r4,	r19,	160472
	LWI	r5,	r19,	160572
	LWI	r4,	r19,	160644
	FPADD	r4,	r5,	r4
	ORI	r5,	r0,	1119092736
	LWI	r6,	r19,	160472
	FPUN	r7,	r4,	r5
	FPLE	r5,	r4,	r5
	BITOR	r5,	r7,	r5
	bneid	r5,	$0BB0_11
	ADDI	r8,	r0,	1
	ADDI	r8,	r0,	0
$0BB0_11:
	LWI	r7,	r19,	160604
	LWI	r5,	r19,	160640
	BITOR	r5,	r7,	r5
	BITOR	r5,	r7,	r5
	SWI	r5,	r19,	160640
	bneid	r8,	$0BB0_28
	NOP
	ORI	r5,	r0,	1133903872
	FPUN	r7,	r4,	r5
	FPGE	r4,	r4,	r5
	BITOR	r4,	r7,	r4
	bneid	r4,	$0BB0_14
	ADDI	r5,	r0,	1
	ADDI	r5,	r0,	0
$0BB0_14:
	bneid	r5,	$0BB0_28
	NOP
	LWI	r5,	r19,	160576
	LWI	r4,	r19,	160648
	FPADD	r4,	r5,	r4
	ORI	r5,	r0,	1117782016
	FPUN	r7,	r4,	r5
	FPLE	r5,	r4,	r5
	BITOR	r5,	r7,	r5
	bneid	r5,	$0BB0_17
	ADDI	r8,	r0,	1
	ADDI	r8,	r0,	0
$0BB0_17:
	bneid	r8,	$0BB0_28
	NOP
	ORI	r5,	r0,	1133903872
	FPUN	r7,	r4,	r5
	FPGE	r4,	r4,	r5
	BITOR	r4,	r7,	r4
	bneid	r4,	$0BB0_20
	ADDI	r5,	r0,	1
	ADDI	r5,	r0,	0
$0BB0_20:
	bneid	r5,	$0BB0_28
	NOP
	LWI	r4,	r19,	160588
	FPADD	r4,	r4,	r6
	ORI	r5,	r0,	1133903872
	FPUN	r6,	r4,	r5
	FPLE	r5,	r4,	r5
	BITOR	r5,	r6,	r5
	bneid	r5,	$0BB0_23
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_23:
	bneid	r7,	$0BB0_28
	NOP
	ORI	r5,	r0,	1135542272
	FPUN	r6,	r4,	r5
	FPGE	r4,	r4,	r5
	BITOR	r4,	r6,	r4
	bneid	r4,	$0BB0_26
	ADDI	r5,	r0,	1
	ADDI	r5,	r0,	0
$0BB0_26:
	bneid	r5,	$0BB0_28
	NOP
	LWI	r4,	r19,	160636
	ADDI	r5,	r4,	1
	FPCONV	r4,	r4
	PRINT	r4
	SWI	r5,	r19,	160636
$0BB0_28:
	ADDI	r4,	r0,	1343554297
	SWI	r4,	r19,	160584
	SWI	r3,	r19,	160476
	LWI	r3,	r19,	160476
	SWI	r3,	r19,	160580
	ADD	r3,	r0,	r0
	ADDI	r4,	r0,	-1
	SWI	r4,	r19,	160564
	LWI	r4,	r19,	160604
	SWI	r4,	r19,	160608
	SWI	r4,	r19,	160612
$0BB0_29:
	ADDI	r4,	r0,	3
	ANDI	r4,	r4,	31
	beqid	r4,	$0BB0_31
	ADDI	r3,	r3,	0
$0BB0_30:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_30
	ADDK	r3,	r3,	r3
$0BB0_31:
	LWI	r4,	r19,	160616
	ADD	r4,	r3,	r4
	LOAD	r3,	r4,	2
	LOAD	r5,	r4,	1
	LOAD	r6,	r4,	0
	LOAD	r7,	r4,	5
	LOAD	r8,	r4,	4
	LOAD	r9,	r4,	3
	LWI	r10,	r19,	160592
	FPRSUB	r6,	r10,	r6
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r19,	160572
	FPDIV	r6,	r6,	r10
	FPDIV	r9,	r9,	r10
	FPGT	r10,	r6,	r9
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r10,	$0BB0_33
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_33:
	bneid	r20,	$0BB0_35
	ADD	r10,	r9,	r0
	ADD	r10,	r6,	r0
$0BB0_35:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_37
	NOP
	ADD	r6,	r9,	r0
$0BB0_37:
	ORI	r9,	r0,	1343554297
	FPGT	r20,	r10,	r21
	FPLT	r22,	r6,	r9
	bneid	r20,	$0BB0_39
	ADD	r23,	r11,	r0
	ADD	r23,	r12,	r0
$0BB0_39:
	bneid	r22,	$0BB0_41
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_41:
	bneid	r23,	$0BB0_43
	NOP
	ADD	r10,	r21,	r0
$0BB0_43:
	bneid	r20,	$0BB0_45
	NOP
	ADD	r6,	r9,	r0
$0BB0_45:
	FPGT	r9,	r10,	r6
	bneid	r9,	$0BB0_47
	NOP
	ADD	r11,	r12,	r0
$0BB0_47:
	bneid	r11,	$0BB0_119
	NOP
	ORI	r9,	r0,	0
	ADDI	r11,	r0,	1
	FPLT	r9,	r6,	r9
	bneid	r9,	$0BB0_50
	NOP
	ADDI	r11,	r0,	0
$0BB0_50:
	bneid	r11,	$0BB0_119
	NOP
	LWI	r9,	r19,	160596
	FPRSUB	r5,	r9,	r5
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	160576
	FPDIV	r5,	r5,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r5,	r8
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_53
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_53:
	bneid	r20,	$0BB0_55
	ADD	r9,	r8,	r0
	ADD	r9,	r5,	r0
$0BB0_55:
	bneid	r20,	$0BB0_57
	NOP
	ADD	r5,	r8,	r0
$0BB0_57:
	FPGT	r8,	r9,	r10
	FPLT	r20,	r5,	r6
	bneid	r8,	$0BB0_59
	ADD	r21,	r11,	r0
	ADD	r21,	r12,	r0
$0BB0_59:
	bneid	r20,	$0BB0_61
	ADD	r8,	r11,	r0
	ADD	r8,	r12,	r0
$0BB0_61:
	bneid	r21,	$0BB0_63
	NOP
	ADD	r9,	r10,	r0
$0BB0_63:
	bneid	r8,	$0BB0_65
	NOP
	ADD	r5,	r6,	r0
$0BB0_65:
	FPGT	r6,	r9,	r5
	bneid	r6,	$0BB0_67
	NOP
	ADD	r11,	r12,	r0
$0BB0_67:
	bneid	r11,	$0BB0_119
	NOP
	ORI	r6,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r6,	r5,	r6
	bneid	r6,	$0BB0_70
	NOP
	ADDI	r8,	r0,	0
$0BB0_70:
	bneid	r8,	$0BB0_119
	NOP
	LWI	r6,	r19,	160588
	FPRSUB	r3,	r6,	r3
	FPRSUB	r6,	r6,	r7
	LWI	r7,	r19,	160580
	FPDIV	r3,	r3,	r7
	FPDIV	r6,	r6,	r7
	FPGT	r7,	r3,	r6
	ADDI	r8,	r0,	1
	ADDI	r10,	r0,	0
	bneid	r7,	$0BB0_73
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_73:
	bneid	r11,	$0BB0_75
	ADD	r7,	r6,	r0
	ADD	r7,	r3,	r0
$0BB0_75:
	bneid	r11,	$0BB0_77
	NOP
	ADD	r3,	r6,	r0
$0BB0_77:
	FPGT	r6,	r7,	r9
	FPLT	r11,	r3,	r5
	bneid	r6,	$0BB0_79
	ADD	r12,	r8,	r0
	ADD	r12,	r10,	r0
$0BB0_79:
	bneid	r11,	$0BB0_81
	ADD	r6,	r8,	r0
	ADD	r6,	r10,	r0
$0BB0_81:
	bneid	r6,	$0BB0_83
	NOP
	ADD	r3,	r5,	r0
$0BB0_83:
	bneid	r12,	$0BB0_85
	NOP
	ADD	r7,	r9,	r0
$0BB0_85:
	FPGT	r5,	r7,	r3
	bneid	r5,	$0BB0_87
	NOP
	ADD	r8,	r10,	r0
$0BB0_87:
	bneid	r8,	$0BB0_119
	NOP
	ORI	r5,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r3,	r3,	r5
	bneid	r3,	$0BB0_90
	NOP
	ADDI	r6,	r0,	0
$0BB0_90:
	bneid	r6,	$0BB0_119
	NOP
	LOAD	r3,	r4,	7
	LOAD	r4,	r4,	6
	SWI	r4,	r19,	160568
	ADD	r5,	r0,	r0
	CMP	r4,	r5,	r4
	bltid	r4,	$0BB0_123
	NOP
	ADD	r4,	r0,	r0
	LWI	r5,	r19,	160568
	CMP	r4,	r4,	r5
	bleid	r4,	$0BB0_119
	NOP
$0BB0_93:
	LOAD	r4,	r3,	2
	LOAD	r5,	r3,	1
	LOAD	r6,	r3,	0
	LOAD	r7,	r3,	5
	LOAD	r8,	r3,	4
	LOAD	r9,	r3,	3
	LOAD	r10,	r3,	8
	LOAD	r11,	r3,	7
	LOAD	r12,	r3,	6
	FPRSUB	r7,	r10,	r7
	SWI	r7,	r19,	160600
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r19,	160576
	FPMUL	r21,	r20,	r7
	LWI	r22,	r19,	160580
	FPMUL	r23,	r8,	r22
	FPRSUB	r6,	r12,	r6
	LOAD	r24,	r3,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r19,	160572
	FPMUL	r25,	r23,	r7
	FPRSUB	r4,	r10,	r4
	FPRSUB	r5,	r11,	r5
	LWI	r26,	r19,	160592
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r6
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r3,	9
	LWI	r28,	r19,	160596
	FPRSUB	r11,	r11,	r28
	FPMUL	r21,	r21,	r12
	FPRSUB	r20,	r20,	r23
	FPMUL	r23,	r22,	r5
	FPADD	r25,	r25,	r26
	FPMUL	r28,	r5,	r7
	FPMUL	r29,	r8,	r4
	FPMUL	r30,	r9,	r4
	FPMUL	r7,	r6,	r7
	MULI	r24,	r24,	25
	LOAD	r27,	r27,	9
	LWI	r31,	r19,	160588
	FPRSUB	r10,	r10,	r31
	FPRSUB	r28,	r29,	r28
	FPRSUB	r7,	r7,	r30
	ADD	r24,	r27,	r24
	FPMUL	r22,	r22,	r11
	FPADD	r21,	r21,	r26
	FPMUL	r27,	r20,	r4
	FPADD	r23,	r23,	r25
	FPMUL	r25,	r8,	r6
	FPMUL	r29,	r9,	r5
	FPRSUB	r25,	r29,	r25
	LOAD	r29,	r24,	6
	FPMUL	r20,	r20,	r10
	FPADD	r21,	r22,	r21
	ORI	r22,	r0,	1065353216
	FPADD	r23,	r27,	r23
	FPMUL	r27,	r28,	r28
	FPMUL	r7,	r7,	r7
	FPDIV	r22,	r22,	r23
	FPADD	r20,	r20,	r21
	LOAD	r21,	r24,	5
	FPADD	r7,	r27,	r7
	FPMUL	r21,	r25,	r25
	FPMUL	r20,	r20,	r22
	FPADD	r7,	r7,	r21
	LOAD	r21,	r24,	4
	ADDI	r21,	r0,	1
	FPLT	r23,	r20,	r26
	FPINVSQRT	r7,	r7
	bneid	r23,	$0BB0_95
	NOP
	ADDI	r21,	r0,	0
$0BB0_95:
	bneid	r21,	$0BB0_118
	NOP
	ORI	r7,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r7,	r20,	r7
	bneid	r7,	$0BB0_98
	NOP
	ADDI	r21,	r0,	0
$0BB0_98:
	bneid	r21,	$0BB0_118
	NOP
	FPMUL	r7,	r11,	r4
	FPMUL	r21,	r5,	r10
	FPRSUB	r7,	r21,	r7
	FPMUL	r10,	r6,	r10
	FPMUL	r4,	r12,	r4
	FPRSUB	r4,	r4,	r10
	FPMUL	r5,	r5,	r12
	FPMUL	r6,	r6,	r11
	LWI	r10,	r19,	160572
	FPMUL	r10,	r7,	r10
	ORI	r11,	r0,	0
	FPRSUB	r5,	r6,	r5
	LWI	r6,	r19,	160576
	FPMUL	r6,	r4,	r6
	FPADD	r10,	r10,	r11
	LWI	r12,	r19,	160580
	FPMUL	r12,	r5,	r12
	FPADD	r6,	r6,	r10
	FPADD	r6,	r12,	r6
	FPMUL	r6,	r6,	r22
	ADDI	r10,	r0,	1
	FPLT	r11,	r6,	r11
	bneid	r11,	$0BB0_101
	NOP
	ADDI	r10,	r0,	0
$0BB0_101:
	bneid	r10,	$0BB0_118
	NOP
	FPADD	r6,	r6,	r20
	ORI	r10,	r0,	1065353216
	ADDI	r11,	r0,	1
	FPGT	r6,	r6,	r10
	bneid	r6,	$0BB0_104
	NOP
	ADDI	r11,	r0,	0
$0BB0_104:
	bneid	r11,	$0BB0_118
	NOP
	FPMUL	r6,	r7,	r9
	ORI	r7,	r0,	0
	FPMUL	r4,	r4,	r8
	FPADD	r6,	r6,	r7
	LWI	r8,	r19,	160600
	FPMUL	r5,	r5,	r8
	FPADD	r4,	r4,	r6
	FPADD	r4,	r5,	r4
	FPMUL	r4,	r4,	r22
	FPUN	r5,	r4,	r7
	FPLE	r6,	r4,	r7
	BITOR	r5,	r5,	r6
	bneid	r5,	$0BB0_107
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_107:
	bneid	r7,	$0BB0_118
	NOP
	ORI	r5,	r0,	981668463
	ADDI	r6,	r0,	1
	FPLT	r5,	r4,	r5
	bneid	r5,	$0BB0_110
	NOP
	ADDI	r6,	r0,	0
$0BB0_110:
	bneid	r6,	$0BB0_118
	NOP
	ORI	r5,	r0,	1343554297
	ADDI	r6,	r0,	1
	FPEQ	r5,	r4,	r5
	bneid	r5,	$0BB0_113
	NOP
	ADDI	r6,	r0,	0
$0BB0_113:
	bneid	r6,	$0BB0_118
	NOP
	LWI	r5,	r19,	160584
	SWI	r5,	r19,	160480
	LWI	r5,	r19,	160480
	FPUN	r6,	r5,	r4
	FPLE	r5,	r5,	r4
	BITOR	r5,	r6,	r5
	bneid	r5,	$0BB0_116
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_116:
	bneid	r7,	$0BB0_118
	NOP
	LOAD	r5,	r3,	2
	LOAD	r6,	r3,	1
	LOAD	r7,	r3,	0
	LOAD	r8,	r3,	5
	LOAD	r9,	r3,	4
	LOAD	r10,	r3,	3
	LOAD	r11,	r3,	8
	LOAD	r12,	r3,	7
	LOAD	r20,	r3,	6
	LOAD	r21,	r3,	10
	LOAD	r22,	r3,	9
	SWI	r22,	r19,	160620
	ADD	r22,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r22,	r22,	9
	ADD	r21,	r22,	r21
	LOAD	r22,	r21,	6
	LOAD	r23,	r21,	5
	LOAD	r21,	r21,	4
	SWI	r22,	r19,	160524
	SWI	r23,	r19,	160528
	SWI	r21,	r19,	160532
	SWI	r11,	r19,	160512
	SWI	r12,	r19,	160516
	SWI	r20,	r19,	160520
	SWI	r8,	r19,	160500
	SWI	r9,	r19,	160504
	SWI	r10,	r19,	160508
	SWI	r5,	r19,	160488
	SWI	r6,	r19,	160492
	SWI	r7,	r19,	160496
	SWI	r4,	r19,	160484
	ADDI	r4,	r0,	1060320051
	SWI	r4,	r19,	160624
	ADDI	r4,	r0,	1050253722
	SWI	r4,	r19,	160628
	LWI	r4,	r19,	160524
	SWI	r4,	r19,	160604
	LWI	r12,	r19,	160528
	SWI	r12,	r19,	160608
	LWI	r12,	r19,	160532
	SWI	r12,	r19,	160612
	LWI	r4,	r19,	160484
	SWI	r4,	r19,	160584
$0BB0_118:
	LWI	r4,	r19,	160568
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	160568
	ADDI	r3,	r3,	11
	ADD	r5,	r0,	r0
	CMP	r4,	r5,	r4
	bneid	r4,	$0BB0_93
	NOP
$0BB0_119:
	ADD	r3,	r0,	r0
	LWI	r4,	r19,	160564
	CMP	r3,	r3,	r4
	bltid	r3,	$0BB0_126
	NOP
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r4,	r19,	160564
	beqid	r3,	$0BB0_122
	ADDI	r4,	r4,	0
$0BB0_121:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_121
	ADDK	r4,	r4,	r4
$0BB0_122:
	ADDI	r3,	r19,	56
	LW	r3,	r3,	r4
	LWI	r4,	r19,	160564
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	160564
	brid	$0BB0_29
	NOP
$0BB0_123:
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r5,	r19,	160564
	beqid	r4,	$0BB0_125
	ADDI	r5,	r5,	0
$0BB0_124:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_124
	ADDK	r5,	r5,	r5
$0BB0_125:
	ADDI	r4,	r19,	56
	LWI	r6,	r19,	160564
	ADDI	r6,	r6,	1
	SWI	r6,	r19,	160564
	ADDI	r6,	r3,	1
	ADD	r4,	r4,	r5
	brid	$0BB0_29
	SWI	r6,	r4,	4
$0BB0_126:
	LWI	r3,	r19,	160584
	SWI	r3,	r19,	160536
	LWI	r3,	r19,	160536
	ORI	r4,	r0,	1343554297
	FPUN	r5,	r3,	r4
	FPGE	r4,	r3,	r4
	BITOR	r4,	r5,	r4
	bneid	r4,	$0BB0_128
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_128:
	LWI	r4,	r19,	160632
	bneid	r6,	$0BB0_152
	ADDI	r4,	r4,	1
	LWI	r12,	r19,	160612
	SWI	r12,	r19,	160548
	LWI	r12,	r19,	160608
	SWI	r12,	r19,	160544
	LWI	r5,	r19,	160548
	LWI	r6,	r19,	160544
	LWI	r7,	r19,	160604
	SWI	r7,	r19,	160540
	LWI	r7,	r19,	160540
	FPADD	r8,	r5,	r6
	FPADD	r8,	r8,	r7
	ORI	r9,	r0,	1077936128
	FPUN	r10,	r8,	r9
	FPLE	r8,	r8,	r9
	BITOR	r8,	r10,	r8
	bneid	r8,	$0BB0_131
	ADDI	r9,	r0,	1
	ADDI	r9,	r0,	0
$0BB0_131:
	bneid	r9,	$0BB0_133
	NOP
	ORI	r8,	r0,	981668463
	FPMUL	r5,	r5,	r8
	FPMUL	r6,	r6,	r8
	FPMUL	r7,	r7,	r8
$0BB0_133:
	LWI	r8,	r19,	160580
	FPMUL	r8,	r8,	r3
	LWI	r9,	r19,	160576
	FPMUL	r9,	r9,	r3
	LWI	r10,	r19,	160572
	FPMUL	r3,	r10,	r3
	LWI	r10,	r19,	160588
	FPADD	r8,	r10,	r8
	LWI	r10,	r19,	160596
	FPADD	r9,	r9,	r10
	LWI	r10,	r19,	160592
	FPADD	r3,	r3,	r10
	SWI	r8,	r19,	160560
	SWI	r9,	r19,	160556
	SWI	r3,	r19,	160552
	LWI	r10,	r19,	160556
	SWI	r10,	r19,	160664
	LWI	r11,	r19,	160552
	SWI	r11,	r19,	160668
	LWI	r12,	r19,	160560
	SWI	r12,	r19,	160684
	ADDI	r12,	r0,	1
	LWI	r20,	r19,	160632
	CMP	r12,	r12,	r20
	SWI	r11,	r19,	160656
	SWI	r10,	r19,	160660
	bltid	r12,	$0BB0_151
	NOP
	ADDI	r10,	r0,	2
	ANDI	r11,	r10,	31
	LWI	r12,	r19,	160652
	beqid	r11,	$0BB0_136
	ADDI	r12,	r12,	0
$0BB0_135:
	ADDI	r11,	r11,	-1
	bneid	r11,	$0BB0_135
	ADDK	r12,	r12,	r12
$0BB0_136:
	ANDI	r11,	r10,	31
	LWI	r20,	r19,	160652
	beqid	r11,	$0BB0_138
	ADDI	r20,	r20,	0
$0BB0_137:
	ADDI	r11,	r11,	-1
	bneid	r11,	$0BB0_137
	ADDK	r20,	r20,	r20
$0BB0_138:
	ANDI	r11,	r10,	31
	LWI	r21,	r19,	160652
	beqid	r11,	$0BB0_140
	ADDI	r21,	r21,	0
$0BB0_139:
	ADDI	r11,	r11,	-1
	bneid	r11,	$0BB0_139
	ADDK	r21,	r21,	r21
$0BB0_140:
	LWI	r11,	r19,	160700
	SW	r3,	r11,	r20
	ANDI	r3,	r10,	31
	LWI	r11,	r19,	160652
	beqid	r3,	$0BB0_142
	ADDI	r11,	r11,	0
$0BB0_141:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_141
	ADDK	r11,	r11,	r11
$0BB0_142:
	LWI	r3,	r19,	160700
	ADD	r3,	r3,	r12
	SWI	r9,	r3,	4
	ANDI	r3,	r10,	31
	LWI	r9,	r19,	160652
	beqid	r3,	$0BB0_144
	ADDI	r9,	r9,	0
$0BB0_143:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_143
	ADDK	r9,	r9,	r9
$0BB0_144:
	LWI	r3,	r19,	160700
	ADD	r3,	r3,	r21
	SWI	r8,	r3,	8
	ANDI	r3,	r10,	31
	LWI	r8,	r19,	160652
	beqid	r3,	$0BB0_146
	ADDI	r8,	r8,	0
$0BB0_145:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_145
	ADDK	r8,	r8,	r8
$0BB0_146:
	LWI	r3,	r19,	160700
	ADD	r3,	r3,	r11
	ADDI	r10,	r0,	5
	LWI	r11,	r19,	160696
	SWI	r11,	r3,	12
	ANDI	r3,	r10,	31
	LWI	r10,	r19,	160704
	beqid	r3,	$0BB0_148
	ADDI	r10,	r10,	0
$0BB0_147:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_147
	ADDK	r10,	r10,	r10
$0BB0_148:
	LWI	r3,	r19,	160700
	ADD	r9,	r3,	r9
	ADD	r8,	r3,	r8
	LWI	r11,	r19,	160692
	SWI	r11,	r9,	16
	LWI	r9,	r19,	160704
	ADDI	r9,	r9,	1
	SWI	r9,	r19,	160704
	ADD	r9,	r0,	r0
	ADD	r3,	r3,	r10
	LWI	r10,	r19,	160688
	SWI	r10,	r8,	20
	sbi	r9,	r3,	24
	LWI	r3,	r19,	160668
	SWI	r3,	r19,	160656
	LWI	r3,	r19,	160664
	SWI	r3,	r19,	160660
$0BB0_149:
	ADDI	r3,	r0,	3
	ANDI	r3,	r3,	31
	LWI	r8,	r19,	160704
	ADDI	r8,	r8,	0
	SWI	r8,	r19,	160652
	beqid	r3,	$0BB0_151
	NOP
$0BB0_150:
	LWI	r8,	r19,	160652
	ADDK	r8,	r8,	r8
	SWI	r8,	r19,	160652
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_150
	NOP
$0BB0_151:
	LWI	r3,	r19,	160684
	SWI	r3,	r19,	160232
	LWI	r3,	r19,	160656
	SWI	r3,	r19,	160248
	LWI	r3,	r19,	160664
	SWI	r3,	r19,	160236
	LWI	r3,	r19,	160668
	SWI	r3,	r19,	160240
	LWI	r3,	r19,	160660
	SWI	r3,	r19,	160244
	ORI	r3,	r0,	1060320051
	FPMUL	r5,	r5,	r3
	SWI	r5,	r19,	160696
	FPMUL	r5,	r6,	r3
	SWI	r5,	r19,	160692
	FPMUL	r5,	r7,	r3
	SWI	r5,	r19,	160688
	LWI	r5,	r19,	160232
	SWI	r5,	r19,	160588
	LWI	r5,	r19,	160248
	SWI	r5,	r19,	160644
	LWI	r5,	r19,	160236
	SWI	r5,	r19,	160648
	LWI	r5,	r19,	160240
	SWI	r5,	r19,	160592
	LWI	r5,	r19,	160244
	SWI	r5,	r19,	160596
$0BB0_152:
	SWI	r4,	r19,	160632
	ADDI	r5,	r0,	3
	CMP	r4,	r5,	r4
	bltid	r4,	$0BB0_5
	NOP
	LWI	r4,	r19,	160708
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	160708
	ADD	r5,	r0,	r0
	CMP	r4,	r5,	r4
	beqid	r4,	$0BB0_155
	NOP
$0BB0_154:
	ORI	r5,	r0,	0
	ADD	r4,	r0,	r0
	ADD	r6,	r5,	r0
	brid	$0BB0_149
	ADD	r7,	r5,	r0
$0BB0_155:
	LWI	r3,	r19,	160712
	FPCONV	r4,	r3
	SWI	r4,	r19,	160668
	LWI	r4,	r19,	160772
	FPCONV	r5,	r4
	SWI	r5,	r19,	160684
	ORI	r5,	r0,	-1073741824
	MUL	r3,	r4,	r3
	SWI	r3,	r19,	160708
	ATOMIC_INC	r4,	0
	CMP	r3,	r4,	r3
	bleid	r3,	$0BB0_413
	NOP
	LWI	r3,	r19,	160668
	FPDIV	r3,	r3,	r5
	SWI	r3,	r19,	160688
	LWI	r3,	r19,	160684
	FPDIV	r3,	r3,	r5
	SWI	r3,	r19,	160692
	LWI	r3,	r19,	160676
	SWI	r3,	r19,	160256
	LWI	r3,	r19,	160672
	SWI	r3,	r19,	160252
	ADD	r3,	r0,	r0
	SWI	r3,	r19,	160696
$0BB0_157:
	LWI	r3,	r19,	160712
	DIV	r5,	r3,	r4
	MUL	r3,	r5,	r3
	SWI	r3,	r19,	160656
	RSUB	r4,	r3,	r4
	SWI	r4,	r19,	160660
	FPCONV	r3,	r5
	FPCONV	r4,	r4
	LWI	r5,	r19,	160692
	FPADD	r3,	r3,	r5
	ORI	r5,	r0,	1056964608
	LWI	r6,	r19,	160688
	FPADD	r4,	r4,	r6
	FPADD	r3,	r3,	r5
	FPADD	r4,	r4,	r5
	FPADD	r3,	r3,	r3
	FPADD	r4,	r4,	r4
	LWI	r5,	r19,	160684
	FPDIV	r3,	r3,	r5
	LWI	r5,	r19,	160668
	FPDIV	r4,	r4,	r5
	LWI	r5,	r19,	160760
	FPMUL	r5,	r5,	r3
	LWI	r6,	r19,	160748
	FPMUL	r6,	r6,	r4
	LWI	r7,	r19,	160756
	FPMUL	r7,	r7,	r3
	LWI	r8,	r19,	160744
	FPMUL	r8,	r8,	r4
	LWI	r9,	r19,	160752
	FPMUL	r4,	r9,	r4
	LWI	r9,	r19,	160764
	FPMUL	r3,	r9,	r3
	FPADD	r5,	r5,	r6
	FPADD	r6,	r7,	r8
	LWI	r7,	r19,	160736
	FPADD	r5,	r5,	r7
	LWI	r7,	r19,	160732
	FPADD	r6,	r6,	r7
	FPADD	r4,	r4,	r3
	LWI	r3,	r19,	160740
	FPADD	r4,	r3,	r4
	FPMUL	r3,	r6,	r6
	FPMUL	r7,	r5,	r5
	FPADD	r3,	r3,	r7
	FPMUL	r7,	r4,	r4
	FPADD	r3,	r3,	r7
	FPINVSQRT	r3,	r3
	ORI	r7,	r0,	1065353216
	FPDIV	r3,	r7,	r3
	FPDIV	r4,	r4,	r3
	SWI	r4,	r19,	160268
	FPDIV	r4,	r5,	r3
	SWI	r4,	r19,	160576
	FPDIV	r3,	r6,	r3
	SWI	r3,	r19,	160580
	LWI	r5,	r19,	160268
	LWI	r6,	r19,	160696
	BITOR	r5,	r6,	r5
	SWI	r5,	r19,	160664
	SWI	r4,	r19,	160264
	SWI	r3,	r19,	160260
	SWI	r5,	r19,	160272
	ADD	r4,	r0,	r0
	SWI	r4,	r19,	160620
	LWI	r3,	r19,	160272
	SWI	r3,	r19,	160584
	ADDI	r3,	r0,	-1
	SWI	r3,	r19,	160568
	ADDI	r3,	r0,	1343554297
	SWI	r3,	r19,	160564
	SWI	r4,	r19,	160608
	SWI	r4,	r19,	160612
	SWI	r4,	r19,	160592
	SWI	r4,	r19,	160596
	SWI	r4,	r19,	160600
	SWI	r4,	r19,	160604
	SWI	r4,	r19,	160624
	SWI	r4,	r19,	160628
	SWI	r4,	r19,	160632
	SWI	r4,	r19,	160636
	SWI	r4,	r19,	160640
$0BB0_158:
	ADDI	r3,	r0,	3
	ANDI	r3,	r3,	31
	beqid	r3,	$0BB0_160
	ADDI	r4,	r4,	0
$0BB0_159:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_159
	ADDK	r4,	r4,	r4
$0BB0_160:
	LWI	r3,	r19,	160616
	ADD	r3,	r4,	r3
	LOAD	r4,	r3,	2
	LOAD	r5,	r3,	1
	LOAD	r6,	r3,	0
	LOAD	r7,	r3,	5
	LOAD	r8,	r3,	4
	LOAD	r9,	r3,	3
	LWI	r10,	r19,	160672
	FPRSUB	r6,	r10,	r6
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r19,	160580
	FPDIV	r6,	r6,	r10
	FPDIV	r9,	r9,	r10
	FPGT	r10,	r6,	r9
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r10,	$0BB0_162
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_162:
	bneid	r20,	$0BB0_164
	ADD	r10,	r9,	r0
	ADD	r10,	r6,	r0
$0BB0_164:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_166
	NOP
	ADD	r6,	r9,	r0
$0BB0_166:
	ORI	r9,	r0,	1343554297
	FPGT	r20,	r10,	r21
	FPLT	r22,	r6,	r9
	bneid	r20,	$0BB0_168
	ADD	r23,	r11,	r0
	ADD	r23,	r12,	r0
$0BB0_168:
	bneid	r22,	$0BB0_170
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_170:
	bneid	r23,	$0BB0_172
	NOP
	ADD	r10,	r21,	r0
$0BB0_172:
	bneid	r20,	$0BB0_174
	NOP
	ADD	r6,	r9,	r0
$0BB0_174:
	FPGT	r9,	r10,	r6
	bneid	r9,	$0BB0_176
	NOP
	ADD	r11,	r12,	r0
$0BB0_176:
	bneid	r11,	$0BB0_248
	NOP
	ORI	r9,	r0,	0
	ADDI	r11,	r0,	1
	FPLT	r9,	r6,	r9
	bneid	r9,	$0BB0_179
	NOP
	ADDI	r11,	r0,	0
$0BB0_179:
	bneid	r11,	$0BB0_248
	NOP
	LWI	r9,	r19,	160676
	FPRSUB	r5,	r9,	r5
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	160576
	FPDIV	r5,	r5,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r5,	r8
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_182
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_182:
	bneid	r20,	$0BB0_184
	ADD	r9,	r8,	r0
	ADD	r9,	r5,	r0
$0BB0_184:
	bneid	r20,	$0BB0_186
	NOP
	ADD	r5,	r8,	r0
$0BB0_186:
	FPGT	r8,	r9,	r10
	FPLT	r20,	r5,	r6
	bneid	r8,	$0BB0_188
	ADD	r21,	r11,	r0
	ADD	r21,	r12,	r0
$0BB0_188:
	bneid	r20,	$0BB0_190
	ADD	r8,	r11,	r0
	ADD	r8,	r12,	r0
$0BB0_190:
	bneid	r21,	$0BB0_192
	NOP
	ADD	r9,	r10,	r0
$0BB0_192:
	bneid	r8,	$0BB0_194
	NOP
	ADD	r5,	r6,	r0
$0BB0_194:
	FPGT	r6,	r9,	r5
	bneid	r6,	$0BB0_196
	NOP
	ADD	r11,	r12,	r0
$0BB0_196:
	bneid	r11,	$0BB0_248
	NOP
	ORI	r6,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r6,	r5,	r6
	bneid	r6,	$0BB0_199
	NOP
	ADDI	r8,	r0,	0
$0BB0_199:
	bneid	r8,	$0BB0_248
	NOP
	LWI	r6,	r19,	160680
	FPRSUB	r4,	r6,	r4
	FPRSUB	r6,	r6,	r7
	LWI	r7,	r19,	160584
	FPDIV	r4,	r4,	r7
	FPDIV	r6,	r6,	r7
	FPGT	r7,	r4,	r6
	ADDI	r8,	r0,	1
	ADDI	r10,	r0,	0
	bneid	r7,	$0BB0_202
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_202:
	bneid	r11,	$0BB0_204
	ADD	r7,	r6,	r0
	ADD	r7,	r4,	r0
$0BB0_204:
	bneid	r11,	$0BB0_206
	NOP
	ADD	r4,	r6,	r0
$0BB0_206:
	FPGT	r6,	r7,	r9
	FPLT	r11,	r4,	r5
	bneid	r6,	$0BB0_208
	ADD	r12,	r8,	r0
	ADD	r12,	r10,	r0
$0BB0_208:
	bneid	r11,	$0BB0_210
	ADD	r6,	r8,	r0
	ADD	r6,	r10,	r0
$0BB0_210:
	bneid	r6,	$0BB0_212
	NOP
	ADD	r4,	r5,	r0
$0BB0_212:
	bneid	r12,	$0BB0_214
	NOP
	ADD	r7,	r9,	r0
$0BB0_214:
	FPGT	r5,	r7,	r4
	bneid	r5,	$0BB0_216
	NOP
	ADD	r8,	r10,	r0
$0BB0_216:
	bneid	r8,	$0BB0_248
	NOP
	ORI	r5,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r4,	r4,	r5
	bneid	r4,	$0BB0_219
	NOP
	ADDI	r6,	r0,	0
$0BB0_219:
	bneid	r6,	$0BB0_248
	NOP
	LOAD	r4,	r3,	7
	LOAD	r3,	r3,	6
	SWI	r3,	r19,	160572
	ADD	r5,	r0,	r0
	CMP	r3,	r5,	r3
	bltid	r3,	$0BB0_252
	NOP
	ADD	r3,	r0,	r0
	LWI	r5,	r19,	160572
	CMP	r3,	r3,	r5
	bleid	r3,	$0BB0_248
	NOP
$0BB0_222:
	LOAD	r3,	r4,	2
	LOAD	r5,	r4,	1
	LOAD	r6,	r4,	0
	LOAD	r7,	r4,	5
	LOAD	r8,	r4,	4
	LOAD	r9,	r4,	3
	LOAD	r10,	r4,	8
	LOAD	r11,	r4,	7
	LOAD	r12,	r4,	6
	FPRSUB	r7,	r10,	r7
	SWI	r7,	r19,	160588
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r19,	160576
	FPMUL	r21,	r20,	r7
	LWI	r22,	r19,	160584
	FPMUL	r23,	r8,	r22
	FPRSUB	r6,	r12,	r6
	LOAD	r24,	r4,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r19,	160580
	FPMUL	r25,	r23,	r7
	FPRSUB	r3,	r10,	r3
	FPRSUB	r5,	r11,	r5
	LWI	r26,	r19,	160672
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r6
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r4,	9
	LWI	r28,	r19,	160676
	FPRSUB	r11,	r11,	r28
	FPMUL	r21,	r21,	r12
	FPRSUB	r20,	r20,	r23
	FPMUL	r23,	r22,	r5
	FPADD	r25,	r25,	r26
	FPMUL	r28,	r5,	r7
	FPMUL	r29,	r8,	r3
	FPMUL	r30,	r9,	r3
	FPMUL	r7,	r6,	r7
	MULI	r24,	r24,	25
	LOAD	r27,	r27,	9
	LWI	r31,	r19,	160680
	FPRSUB	r10,	r10,	r31
	FPRSUB	r28,	r29,	r28
	FPRSUB	r7,	r7,	r30
	ADD	r24,	r27,	r24
	FPMUL	r22,	r22,	r11
	FPADD	r21,	r21,	r26
	FPMUL	r27,	r20,	r3
	FPADD	r23,	r23,	r25
	FPMUL	r25,	r8,	r6
	FPMUL	r29,	r9,	r5
	FPRSUB	r25,	r29,	r25
	LOAD	r29,	r24,	6
	FPMUL	r20,	r20,	r10
	FPADD	r21,	r22,	r21
	ORI	r22,	r0,	1065353216
	FPADD	r23,	r27,	r23
	FPMUL	r27,	r28,	r28
	FPMUL	r7,	r7,	r7
	FPDIV	r22,	r22,	r23
	FPADD	r20,	r20,	r21
	LOAD	r21,	r24,	5
	FPADD	r7,	r27,	r7
	FPMUL	r21,	r25,	r25
	FPMUL	r20,	r20,	r22
	FPADD	r7,	r7,	r21
	LOAD	r21,	r24,	4
	ADDI	r21,	r0,	1
	FPLT	r23,	r20,	r26
	FPINVSQRT	r7,	r7
	bneid	r23,	$0BB0_224
	NOP
	ADDI	r21,	r0,	0
$0BB0_224:
	bneid	r21,	$0BB0_247
	NOP
	ORI	r7,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r7,	r20,	r7
	bneid	r7,	$0BB0_227
	NOP
	ADDI	r21,	r0,	0
$0BB0_227:
	bneid	r21,	$0BB0_247
	NOP
	FPMUL	r7,	r11,	r3
	FPMUL	r21,	r5,	r10
	FPRSUB	r7,	r21,	r7
	FPMUL	r10,	r6,	r10
	FPMUL	r3,	r12,	r3
	FPRSUB	r3,	r3,	r10
	FPMUL	r5,	r5,	r12
	FPMUL	r6,	r6,	r11
	LWI	r10,	r19,	160580
	FPMUL	r10,	r7,	r10
	ORI	r11,	r0,	0
	FPRSUB	r5,	r6,	r5
	LWI	r6,	r19,	160576
	FPMUL	r6,	r3,	r6
	FPADD	r10,	r10,	r11
	LWI	r12,	r19,	160584
	FPMUL	r12,	r5,	r12
	FPADD	r6,	r6,	r10
	FPADD	r6,	r12,	r6
	FPMUL	r6,	r6,	r22
	ADDI	r10,	r0,	1
	FPLT	r11,	r6,	r11
	bneid	r11,	$0BB0_230
	NOP
	ADDI	r10,	r0,	0
$0BB0_230:
	bneid	r10,	$0BB0_247
	NOP
	FPADD	r6,	r6,	r20
	ORI	r10,	r0,	1065353216
	ADDI	r11,	r0,	1
	FPGT	r6,	r6,	r10
	bneid	r6,	$0BB0_233
	NOP
	ADDI	r11,	r0,	0
$0BB0_233:
	bneid	r11,	$0BB0_247
	NOP
	FPMUL	r6,	r7,	r9
	ORI	r7,	r0,	0
	FPMUL	r3,	r3,	r8
	FPADD	r6,	r6,	r7
	LWI	r8,	r19,	160588
	FPMUL	r5,	r5,	r8
	FPADD	r3,	r3,	r6
	FPADD	r3,	r5,	r3
	FPMUL	r3,	r3,	r22
	FPUN	r5,	r3,	r7
	FPLE	r6,	r3,	r7
	BITOR	r5,	r5,	r6
	bneid	r5,	$0BB0_236
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_236:
	bneid	r7,	$0BB0_247
	NOP
	ORI	r5,	r0,	981668463
	ADDI	r6,	r0,	1
	FPLT	r5,	r3,	r5
	bneid	r5,	$0BB0_239
	NOP
	ADDI	r6,	r0,	0
$0BB0_239:
	bneid	r6,	$0BB0_247
	NOP
	ORI	r5,	r0,	1343554297
	ADDI	r6,	r0,	1
	FPEQ	r5,	r3,	r5
	bneid	r5,	$0BB0_242
	NOP
	ADDI	r6,	r0,	0
$0BB0_242:
	bneid	r6,	$0BB0_247
	NOP
	LWI	r5,	r19,	160564
	SWI	r5,	r19,	160276
	LWI	r5,	r19,	160276
	FPUN	r6,	r5,	r3
	FPLE	r5,	r5,	r3
	BITOR	r5,	r6,	r5
	bneid	r5,	$0BB0_245
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_245:
	bneid	r7,	$0BB0_247
	NOP
	LOAD	r5,	r4,	2
	LOAD	r6,	r4,	1
	LOAD	r7,	r4,	0
	LOAD	r8,	r4,	5
	LOAD	r9,	r4,	4
	LOAD	r10,	r4,	3
	LOAD	r11,	r4,	8
	LOAD	r12,	r4,	7
	LOAD	r20,	r4,	6
	LOAD	r21,	r4,	10
	LOAD	r22,	r4,	9
	SWI	r22,	r19,	160648
	ADD	r22,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r22,	r22,	9
	ADD	r21,	r22,	r21
	LOAD	r22,	r21,	6
	LOAD	r23,	r21,	5
	LOAD	r21,	r21,	4
	SWI	r22,	r19,	160320
	SWI	r23,	r19,	160324
	SWI	r21,	r19,	160328
	SWI	r11,	r19,	160308
	SWI	r12,	r19,	160312
	SWI	r20,	r19,	160316
	SWI	r8,	r19,	160296
	SWI	r9,	r19,	160300
	SWI	r10,	r19,	160304
	SWI	r5,	r19,	160284
	SWI	r6,	r19,	160288
	SWI	r7,	r19,	160292
	SWI	r3,	r19,	160280
	ADDI	r3,	r0,	1060320051
	SWI	r3,	r19,	160644
	ADDI	r3,	r0,	1050253722
	SWI	r3,	r19,	160652
	LWI	r3,	r19,	160320
	SWI	r3,	r19,	160620
	LWI	r5,	r19,	160324
	SWI	r5,	r19,	160608
	LWI	r5,	r19,	160328
	SWI	r5,	r19,	160612
	LWI	r5,	r19,	160308
	SWI	r5,	r19,	160592
	LWI	r5,	r19,	160312
	SWI	r5,	r19,	160596
	LWI	r5,	r19,	160316
	SWI	r5,	r19,	160600
	LWI	r5,	r19,	160296
	SWI	r5,	r19,	160604
	LWI	r5,	r19,	160300
	SWI	r5,	r19,	160624
	LWI	r5,	r19,	160304
	SWI	r5,	r19,	160628
	LWI	r5,	r19,	160284
	SWI	r5,	r19,	160632
	LWI	r5,	r19,	160288
	SWI	r5,	r19,	160636
	LWI	r5,	r19,	160292
	SWI	r5,	r19,	160640
	LWI	r3,	r19,	160280
	SWI	r3,	r19,	160564
$0BB0_247:
	LWI	r3,	r19,	160572
	ADDI	r3,	r3,	-1
	SWI	r3,	r19,	160572
	ADDI	r4,	r4,	11
	ADD	r5,	r0,	r0
	CMP	r3,	r5,	r3
	bneid	r3,	$0BB0_222
	NOP
$0BB0_248:
	ADD	r4,	r0,	r0
	LWI	r3,	r19,	160568
	CMP	r4,	r4,	r3
	bltid	r4,	$0BB0_255
	NOP
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r3,	r19,	160568
	beqid	r4,	$0BB0_251
	ADDI	r3,	r3,	0
$0BB0_250:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_250
	ADDK	r3,	r3,	r3
$0BB0_251:
	ADDI	r4,	r19,	56
	LW	r4,	r4,	r3
	LWI	r3,	r19,	160568
	ADDI	r3,	r3,	-1
	SWI	r3,	r19,	160568
	brid	$0BB0_158
	NOP
$0BB0_252:
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r5,	r19,	160568
	beqid	r3,	$0BB0_254
	ADDI	r5,	r5,	0
$0BB0_253:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_253
	ADDK	r5,	r5,	r5
$0BB0_254:
	ADDI	r3,	r19,	56
	LWI	r6,	r19,	160568
	ADDI	r6,	r6,	1
	SWI	r6,	r19,	160568
	ADDI	r6,	r4,	1
	ADD	r3,	r3,	r5
	brid	$0BB0_158
	SWI	r6,	r3,	4
$0BB0_255:
	LWI	r4,	r19,	160564
	SWI	r4,	r19,	160368
	LWI	r5,	r19,	160640
	SWI	r5,	r19,	160364
	LWI	r5,	r19,	160636
	SWI	r5,	r19,	160360
	LWI	r5,	r19,	160632
	SWI	r5,	r19,	160356
	LWI	r5,	r19,	160628
	SWI	r5,	r19,	160352
	LWI	r5,	r19,	160624
	SWI	r5,	r19,	160348
	LWI	r5,	r19,	160604
	SWI	r5,	r19,	160344
	LWI	r5,	r19,	160600
	SWI	r5,	r19,	160340
	LWI	r5,	r19,	160596
	SWI	r5,	r19,	160336
	LWI	r5,	r19,	160592
	SWI	r5,	r19,	160332
	LWI	r4,	r19,	160368
	SWI	r4,	r19,	160624
	ORI	r3,	r0,	1343554297
	LWI	r5,	r19,	160364
	LWI	r6,	r19,	160360
	LWI	r7,	r19,	160356
	LWI	r8,	r19,	160352
	LWI	r9,	r19,	160348
	LWI	r10,	r19,	160344
	LWI	r11,	r19,	160340
	LWI	r12,	r19,	160336
	LWI	r20,	r19,	160332
	ADDI	r21,	r0,	1
	FPLT	r4,	r4,	r3
	bneid	r4,	$0BB0_257
	NOP
	ADDI	r21,	r0,	0
$0BB0_257:
	bneid	r21,	$0BB0_259
	NOP
	FPRSUB	r4,	r10,	r7
	FPRSUB	r7,	r12,	r9
	FPRSUB	r5,	r8,	r5
	FPRSUB	r10,	r20,	r10
	FPRSUB	r8,	r11,	r8
	FPRSUB	r6,	r9,	r6
	FPMUL	r9,	r6,	r10
	FPMUL	r11,	r7,	r4
	FPMUL	r4,	r8,	r4
	FPMUL	r10,	r5,	r10
	FPRSUB	r9,	r11,	r9
	FPRSUB	r4,	r10,	r4
	FPMUL	r5,	r7,	r5
	FPMUL	r6,	r8,	r6
	FPRSUB	r5,	r6,	r5
	FPMUL	r6,	r9,	r9
	FPMUL	r4,	r4,	r4
	LWI	r8,	r19,	160624
	LWI	r7,	r19,	160580
	FPMUL	r7,	r7,	r8
	LWI	r9,	r19,	160576
	FPMUL	r8,	r9,	r8
	FPADD	r4,	r6,	r4
	FPMUL	r5,	r5,	r5
	ADD	r6,	r0,	r0
	LWI	r9,	r19,	160672
	FPADD	r7,	r7,	r9
	SWI	r7,	r19,	160592
	LWI	r7,	r19,	160676
	FPADD	r7,	r8,	r7
	SWI	r7,	r19,	160596
	FPADD	r4,	r4,	r5
	SWI	r4,	r19,	160628
	ORI	r4,	r0,	1057988018
	ADDI	r5,	r0,	1060806590
	ADDI	r7,	r0,	1065151889
	brid	$0BB0_372
	NOP
$0BB0_259:
	FPRSUB	r4,	r10,	r7
	FPRSUB	r7,	r12,	r9
	FPRSUB	r5,	r8,	r5
	FPRSUB	r3,	r20,	r10
	FPRSUB	r8,	r11,	r8
	FPRSUB	r6,	r9,	r6
	FPMUL	r9,	r6,	r3
	FPMUL	r10,	r7,	r4
	FPMUL	r4,	r8,	r4
	FPMUL	r3,	r5,	r3
	FPRSUB	r9,	r10,	r9
	FPRSUB	r4,	r3,	r4
	FPMUL	r5,	r7,	r5
	FPMUL	r6,	r8,	r6
	FPRSUB	r5,	r6,	r5
	LWI	r6,	r19,	160664
	SWI	r6,	r19,	160376
	FPMUL	r6,	r9,	r9
	FPMUL	r7,	r4,	r4
	LWI	r3,	r19,	160376
	LWI	r8,	r19,	160580
	FPMUL	r10,	r8,	r8
	LWI	r11,	r19,	160576
	FPMUL	r12,	r11,	r11
	FPADD	r6,	r6,	r7
	FPMUL	r7,	r5,	r5
	FPADD	r6,	r6,	r7
	SWI	r6,	r19,	160628
	FPADD	r7,	r10,	r12
	FPMUL	r10,	r3,	r3
	FPADD	r7,	r7,	r10
	FPINVSQRT	r6,	r6
	ORI	r10,	r0,	1065353216
	FPINVSQRT	r7,	r7
	FPDIV	r7,	r10,	r7
	FPDIV	r6,	r10,	r6
	FPDIV	r9,	r9,	r6
	FPDIV	r10,	r8,	r7
	FPDIV	r4,	r4,	r6
	FPDIV	r12,	r11,	r7
	FPMUL	r10,	r10,	r9
	ORI	r20,	r0,	0
	FPDIV	r5,	r5,	r6
	FPDIV	r6,	r3,	r7
	FPMUL	r7,	r12,	r4
	FPADD	r10,	r10,	r20
	LWI	r12,	r19,	160768
	SWI	r12,	r19,	160388
	LWI	r12,	r19,	160624
	FPMUL	r3,	r3,	r12
	FPMUL	r11,	r11,	r12
	FPMUL	r8,	r8,	r12
	FPMUL	r6,	r6,	r5
	FPADD	r7,	r7,	r10
	FPADD	r6,	r6,	r7
	LWI	r7,	r19,	160644
	SWI	r7,	r19,	160372
	LWI	r7,	r19,	160388
	SWI	r3,	r19,	160392
	SWI	r11,	r19,	160384
	SWI	r8,	r19,	160380
	LWI	r10,	r19,	160372
	SWI	r10,	r19,	160632
	FPUN	r10,	r6,	r20
	FPLE	r6,	r6,	r20
	BITOR	r6,	r10,	r6
	bneid	r6,	$0BB0_261
	ADDI	r12,	r0,	1
	ADDI	r12,	r0,	0
$0BB0_261:
	bneid	r12,	$0BB0_263
	NOP
	FPNEG	r9,	r9
	FPNEG	r4,	r4
	FPNEG	r5,	r5
$0BB0_263:
	LWI	r6,	r19,	160672
	FPADD	r6,	r8,	r6
	SWI	r6,	r19,	160592
	LWI	r8,	r19,	160676
	FPADD	r8,	r11,	r8
	SWI	r8,	r19,	160596
	FPADD	r7,	r7,	r3
	SWI	r7,	r19,	160600
	LWI	r3,	r19,	160720
	FPRSUB	r6,	r6,	r3
	LWI	r3,	r19,	160724
	FPRSUB	r3,	r8,	r3
	LWI	r8,	r19,	160728
	FPRSUB	r7,	r7,	r8
	FPMUL	r8,	r6,	r6
	FPMUL	r10,	r3,	r3
	FPADD	r8,	r8,	r10
	FPMUL	r10,	r7,	r7
	FPADD	r8,	r8,	r10
	ORI	r10,	r0,	1065353216
	FPINVSQRT	r11,	r8
	FPDIV	r10,	r10,	r11
	FPDIV	r6,	r6,	r10
	SWI	r6,	r19,	160576
	FPDIV	r3,	r3,	r10
	SWI	r3,	r19,	160580
	ORI	r11,	r0,	0
	FPMUL	r6,	r6,	r9
	FPDIV	r7,	r7,	r10
	SWI	r7,	r19,	160588
	FPMUL	r4,	r3,	r4
	FPADD	r6,	r6,	r11
	FPMUL	r5,	r7,	r5
	FPADD	r4,	r4,	r6
	FPADD	r4,	r5,	r4
	SWI	r4,	r19,	160640
	FPUN	r5,	r4,	r11
	FPLE	r4,	r4,	r11
	BITOR	r4,	r5,	r4
	bneid	r4,	$0BB0_265
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_265:
	bneid	r6,	$0BB0_371
	NOP
	ADD	r4,	r0,	r0
	ADDI	r5,	r0,	-1
	SWI	r5,	r19,	160568
	FPINVSQRT	r5,	r8
	SWI	r5,	r19,	160636
$0BB0_267:
	ADDI	r5,	r0,	3
	ANDI	r5,	r5,	31
	beqid	r5,	$0BB0_269
	ADDI	r4,	r4,	0
$0BB0_268:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_268
	ADDK	r4,	r4,	r4
$0BB0_269:
	LWI	r5,	r19,	160616
	ADD	r5,	r4,	r5
	LOAD	r4,	r5,	2
	LOAD	r6,	r5,	1
	LOAD	r7,	r5,	0
	LOAD	r11,	r5,	5
	LOAD	r3,	r5,	4
	LOAD	r8,	r5,	3
	LWI	r9,	r19,	160592
	FPRSUB	r7,	r9,	r7
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	160576
	FPDIV	r7,	r7,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r7,	r8
	ADDI	r10,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_271
	ADD	r20,	r10,	r0
	ADD	r20,	r12,	r0
$0BB0_271:
	bneid	r20,	$0BB0_273
	ADD	r9,	r8,	r0
	ADD	r9,	r7,	r0
$0BB0_273:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_275
	NOP
	ADD	r7,	r8,	r0
$0BB0_275:
	ORI	r8,	r0,	1343554297
	FPGT	r20,	r9,	r21
	FPLT	r22,	r7,	r8
	bneid	r20,	$0BB0_277
	ADD	r23,	r10,	r0
	ADD	r23,	r12,	r0
$0BB0_277:
	bneid	r22,	$0BB0_279
	ADD	r20,	r10,	r0
	ADD	r20,	r12,	r0
$0BB0_279:
	bneid	r23,	$0BB0_281
	NOP
	ADD	r9,	r21,	r0
$0BB0_281:
	bneid	r20,	$0BB0_283
	NOP
	ADD	r7,	r8,	r0
$0BB0_283:
	FPGT	r8,	r9,	r7
	bneid	r8,	$0BB0_285
	NOP
	ADD	r10,	r12,	r0
$0BB0_285:
	bneid	r10,	$0BB0_357
	NOP
	ORI	r8,	r0,	0
	ADDI	r10,	r0,	1
	FPLT	r8,	r7,	r8
	bneid	r8,	$0BB0_288
	NOP
	ADDI	r10,	r0,	0
$0BB0_288:
	bneid	r10,	$0BB0_357
	NOP
	LWI	r8,	r19,	160596
	FPRSUB	r6,	r8,	r6
	FPRSUB	r3,	r8,	r3
	LWI	r8,	r19,	160580
	FPDIV	r6,	r6,	r8
	FPDIV	r3,	r3,	r8
	FPGT	r8,	r6,	r3
	ADDI	r10,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r8,	$0BB0_291
	ADD	r20,	r10,	r0
	ADD	r20,	r12,	r0
$0BB0_291:
	bneid	r20,	$0BB0_293
	ADD	r8,	r3,	r0
	ADD	r8,	r6,	r0
$0BB0_293:
	bneid	r20,	$0BB0_295
	NOP
	ADD	r6,	r3,	r0
$0BB0_295:
	FPGT	r3,	r8,	r9
	FPLT	r20,	r6,	r7
	bneid	r3,	$0BB0_297
	ADD	r21,	r10,	r0
	ADD	r21,	r12,	r0
$0BB0_297:
	bneid	r20,	$0BB0_299
	ADD	r3,	r10,	r0
	ADD	r3,	r12,	r0
$0BB0_299:
	bneid	r21,	$0BB0_301
	NOP
	ADD	r8,	r9,	r0
$0BB0_301:
	bneid	r3,	$0BB0_303
	NOP
	ADD	r6,	r7,	r0
$0BB0_303:
	FPGT	r7,	r8,	r6
	bneid	r7,	$0BB0_305
	NOP
	ADD	r10,	r12,	r0
$0BB0_305:
	bneid	r10,	$0BB0_357
	NOP
	ORI	r7,	r0,	0
	ADDI	r3,	r0,	1
	FPLT	r7,	r6,	r7
	bneid	r7,	$0BB0_308
	NOP
	ADDI	r3,	r0,	0
$0BB0_308:
	bneid	r3,	$0BB0_357
	NOP
	LWI	r7,	r19,	160600
	FPRSUB	r4,	r7,	r4
	FPRSUB	r7,	r7,	r11
	LWI	r11,	r19,	160588
	FPDIV	r4,	r4,	r11
	FPDIV	r7,	r7,	r11
	FPGT	r11,	r4,	r7
	ADDI	r3,	r0,	1
	ADDI	r9,	r0,	0
	bneid	r11,	$0BB0_311
	ADD	r10,	r3,	r0
	ADD	r10,	r9,	r0
$0BB0_311:
	bneid	r10,	$0BB0_313
	ADD	r11,	r7,	r0
	ADD	r11,	r4,	r0
$0BB0_313:
	bneid	r10,	$0BB0_315
	NOP
	ADD	r4,	r7,	r0
$0BB0_315:
	FPGT	r7,	r11,	r8
	FPLT	r10,	r4,	r6
	bneid	r7,	$0BB0_317
	ADD	r12,	r3,	r0
	ADD	r12,	r9,	r0
$0BB0_317:
	bneid	r10,	$0BB0_319
	ADD	r7,	r3,	r0
	ADD	r7,	r9,	r0
$0BB0_319:
	bneid	r7,	$0BB0_321
	NOP
	ADD	r4,	r6,	r0
$0BB0_321:
	bneid	r12,	$0BB0_323
	NOP
	ADD	r11,	r8,	r0
$0BB0_323:
	FPGT	r6,	r11,	r4
	bneid	r6,	$0BB0_325
	NOP
	ADD	r3,	r9,	r0
$0BB0_325:
	bneid	r3,	$0BB0_357
	NOP
	ORI	r6,	r0,	0
	ADDI	r7,	r0,	1
	FPLT	r4,	r4,	r6
	bneid	r4,	$0BB0_328
	NOP
	ADDI	r7,	r0,	0
$0BB0_328:
	bneid	r7,	$0BB0_357
	NOP
	LOAD	r4,	r5,	7
	LOAD	r5,	r5,	6
	SWI	r5,	r19,	160572
	ADD	r6,	r0,	r0
	CMP	r5,	r6,	r5
	bltid	r5,	$0BB0_361
	NOP
	ADD	r5,	r0,	r0
	LWI	r6,	r19,	160572
	CMP	r5,	r5,	r6
	bleid	r5,	$0BB0_357
	NOP
$0BB0_331:
	LOAD	r5,	r4,	2
	LOAD	r6,	r4,	1
	LOAD	r7,	r4,	0
	LOAD	r11,	r4,	5
	LOAD	r3,	r4,	4
	LOAD	r8,	r4,	3
	LOAD	r9,	r4,	8
	LOAD	r10,	r4,	7
	LOAD	r12,	r4,	6
	FPRSUB	r11,	r9,	r11
	SWI	r11,	r19,	160604
	FPRSUB	r3,	r10,	r3
	FPRSUB	r8,	r12,	r8
	LWI	r20,	r19,	160580
	FPMUL	r21,	r20,	r11
	LWI	r22,	r19,	160588
	FPMUL	r23,	r3,	r22
	FPRSUB	r7,	r12,	r7
	LOAD	r24,	r4,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r8,	r22
	LWI	r23,	r19,	160576
	FPMUL	r25,	r23,	r11
	FPRSUB	r5,	r9,	r5
	FPRSUB	r6,	r10,	r6
	LWI	r26,	r19,	160592
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r3,	r23
	FPMUL	r20,	r8,	r20
	FPMUL	r25,	r21,	r7
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r4,	9
	LWI	r28,	r19,	160596
	FPRSUB	r10,	r10,	r28
	FPMUL	r21,	r21,	r12
	FPRSUB	r20,	r20,	r23
	FPMUL	r23,	r22,	r6
	FPADD	r25,	r25,	r26
	FPMUL	r28,	r6,	r11
	FPMUL	r29,	r3,	r5
	FPMUL	r30,	r8,	r5
	FPMUL	r11,	r7,	r11
	MULI	r24,	r24,	25
	LOAD	r27,	r27,	9
	LWI	r31,	r19,	160600
	FPRSUB	r9,	r9,	r31
	FPRSUB	r28,	r29,	r28
	FPRSUB	r11,	r11,	r30
	ADD	r24,	r27,	r24
	FPMUL	r22,	r22,	r10
	FPADD	r21,	r21,	r26
	FPMUL	r27,	r20,	r5
	FPADD	r23,	r23,	r25
	FPMUL	r25,	r3,	r7
	FPMUL	r29,	r8,	r6
	FPRSUB	r25,	r29,	r25
	LOAD	r29,	r24,	6
	FPMUL	r20,	r20,	r9
	FPADD	r21,	r22,	r21
	ORI	r22,	r0,	1065353216
	FPADD	r23,	r27,	r23
	FPMUL	r27,	r28,	r28
	FPMUL	r11,	r11,	r11
	FPDIV	r22,	r22,	r23
	FPADD	r20,	r20,	r21
	LOAD	r21,	r24,	5
	FPADD	r11,	r27,	r11
	FPMUL	r21,	r25,	r25
	FPMUL	r20,	r20,	r22
	FPADD	r11,	r11,	r21
	LOAD	r21,	r24,	4
	ADDI	r21,	r0,	1
	FPLT	r23,	r20,	r26
	FPINVSQRT	r11,	r11
	bneid	r23,	$0BB0_333
	NOP
	ADDI	r21,	r0,	0
$0BB0_333:
	bneid	r21,	$0BB0_356
	NOP
	ORI	r11,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r11,	r20,	r11
	bneid	r11,	$0BB0_336
	NOP
	ADDI	r21,	r0,	0
$0BB0_336:
	bneid	r21,	$0BB0_356
	NOP
	FPMUL	r11,	r10,	r5
	FPMUL	r21,	r6,	r9
	FPRSUB	r11,	r21,	r11
	FPMUL	r9,	r7,	r9
	FPMUL	r5,	r12,	r5
	FPRSUB	r5,	r5,	r9
	FPMUL	r6,	r6,	r12
	FPMUL	r7,	r7,	r10
	LWI	r9,	r19,	160576
	FPMUL	r9,	r11,	r9
	ORI	r10,	r0,	0
	FPRSUB	r6,	r7,	r6
	LWI	r7,	r19,	160580
	FPMUL	r7,	r5,	r7
	FPADD	r9,	r9,	r10
	LWI	r12,	r19,	160588
	FPMUL	r12,	r6,	r12
	FPADD	r7,	r7,	r9
	FPADD	r7,	r12,	r7
	FPMUL	r7,	r7,	r22
	ADDI	r9,	r0,	1
	FPLT	r10,	r7,	r10
	bneid	r10,	$0BB0_339
	NOP
	ADDI	r9,	r0,	0
$0BB0_339:
	bneid	r9,	$0BB0_356
	NOP
	FPADD	r7,	r7,	r20
	ORI	r9,	r0,	1065353216
	ADDI	r10,	r0,	1
	FPGT	r7,	r7,	r9
	bneid	r7,	$0BB0_342
	NOP
	ADDI	r10,	r0,	0
$0BB0_342:
	bneid	r10,	$0BB0_356
	NOP
	FPMUL	r7,	r11,	r8
	ORI	r11,	r0,	0
	FPMUL	r5,	r5,	r3
	FPADD	r7,	r7,	r11
	LWI	r3,	r19,	160604
	FPMUL	r6,	r6,	r3
	FPADD	r5,	r5,	r7
	FPADD	r5,	r6,	r5
	FPMUL	r5,	r5,	r22
	FPUN	r6,	r5,	r11
	FPLE	r7,	r5,	r11
	BITOR	r6,	r6,	r7
	bneid	r6,	$0BB0_345
	ADDI	r11,	r0,	1
	ADDI	r11,	r0,	0
$0BB0_345:
	bneid	r11,	$0BB0_356
	NOP
	ORI	r6,	r0,	981668463
	ADDI	r7,	r0,	1
	FPLT	r6,	r5,	r6
	bneid	r6,	$0BB0_348
	NOP
	ADDI	r7,	r0,	0
$0BB0_348:
	bneid	r7,	$0BB0_356
	NOP
	ORI	r6,	r0,	1343554297
	ADDI	r7,	r0,	1
	FPEQ	r6,	r5,	r6
	bneid	r6,	$0BB0_351
	NOP
	ADDI	r7,	r0,	0
$0BB0_351:
	bneid	r7,	$0BB0_356
	NOP
	LWI	r6,	r19,	160564
	SWI	r6,	r19,	160396
	LWI	r6,	r19,	160396
	FPUN	r7,	r6,	r5
	FPLE	r6,	r6,	r5
	BITOR	r6,	r7,	r6
	bneid	r6,	$0BB0_354
	ADDI	r11,	r0,	1
	ADDI	r11,	r0,	0
$0BB0_354:
	bneid	r11,	$0BB0_356
	NOP
	LOAD	r6,	r4,	2
	LOAD	r6,	r4,	1
	LOAD	r6,	r4,	0
	LOAD	r6,	r4,	5
	LOAD	r6,	r4,	4
	LOAD	r6,	r4,	3
	LOAD	r6,	r4,	8
	LOAD	r6,	r4,	7
	LOAD	r6,	r4,	6
	LOAD	r6,	r4,	10
	ADD	r7,	r0,	r0
	LOAD	r11,	r4,	9
	MULI	r6,	r6,	25
	LOAD	r7,	r7,	9
	ADD	r6,	r7,	r6
	SWI	r5,	r19,	160400
	LOAD	r5,	r6,	6
	LWI	r5,	r19,	160400
	SWI	r5,	r19,	160564
	LOAD	r5,	r6,	5
	LOAD	r5,	r6,	4
$0BB0_356:
	LWI	r5,	r19,	160572
	ADDI	r5,	r5,	-1
	SWI	r5,	r19,	160572
	ADDI	r4,	r4,	11
	ADD	r6,	r0,	r0
	CMP	r5,	r6,	r5
	bneid	r5,	$0BB0_331
	NOP
$0BB0_357:
	ADD	r4,	r0,	r0
	LWI	r5,	r19,	160568
	CMP	r4,	r4,	r5
	bltid	r4,	$0BB0_364
	NOP
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r5,	r19,	160568
	beqid	r4,	$0BB0_360
	ADDI	r5,	r5,	0
$0BB0_359:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_359
	ADDK	r5,	r5,	r5
$0BB0_360:
	ADDI	r4,	r19,	56
	LW	r4,	r4,	r5
	LWI	r5,	r19,	160568
	ADDI	r5,	r5,	-1
	SWI	r5,	r19,	160568
	brid	$0BB0_267
	NOP
$0BB0_361:
	ADDI	r5,	r0,	2
	ANDI	r5,	r5,	31
	LWI	r6,	r19,	160568
	beqid	r5,	$0BB0_363
	ADDI	r6,	r6,	0
$0BB0_362:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_362
	ADDK	r6,	r6,	r6
$0BB0_363:
	ADDI	r5,	r19,	56
	LWI	r7,	r19,	160568
	ADDI	r7,	r7,	1
	SWI	r7,	r19,	160568
	ADDI	r7,	r4,	1
	ADD	r5,	r5,	r6
	brid	$0BB0_267
	SWI	r7,	r5,	4
$0BB0_364:
	LWI	r4,	r19,	160564
	SWI	r4,	r19,	160404
	ORI	r4,	r0,	1065353216
	LWI	r5,	r19,	160404
	LWI	r6,	r19,	160636
	FPDIV	r4,	r4,	r6
	ORI	r11,	r0,	0
	FPUN	r6,	r5,	r4
	FPGE	r4,	r5,	r4
	BITOR	r4,	r6,	r4
	bneid	r4,	$0BB0_366
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_366:
	bneid	r7,	$0BB0_370
	NOP
	ORI	r4,	r0,	1008981770
	ADDI	r6,	r0,	1
	FPGT	r4,	r5,	r4
	bneid	r4,	$0BB0_369
	NOP
	ADDI	r6,	r0,	0
$0BB0_369:
	bneid	r6,	$0BB0_371
	NOP
$0BB0_370:
	LWI	r5,	r19,	160640
	LWI	r4,	r19,	160632
	FPMUL	r4,	r4,	r5
	ORI	r5,	r0,	0
	FPADD	r11,	r4,	r5
$0BB0_371:
	LWI	r5,	r19,	160608
	SWI	r5,	r19,	160408
	LWI	r4,	r19,	160620
	SWI	r4,	r19,	160416
	LWI	r4,	r19,	160408
	LWI	r5,	r19,	160416
	LWI	r6,	r19,	160612
	SWI	r6,	r19,	160424
	FPMUL	r4,	r4,	r11
	FPMUL	r5,	r11,	r5
	LWI	r7,	r19,	160424
	SWI	r4,	r19,	160412
	SWI	r5,	r19,	160420
	ADD	r6,	r0,	r0
	FPMUL	r4,	r7,	r11
	LWI	r5,	r19,	160412
	LWI	r7,	r19,	160420
$0BB0_372:
	LWI	r8,	r19,	160624
	LWI	r3,	r19,	160584
	FPMUL	r3,	r3,	r8
	LWI	r8,	r19,	160680
	FPADD	r3,	r8,	r3
	ADD	r8,	r0,	r0
	ORI	r9,	r0,	0
	BITOR	r6,	r7,	r6
	LWI	r7,	r19,	160628
	FPINVSQRT	r7,	r7
	ADD	r7,	r9,	r0
	ADD	r10,	r9,	r0
	brid	$0BB0_386
	ADD	r11,	r8,	r0
$0BB0_373:
	ADDI	r20,	r0,	5
	ANDI	r20,	r20,	31
	beqid	r20,	$0BB0_375
	ADDI	r21,	r8,	0
$0BB0_374:
	ADDI	r20,	r20,	-1
	bneid	r20,	$0BB0_374
	ADDK	r21,	r21,	r21
$0BB0_375:
	LWI	r20,	r19,	160700
	ADD	r22,	r20,	r21
	LWI	r23,	r22,	8
	SWI	r23,	r19,	160432
	LWI	r22,	r22,	4
	LW	r20,	r20,	r21
	LWI	r21,	r19,	160592
	FPRSUB	r21,	r21,	r20
	LWI	r23,	r19,	160596
	FPRSUB	r23,	r23,	r22
	LWI	r24,	r19,	160432
	FPRSUB	r24,	r3,	r24
	FPMUL	r21,	r21,	r21
	FPMUL	r23,	r23,	r23
	FPADD	r21,	r21,	r23
	FPMUL	r23,	r24,	r24
	SWI	r22,	r19,	160436
	SWI	r20,	r19,	160428
	FPADD	r20,	r21,	r23
	ORI	r21,	r0,	1133543424
	FPUN	r22,	r20,	r21
	FPGE	r20,	r20,	r21
	BITOR	r20,	r22,	r20
	bneid	r20,	$0BB0_377
	ADDI	r21,	r0,	1
	ADDI	r21,	r0,	0
$0BB0_377:
	bneid	r21,	$0BB0_385
	NOP
	ADDI	r20,	r0,	2
	ANDI	r21,	r20,	31
	beqid	r21,	$0BB0_380
	ADDI	r22,	r12,	0
$0BB0_379:
	ADDI	r21,	r21,	-1
	bneid	r21,	$0BB0_379
	ADDK	r22,	r22,	r22
$0BB0_380:
	ANDI	r21,	r20,	31
	beqid	r21,	$0BB0_382
	ADDI	r23,	r12,	0
$0BB0_381:
	ADDI	r21,	r21,	-1
	bneid	r21,	$0BB0_381
	ADDK	r23,	r23,	r23
$0BB0_382:
	ANDI	r20,	r20,	31
	beqid	r20,	$0BB0_384
	ADDI	r12,	r12,	0
$0BB0_383:
	ADDI	r20,	r20,	-1
	bneid	r20,	$0BB0_383
	ADDK	r12,	r12,	r12
$0BB0_384:
	LWI	r20,	r19,	160700
	ADD	r21,	r20,	r22
	ADD	r22,	r20,	r23
	ADD	r12,	r20,	r12
	LWI	r20,	r21,	12
	LWI	r21,	r22,	16
	LWI	r12,	r12,	20
	ADDI	r11,	r11,	1
	FPADD	r9,	r9,	r20
	FPADD	r7,	r7,	r21
	FPADD	r10,	r10,	r12
	ADDI	r12,	r0,	10
	CMP	r12,	r12,	r11
	bgtid	r12,	$0BB0_390
	NOP
$0BB0_385:
	ADDI	r8,	r8,	1
$0BB0_386:
	ADDI	r12,	r0,	3
	ANDI	r20,	r12,	31
	beqid	r20,	$0BB0_388
	ADDI	r12,	r8,	0
$0BB0_387:
	ADDI	r20,	r20,	-1
	bneid	r20,	$0BB0_387
	ADDK	r12,	r12,	r12
$0BB0_388:
	LWI	r20,	r19,	160704
	CMP	r20,	r20,	r8
	bltid	r20,	$0BB0_373
	NOP
	ORI	r3,	r0,	0
	ADD	r8,	r0,	r0
	CMP	r8,	r8,	r11
	ADD	r12,	r3,	r0
	beqid	r8,	$0BB0_391
	ADD	r20,	r3,	r0
$0BB0_390:
	LWI	r3,	r19,	160612
	SWI	r3,	r19,	160440
	LWI	r3,	r19,	160608
	SWI	r3,	r19,	160448
	LWI	r3,	r19,	160620
	SWI	r3,	r19,	160444
	FPCONV	r3,	r11
	LWI	r12,	r19,	160440
	FPDIV	r20,	r9,	r3
	LWI	r8,	r19,	160448
	FPDIV	r7,	r7,	r3
	FPDIV	r3,	r10,	r3
	LWI	r9,	r19,	160444
	FPMUL	r20,	r12,	r20
	FPMUL	r12,	r8,	r7
	FPMUL	r3,	r3,	r9
$0BB0_391:
	SWI	r5,	r19,	160456
	SWI	r6,	r19,	160452
	LWI	r5,	r19,	160456
	LWI	r6,	r19,	160452
	FPADD	r4,	r20,	r4
	ORI	r7,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r9,	r4,	r7
	bneid	r9,	$0BB0_393
	NOP
	ADDI	r8,	r0,	0
$0BB0_393:
	bneid	r8,	$0BB0_398
	NOP
	ORI	r7,	r0,	1065353216
	ADDI	r8,	r0,	1
	FPGT	r9,	r4,	r7
	bneid	r9,	$0BB0_396
	NOP
	ADDI	r8,	r0,	0
$0BB0_396:
	bneid	r8,	$0BB0_398
	NOP
	ADD	r7,	r4,	r0
$0BB0_398:
	FPADD	r4,	r6,	r3
	ORI	r3,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r8,	r4,	r3
	bneid	r8,	$0BB0_400
	NOP
	ADDI	r6,	r0,	0
$0BB0_400:
	bneid	r6,	$0BB0_405
	NOP
	ORI	r3,	r0,	1065353216
	ADDI	r6,	r0,	1
	FPGT	r8,	r4,	r3
	bneid	r8,	$0BB0_403
	NOP
	ADDI	r6,	r0,	0
$0BB0_403:
	bneid	r6,	$0BB0_405
	NOP
	ADD	r3,	r4,	r0
$0BB0_405:
	FPADD	r4,	r12,	r5
	ORI	r5,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r8,	r4,	r5
	bneid	r8,	$0BB0_407
	NOP
	ADDI	r6,	r0,	0
$0BB0_407:
	bneid	r6,	$0BB0_412
	NOP
	ORI	r5,	r0,	1065353216
	ADDI	r6,	r0,	1
	FPGT	r8,	r4,	r5
	bneid	r8,	$0BB0_410
	NOP
	ADDI	r6,	r0,	0
$0BB0_410:
	bneid	r6,	$0BB0_412
	NOP
	ADD	r5,	r4,	r0
$0BB0_412:
	LWI	r6,	r19,	160660
	LWI	r4,	r19,	160656
	ADD	r4,	r4,	r6
	MULI	r4,	r4,	3
	LWI	r6,	r19,	160716
	ADD	r4,	r4,	r6
	STORE	r4,	r7,	0
	STORE	r4,	r5,	1
	STORE	r4,	r3,	2
	ATOMIC_INC	r4,	0
	LWI	r3,	r19,	160708
	CMP	r3,	r4,	r3
	bgtid	r3,	$0BB0_157
	NOP
$0BB0_413:
	LWI	r31,	r19,	8
	LWI	r30,	r19,	12
	LWI	r29,	r19,	16
	LWI	r28,	r19,	20
	LWI	r27,	r19,	24
	LWI	r26,	r19,	28
	LWI	r25,	r19,	32
	LWI	r24,	r19,	36
	LWI	r23,	r19,	40
	LWI	r22,	r19,	44
	LWI	r21,	r19,	48
	LWI	r20,	r19,	52
	ADDK	r1,	r19,	r0
	LWI	r19,	r1,	4
	LWI	r15,	r1,	0
	ADDI	r1,	r1,	160776
	rtsd	r15,	8
	ADD	r3,	r0,	r0
#	.end	main
$0tmp0:
#	.size	main, ($tmp0)-main


