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
#	.frame	r19,160760,r15
#	.mask	0xfff88000
	ADDI	r1,	r1,	-160760
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
	SWI	r4,	r19,	160676
	LOAD	r4,	r3,	4
	SWI	r4,	r19,	160672
	LOAD	r4,	r3,	7
	SWI	r4,	r19,	160688
	LOAD	r4,	r3,	2
	LOAD	r4,	r3,	5
	LOAD	r4,	r3,	12
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	160692
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	160696
	LOAD	r4,	r4,	2
	SWI	r4,	r19,	160700
	LOAD	r4,	r3,	10
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	160624
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	160628
	LOAD	r5,	r4,	2
	SWI	r5,	r19,	160632
	ADDI	r5,	r4,	9
	LOAD	r6,	r5,	0
	LOAD	r6,	r5,	1
	ADDI	r6,	r4,	12
	LOAD	r5,	r5,	2
	LOAD	r5,	r6,	0
	SWI	r5,	r19,	160704
	LOAD	r5,	r6,	1
	SWI	r5,	r19,	160708
	LOAD	r5,	r6,	2
	SWI	r5,	r19,	160712
	ADDI	r5,	r4,	15
	LOAD	r6,	r5,	0
	SWI	r6,	r19,	160716
	LOAD	r6,	r5,	1
	SWI	r6,	r19,	160720
	LOAD	r5,	r5,	2
	SWI	r5,	r19,	160724
	ADDI	r4,	r4,	18
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	160728
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	160732
	ADDI	r5,	r19,	184
	ADDI	r5,	r5,	16
	LOAD	r4,	r4,	2
	SWI	r4,	r19,	160736
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
	SWI	r4,	r19,	160600
	ADDI	r1,	r1,	-4
	ADDI	r5,	r0,	-8
	BITAND	r4,	r1,	r5
	ADDI	r5,	r4,	-6400000
	SWI	r5,	r19,	160660
	ADDI	r4,	r4,	-6399984
	ADD	r1,	r5,	r0
	ADDI	r5,	r0,	200000
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
	ADDI	r1,	r1,	-4
	ADDI	r4,	r0,	-8
	BITAND	r3,	r1,	r4
	ADDI	r4,	r3,	-3200000
	ADDI	r3,	r3,	-3199984
	ADD	r1,	r4,	r0
	ADD	r4,	r0,	r0
	ADDI	r5,	r0,	100000
	ADDI	r1,	r1,	4
	ADD	r8,	r0,	r0
$0BB0_5:
	SWI	r0,	r3,	-16
	SWI	r0,	r3,	-12
	ADDI	r6,	r0,	1065353216
	SWI	r0,	r3,	-8
	SWI	r6,	r3,	-4
	SWI	r6,	r3,	0
	ADDI	r7,	r0,	-1
	ADDK	r5,	r5,	r7
	ADDKC	r4,	r4,	r7
	ADDI	r7,	r3,	32
	SWI	r6,	r3,	4
	BITOR	r6,	r5,	r4
	sbi	r8,	r3,	8
	CMP	r6,	r8,	r6
	bneid	r6,	$0BB0_5
	ADD	r3,	r7,	r0
	ADD	r3,	r0,	r0
	SWI	r3,	r19,	160664
	LOAD	r3,	r3,	12
	LOAD	r4,	r3,	0
	LOAD	r5,	r3,	1
	LOAD	r3,	r3,	2
	SWI	r4,	r19,	160216
	SWI	r5,	r19,	160220
	SWI	r3,	r19,	160224
	LWI	r3,	r19,	160216
	SWI	r3,	r19,	160636
	LWI	r3,	r19,	160220
	SWI	r3,	r19,	160640
	LWI	r3,	r19,	160224
	SWI	r3,	r19,	160644
	ADDI	r3,	r0,	100000
	SWI	r3,	r19,	160668
	brid	$0BB0_136
	NOP
$0BB0_7:
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
	bneid	r7,	$0BB0_9
	NOP
	ADDI	r8,	r0,	0
$0BB0_9:
	bneid	r8,	$0BB0_7
	NOP
	FPINVSQRT	r6,	r6
	ORI	r7,	r0,	1065353216
	FPDIV	r6,	r7,	r6
	FPDIV	r4,	r4,	r6
	SWI	r4,	r19,	160556
	FPDIV	r5,	r5,	r6
	SWI	r5,	r19,	160560
	FPDIV	r3,	r3,	r6
	SWI	r3,	r19,	160564
	SWI	r4,	r19,	160460
	SWI	r5,	r19,	160456
	SWI	r3,	r19,	160452
	ADD	r3,	r0,	r0
	SWI	r3,	r19,	160596
	ADDI	r4,	r0,	-1
	SWI	r4,	r19,	160548
	ADDI	r4,	r0,	1343554297
	SWI	r4,	r19,	160568
	SWI	r3,	r19,	160588
	SWI	r3,	r19,	160592
$0BB0_11:
	ADDI	r4,	r0,	3
	ANDI	r4,	r4,	31
	beqid	r4,	$0BB0_13
	ADDI	r3,	r3,	0
$0BB0_12:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_12
	ADDK	r3,	r3,	r3
$0BB0_13:
	LWI	r4,	r19,	160600
	ADD	r4,	r3,	r4
	LOAD	r3,	r4,	2
	LOAD	r5,	r4,	1
	LOAD	r6,	r4,	0
	LOAD	r7,	r4,	5
	LOAD	r8,	r4,	4
	LOAD	r9,	r4,	3
	LWI	r10,	r19,	160572
	FPRSUB	r6,	r10,	r6
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r19,	160564
	FPDIV	r6,	r6,	r10
	FPDIV	r9,	r9,	r10
	FPGT	r10,	r6,	r9
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r10,	$0BB0_15
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_15:
	bneid	r20,	$0BB0_17
	ADD	r10,	r9,	r0
	ADD	r10,	r6,	r0
$0BB0_17:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_19
	NOP
	ADD	r6,	r9,	r0
$0BB0_19:
	ORI	r9,	r0,	1343554297
	FPGT	r20,	r10,	r21
	FPLT	r22,	r6,	r9
	bneid	r20,	$0BB0_21
	ADD	r23,	r11,	r0
	ADD	r23,	r12,	r0
$0BB0_21:
	bneid	r22,	$0BB0_23
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_23:
	bneid	r23,	$0BB0_25
	NOP
	ADD	r10,	r21,	r0
$0BB0_25:
	bneid	r20,	$0BB0_27
	NOP
	ADD	r6,	r9,	r0
$0BB0_27:
	FPGT	r9,	r10,	r6
	bneid	r9,	$0BB0_29
	NOP
	ADD	r11,	r12,	r0
$0BB0_29:
	bneid	r11,	$0BB0_101
	NOP
	ORI	r9,	r0,	0
	ADDI	r11,	r0,	1
	FPLT	r9,	r6,	r9
	bneid	r9,	$0BB0_32
	NOP
	ADDI	r11,	r0,	0
$0BB0_32:
	bneid	r11,	$0BB0_101
	NOP
	LWI	r9,	r19,	160576
	FPRSUB	r5,	r9,	r5
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	160560
	FPDIV	r5,	r5,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r5,	r8
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_35
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_35:
	bneid	r20,	$0BB0_37
	ADD	r9,	r8,	r0
	ADD	r9,	r5,	r0
$0BB0_37:
	bneid	r20,	$0BB0_39
	NOP
	ADD	r5,	r8,	r0
$0BB0_39:
	FPGT	r8,	r9,	r10
	FPLT	r20,	r5,	r6
	bneid	r8,	$0BB0_41
	ADD	r21,	r11,	r0
	ADD	r21,	r12,	r0
$0BB0_41:
	bneid	r20,	$0BB0_43
	ADD	r8,	r11,	r0
	ADD	r8,	r12,	r0
$0BB0_43:
	bneid	r21,	$0BB0_45
	NOP
	ADD	r9,	r10,	r0
$0BB0_45:
	bneid	r8,	$0BB0_47
	NOP
	ADD	r5,	r6,	r0
$0BB0_47:
	FPGT	r6,	r9,	r5
	bneid	r6,	$0BB0_49
	NOP
	ADD	r11,	r12,	r0
$0BB0_49:
	bneid	r11,	$0BB0_101
	NOP
	ORI	r6,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r6,	r5,	r6
	bneid	r6,	$0BB0_52
	NOP
	ADDI	r8,	r0,	0
$0BB0_52:
	bneid	r8,	$0BB0_101
	NOP
	LWI	r6,	r19,	160580
	FPRSUB	r3,	r6,	r3
	FPRSUB	r6,	r6,	r7
	LWI	r7,	r19,	160556
	FPDIV	r3,	r3,	r7
	FPDIV	r6,	r6,	r7
	FPGT	r7,	r3,	r6
	ADDI	r8,	r0,	1
	ADDI	r10,	r0,	0
	bneid	r7,	$0BB0_55
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_55:
	bneid	r11,	$0BB0_57
	ADD	r7,	r6,	r0
	ADD	r7,	r3,	r0
$0BB0_57:
	bneid	r11,	$0BB0_59
	NOP
	ADD	r3,	r6,	r0
$0BB0_59:
	FPGT	r6,	r7,	r9
	FPLT	r11,	r3,	r5
	bneid	r6,	$0BB0_61
	ADD	r12,	r8,	r0
	ADD	r12,	r10,	r0
$0BB0_61:
	bneid	r11,	$0BB0_63
	ADD	r6,	r8,	r0
	ADD	r6,	r10,	r0
$0BB0_63:
	bneid	r6,	$0BB0_65
	NOP
	ADD	r3,	r5,	r0
$0BB0_65:
	bneid	r12,	$0BB0_67
	NOP
	ADD	r7,	r9,	r0
$0BB0_67:
	FPGT	r5,	r7,	r3
	bneid	r5,	$0BB0_69
	NOP
	ADD	r8,	r10,	r0
$0BB0_69:
	bneid	r8,	$0BB0_101
	NOP
	ORI	r5,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r3,	r3,	r5
	bneid	r3,	$0BB0_72
	NOP
	ADDI	r6,	r0,	0
$0BB0_72:
	bneid	r6,	$0BB0_101
	NOP
	LOAD	r3,	r4,	7
	LOAD	r4,	r4,	6
	SWI	r4,	r19,	160552
	ADD	r5,	r0,	r0
	CMP	r4,	r5,	r4
	bltid	r4,	$0BB0_105
	NOP
	ADD	r4,	r0,	r0
	LWI	r5,	r19,	160552
	CMP	r4,	r4,	r5
	bleid	r4,	$0BB0_101
	NOP
$0BB0_75:
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
	SWI	r7,	r19,	160584
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r19,	160560
	FPMUL	r21,	r20,	r7
	LWI	r22,	r19,	160556
	FPMUL	r23,	r8,	r22
	FPRSUB	r6,	r12,	r6
	LOAD	r24,	r3,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r19,	160564
	FPMUL	r25,	r23,	r7
	FPRSUB	r4,	r10,	r4
	FPRSUB	r5,	r11,	r5
	LWI	r26,	r19,	160572
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r6
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r3,	9
	LWI	r28,	r19,	160576
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
	LWI	r31,	r19,	160580
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
	bneid	r23,	$0BB0_77
	NOP
	ADDI	r21,	r0,	0
$0BB0_77:
	bneid	r21,	$0BB0_100
	NOP
	ORI	r7,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r7,	r20,	r7
	bneid	r7,	$0BB0_80
	NOP
	ADDI	r21,	r0,	0
$0BB0_80:
	bneid	r21,	$0BB0_100
	NOP
	FPMUL	r7,	r11,	r4
	FPMUL	r21,	r5,	r10
	FPRSUB	r7,	r21,	r7
	FPMUL	r10,	r6,	r10
	FPMUL	r4,	r12,	r4
	FPRSUB	r4,	r4,	r10
	FPMUL	r5,	r5,	r12
	FPMUL	r6,	r6,	r11
	LWI	r10,	r19,	160564
	FPMUL	r10,	r7,	r10
	ORI	r11,	r0,	0
	FPRSUB	r5,	r6,	r5
	LWI	r6,	r19,	160560
	FPMUL	r6,	r4,	r6
	FPADD	r10,	r10,	r11
	LWI	r12,	r19,	160556
	FPMUL	r12,	r5,	r12
	FPADD	r6,	r6,	r10
	FPADD	r6,	r12,	r6
	FPMUL	r6,	r6,	r22
	ADDI	r10,	r0,	1
	FPLT	r11,	r6,	r11
	bneid	r11,	$0BB0_83
	NOP
	ADDI	r10,	r0,	0
$0BB0_83:
	bneid	r10,	$0BB0_100
	NOP
	FPADD	r6,	r6,	r20
	ORI	r10,	r0,	1065353216
	ADDI	r11,	r0,	1
	FPGT	r6,	r6,	r10
	bneid	r6,	$0BB0_86
	NOP
	ADDI	r11,	r0,	0
$0BB0_86:
	bneid	r11,	$0BB0_100
	NOP
	FPMUL	r6,	r7,	r9
	ORI	r7,	r0,	0
	FPMUL	r4,	r4,	r8
	FPADD	r6,	r6,	r7
	LWI	r8,	r19,	160584
	FPMUL	r5,	r5,	r8
	FPADD	r4,	r4,	r6
	FPADD	r4,	r5,	r4
	FPMUL	r4,	r4,	r22
	FPUN	r5,	r4,	r7
	FPLE	r6,	r4,	r7
	BITOR	r5,	r5,	r6
	bneid	r5,	$0BB0_89
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_89:
	bneid	r7,	$0BB0_100
	NOP
	ORI	r5,	r0,	981668463
	ADDI	r6,	r0,	1
	FPLT	r5,	r4,	r5
	bneid	r5,	$0BB0_92
	NOP
	ADDI	r6,	r0,	0
$0BB0_92:
	bneid	r6,	$0BB0_100
	NOP
	ORI	r5,	r0,	1343554297
	ADDI	r6,	r0,	1
	FPEQ	r5,	r4,	r5
	bneid	r5,	$0BB0_95
	NOP
	ADDI	r6,	r0,	0
$0BB0_95:
	bneid	r6,	$0BB0_100
	NOP
	LWI	r5,	r19,	160568
	SWI	r5,	r19,	160464
	LWI	r5,	r19,	160464
	FPUN	r6,	r5,	r4
	FPLE	r5,	r5,	r4
	BITOR	r5,	r6,	r5
	bneid	r5,	$0BB0_98
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_98:
	bneid	r7,	$0BB0_100
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
	SWI	r22,	r19,	160604
	ADD	r22,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r22,	r22,	9
	ADD	r21,	r22,	r21
	LOAD	r22,	r21,	6
	LOAD	r23,	r21,	5
	LOAD	r21,	r21,	4
	SWI	r22,	r19,	160508
	SWI	r23,	r19,	160512
	SWI	r21,	r19,	160516
	SWI	r11,	r19,	160496
	SWI	r12,	r19,	160500
	SWI	r20,	r19,	160504
	SWI	r8,	r19,	160484
	SWI	r9,	r19,	160488
	SWI	r10,	r19,	160492
	SWI	r5,	r19,	160472
	SWI	r6,	r19,	160476
	SWI	r7,	r19,	160480
	SWI	r4,	r19,	160468
	ADDI	r4,	r0,	1060320051
	SWI	r4,	r19,	160608
	ADDI	r4,	r0,	1050253722
	SWI	r4,	r19,	160612
	LWI	r4,	r19,	160508
	SWI	r4,	r19,	160596
	LWI	r9,	r19,	160512
	SWI	r9,	r19,	160588
	LWI	r9,	r19,	160516
	SWI	r9,	r19,	160592
	LWI	r4,	r19,	160468
	SWI	r4,	r19,	160568
$0BB0_100:
	LWI	r4,	r19,	160552
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	160552
	ADDI	r3,	r3,	11
	ADD	r5,	r0,	r0
	CMP	r4,	r5,	r4
	bneid	r4,	$0BB0_75
	NOP
$0BB0_101:
	ADD	r3,	r0,	r0
	LWI	r4,	r19,	160548
	CMP	r3,	r3,	r4
	bltid	r3,	$0BB0_108
	NOP
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r4,	r19,	160548
	beqid	r3,	$0BB0_104
	ADDI	r4,	r4,	0
$0BB0_103:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_103
	ADDK	r4,	r4,	r4
$0BB0_104:
	ADDI	r3,	r19,	56
	LW	r3,	r3,	r4
	LWI	r4,	r19,	160548
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	160548
	brid	$0BB0_11
	NOP
$0BB0_105:
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r5,	r19,	160548
	beqid	r4,	$0BB0_107
	ADDI	r5,	r5,	0
$0BB0_106:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_106
	ADDK	r5,	r5,	r5
$0BB0_107:
	ADDI	r4,	r19,	56
	LWI	r6,	r19,	160548
	ADDI	r6,	r6,	1
	SWI	r6,	r19,	160548
	ADDI	r6,	r3,	1
	ADD	r4,	r4,	r5
	brid	$0BB0_11
	SWI	r6,	r4,	4
$0BB0_108:
	LWI	r3,	r19,	160568
	SWI	r3,	r19,	160520
	LWI	r3,	r19,	160520
	ORI	r4,	r0,	1343554297
	FPUN	r5,	r3,	r4
	FPGE	r4,	r3,	r4
	BITOR	r4,	r5,	r4
	bneid	r4,	$0BB0_110
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_110:
	LWI	r4,	r19,	160616
	ADDI	r4,	r4,	1
	SWI	r4,	r19,	160616
	bneid	r6,	$0BB0_134
	NOP
	LWI	r9,	r19,	160592
	SWI	r9,	r19,	160532
	LWI	r9,	r19,	160588
	SWI	r9,	r19,	160528
	LWI	r4,	r19,	160532
	LWI	r5,	r19,	160528
	LWI	r6,	r19,	160596
	SWI	r6,	r19,	160524
	LWI	r6,	r19,	160524
	FPADD	r7,	r4,	r5
	FPADD	r7,	r7,	r6
	ORI	r8,	r0,	1077936128
	FPUN	r9,	r7,	r8
	FPLE	r7,	r7,	r8
	BITOR	r7,	r9,	r7
	bneid	r7,	$0BB0_113
	ADDI	r8,	r0,	1
	ADDI	r8,	r0,	0
$0BB0_113:
	bneid	r8,	$0BB0_115
	NOP
	ORI	r7,	r0,	981668463
	FPMUL	r4,	r4,	r7
	FPMUL	r5,	r5,	r7
	FPMUL	r6,	r6,	r7
$0BB0_115:
	LWI	r7,	r19,	160616
	ADDI	r7,	r7,	-1
	LWI	r8,	r19,	160564
	FPMUL	r8,	r8,	r3
	LWI	r9,	r19,	160560
	FPMUL	r9,	r9,	r3
	LWI	r10,	r19,	160556
	FPMUL	r3,	r10,	r3
	LWI	r10,	r19,	160572
	FPADD	r8,	r8,	r10
	LWI	r10,	r19,	160576
	FPADD	r9,	r9,	r10
	LWI	r10,	r19,	160580
	FPADD	r3,	r10,	r3
	SWI	r8,	r19,	160536
	SWI	r9,	r19,	160540
	SWI	r3,	r19,	160544
	LWI	r10,	r19,	160536
	SWI	r10,	r19,	160636
	LWI	r10,	r19,	160540
	SWI	r10,	r19,	160640
	LWI	r10,	r19,	160544
	SWI	r10,	r19,	160644
	ADDI	r10,	r0,	1
	CMP	r7,	r10,	r7
	bltid	r7,	$0BB0_133
	NOP
	ADDI	r7,	r0,	2
	ANDI	r10,	r7,	31
	LWI	r11,	r19,	160620
	beqid	r10,	$0BB0_118
	ADDI	r11,	r11,	0
$0BB0_117:
	ADDI	r10,	r10,	-1
	bneid	r10,	$0BB0_117
	ADDK	r11,	r11,	r11
$0BB0_118:
	ANDI	r10,	r7,	31
	LWI	r12,	r19,	160620
	beqid	r10,	$0BB0_120
	ADDI	r12,	r12,	0
$0BB0_119:
	ADDI	r10,	r10,	-1
	bneid	r10,	$0BB0_119
	ADDK	r12,	r12,	r12
$0BB0_120:
	ANDI	r10,	r7,	31
	LWI	r20,	r19,	160620
	beqid	r10,	$0BB0_122
	ADDI	r20,	r20,	0
$0BB0_121:
	ADDI	r10,	r10,	-1
	bneid	r10,	$0BB0_121
	ADDK	r20,	r20,	r20
$0BB0_122:
	LWI	r10,	r19,	160660
	SW	r8,	r10,	r12
	ANDI	r8,	r7,	31
	LWI	r10,	r19,	160620
	beqid	r8,	$0BB0_124
	ADDI	r10,	r10,	0
$0BB0_123:
	ADDI	r8,	r8,	-1
	bneid	r8,	$0BB0_123
	ADDK	r10,	r10,	r10
$0BB0_124:
	LWI	r8,	r19,	160660
	ADD	r8,	r8,	r11
	SWI	r9,	r8,	4
	ANDI	r8,	r7,	31
	LWI	r9,	r19,	160620
	beqid	r8,	$0BB0_126
	ADDI	r9,	r9,	0
$0BB0_125:
	ADDI	r8,	r8,	-1
	bneid	r8,	$0BB0_125
	ADDK	r9,	r9,	r9
$0BB0_126:
	LWI	r8,	r19,	160660
	ADD	r8,	r8,	r20
	SWI	r3,	r8,	8
	ANDI	r3,	r7,	31
	LWI	r7,	r19,	160620
	beqid	r3,	$0BB0_128
	ADDI	r7,	r7,	0
$0BB0_127:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_127
	ADDK	r7,	r7,	r7
$0BB0_128:
	LWI	r3,	r19,	160660
	ADD	r3,	r3,	r10
	ADDI	r8,	r0,	5
	LWI	r10,	r19,	160656
	SWI	r10,	r3,	12
	ANDI	r3,	r8,	31
	LWI	r8,	r19,	160664
	beqid	r3,	$0BB0_130
	ADDI	r8,	r8,	0
$0BB0_129:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_129
	ADDK	r8,	r8,	r8
$0BB0_130:
	LWI	r3,	r19,	160660
	ADD	r9,	r3,	r9
	ADD	r7,	r3,	r7
	LWI	r10,	r19,	160652
	SWI	r10,	r9,	16
	LWI	r9,	r19,	160664
	ADDI	r9,	r9,	1
	SWI	r9,	r19,	160664
	ADD	r9,	r0,	r0
	ADD	r3,	r3,	r8
	LWI	r8,	r19,	160648
	SWI	r8,	r7,	20
	sbi	r9,	r3,	24
$0BB0_131:
	ADDI	r3,	r0,	3
	ANDI	r3,	r3,	31
	LWI	r7,	r19,	160664
	ADDI	r7,	r7,	0
	SWI	r7,	r19,	160620
	beqid	r3,	$0BB0_133
	NOP
$0BB0_132:
	LWI	r7,	r19,	160620
	ADDK	r7,	r7,	r7
	SWI	r7,	r19,	160620
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_132
	NOP
$0BB0_133:
	LWI	r3,	r19,	160636
	SWI	r3,	r19,	160228
	LWI	r3,	r19,	160640
	SWI	r3,	r19,	160232
	LWI	r3,	r19,	160644
	SWI	r3,	r19,	160236
	ORI	r3,	r0,	1060320051
	FPMUL	r4,	r4,	r3
	SWI	r4,	r19,	160656
	FPMUL	r4,	r5,	r3
	SWI	r4,	r19,	160652
	FPMUL	r4,	r6,	r3
	SWI	r4,	r19,	160648
	LWI	r4,	r19,	160228
	SWI	r4,	r19,	160572
	LWI	r4,	r19,	160232
	SWI	r4,	r19,	160576
	LWI	r4,	r19,	160236
	SWI	r4,	r19,	160580
$0BB0_134:
	ADDI	r4,	r0,	3
	LWI	r5,	r19,	160616
	CMP	r4,	r4,	r5
	bltid	r4,	$0BB0_7
	NOP
	LWI	r4,	r19,	160668
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	160668
	ADD	r5,	r0,	r0
	CMP	r4,	r5,	r4
	beqid	r4,	$0BB0_137
	NOP
$0BB0_136:
	ORI	r4,	r0,	0
	ADD	r5,	r0,	r0
	SWI	r5,	r19,	160616
	ADD	r5,	r4,	r0
	brid	$0BB0_131
	ADD	r6,	r4,	r0
$0BB0_137:
	LWI	r3,	r19,	160676
	FPCONV	r4,	r3
	SWI	r4,	r19,	160680
	LWI	r4,	r19,	160672
	FPCONV	r5,	r4
	SWI	r5,	r19,	160684
	ORI	r5,	r0,	-1073741824
	MUL	r3,	r4,	r3
	SWI	r3,	r19,	160752
	ATOMIC_INC	r4,	0
	CMP	r3,	r4,	r3
	bleid	r3,	$0BB0_395
	NOP
	LWI	r3,	r19,	160680
	FPDIV	r3,	r3,	r5
	SWI	r3,	r19,	160740
	LWI	r3,	r19,	160684
	FPDIV	r3,	r3,	r5
	SWI	r3,	r19,	160744
	LWI	r3,	r19,	160632
	SWI	r3,	r19,	160248
	LWI	r3,	r19,	160628
	SWI	r3,	r19,	160244
	LWI	r3,	r19,	160624
	SWI	r3,	r19,	160240
	ADD	r3,	r0,	r0
	SWI	r3,	r19,	160756
	LWI	r5,	r19,	160248
	SWI	r5,	r19,	160748
	SWI	r3,	r19,	160652
$0BB0_139:
	LWI	r3,	r19,	160676
	DIV	r5,	r3,	r4
	MUL	r3,	r5,	r3
	SWI	r3,	r19,	160656
	RSUB	r4,	r3,	r4
	SWI	r4,	r19,	160668
	FPCONV	r3,	r5
	FPCONV	r4,	r4
	LWI	r5,	r19,	160744
	FPADD	r3,	r3,	r5
	ORI	r5,	r0,	1056964608
	LWI	r6,	r19,	160740
	FPADD	r4,	r4,	r6
	FPADD	r3,	r3,	r5
	FPADD	r4,	r4,	r5
	FPADD	r3,	r3,	r3
	FPADD	r4,	r4,	r4
	LWI	r5,	r19,	160684
	FPDIV	r3,	r3,	r5
	LWI	r5,	r19,	160680
	FPDIV	r4,	r4,	r5
	LWI	r5,	r19,	160732
	FPMUL	r5,	r5,	r3
	LWI	r6,	r19,	160720
	FPMUL	r6,	r6,	r4
	LWI	r7,	r19,	160728
	FPMUL	r7,	r7,	r3
	LWI	r8,	r19,	160716
	FPMUL	r8,	r8,	r4
	LWI	r9,	r19,	160724
	FPMUL	r4,	r9,	r4
	LWI	r9,	r19,	160736
	FPMUL	r3,	r9,	r3
	FPADD	r5,	r5,	r6
	FPADD	r6,	r7,	r8
	LWI	r7,	r19,	160708
	FPADD	r5,	r5,	r7
	LWI	r7,	r19,	160704
	FPADD	r6,	r6,	r7
	FPADD	r4,	r4,	r3
	LWI	r3,	r19,	160712
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
	SWI	r4,	r19,	160260
	FPDIV	r4,	r5,	r3
	SWI	r4,	r19,	160560
	FPDIV	r3,	r6,	r3
	SWI	r3,	r19,	160564
	LWI	r5,	r19,	160260
	LWI	r6,	r19,	160756
	BITOR	r5,	r6,	r5
	SWI	r5,	r19,	160672
	SWI	r4,	r19,	160256
	SWI	r3,	r19,	160252
	SWI	r5,	r19,	160264
	ADD	r4,	r0,	r0
	SWI	r4,	r19,	160604
	LWI	r3,	r19,	160264
	SWI	r3,	r19,	160568
	ADDI	r3,	r0,	-1
	SWI	r3,	r19,	160552
	ADDI	r3,	r0,	1343554297
	SWI	r3,	r19,	160548
	SWI	r4,	r19,	160592
	SWI	r4,	r19,	160596
	SWI	r4,	r19,	160576
	SWI	r4,	r19,	160580
	SWI	r4,	r19,	160584
	SWI	r4,	r19,	160588
	SWI	r4,	r19,	160608
	SWI	r4,	r19,	160612
	SWI	r4,	r19,	160616
	SWI	r4,	r19,	160620
	SWI	r4,	r19,	160636
$0BB0_140:
	ADDI	r3,	r0,	3
	ANDI	r3,	r3,	31
	beqid	r3,	$0BB0_142
	ADDI	r4,	r4,	0
$0BB0_141:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_141
	ADDK	r4,	r4,	r4
$0BB0_142:
	LWI	r3,	r19,	160600
	ADD	r3,	r4,	r3
	LOAD	r4,	r3,	2
	LOAD	r5,	r3,	1
	LOAD	r6,	r3,	0
	LOAD	r7,	r3,	5
	LOAD	r8,	r3,	4
	LOAD	r9,	r3,	3
	LWI	r10,	r19,	160624
	FPRSUB	r6,	r10,	r6
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r19,	160564
	FPDIV	r6,	r6,	r10
	FPDIV	r9,	r9,	r10
	FPGT	r10,	r6,	r9
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r10,	$0BB0_144
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_144:
	bneid	r20,	$0BB0_146
	ADD	r10,	r9,	r0
	ADD	r10,	r6,	r0
$0BB0_146:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_148
	NOP
	ADD	r6,	r9,	r0
$0BB0_148:
	ORI	r9,	r0,	1343554297
	FPGT	r20,	r10,	r21
	FPLT	r22,	r6,	r9
	bneid	r20,	$0BB0_150
	ADD	r23,	r11,	r0
	ADD	r23,	r12,	r0
$0BB0_150:
	bneid	r22,	$0BB0_152
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_152:
	bneid	r23,	$0BB0_154
	NOP
	ADD	r10,	r21,	r0
$0BB0_154:
	bneid	r20,	$0BB0_156
	NOP
	ADD	r6,	r9,	r0
$0BB0_156:
	FPGT	r9,	r10,	r6
	bneid	r9,	$0BB0_158
	NOP
	ADD	r11,	r12,	r0
$0BB0_158:
	bneid	r11,	$0BB0_230
	NOP
	ORI	r9,	r0,	0
	ADDI	r11,	r0,	1
	FPLT	r9,	r6,	r9
	bneid	r9,	$0BB0_161
	NOP
	ADDI	r11,	r0,	0
$0BB0_161:
	bneid	r11,	$0BB0_230
	NOP
	LWI	r9,	r19,	160628
	FPRSUB	r5,	r9,	r5
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	160560
	FPDIV	r5,	r5,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r5,	r8
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_164
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_164:
	bneid	r20,	$0BB0_166
	ADD	r9,	r8,	r0
	ADD	r9,	r5,	r0
$0BB0_166:
	bneid	r20,	$0BB0_168
	NOP
	ADD	r5,	r8,	r0
$0BB0_168:
	FPGT	r8,	r9,	r10
	FPLT	r20,	r5,	r6
	bneid	r8,	$0BB0_170
	ADD	r21,	r11,	r0
	ADD	r21,	r12,	r0
$0BB0_170:
	bneid	r20,	$0BB0_172
	ADD	r8,	r11,	r0
	ADD	r8,	r12,	r0
$0BB0_172:
	bneid	r21,	$0BB0_174
	NOP
	ADD	r9,	r10,	r0
$0BB0_174:
	bneid	r8,	$0BB0_176
	NOP
	ADD	r5,	r6,	r0
$0BB0_176:
	FPGT	r6,	r9,	r5
	bneid	r6,	$0BB0_178
	NOP
	ADD	r11,	r12,	r0
$0BB0_178:
	bneid	r11,	$0BB0_230
	NOP
	ORI	r6,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r6,	r5,	r6
	bneid	r6,	$0BB0_181
	NOP
	ADDI	r8,	r0,	0
$0BB0_181:
	bneid	r8,	$0BB0_230
	NOP
	LWI	r6,	r19,	160632
	FPRSUB	r4,	r6,	r4
	FPRSUB	r6,	r6,	r7
	LWI	r7,	r19,	160568
	FPDIV	r4,	r4,	r7
	FPDIV	r6,	r6,	r7
	FPGT	r7,	r4,	r6
	ADDI	r8,	r0,	1
	ADDI	r10,	r0,	0
	bneid	r7,	$0BB0_184
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_184:
	bneid	r11,	$0BB0_186
	ADD	r7,	r6,	r0
	ADD	r7,	r4,	r0
$0BB0_186:
	bneid	r11,	$0BB0_188
	NOP
	ADD	r4,	r6,	r0
$0BB0_188:
	FPGT	r6,	r7,	r9
	FPLT	r11,	r4,	r5
	bneid	r6,	$0BB0_190
	ADD	r12,	r8,	r0
	ADD	r12,	r10,	r0
$0BB0_190:
	bneid	r11,	$0BB0_192
	ADD	r6,	r8,	r0
	ADD	r6,	r10,	r0
$0BB0_192:
	bneid	r6,	$0BB0_194
	NOP
	ADD	r4,	r5,	r0
$0BB0_194:
	bneid	r12,	$0BB0_196
	NOP
	ADD	r7,	r9,	r0
$0BB0_196:
	FPGT	r5,	r7,	r4
	bneid	r5,	$0BB0_198
	NOP
	ADD	r8,	r10,	r0
$0BB0_198:
	bneid	r8,	$0BB0_230
	NOP
	ORI	r5,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r4,	r4,	r5
	bneid	r4,	$0BB0_201
	NOP
	ADDI	r6,	r0,	0
$0BB0_201:
	bneid	r6,	$0BB0_230
	NOP
	LOAD	r4,	r3,	7
	LOAD	r3,	r3,	6
	SWI	r3,	r19,	160556
	ADD	r5,	r0,	r0
	CMP	r3,	r5,	r3
	bltid	r3,	$0BB0_234
	NOP
	ADD	r3,	r0,	r0
	LWI	r5,	r19,	160556
	CMP	r3,	r3,	r5
	bleid	r3,	$0BB0_230
	NOP
$0BB0_204:
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
	SWI	r7,	r19,	160572
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r19,	160560
	FPMUL	r21,	r20,	r7
	LWI	r22,	r19,	160568
	FPMUL	r23,	r8,	r22
	FPRSUB	r6,	r12,	r6
	LOAD	r24,	r4,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r19,	160564
	FPMUL	r25,	r23,	r7
	FPRSUB	r3,	r10,	r3
	FPRSUB	r5,	r11,	r5
	LWI	r26,	r19,	160624
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r6
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r4,	9
	LWI	r28,	r19,	160628
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
	LWI	r31,	r19,	160632
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
	bneid	r23,	$0BB0_206
	NOP
	ADDI	r21,	r0,	0
$0BB0_206:
	bneid	r21,	$0BB0_229
	NOP
	ORI	r7,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r7,	r20,	r7
	bneid	r7,	$0BB0_209
	NOP
	ADDI	r21,	r0,	0
$0BB0_209:
	bneid	r21,	$0BB0_229
	NOP
	FPMUL	r7,	r11,	r3
	FPMUL	r21,	r5,	r10
	FPRSUB	r7,	r21,	r7
	FPMUL	r10,	r6,	r10
	FPMUL	r3,	r12,	r3
	FPRSUB	r3,	r3,	r10
	FPMUL	r5,	r5,	r12
	FPMUL	r6,	r6,	r11
	LWI	r10,	r19,	160564
	FPMUL	r10,	r7,	r10
	ORI	r11,	r0,	0
	FPRSUB	r5,	r6,	r5
	LWI	r6,	r19,	160560
	FPMUL	r6,	r3,	r6
	FPADD	r10,	r10,	r11
	LWI	r12,	r19,	160568
	FPMUL	r12,	r5,	r12
	FPADD	r6,	r6,	r10
	FPADD	r6,	r12,	r6
	FPMUL	r6,	r6,	r22
	ADDI	r10,	r0,	1
	FPLT	r11,	r6,	r11
	bneid	r11,	$0BB0_212
	NOP
	ADDI	r10,	r0,	0
$0BB0_212:
	bneid	r10,	$0BB0_229
	NOP
	FPADD	r6,	r6,	r20
	ORI	r10,	r0,	1065353216
	ADDI	r11,	r0,	1
	FPGT	r6,	r6,	r10
	bneid	r6,	$0BB0_215
	NOP
	ADDI	r11,	r0,	0
$0BB0_215:
	bneid	r11,	$0BB0_229
	NOP
	FPMUL	r6,	r7,	r9
	ORI	r7,	r0,	0
	FPMUL	r3,	r3,	r8
	FPADD	r6,	r6,	r7
	LWI	r8,	r19,	160572
	FPMUL	r5,	r5,	r8
	FPADD	r3,	r3,	r6
	FPADD	r3,	r5,	r3
	FPMUL	r3,	r3,	r22
	FPUN	r5,	r3,	r7
	FPLE	r6,	r3,	r7
	BITOR	r5,	r5,	r6
	bneid	r5,	$0BB0_218
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_218:
	bneid	r7,	$0BB0_229
	NOP
	ORI	r5,	r0,	981668463
	ADDI	r6,	r0,	1
	FPLT	r5,	r3,	r5
	bneid	r5,	$0BB0_221
	NOP
	ADDI	r6,	r0,	0
$0BB0_221:
	bneid	r6,	$0BB0_229
	NOP
	ORI	r5,	r0,	1343554297
	ADDI	r6,	r0,	1
	FPEQ	r5,	r3,	r5
	bneid	r5,	$0BB0_224
	NOP
	ADDI	r6,	r0,	0
$0BB0_224:
	bneid	r6,	$0BB0_229
	NOP
	LWI	r5,	r19,	160548
	SWI	r5,	r19,	160268
	LWI	r5,	r19,	160268
	FPUN	r6,	r5,	r3
	FPLE	r5,	r5,	r3
	BITOR	r5,	r6,	r5
	bneid	r5,	$0BB0_227
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_227:
	bneid	r7,	$0BB0_229
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
	SWI	r22,	r19,	160644
	ADD	r22,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r22,	r22,	9
	ADD	r21,	r22,	r21
	LOAD	r22,	r21,	6
	LOAD	r23,	r21,	5
	LOAD	r21,	r21,	4
	SWI	r22,	r19,	160312
	SWI	r23,	r19,	160316
	SWI	r21,	r19,	160320
	SWI	r11,	r19,	160300
	SWI	r12,	r19,	160304
	SWI	r20,	r19,	160308
	SWI	r8,	r19,	160288
	SWI	r9,	r19,	160292
	SWI	r10,	r19,	160296
	SWI	r5,	r19,	160276
	SWI	r6,	r19,	160280
	SWI	r7,	r19,	160284
	SWI	r3,	r19,	160272
	ADDI	r3,	r0,	1060320051
	SWI	r3,	r19,	160640
	ADDI	r3,	r0,	1050253722
	SWI	r3,	r19,	160648
	LWI	r3,	r19,	160312
	SWI	r3,	r19,	160604
	LWI	r5,	r19,	160316
	SWI	r5,	r19,	160592
	LWI	r5,	r19,	160320
	SWI	r5,	r19,	160596
	LWI	r5,	r19,	160300
	SWI	r5,	r19,	160576
	LWI	r5,	r19,	160304
	SWI	r5,	r19,	160580
	LWI	r5,	r19,	160308
	SWI	r5,	r19,	160584
	LWI	r5,	r19,	160288
	SWI	r5,	r19,	160588
	LWI	r5,	r19,	160292
	SWI	r5,	r19,	160608
	LWI	r5,	r19,	160296
	SWI	r5,	r19,	160612
	LWI	r5,	r19,	160276
	SWI	r5,	r19,	160616
	LWI	r5,	r19,	160280
	SWI	r5,	r19,	160620
	LWI	r5,	r19,	160284
	SWI	r5,	r19,	160636
	LWI	r3,	r19,	160272
	SWI	r3,	r19,	160548
$0BB0_229:
	LWI	r3,	r19,	160556
	ADDI	r3,	r3,	-1
	SWI	r3,	r19,	160556
	ADDI	r4,	r4,	11
	ADD	r5,	r0,	r0
	CMP	r3,	r5,	r3
	bneid	r3,	$0BB0_204
	NOP
$0BB0_230:
	ADD	r4,	r0,	r0
	LWI	r3,	r19,	160552
	CMP	r4,	r4,	r3
	bltid	r4,	$0BB0_237
	NOP
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r3,	r19,	160552
	beqid	r4,	$0BB0_233
	ADDI	r3,	r3,	0
$0BB0_232:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_232
	ADDK	r3,	r3,	r3
$0BB0_233:
	ADDI	r4,	r19,	56
	LW	r4,	r4,	r3
	LWI	r3,	r19,	160552
	ADDI	r3,	r3,	-1
	SWI	r3,	r19,	160552
	brid	$0BB0_140
	NOP
$0BB0_234:
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r5,	r19,	160552
	beqid	r3,	$0BB0_236
	ADDI	r5,	r5,	0
$0BB0_235:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_235
	ADDK	r5,	r5,	r5
$0BB0_236:
	ADDI	r3,	r19,	56
	LWI	r6,	r19,	160552
	ADDI	r6,	r6,	1
	SWI	r6,	r19,	160552
	ADDI	r6,	r4,	1
	ADD	r3,	r3,	r5
	brid	$0BB0_140
	SWI	r6,	r3,	4
$0BB0_237:
	LWI	r4,	r19,	160548
	SWI	r4,	r19,	160360
	LWI	r5,	r19,	160636
	SWI	r5,	r19,	160356
	LWI	r5,	r19,	160620
	SWI	r5,	r19,	160352
	LWI	r5,	r19,	160616
	SWI	r5,	r19,	160348
	LWI	r5,	r19,	160612
	SWI	r5,	r19,	160344
	LWI	r5,	r19,	160608
	SWI	r5,	r19,	160340
	LWI	r5,	r19,	160588
	SWI	r5,	r19,	160336
	LWI	r5,	r19,	160584
	SWI	r5,	r19,	160332
	LWI	r5,	r19,	160580
	SWI	r5,	r19,	160328
	LWI	r5,	r19,	160576
	SWI	r5,	r19,	160324
	LWI	r4,	r19,	160360
	SWI	r4,	r19,	160608
	ORI	r3,	r0,	1343554297
	LWI	r5,	r19,	160356
	LWI	r6,	r19,	160352
	LWI	r7,	r19,	160348
	LWI	r8,	r19,	160344
	LWI	r9,	r19,	160340
	LWI	r10,	r19,	160336
	LWI	r11,	r19,	160332
	LWI	r12,	r19,	160328
	LWI	r20,	r19,	160324
	LWI	r21,	r19,	160652
	FPCONV	r21,	r21
	ADDI	r22,	r0,	1
	FPLT	r4,	r4,	r3
	PRINT	r21
	bneid	r4,	$0BB0_239
	NOP
	ADDI	r22,	r0,	0
$0BB0_239:
	LWI	r4,	r19,	160652
	ADDI	r4,	r4,	1
	SWI	r4,	r19,	160652
	bneid	r22,	$0BB0_241
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
	LWI	r8,	r19,	160608
	LWI	r7,	r19,	160564
	FPMUL	r7,	r7,	r8
	LWI	r9,	r19,	160560
	FPMUL	r8,	r9,	r8
	FPADD	r4,	r6,	r4
	FPMUL	r5,	r5,	r5
	ADD	r6,	r0,	r0
	LWI	r9,	r19,	160624
	FPADD	r7,	r7,	r9
	SWI	r7,	r19,	160576
	LWI	r7,	r19,	160628
	FPADD	r7,	r8,	r7
	SWI	r7,	r19,	160580
	FPADD	r4,	r4,	r5
	SWI	r4,	r19,	160612
	ORI	r4,	r0,	1057988018
	ADDI	r5,	r0,	1060806590
	ADDI	r7,	r0,	1065151889
	brid	$0BB0_354
	NOP
$0BB0_241:
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
	LWI	r6,	r19,	160672
	SWI	r6,	r19,	160368
	FPMUL	r6,	r9,	r9
	FPMUL	r7,	r4,	r4
	LWI	r3,	r19,	160368
	LWI	r8,	r19,	160564
	FPMUL	r10,	r8,	r8
	LWI	r11,	r19,	160560
	FPMUL	r12,	r11,	r11
	FPADD	r6,	r6,	r7
	FPMUL	r7,	r5,	r5
	FPADD	r6,	r6,	r7
	SWI	r6,	r19,	160612
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
	LWI	r12,	r19,	160748
	SWI	r12,	r19,	160380
	LWI	r12,	r19,	160608
	FPMUL	r3,	r3,	r12
	FPMUL	r11,	r11,	r12
	FPMUL	r8,	r8,	r12
	FPMUL	r6,	r6,	r5
	FPADD	r7,	r7,	r10
	FPADD	r6,	r6,	r7
	LWI	r7,	r19,	160640
	SWI	r7,	r19,	160364
	LWI	r7,	r19,	160380
	SWI	r3,	r19,	160384
	SWI	r11,	r19,	160376
	SWI	r8,	r19,	160372
	LWI	r10,	r19,	160364
	SWI	r10,	r19,	160616
	FPUN	r10,	r6,	r20
	FPLE	r6,	r6,	r20
	BITOR	r6,	r10,	r6
	bneid	r6,	$0BB0_243
	ADDI	r12,	r0,	1
	ADDI	r12,	r0,	0
$0BB0_243:
	bneid	r12,	$0BB0_245
	NOP
	FPNEG	r9,	r9
	FPNEG	r4,	r4
	FPNEG	r5,	r5
$0BB0_245:
	LWI	r6,	r19,	160624
	FPADD	r6,	r8,	r6
	SWI	r6,	r19,	160576
	LWI	r8,	r19,	160628
	FPADD	r8,	r11,	r8
	SWI	r8,	r19,	160580
	FPADD	r7,	r7,	r3
	SWI	r7,	r19,	160584
	LWI	r3,	r19,	160692
	FPRSUB	r6,	r6,	r3
	LWI	r3,	r19,	160696
	FPRSUB	r3,	r8,	r3
	LWI	r8,	r19,	160700
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
	SWI	r6,	r19,	160560
	FPDIV	r3,	r3,	r10
	SWI	r3,	r19,	160564
	ORI	r11,	r0,	0
	FPMUL	r6,	r6,	r9
	FPDIV	r7,	r7,	r10
	SWI	r7,	r19,	160572
	FPMUL	r4,	r3,	r4
	FPADD	r6,	r6,	r11
	FPMUL	r5,	r7,	r5
	FPADD	r4,	r4,	r6
	FPADD	r4,	r5,	r4
	SWI	r4,	r19,	160636
	FPUN	r5,	r4,	r11
	FPLE	r4,	r4,	r11
	BITOR	r4,	r5,	r4
	bneid	r4,	$0BB0_247
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_247:
	bneid	r6,	$0BB0_353
	NOP
	ADD	r4,	r0,	r0
	ADDI	r5,	r0,	-1
	SWI	r5,	r19,	160552
	FPINVSQRT	r5,	r8
	SWI	r5,	r19,	160620
$0BB0_249:
	ADDI	r5,	r0,	3
	ANDI	r5,	r5,	31
	beqid	r5,	$0BB0_251
	ADDI	r4,	r4,	0
$0BB0_250:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_250
	ADDK	r4,	r4,	r4
$0BB0_251:
	LWI	r5,	r19,	160600
	ADD	r5,	r4,	r5
	LOAD	r4,	r5,	2
	LOAD	r6,	r5,	1
	LOAD	r7,	r5,	0
	LOAD	r11,	r5,	5
	LOAD	r3,	r5,	4
	LOAD	r8,	r5,	3
	LWI	r9,	r19,	160576
	FPRSUB	r7,	r9,	r7
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	160560
	FPDIV	r7,	r7,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r7,	r8
	ADDI	r10,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_253
	ADD	r20,	r10,	r0
	ADD	r20,	r12,	r0
$0BB0_253:
	bneid	r20,	$0BB0_255
	ADD	r9,	r8,	r0
	ADD	r9,	r7,	r0
$0BB0_255:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_257
	NOP
	ADD	r7,	r8,	r0
$0BB0_257:
	ORI	r8,	r0,	1343554297
	FPGT	r20,	r9,	r21
	FPLT	r22,	r7,	r8
	bneid	r20,	$0BB0_259
	ADD	r23,	r10,	r0
	ADD	r23,	r12,	r0
$0BB0_259:
	bneid	r22,	$0BB0_261
	ADD	r20,	r10,	r0
	ADD	r20,	r12,	r0
$0BB0_261:
	bneid	r23,	$0BB0_263
	NOP
	ADD	r9,	r21,	r0
$0BB0_263:
	bneid	r20,	$0BB0_265
	NOP
	ADD	r7,	r8,	r0
$0BB0_265:
	FPGT	r8,	r9,	r7
	bneid	r8,	$0BB0_267
	NOP
	ADD	r10,	r12,	r0
$0BB0_267:
	bneid	r10,	$0BB0_339
	NOP
	ORI	r8,	r0,	0
	ADDI	r10,	r0,	1
	FPLT	r8,	r7,	r8
	bneid	r8,	$0BB0_270
	NOP
	ADDI	r10,	r0,	0
$0BB0_270:
	bneid	r10,	$0BB0_339
	NOP
	LWI	r8,	r19,	160580
	FPRSUB	r6,	r8,	r6
	FPRSUB	r3,	r8,	r3
	LWI	r8,	r19,	160564
	FPDIV	r6,	r6,	r8
	FPDIV	r3,	r3,	r8
	FPGT	r8,	r6,	r3
	ADDI	r10,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r8,	$0BB0_273
	ADD	r20,	r10,	r0
	ADD	r20,	r12,	r0
$0BB0_273:
	bneid	r20,	$0BB0_275
	ADD	r8,	r3,	r0
	ADD	r8,	r6,	r0
$0BB0_275:
	bneid	r20,	$0BB0_277
	NOP
	ADD	r6,	r3,	r0
$0BB0_277:
	FPGT	r3,	r8,	r9
	FPLT	r20,	r6,	r7
	bneid	r3,	$0BB0_279
	ADD	r21,	r10,	r0
	ADD	r21,	r12,	r0
$0BB0_279:
	bneid	r20,	$0BB0_281
	ADD	r3,	r10,	r0
	ADD	r3,	r12,	r0
$0BB0_281:
	bneid	r21,	$0BB0_283
	NOP
	ADD	r8,	r9,	r0
$0BB0_283:
	bneid	r3,	$0BB0_285
	NOP
	ADD	r6,	r7,	r0
$0BB0_285:
	FPGT	r7,	r8,	r6
	bneid	r7,	$0BB0_287
	NOP
	ADD	r10,	r12,	r0
$0BB0_287:
	bneid	r10,	$0BB0_339
	NOP
	ORI	r7,	r0,	0
	ADDI	r3,	r0,	1
	FPLT	r7,	r6,	r7
	bneid	r7,	$0BB0_290
	NOP
	ADDI	r3,	r0,	0
$0BB0_290:
	bneid	r3,	$0BB0_339
	NOP
	LWI	r7,	r19,	160584
	FPRSUB	r4,	r7,	r4
	FPRSUB	r7,	r7,	r11
	LWI	r11,	r19,	160572
	FPDIV	r4,	r4,	r11
	FPDIV	r7,	r7,	r11
	FPGT	r11,	r4,	r7
	ADDI	r3,	r0,	1
	ADDI	r9,	r0,	0
	bneid	r11,	$0BB0_293
	ADD	r10,	r3,	r0
	ADD	r10,	r9,	r0
$0BB0_293:
	bneid	r10,	$0BB0_295
	ADD	r11,	r7,	r0
	ADD	r11,	r4,	r0
$0BB0_295:
	bneid	r10,	$0BB0_297
	NOP
	ADD	r4,	r7,	r0
$0BB0_297:
	FPGT	r7,	r11,	r8
	FPLT	r10,	r4,	r6
	bneid	r7,	$0BB0_299
	ADD	r12,	r3,	r0
	ADD	r12,	r9,	r0
$0BB0_299:
	bneid	r10,	$0BB0_301
	ADD	r7,	r3,	r0
	ADD	r7,	r9,	r0
$0BB0_301:
	bneid	r7,	$0BB0_303
	NOP
	ADD	r4,	r6,	r0
$0BB0_303:
	bneid	r12,	$0BB0_305
	NOP
	ADD	r11,	r8,	r0
$0BB0_305:
	FPGT	r6,	r11,	r4
	bneid	r6,	$0BB0_307
	NOP
	ADD	r3,	r9,	r0
$0BB0_307:
	bneid	r3,	$0BB0_339
	NOP
	ORI	r6,	r0,	0
	ADDI	r7,	r0,	1
	FPLT	r4,	r4,	r6
	bneid	r4,	$0BB0_310
	NOP
	ADDI	r7,	r0,	0
$0BB0_310:
	bneid	r7,	$0BB0_339
	NOP
	LOAD	r4,	r5,	7
	LOAD	r5,	r5,	6
	SWI	r5,	r19,	160556
	ADD	r6,	r0,	r0
	CMP	r5,	r6,	r5
	bltid	r5,	$0BB0_343
	NOP
	ADD	r5,	r0,	r0
	LWI	r6,	r19,	160556
	CMP	r5,	r5,	r6
	bleid	r5,	$0BB0_339
	NOP
$0BB0_313:
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
	SWI	r11,	r19,	160588
	FPRSUB	r3,	r10,	r3
	FPRSUB	r8,	r12,	r8
	LWI	r20,	r19,	160564
	FPMUL	r21,	r20,	r11
	LWI	r22,	r19,	160572
	FPMUL	r23,	r3,	r22
	FPRSUB	r7,	r12,	r7
	LOAD	r24,	r4,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r8,	r22
	LWI	r23,	r19,	160560
	FPMUL	r25,	r23,	r11
	FPRSUB	r5,	r9,	r5
	FPRSUB	r6,	r10,	r6
	LWI	r26,	r19,	160576
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r3,	r23
	FPMUL	r20,	r8,	r20
	FPMUL	r25,	r21,	r7
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r4,	9
	LWI	r28,	r19,	160580
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
	LWI	r31,	r19,	160584
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
	bneid	r23,	$0BB0_315
	NOP
	ADDI	r21,	r0,	0
$0BB0_315:
	bneid	r21,	$0BB0_338
	NOP
	ORI	r11,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r11,	r20,	r11
	bneid	r11,	$0BB0_318
	NOP
	ADDI	r21,	r0,	0
$0BB0_318:
	bneid	r21,	$0BB0_338
	NOP
	FPMUL	r11,	r10,	r5
	FPMUL	r21,	r6,	r9
	FPRSUB	r11,	r21,	r11
	FPMUL	r9,	r7,	r9
	FPMUL	r5,	r12,	r5
	FPRSUB	r5,	r5,	r9
	FPMUL	r6,	r6,	r12
	FPMUL	r7,	r7,	r10
	LWI	r9,	r19,	160560
	FPMUL	r9,	r11,	r9
	ORI	r10,	r0,	0
	FPRSUB	r6,	r7,	r6
	LWI	r7,	r19,	160564
	FPMUL	r7,	r5,	r7
	FPADD	r9,	r9,	r10
	LWI	r12,	r19,	160572
	FPMUL	r12,	r6,	r12
	FPADD	r7,	r7,	r9
	FPADD	r7,	r12,	r7
	FPMUL	r7,	r7,	r22
	ADDI	r9,	r0,	1
	FPLT	r10,	r7,	r10
	bneid	r10,	$0BB0_321
	NOP
	ADDI	r9,	r0,	0
$0BB0_321:
	bneid	r9,	$0BB0_338
	NOP
	FPADD	r7,	r7,	r20
	ORI	r9,	r0,	1065353216
	ADDI	r10,	r0,	1
	FPGT	r7,	r7,	r9
	bneid	r7,	$0BB0_324
	NOP
	ADDI	r10,	r0,	0
$0BB0_324:
	bneid	r10,	$0BB0_338
	NOP
	FPMUL	r7,	r11,	r8
	ORI	r11,	r0,	0
	FPMUL	r5,	r5,	r3
	FPADD	r7,	r7,	r11
	LWI	r3,	r19,	160588
	FPMUL	r6,	r6,	r3
	FPADD	r5,	r5,	r7
	FPADD	r5,	r6,	r5
	FPMUL	r5,	r5,	r22
	FPUN	r6,	r5,	r11
	FPLE	r7,	r5,	r11
	BITOR	r6,	r6,	r7
	bneid	r6,	$0BB0_327
	ADDI	r11,	r0,	1
	ADDI	r11,	r0,	0
$0BB0_327:
	bneid	r11,	$0BB0_338
	NOP
	ORI	r6,	r0,	981668463
	ADDI	r7,	r0,	1
	FPLT	r6,	r5,	r6
	bneid	r6,	$0BB0_330
	NOP
	ADDI	r7,	r0,	0
$0BB0_330:
	bneid	r7,	$0BB0_338
	NOP
	ORI	r6,	r0,	1343554297
	ADDI	r7,	r0,	1
	FPEQ	r6,	r5,	r6
	bneid	r6,	$0BB0_333
	NOP
	ADDI	r7,	r0,	0
$0BB0_333:
	bneid	r7,	$0BB0_338
	NOP
	LWI	r6,	r19,	160548
	SWI	r6,	r19,	160388
	LWI	r6,	r19,	160388
	FPUN	r7,	r6,	r5
	FPLE	r6,	r6,	r5
	BITOR	r6,	r7,	r6
	bneid	r6,	$0BB0_336
	ADDI	r11,	r0,	1
	ADDI	r11,	r0,	0
$0BB0_336:
	bneid	r11,	$0BB0_338
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
	SWI	r5,	r19,	160392
	LOAD	r5,	r6,	6
	LWI	r5,	r19,	160392
	SWI	r5,	r19,	160548
	LOAD	r5,	r6,	5
	LOAD	r5,	r6,	4
$0BB0_338:
	LWI	r5,	r19,	160556
	ADDI	r5,	r5,	-1
	SWI	r5,	r19,	160556
	ADDI	r4,	r4,	11
	ADD	r6,	r0,	r0
	CMP	r5,	r6,	r5
	bneid	r5,	$0BB0_313
	NOP
$0BB0_339:
	ADD	r4,	r0,	r0
	LWI	r5,	r19,	160552
	CMP	r4,	r4,	r5
	bltid	r4,	$0BB0_346
	NOP
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r5,	r19,	160552
	beqid	r4,	$0BB0_342
	ADDI	r5,	r5,	0
$0BB0_341:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_341
	ADDK	r5,	r5,	r5
$0BB0_342:
	ADDI	r4,	r19,	56
	LW	r4,	r4,	r5
	LWI	r5,	r19,	160552
	ADDI	r5,	r5,	-1
	SWI	r5,	r19,	160552
	brid	$0BB0_249
	NOP
$0BB0_343:
	ADDI	r5,	r0,	2
	ANDI	r5,	r5,	31
	LWI	r6,	r19,	160552
	beqid	r5,	$0BB0_345
	ADDI	r6,	r6,	0
$0BB0_344:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_344
	ADDK	r6,	r6,	r6
$0BB0_345:
	ADDI	r5,	r19,	56
	LWI	r7,	r19,	160552
	ADDI	r7,	r7,	1
	SWI	r7,	r19,	160552
	ADDI	r7,	r4,	1
	ADD	r5,	r5,	r6
	brid	$0BB0_249
	SWI	r7,	r5,	4
$0BB0_346:
	LWI	r4,	r19,	160548
	SWI	r4,	r19,	160396
	ORI	r4,	r0,	1065353216
	LWI	r5,	r19,	160396
	LWI	r6,	r19,	160620
	FPDIV	r4,	r4,	r6
	ORI	r11,	r0,	0
	FPUN	r6,	r5,	r4
	FPGE	r4,	r5,	r4
	BITOR	r4,	r6,	r4
	bneid	r4,	$0BB0_348
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_348:
	bneid	r7,	$0BB0_352
	NOP
	ORI	r4,	r0,	1008981770
	ADDI	r6,	r0,	1
	FPGT	r4,	r5,	r4
	bneid	r4,	$0BB0_351
	NOP
	ADDI	r6,	r0,	0
$0BB0_351:
	bneid	r6,	$0BB0_353
	NOP
$0BB0_352:
	LWI	r5,	r19,	160636
	LWI	r4,	r19,	160616
	FPMUL	r4,	r4,	r5
	ORI	r5,	r0,	0
	FPADD	r11,	r4,	r5
$0BB0_353:
	LWI	r5,	r19,	160592
	SWI	r5,	r19,	160400
	LWI	r4,	r19,	160604
	SWI	r4,	r19,	160408
	LWI	r4,	r19,	160400
	LWI	r5,	r19,	160408
	LWI	r6,	r19,	160596
	SWI	r6,	r19,	160416
	FPMUL	r4,	r4,	r11
	FPMUL	r5,	r11,	r5
	LWI	r7,	r19,	160416
	SWI	r4,	r19,	160404
	SWI	r5,	r19,	160412
	ADD	r6,	r0,	r0
	FPMUL	r4,	r7,	r11
	LWI	r5,	r19,	160404
	LWI	r7,	r19,	160412
$0BB0_354:
	LWI	r8,	r19,	160608
	LWI	r3,	r19,	160568
	FPMUL	r3,	r3,	r8
	LWI	r8,	r19,	160632
	FPADD	r3,	r8,	r3
	ADD	r8,	r0,	r0
	ORI	r9,	r0,	0
	BITOR	r6,	r7,	r6
	LWI	r7,	r19,	160612
	FPINVSQRT	r7,	r7
	ADD	r7,	r9,	r0
	ADD	r10,	r9,	r0
	brid	$0BB0_368
	ADD	r11,	r8,	r0
$0BB0_355:
	ADDI	r20,	r0,	5
	ANDI	r20,	r20,	31
	beqid	r20,	$0BB0_357
	ADDI	r21,	r8,	0
$0BB0_356:
	ADDI	r20,	r20,	-1
	bneid	r20,	$0BB0_356
	ADDK	r21,	r21,	r21
$0BB0_357:
	LWI	r20,	r19,	160660
	ADD	r22,	r20,	r21
	LWI	r23,	r22,	8
	SWI	r23,	r19,	160424
	LWI	r22,	r22,	4
	LW	r20,	r20,	r21
	LWI	r21,	r19,	160576
	FPRSUB	r21,	r21,	r20
	LWI	r23,	r19,	160580
	FPRSUB	r23,	r23,	r22
	LWI	r24,	r19,	160424
	FPRSUB	r24,	r3,	r24
	FPMUL	r21,	r21,	r21
	FPMUL	r23,	r23,	r23
	FPADD	r21,	r21,	r23
	FPMUL	r23,	r24,	r24
	SWI	r22,	r19,	160428
	SWI	r20,	r19,	160420
	FPADD	r20,	r21,	r23
	ORI	r21,	r0,	1133543424
	FPUN	r22,	r20,	r21
	FPGE	r20,	r20,	r21
	BITOR	r20,	r22,	r20
	bneid	r20,	$0BB0_359
	ADDI	r21,	r0,	1
	ADDI	r21,	r0,	0
$0BB0_359:
	bneid	r21,	$0BB0_367
	NOP
	ADDI	r20,	r0,	2
	ANDI	r21,	r20,	31
	beqid	r21,	$0BB0_362
	ADDI	r22,	r12,	0
$0BB0_361:
	ADDI	r21,	r21,	-1
	bneid	r21,	$0BB0_361
	ADDK	r22,	r22,	r22
$0BB0_362:
	ANDI	r21,	r20,	31
	beqid	r21,	$0BB0_364
	ADDI	r23,	r12,	0
$0BB0_363:
	ADDI	r21,	r21,	-1
	bneid	r21,	$0BB0_363
	ADDK	r23,	r23,	r23
$0BB0_364:
	ANDI	r20,	r20,	31
	beqid	r20,	$0BB0_366
	ADDI	r12,	r12,	0
$0BB0_365:
	ADDI	r20,	r20,	-1
	bneid	r20,	$0BB0_365
	ADDK	r12,	r12,	r12
$0BB0_366:
	LWI	r20,	r19,	160660
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
	bgtid	r12,	$0BB0_372
	NOP
$0BB0_367:
	ADDI	r8,	r8,	1
$0BB0_368:
	ADDI	r12,	r0,	3
	ANDI	r20,	r12,	31
	beqid	r20,	$0BB0_370
	ADDI	r12,	r8,	0
$0BB0_369:
	ADDI	r20,	r20,	-1
	bneid	r20,	$0BB0_369
	ADDK	r12,	r12,	r12
$0BB0_370:
	LWI	r20,	r19,	160664
	CMP	r20,	r20,	r8
	bltid	r20,	$0BB0_355
	NOP
	ORI	r3,	r0,	0
	ADD	r8,	r0,	r0
	CMP	r8,	r8,	r11
	ADD	r12,	r3,	r0
	beqid	r8,	$0BB0_373
	ADD	r20,	r3,	r0
$0BB0_372:
	LWI	r3,	r19,	160596
	SWI	r3,	r19,	160432
	LWI	r3,	r19,	160592
	SWI	r3,	r19,	160440
	LWI	r3,	r19,	160604
	SWI	r3,	r19,	160436
	FPCONV	r3,	r11
	LWI	r12,	r19,	160432
	FPDIV	r20,	r9,	r3
	LWI	r8,	r19,	160440
	FPDIV	r7,	r7,	r3
	FPDIV	r3,	r10,	r3
	LWI	r9,	r19,	160436
	FPMUL	r20,	r12,	r20
	FPMUL	r12,	r8,	r7
	FPMUL	r3,	r3,	r9
$0BB0_373:
	SWI	r5,	r19,	160448
	SWI	r6,	r19,	160444
	LWI	r5,	r19,	160448
	LWI	r6,	r19,	160444
	FPADD	r4,	r20,	r4
	ORI	r7,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r9,	r4,	r7
	bneid	r9,	$0BB0_375
	NOP
	ADDI	r8,	r0,	0
$0BB0_375:
	bneid	r8,	$0BB0_380
	NOP
	ORI	r7,	r0,	1065353216
	ADDI	r8,	r0,	1
	FPGT	r9,	r4,	r7
	bneid	r9,	$0BB0_378
	NOP
	ADDI	r8,	r0,	0
$0BB0_378:
	bneid	r8,	$0BB0_380
	NOP
	ADD	r7,	r4,	r0
$0BB0_380:
	FPADD	r4,	r6,	r3
	ORI	r3,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r8,	r4,	r3
	bneid	r8,	$0BB0_382
	NOP
	ADDI	r6,	r0,	0
$0BB0_382:
	bneid	r6,	$0BB0_387
	NOP
	ORI	r3,	r0,	1065353216
	ADDI	r6,	r0,	1
	FPGT	r8,	r4,	r3
	bneid	r8,	$0BB0_385
	NOP
	ADDI	r6,	r0,	0
$0BB0_385:
	bneid	r6,	$0BB0_387
	NOP
	ADD	r3,	r4,	r0
$0BB0_387:
	FPADD	r4,	r12,	r5
	ORI	r5,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r8,	r4,	r5
	bneid	r8,	$0BB0_389
	NOP
	ADDI	r6,	r0,	0
$0BB0_389:
	bneid	r6,	$0BB0_394
	NOP
	ORI	r5,	r0,	1065353216
	ADDI	r6,	r0,	1
	FPGT	r8,	r4,	r5
	bneid	r8,	$0BB0_392
	NOP
	ADDI	r6,	r0,	0
$0BB0_392:
	bneid	r6,	$0BB0_394
	NOP
	ADD	r5,	r4,	r0
$0BB0_394:
	LWI	r6,	r19,	160668
	LWI	r4,	r19,	160656
	ADD	r4,	r4,	r6
	MULI	r4,	r4,	3
	LWI	r6,	r19,	160688
	ADD	r4,	r4,	r6
	STORE	r4,	r7,	0
	STORE	r4,	r5,	1
	STORE	r4,	r3,	2
	ATOMIC_INC	r4,	0
	LWI	r3,	r19,	160752
	CMP	r3,	r4,	r3
	bgtid	r3,	$0BB0_139
	NOP
$0BB0_395:
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
	ADDI	r1,	r1,	160760
	rtsd	r15,	8
	ADD	r3,	r0,	r0
#	.end	main
$0tmp0:
#	.size	main, ($tmp0)-main


