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
	ADDI	r1, r0, 8192
start:	brlid	r15, main
	NOP
	HALT
#END Preamble
#	.file	"rt.bc"
#	.text
#	.globl	main
#	.align	2
#	.type	main,@function
#	.ent	main                    # @main
main:
#	.frame	r19,220632,r15
#	.mask	0xfff88000
	ADDI	r1,	r1,	-220632
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
	SWI	r4,	r19,	220564
	LOAD	r4,	r3,	4
	SWI	r4,	r19,	220536
	LOAD	r4,	r3,	7
	SWI	r4,	r19,	220576
	LOAD	r4,	r3,	2
	LOAD	r4,	r3,	5
	LOAD	r4,	r3,	12
	LOAD	r5,	r4,	0
	LOAD	r5,	r4,	1
	LOAD	r4,	r4,	2
	LOAD	r4,	r3,	10
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	220500
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	220504
	LOAD	r5,	r4,	2
	SWI	r5,	r19,	220508
	ADDI	r5,	r4,	9
	LOAD	r6,	r5,	0
	LOAD	r6,	r5,	1
	ADDI	r6,	r4,	12
	LOAD	r5,	r5,	2
	LOAD	r5,	r6,	0
	SWI	r5,	r19,	220580
	LOAD	r5,	r6,	1
	SWI	r5,	r19,	220584
	LOAD	r5,	r6,	2
	SWI	r5,	r19,	220588
	ADDI	r5,	r4,	15
	LOAD	r6,	r5,	0
	SWI	r6,	r19,	220592
	LOAD	r6,	r5,	1
	SWI	r6,	r19,	220596
	LOAD	r5,	r5,	2
	SWI	r5,	r19,	220600
	ADDI	r4,	r4,	18
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	220604
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	220608
	ADDI	r5,	r19,	184
	LOAD	r4,	r4,	2
	SWI	r4,	r19,	220612
	ADDI	r4,	r0,	5000
	ADD	r8,	r0,	r0
$0BB0_1:
	SWI	r0,	r5,	0
	SWI	r0,	r5,	4
	SWI	r0,	r5,	8
	SWI	r0,	r5,	12
	SWI	r0,	r5,	16
	SWI	r0,	r5,	20
	ADDI	r6,	r0,	1065353216
	SWI	r6,	r5,	24
	ADDI	r7,	r0,	-1
	ADDK	r4,	r4,	r7
	ADDKC	r3,	r3,	r7
	ADDI	r7,	r5,	44
	SWI	r6,	r5,	28
	BITOR	r9,	r4,	r3
	SWI	r6,	r5,	32
	CMP	r6,	r8,	r9
	bneid	r6,	$0BB0_1
	ADD	r5,	r7,	r0
	ADDI	r3,	r0,	1259902592
	SWI	r3,	r19,	220200
	SWI	r3,	r19,	220196
	ADDI	r4,	r0,	-887581056
	SWI	r3,	r19,	220192
	SWI	r4,	r19,	220212
	SWI	r4,	r19,	220208
	ADD	r3,	r0,	r0
	SWI	r4,	r19,	220204
	LOAD	r4,	r3,	28
	LOAD	r4,	r3,	29
	LOAD	r4,	r3,	8
	SWI	r4,	r19,	220484
	ADDI	r1,	r1,	-4
	ADDI	r5,	r0,	-8
	BITAND	r4,	r1,	r5
	ADDI	r4,	r4,	-5940000
	SWI	r4,	r19,	220548
	ADD	r1,	r4,	r0
	ADDI	r5,	r0,	135000
	ADDI	r1,	r1,	4
	ADD	r8,	r0,	r0
$0BB0_3:
	SWI	r0,	r4,	0
	SWI	r0,	r4,	4
	SWI	r0,	r4,	8
	SWI	r0,	r4,	12
	SWI	r0,	r4,	16
	SWI	r0,	r4,	20
	ADDI	r6,	r0,	1065353216
	SWI	r6,	r4,	24
	ADDI	r7,	r0,	-1
	ADDK	r5,	r5,	r7
	ADDKC	r3,	r3,	r7
	ADDI	r7,	r4,	44
	SWI	r6,	r4,	28
	BITOR	r9,	r5,	r3
	SWI	r6,	r4,	32
	CMP	r6,	r8,	r9
	bneid	r6,	$0BB0_3
	ADD	r4,	r7,	r0
	ADDI	r1,	r1,	-4
	ADDI	r4,	r0,	-8
	BITAND	r3,	r1,	r4
	ADDI	r3,	r3,	-1980000
	ADD	r1,	r3,	r0
	ADD	r4,	r0,	r0
	ADDI	r5,	r0,	45000
	ADDI	r1,	r1,	4
	ADD	r8,	r0,	r0
$0BB0_5:
	SWI	r0,	r3,	0
	SWI	r0,	r3,	4
	SWI	r0,	r3,	8
	SWI	r0,	r3,	12
	SWI	r0,	r3,	16
	SWI	r0,	r3,	20
	ADDI	r6,	r0,	1065353216
	SWI	r6,	r3,	24
	ADDI	r7,	r0,	-1
	ADDK	r5,	r5,	r7
	ADDKC	r4,	r4,	r7
	ADDI	r7,	r3,	44
	SWI	r6,	r3,	28
	BITOR	r9,	r5,	r4
	SWI	r6,	r3,	32
	CMP	r6,	r8,	r9
	bneid	r6,	$0BB0_5
	ADD	r3,	r7,	r0
	ADD	r3,	r0,	r0
	SWI	r3,	r19,	220552
	LOAD	r3,	r3,	12
	LOAD	r4,	r3,	0
	LOAD	r5,	r3,	1
	LOAD	r3,	r3,	2
	SWI	r4,	r19,	220216
	SWI	r5,	r19,	220220
	SWI	r3,	r19,	220224
	LWI	r3,	r19,	220216
	SWI	r3,	r19,	220520
	LWI	r3,	r19,	220220
	SWI	r3,	r19,	220524
	LWI	r3,	r19,	220224
	SWI	r3,	r19,	220528
	ADDI	r3,	r0,	45000
	SWI	r3,	r19,	220532
	brid	$0BB0_133
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
	SWI	r4,	r19,	220452
	FPDIV	r5,	r5,	r6
	SWI	r5,	r19,	220456
	FPDIV	r3,	r3,	r6
	SWI	r3,	r19,	220460
	SWI	r4,	r19,	220368
	SWI	r5,	r19,	220364
	SWI	r3,	r19,	220360
	ADD	r3,	r0,	r0
	ADDI	r4,	r0,	-1
	SWI	r4,	r19,	220444
	ADDI	r4,	r0,	1343554297
	SWI	r4,	r19,	220464
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
	LWI	r4,	r19,	220484
	ADD	r4,	r3,	r4
	LOAD	r3,	r4,	2
	LOAD	r5,	r4,	1
	LOAD	r6,	r4,	0
	LOAD	r7,	r4,	5
	LOAD	r8,	r4,	4
	LOAD	r9,	r4,	3
	LWI	r10,	r19,	220476
	FPRSUB	r6,	r10,	r6
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r19,	220460
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
	LWI	r9,	r19,	220472
	FPRSUB	r5,	r9,	r5
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	220456
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
	LWI	r6,	r19,	220468
	FPRSUB	r3,	r6,	r3
	FPRSUB	r6,	r6,	r7
	LWI	r7,	r19,	220452
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
	SWI	r4,	r19,	220448
	ADD	r5,	r0,	r0
	CMP	r4,	r5,	r4
	bltid	r4,	$0BB0_105
	NOP
	ADD	r4,	r0,	r0
	LWI	r5,	r19,	220448
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
	SWI	r7,	r19,	220480
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r19,	220456
	FPMUL	r21,	r20,	r7
	LWI	r22,	r19,	220452
	FPMUL	r23,	r8,	r22
	FPRSUB	r6,	r12,	r6
	LOAD	r24,	r3,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r19,	220460
	FPMUL	r25,	r23,	r7
	FPRSUB	r4,	r10,	r4
	FPRSUB	r5,	r11,	r5
	LWI	r26,	r19,	220476
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r6
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r3,	9
	LWI	r28,	r19,	220472
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
	LWI	r31,	r19,	220468
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
	LWI	r10,	r19,	220460
	FPMUL	r10,	r7,	r10
	ORI	r11,	r0,	0
	FPRSUB	r5,	r6,	r5
	LWI	r6,	r19,	220456
	FPMUL	r6,	r4,	r6
	FPADD	r10,	r10,	r11
	LWI	r12,	r19,	220452
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
	LWI	r8,	r19,	220480
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
	LWI	r5,	r19,	220464
	SWI	r5,	r19,	220372
	LWI	r5,	r19,	220372
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
	SWI	r22,	r19,	220492
	ADD	r22,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r22,	r22,	9
	ADD	r21,	r22,	r21
	LOAD	r22,	r21,	6
	LOAD	r23,	r21,	5
	LOAD	r21,	r21,	4
	SWI	r22,	r19,	220416
	SWI	r23,	r19,	220420
	SWI	r21,	r19,	220424
	SWI	r11,	r19,	220404
	SWI	r12,	r19,	220408
	SWI	r20,	r19,	220412
	SWI	r8,	r19,	220392
	SWI	r9,	r19,	220396
	SWI	r10,	r19,	220400
	SWI	r5,	r19,	220380
	SWI	r6,	r19,	220384
	SWI	r7,	r19,	220388
	SWI	r4,	r19,	220376
	ADDI	r4,	r0,	1060320051
	SWI	r4,	r19,	220488
	ADDI	r4,	r0,	1050253722
	SWI	r4,	r19,	220496
	LWI	r4,	r19,	220376
	SWI	r4,	r19,	220464
$0BB0_100:
	LWI	r4,	r19,	220448
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	220448
	ADDI	r3,	r3,	11
	ADD	r5,	r0,	r0
	CMP	r4,	r5,	r4
	bneid	r4,	$0BB0_75
	NOP
$0BB0_101:
	ADD	r3,	r0,	r0
	LWI	r4,	r19,	220444
	CMP	r3,	r3,	r4
	bltid	r3,	$0BB0_108
	NOP
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r4,	r19,	220444
	beqid	r3,	$0BB0_104
	ADDI	r4,	r4,	0
$0BB0_103:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_103
	ADDK	r4,	r4,	r4
$0BB0_104:
	ADDI	r3,	r19,	56
	LW	r3,	r3,	r4
	LWI	r4,	r19,	220444
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	220444
	brid	$0BB0_11
	NOP
$0BB0_105:
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r5,	r19,	220444
	beqid	r4,	$0BB0_107
	ADDI	r5,	r5,	0
$0BB0_106:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_106
	ADDK	r5,	r5,	r5
$0BB0_107:
	ADDI	r4,	r19,	56
	LWI	r6,	r19,	220444
	ADDI	r6,	r6,	1
	SWI	r6,	r19,	220444
	ADDI	r6,	r3,	1
	ADD	r4,	r4,	r5
	brid	$0BB0_11
	SWI	r6,	r4,	4
$0BB0_108:
	LWI	r3,	r19,	220464
	SWI	r3,	r19,	220428
	LWI	r3,	r19,	220428
	ORI	r4,	r0,	1343554297
	FPUN	r5,	r3,	r4
	FPGE	r4,	r3,	r4
	BITOR	r4,	r5,	r4
	bneid	r4,	$0BB0_110
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_110:
	bneid	r6,	$0BB0_131
	NOP
	ADDI	r4,	r0,	2
	ANDI	r5,	r4,	31
	LWI	r6,	r19,	220516
	beqid	r5,	$0BB0_113
	ADDI	r6,	r6,	0
$0BB0_112:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_112
	ADDK	r6,	r6,	r6
$0BB0_113:
	ANDI	r5,	r4,	31
	LWI	r7,	r19,	220516
	beqid	r5,	$0BB0_115
	ADDI	r7,	r7,	0
$0BB0_114:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_114
	ADDK	r7,	r7,	r7
$0BB0_115:
	ANDI	r5,	r4,	31
	LWI	r8,	r19,	220516
	beqid	r5,	$0BB0_117
	ADDI	r8,	r8,	0
$0BB0_116:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_116
	ADDK	r8,	r8,	r8
$0BB0_117:
	LWI	r5,	r19,	220460
	FPMUL	r5,	r5,	r3
	LWI	r9,	r19,	220476
	FPADD	r5,	r5,	r9
	LWI	r9,	r19,	220548
	SW	r5,	r9,	r7
	ANDI	r7,	r4,	31
	LWI	r9,	r19,	220516
	beqid	r7,	$0BB0_119
	ADDI	r9,	r9,	0
$0BB0_118:
	ADDI	r7,	r7,	-1
	bneid	r7,	$0BB0_118
	ADDK	r9,	r9,	r9
$0BB0_119:
	LWI	r7,	r19,	220456
	FPMUL	r7,	r7,	r3
	LWI	r10,	r19,	220472
	FPADD	r7,	r7,	r10
	LWI	r10,	r19,	220548
	ADD	r6,	r10,	r6
	SWI	r7,	r6,	4
	ANDI	r6,	r4,	31
	LWI	r10,	r19,	220516
	beqid	r6,	$0BB0_121
	ADDI	r10,	r10,	0
$0BB0_120:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB0_120
	ADDK	r10,	r10,	r10
$0BB0_121:
	LWI	r6,	r19,	220452
	FPMUL	r3,	r6,	r3
	LWI	r6,	r19,	220468
	FPADD	r3,	r6,	r3
	LWI	r6,	r19,	220548
	ADD	r6,	r6,	r8
	SWI	r3,	r6,	8
	ANDI	r6,	r4,	31
	LWI	r8,	r19,	220516
	beqid	r6,	$0BB0_123
	ADDI	r8,	r8,	0
$0BB0_122:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB0_122
	ADDK	r8,	r8,	r8
$0BB0_123:
	LWI	r6,	r19,	220548
	ADD	r6,	r6,	r9
	SWI	r0,	r6,	12
	ANDI	r6,	r4,	31
	LWI	r9,	r19,	220516
	beqid	r6,	$0BB0_125
	ADDI	r9,	r9,	0
$0BB0_124:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB0_124
	ADDK	r9,	r9,	r9
$0BB0_125:
	LWI	r6,	r19,	220548
	ADD	r6,	r6,	r10
	SWI	r0,	r6,	16
	ANDI	r6,	r4,	31
	LWI	r10,	r19,	220516
	beqid	r6,	$0BB0_127
	ADDI	r10,	r10,	0
$0BB0_126:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB0_126
	ADDK	r10,	r10,	r10
$0BB0_127:
	LWI	r6,	r19,	220548
	ADD	r6,	r6,	r8
	SWI	r0,	r6,	20
	SWI	r5,	r19,	220432
	SWI	r7,	r19,	220436
	SWI	r3,	r19,	220440
	ANDI	r3,	r4,	31
	LWI	r4,	r19,	220516
	beqid	r3,	$0BB0_129
	ADDI	r4,	r4,	0
$0BB0_128:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_128
	ADDK	r4,	r4,	r4
$0BB0_129:
	LWI	r3,	r19,	220548
	ADD	r5,	r3,	r9
	ADD	r6,	r3,	r10
	LWI	r7,	r19,	220488
	SWI	r7,	r5,	24
	LWI	r5,	r19,	220432
	SWI	r5,	r19,	220520
	LWI	r5,	r19,	220436
	SWI	r5,	r19,	220524
	LWI	r5,	r19,	220440
	SWI	r5,	r19,	220528
	LWI	r5,	r19,	220552
	ADDI	r5,	r5,	1
	SWI	r5,	r19,	220552
	ADD	r3,	r3,	r4
	SWI	r7,	r6,	28
	SWI	r7,	r3,	32
$0BB0_130:
	LWI	r3,	r19,	220520
	SWI	r3,	r19,	220228
	LWI	r3,	r19,	220524
	SWI	r3,	r19,	220232
	LWI	r3,	r19,	220528
	SWI	r3,	r19,	220236
	LWI	r3,	r19,	220552
	MULI	r3,	r3,	11
	SWI	r3,	r19,	220516
	LWI	r3,	r19,	220228
	SWI	r3,	r19,	220476
	LWI	r3,	r19,	220232
	SWI	r3,	r19,	220472
	LWI	r3,	r19,	220236
	SWI	r3,	r19,	220468
$0BB0_131:
	LWI	r3,	r19,	220512
	ADDI	r4,	r0,	3
	ADDI	r5,	r3,	1
	SWI	r5,	r19,	220512
	CMP	r3,	r4,	r3
	bltid	r3,	$0BB0_7
	NOP
	LWI	r3,	r19,	220532
	ADDI	r3,	r3,	-1
	SWI	r3,	r19,	220532
	ADD	r4,	r0,	r0
	CMP	r3,	r4,	r3
	beqid	r3,	$0BB0_134
	NOP
$0BB0_133:
	ADD	r3,	r0,	r0
	SWI	r3,	r19,	220512
	brid	$0BB0_130
	NOP
$0BB0_134:
	LWI	r3,	r19,	220564
	FPCONV	r4,	r3
	SWI	r4,	r19,	220568
	LWI	r4,	r19,	220536
	FPCONV	r5,	r4
	SWI	r5,	r19,	220572
	ORI	r5,	r0,	-1073741824
	MUL	r3,	r4,	r3
	SWI	r3,	r19,	220628
	ATOMIC_INC	r4,	0
	CMP	r3,	r4,	r3
	bleid	r3,	$0BB0_264
	NOP
	LWI	r3,	r19,	220568
	FPDIV	r3,	r3,	r5
	SWI	r3,	r19,	220616
	LWI	r3,	r19,	220572
	FPDIV	r3,	r3,	r5
	SWI	r3,	r19,	220620
	ADD	r3,	r0,	r0
	SWI	r3,	r19,	220624
$0BB0_136:
	LWI	r3,	r19,	220564
	DIV	r5,	r3,	r4
	MUL	r3,	r5,	r3
	SWI	r3,	r19,	220556
	RSUB	r4,	r3,	r4
	SWI	r4,	r19,	220560
	FPCONV	r4,	r4
	FPCONV	r3,	r5
	LWI	r5,	r19,	220616
	FPADD	r4,	r4,	r5
	ORI	r5,	r0,	1056964608
	LWI	r6,	r19,	220620
	FPADD	r3,	r3,	r6
	FPADD	r4,	r4,	r5
	FPADD	r3,	r3,	r5
	FPADD	r4,	r4,	r4
	FPADD	r3,	r3,	r3
	LWI	r5,	r19,	220572
	FPDIV	r3,	r3,	r5
	LWI	r5,	r19,	220568
	FPDIV	r4,	r4,	r5
	LWI	r5,	r19,	220604
	FPMUL	r5,	r5,	r3
	LWI	r6,	r19,	220592
	FPMUL	r6,	r6,	r4
	LWI	r7,	r19,	220608
	FPMUL	r7,	r7,	r3
	LWI	r8,	r19,	220596
	FPMUL	r8,	r8,	r4
	FPADD	r5,	r5,	r6
	FPADD	r6,	r7,	r8
	LWI	r7,	r19,	220600
	FPMUL	r4,	r7,	r4
	LWI	r7,	r19,	220612
	FPMUL	r3,	r7,	r3
	LWI	r7,	r19,	220580
	FPADD	r5,	r5,	r7
	LWI	r7,	r19,	220584
	FPADD	r6,	r6,	r7
	FPADD	r4,	r4,	r3
	LWI	r3,	r19,	220588
	FPADD	r4,	r3,	r4
	FPMUL	r3,	r5,	r5
	FPMUL	r7,	r6,	r6
	FPADD	r3,	r3,	r7
	FPMUL	r7,	r4,	r4
	FPADD	r3,	r3,	r7
	ORI	r7,	r0,	1065353216
	FPINVSQRT	r3,	r3
	FPDIV	r3,	r7,	r3
	ADD	r7,	r0,	r0
	SWI	r7,	r19,	220532
	FPDIV	r4,	r4,	r3
	SWI	r4,	r19,	220452
	FPDIV	r4,	r6,	r3
	SWI	r4,	r19,	220456
	FPDIV	r4,	r5,	r3
	SWI	r4,	r19,	220460
	ADDI	r4,	r0,	-1
	SWI	r4,	r19,	220444
	ADDI	r4,	r0,	1343554297
	SWI	r4,	r19,	220464
	SWI	r7,	r19,	220472
	SWI	r7,	r19,	220476
	SWI	r7,	r19,	220480
	SWI	r7,	r19,	220492
	SWI	r7,	r19,	220488
	SWI	r7,	r19,	220512
	SWI	r7,	r19,	220496
	SWI	r7,	r19,	220516
	SWI	r7,	r19,	220524
	SWI	r7,	r19,	220520
	SWI	r7,	r19,	220528
$0BB0_137:
	ADDI	r4,	r0,	3
	ANDI	r4,	r4,	31
	beqid	r4,	$0BB0_139
	ADDI	r7,	r7,	0
$0BB0_138:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_138
	ADDK	r7,	r7,	r7
$0BB0_139:
	LWI	r4,	r19,	220484
	ADD	r4,	r7,	r4
	LOAD	r7,	r4,	2
	LOAD	r3,	r4,	1
	LOAD	r5,	r4,	0
	LOAD	r6,	r4,	5
	LOAD	r8,	r4,	4
	LOAD	r9,	r4,	3
	LWI	r10,	r19,	220500
	FPRSUB	r5,	r10,	r5
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r19,	220460
	FPDIV	r5,	r5,	r10
	FPDIV	r9,	r9,	r10
	FPGT	r10,	r5,	r9
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r10,	$0BB0_141
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_141:
	bneid	r20,	$0BB0_143
	ADD	r10,	r9,	r0
	ADD	r10,	r5,	r0
$0BB0_143:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_145
	NOP
	ADD	r5,	r9,	r0
$0BB0_145:
	ORI	r9,	r0,	1343554297
	FPGT	r20,	r10,	r21
	FPLT	r22,	r5,	r9
	bneid	r20,	$0BB0_147
	ADD	r23,	r11,	r0
	ADD	r23,	r12,	r0
$0BB0_147:
	bneid	r22,	$0BB0_149
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_149:
	bneid	r23,	$0BB0_151
	NOP
	ADD	r10,	r21,	r0
$0BB0_151:
	bneid	r20,	$0BB0_153
	NOP
	ADD	r5,	r9,	r0
$0BB0_153:
	FPGT	r9,	r10,	r5
	bneid	r9,	$0BB0_155
	NOP
	ADD	r11,	r12,	r0
$0BB0_155:
	bneid	r11,	$0BB0_227
	NOP
	ORI	r9,	r0,	0
	ADDI	r11,	r0,	1
	FPLT	r9,	r5,	r9
	bneid	r9,	$0BB0_158
	NOP
	ADDI	r11,	r0,	0
$0BB0_158:
	bneid	r11,	$0BB0_227
	NOP
	LWI	r9,	r19,	220504
	FPRSUB	r3,	r9,	r3
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	220456
	FPDIV	r3,	r3,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r3,	r8
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_161
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_161:
	bneid	r20,	$0BB0_163
	ADD	r9,	r8,	r0
	ADD	r9,	r3,	r0
$0BB0_163:
	bneid	r20,	$0BB0_165
	NOP
	ADD	r3,	r8,	r0
$0BB0_165:
	FPGT	r8,	r9,	r10
	FPLT	r20,	r3,	r5
	bneid	r8,	$0BB0_167
	ADD	r21,	r11,	r0
	ADD	r21,	r12,	r0
$0BB0_167:
	bneid	r20,	$0BB0_169
	ADD	r8,	r11,	r0
	ADD	r8,	r12,	r0
$0BB0_169:
	bneid	r21,	$0BB0_171
	NOP
	ADD	r9,	r10,	r0
$0BB0_171:
	bneid	r8,	$0BB0_173
	NOP
	ADD	r3,	r5,	r0
$0BB0_173:
	FPGT	r5,	r9,	r3
	bneid	r5,	$0BB0_175
	NOP
	ADD	r11,	r12,	r0
$0BB0_175:
	bneid	r11,	$0BB0_227
	NOP
	ORI	r5,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r5,	r3,	r5
	bneid	r5,	$0BB0_178
	NOP
	ADDI	r8,	r0,	0
$0BB0_178:
	bneid	r8,	$0BB0_227
	NOP
	LWI	r5,	r19,	220508
	FPRSUB	r7,	r5,	r7
	FPRSUB	r5,	r5,	r6
	LWI	r6,	r19,	220452
	FPDIV	r7,	r7,	r6
	FPDIV	r5,	r5,	r6
	FPGT	r6,	r7,	r5
	ADDI	r8,	r0,	1
	ADDI	r10,	r0,	0
	bneid	r6,	$0BB0_181
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_181:
	bneid	r11,	$0BB0_183
	ADD	r6,	r5,	r0
	ADD	r6,	r7,	r0
$0BB0_183:
	bneid	r11,	$0BB0_185
	NOP
	ADD	r7,	r5,	r0
$0BB0_185:
	FPGT	r5,	r6,	r9
	FPLT	r11,	r7,	r3
	bneid	r5,	$0BB0_187
	ADD	r12,	r8,	r0
	ADD	r12,	r10,	r0
$0BB0_187:
	bneid	r11,	$0BB0_189
	ADD	r5,	r8,	r0
	ADD	r5,	r10,	r0
$0BB0_189:
	bneid	r5,	$0BB0_191
	NOP
	ADD	r7,	r3,	r0
$0BB0_191:
	bneid	r12,	$0BB0_193
	NOP
	ADD	r6,	r9,	r0
$0BB0_193:
	FPGT	r3,	r6,	r7
	bneid	r3,	$0BB0_195
	NOP
	ADD	r8,	r10,	r0
$0BB0_195:
	bneid	r8,	$0BB0_227
	NOP
	ORI	r3,	r0,	0
	ADDI	r5,	r0,	1
	FPLT	r7,	r7,	r3
	bneid	r7,	$0BB0_198
	NOP
	ADDI	r5,	r0,	0
$0BB0_198:
	bneid	r5,	$0BB0_227
	NOP
	LOAD	r7,	r4,	7
	LOAD	r4,	r4,	6
	SWI	r4,	r19,	220448
	ADD	r3,	r0,	r0
	CMP	r4,	r3,	r4
	bltid	r4,	$0BB0_231
	NOP
	ADD	r4,	r0,	r0
	LWI	r3,	r19,	220448
	CMP	r4,	r4,	r3
	bleid	r4,	$0BB0_227
	NOP
$0BB0_201:
	LOAD	r4,	r7,	2
	LOAD	r3,	r7,	1
	LOAD	r5,	r7,	0
	LOAD	r6,	r7,	5
	LOAD	r8,	r7,	4
	LOAD	r9,	r7,	3
	LOAD	r10,	r7,	8
	LOAD	r11,	r7,	7
	LOAD	r12,	r7,	6
	FPRSUB	r6,	r10,	r6
	SWI	r6,	r19,	220468
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r19,	220456
	FPMUL	r21,	r20,	r6
	LWI	r22,	r19,	220452
	FPMUL	r23,	r8,	r22
	FPRSUB	r5,	r12,	r5
	LOAD	r24,	r7,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r19,	220460
	FPMUL	r25,	r23,	r6
	FPRSUB	r4,	r10,	r4
	FPRSUB	r3,	r11,	r3
	LWI	r26,	r19,	220500
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r5
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r7,	9
	LWI	r28,	r19,	220504
	FPRSUB	r11,	r11,	r28
	FPMUL	r21,	r21,	r12
	FPRSUB	r20,	r20,	r23
	FPMUL	r23,	r22,	r3
	FPADD	r25,	r25,	r26
	FPMUL	r28,	r3,	r6
	FPMUL	r29,	r8,	r4
	FPMUL	r30,	r9,	r4
	FPMUL	r6,	r5,	r6
	MULI	r24,	r24,	25
	LOAD	r27,	r27,	9
	LWI	r31,	r19,	220508
	FPRSUB	r10,	r10,	r31
	FPRSUB	r28,	r29,	r28
	FPRSUB	r6,	r6,	r30
	ADD	r24,	r27,	r24
	FPMUL	r22,	r22,	r11
	FPADD	r21,	r21,	r26
	FPMUL	r27,	r20,	r4
	FPADD	r23,	r23,	r25
	FPMUL	r25,	r8,	r5
	FPMUL	r29,	r9,	r3
	FPRSUB	r25,	r29,	r25
	LOAD	r29,	r24,	6
	FPMUL	r20,	r20,	r10
	FPADD	r21,	r22,	r21
	ORI	r22,	r0,	1065353216
	FPADD	r23,	r27,	r23
	FPMUL	r27,	r28,	r28
	FPMUL	r6,	r6,	r6
	FPDIV	r22,	r22,	r23
	FPADD	r20,	r20,	r21
	LOAD	r21,	r24,	5
	FPADD	r6,	r27,	r6
	FPMUL	r21,	r25,	r25
	FPMUL	r20,	r20,	r22
	FPADD	r6,	r6,	r21
	LOAD	r21,	r24,	4
	ADDI	r21,	r0,	1
	FPLT	r23,	r20,	r26
	FPINVSQRT	r6,	r6
	bneid	r23,	$0BB0_203
	NOP
	ADDI	r21,	r0,	0
$0BB0_203:
	bneid	r21,	$0BB0_226
	NOP
	ORI	r6,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r6,	r20,	r6
	bneid	r6,	$0BB0_206
	NOP
	ADDI	r21,	r0,	0
$0BB0_206:
	bneid	r21,	$0BB0_226
	NOP
	FPMUL	r6,	r11,	r4
	FPMUL	r21,	r3,	r10
	FPRSUB	r6,	r21,	r6
	FPMUL	r10,	r5,	r10
	FPMUL	r4,	r12,	r4
	FPRSUB	r4,	r4,	r10
	FPMUL	r3,	r3,	r12
	FPMUL	r5,	r5,	r11
	LWI	r10,	r19,	220460
	FPMUL	r10,	r6,	r10
	ORI	r11,	r0,	0
	FPRSUB	r3,	r5,	r3
	LWI	r5,	r19,	220456
	FPMUL	r5,	r4,	r5
	FPADD	r10,	r10,	r11
	LWI	r12,	r19,	220452
	FPMUL	r12,	r3,	r12
	FPADD	r5,	r5,	r10
	FPADD	r5,	r12,	r5
	FPMUL	r5,	r5,	r22
	ADDI	r10,	r0,	1
	FPLT	r11,	r5,	r11
	bneid	r11,	$0BB0_209
	NOP
	ADDI	r10,	r0,	0
$0BB0_209:
	bneid	r10,	$0BB0_226
	NOP
	FPADD	r5,	r5,	r20
	ORI	r10,	r0,	1065353216
	ADDI	r11,	r0,	1
	FPGT	r5,	r5,	r10
	bneid	r5,	$0BB0_212
	NOP
	ADDI	r11,	r0,	0
$0BB0_212:
	bneid	r11,	$0BB0_226
	NOP
	FPMUL	r5,	r6,	r9
	ORI	r6,	r0,	0
	FPMUL	r4,	r4,	r8
	FPADD	r5,	r5,	r6
	LWI	r8,	r19,	220468
	FPMUL	r3,	r3,	r8
	FPADD	r4,	r4,	r5
	FPADD	r4,	r3,	r4
	FPMUL	r4,	r4,	r22
	FPUN	r3,	r4,	r6
	FPLE	r5,	r4,	r6
	BITOR	r3,	r3,	r5
	bneid	r3,	$0BB0_215
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_215:
	bneid	r6,	$0BB0_226
	NOP
	ORI	r3,	r0,	981668463
	ADDI	r5,	r0,	1
	FPLT	r3,	r4,	r3
	bneid	r3,	$0BB0_218
	NOP
	ADDI	r5,	r0,	0
$0BB0_218:
	bneid	r5,	$0BB0_226
	NOP
	ORI	r3,	r0,	1343554297
	ADDI	r5,	r0,	1
	FPEQ	r3,	r4,	r3
	bneid	r3,	$0BB0_221
	NOP
	ADDI	r5,	r0,	0
$0BB0_221:
	bneid	r5,	$0BB0_226
	NOP
	LWI	r3,	r19,	220464
	SWI	r3,	r19,	220240
	LWI	r3,	r19,	220240
	FPUN	r5,	r3,	r4
	FPLE	r3,	r3,	r4
	BITOR	r3,	r5,	r3
	bneid	r3,	$0BB0_224
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_224:
	bneid	r6,	$0BB0_226
	NOP
	LOAD	r3,	r7,	2
	LOAD	r5,	r7,	1
	LOAD	r6,	r7,	0
	LOAD	r8,	r7,	5
	LOAD	r9,	r7,	4
	LOAD	r10,	r7,	3
	LOAD	r11,	r7,	8
	LOAD	r12,	r7,	7
	LOAD	r20,	r7,	6
	LOAD	r21,	r7,	10
	LOAD	r22,	r7,	9
	SWI	r22,	r19,	220536
	ADD	r22,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r22,	r22,	9
	ADD	r21,	r22,	r21
	LOAD	r22,	r21,	6
	LOAD	r23,	r21,	5
	LOAD	r21,	r21,	4
	SWI	r22,	r19,	220284
	SWI	r23,	r19,	220288
	SWI	r21,	r19,	220292
	SWI	r11,	r19,	220272
	SWI	r12,	r19,	220276
	SWI	r20,	r19,	220280
	SWI	r8,	r19,	220260
	SWI	r9,	r19,	220264
	SWI	r10,	r19,	220268
	SWI	r3,	r19,	220248
	SWI	r5,	r19,	220252
	SWI	r6,	r19,	220256
	SWI	r4,	r19,	220244
	ADDI	r4,	r0,	1060320051
	SWI	r4,	r19,	220540
	ADDI	r4,	r0,	1050253722
	SWI	r4,	r19,	220544
	LWI	r4,	r19,	220284
	SWI	r4,	r19,	220532
	LWI	r4,	r19,	220288
	SWI	r4,	r19,	220472
	LWI	r4,	r19,	220292
	SWI	r4,	r19,	220476
	LWI	r4,	r19,	220272
	SWI	r4,	r19,	220480
	LWI	r4,	r19,	220276
	SWI	r4,	r19,	220492
	LWI	r4,	r19,	220280
	SWI	r4,	r19,	220488
	LWI	r4,	r19,	220260
	SWI	r4,	r19,	220512
	LWI	r4,	r19,	220264
	SWI	r4,	r19,	220496
	LWI	r4,	r19,	220268
	SWI	r4,	r19,	220516
	LWI	r4,	r19,	220248
	SWI	r4,	r19,	220524
	LWI	r4,	r19,	220252
	SWI	r4,	r19,	220520
	LWI	r4,	r19,	220256
	SWI	r4,	r19,	220528
	LWI	r4,	r19,	220244
	SWI	r4,	r19,	220464
$0BB0_226:
	LWI	r4,	r19,	220448
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	220448
	ADDI	r7,	r7,	11
	ADD	r3,	r0,	r0
	CMP	r4,	r3,	r4
	bneid	r4,	$0BB0_201
	NOP
$0BB0_227:
	ADD	r4,	r0,	r0
	LWI	r7,	r19,	220444
	CMP	r4,	r4,	r7
	bltid	r4,	$0BB0_234
	NOP
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r7,	r19,	220444
	beqid	r4,	$0BB0_230
	ADDI	r7,	r7,	0
$0BB0_229:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_229
	ADDK	r7,	r7,	r7
$0BB0_230:
	ADDI	r4,	r19,	56
	LW	r7,	r4,	r7
	LWI	r4,	r19,	220444
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	220444
	brid	$0BB0_137
	NOP
$0BB0_231:
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r3,	r19,	220444
	beqid	r4,	$0BB0_233
	ADDI	r3,	r3,	0
$0BB0_232:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_232
	ADDK	r3,	r3,	r3
$0BB0_233:
	ADDI	r4,	r19,	56
	LWI	r5,	r19,	220444
	ADDI	r5,	r5,	1
	SWI	r5,	r19,	220444
	ADDI	r5,	r7,	1
	ADD	r4,	r4,	r3
	brid	$0BB0_137
	SWI	r5,	r4,	4
$0BB0_234:
	LWI	r7,	r19,	220524
	SWI	r7,	r19,	220332
	LWI	r7,	r19,	220512
	SWI	r7,	r19,	220320
	LWI	r7,	r19,	220480
	SWI	r7,	r19,	220308
	LWI	r7,	r19,	220492
	SWI	r7,	r19,	220312
	LWI	r7,	r19,	220528
	SWI	r7,	r19,	220340
	LWI	r7,	r19,	220516
	SWI	r7,	r19,	220328
	LWI	r7,	r19,	220488
	SWI	r7,	r19,	220316
	LWI	r7,	r19,	220520
	SWI	r7,	r19,	220336
	LWI	r7,	r19,	220496
	SWI	r7,	r19,	220324
	LWI	r4,	r19,	220332
	LWI	r3,	r19,	220320
	LWI	r5,	r19,	220308
	LWI	r6,	r19,	220312
	LWI	r7,	r19,	220324
	LWI	r8,	r19,	220336
	LWI	r9,	r19,	220340
	LWI	r10,	r19,	220328
	LWI	r11,	r19,	220316
	FPRSUB	r4,	r3,	r4
	FPRSUB	r6,	r6,	r7
	FPRSUB	r9,	r10,	r9
	FPRSUB	r3,	r5,	r3
	FPRSUB	r5,	r11,	r10
	FPRSUB	r7,	r7,	r8
	FPMUL	r8,	r7,	r3
	FPMUL	r10,	r6,	r4
	FPMUL	r4,	r5,	r4
	FPMUL	r3,	r9,	r3
	LWI	r11,	r19,	220464
	SWI	r11,	r19,	220344
	FPRSUB	r8,	r10,	r8
	FPRSUB	r4,	r3,	r4
	FPMUL	r3,	r6,	r9
	FPMUL	r5,	r5,	r7
	FPRSUB	r3,	r5,	r3
	LWI	r5,	r19,	220344
	FPMUL	r6,	r8,	r8
	FPMUL	r4,	r4,	r4
	LWI	r7,	r19,	220476
	SWI	r7,	r19,	220304
	LWI	r7,	r19,	220472
	SWI	r7,	r19,	220300
	LWI	r7,	r19,	220532
	SWI	r7,	r19,	220296
	FPADD	r4,	r6,	r4
	FPMUL	r3,	r3,	r3
	LWI	r20,	r19,	220304
	LWI	r21,	r19,	220300
	LWI	r22,	r19,	220296
	ORI	r6,	r0,	0
	FPADD	r4,	r4,	r3
	ADDI	r3,	r0,	1
	FPINVSQRT	r4,	r4
	LWI	r4,	r19,	220552
	CMP	r4,	r3,	r4
	bgeid	r4,	$0BB0_236
	NOP
	ADD	r23,	r6,	r0
	brid	$0BB0_242
	ADD	r24,	r6,	r0
$0BB0_236:
	LWI	r4,	r19,	220460
	FPMUL	r4,	r4,	r5
	LWI	r23,	r19,	220456
	FPMUL	r23,	r23,	r5
	LWI	r24,	r19,	220452
	FPMUL	r24,	r24,	r5
	LWI	r3,	r19,	220500
	FPADD	r4,	r4,	r3
	LWI	r3,	r19,	220504
	FPADD	r3,	r23,	r3
	LWI	r23,	r19,	220508
	FPADD	r5,	r23,	r24
	LWI	r7,	r19,	220548
	LWI	r8,	r19,	220624
	LWI	r9,	r19,	220552
	ADD	r23,	r6,	r0
	ADD	r24,	r6,	r0
$0BB0_237:
	LWI	r10,	r7,	8
	SWI	r10,	r19,	220352
	LWI	r10,	r7,	4
	LWI	r11,	r7,	0
	FPRSUB	r12,	r4,	r11
	FPRSUB	r25,	r3,	r10
	LWI	r26,	r19,	220352
	FPRSUB	r26,	r5,	r26
	FPMUL	r12,	r12,	r12
	FPMUL	r25,	r25,	r25
	FPADD	r12,	r12,	r25
	FPMUL	r25,	r26,	r26
	SWI	r10,	r19,	220356
	SWI	r11,	r19,	220348
	FPADD	r10,	r12,	r25
	ORI	r11,	r0,	1056629063
	FPUN	r12,	r10,	r11
	FPGE	r10,	r10,	r11
	BITOR	r10,	r12,	r10
	bneid	r10,	$0BB0_239
	ADDI	r11,	r0,	1
	ADDI	r11,	r0,	0
$0BB0_239:
	bneid	r11,	$0BB0_241
	NOP
	LWI	r10,	r7,	24
	LWI	r11,	r7,	28
	LWI	r12,	r7,	32
	FPADD	r24,	r24,	r10
	FPADD	r23,	r23,	r11
	FPADD	r6,	r6,	r12
$0BB0_241:
	ADDI	r10,	r0,	-1
	ADDK	r9,	r9,	r10
	ADDKC	r8,	r8,	r10
	ADDI	r7,	r7,	44
	ADD	r10,	r0,	r0
	BITOR	r11,	r9,	r8
	CMP	r10,	r10,	r11
	bneid	r10,	$0BB0_237
	NOP
$0BB0_242:
	brlid	r15,	__extendsfdf2
	ADDI	r1,	r1,	-8
	ADDI	r1,	r1,	8
	ADD	r25,	r3,	r0
	ADD	r26,	r4,	r0
	ADDI	r1,	r1,	-8
	brlid	r15,	__extendsfdf2
	ADD	r6,	r23,	r0
	ADDI	r1,	r1,	8
	ADD	r23,	r3,	r0
	ADD	r27,	r4,	r0
	ADDI	r1,	r1,	-8
	brlid	r15,	__extendsfdf2
	ADD	r6,	r24,	r0
	ADDI	r1,	r1,	8
	ADD	r24,	r3,	r0
	ADD	r28,	r4,	r0
	ADDI	r1,	r1,	-20
	ADDI	r29,	r0,	1073258829
	ADDI	r30,	r0,	1293531329
	ADD	r6,	r25,	r0
	ADD	r7,	r26,	r0
	ADD	r8,	r29,	r0
	brlid	r15,	__divdf3
	ADD	r9,	r30,	r0
	ADDI	r1,	r1,	20
	ADD	r25,	r3,	r0
	ADD	r26,	r4,	r0
	ADDI	r1,	r1,	-20
	ADD	r6,	r23,	r0
	ADD	r7,	r27,	r0
	ADD	r8,	r29,	r0
	brlid	r15,	__divdf3
	ADD	r9,	r30,	r0
	ADDI	r1,	r1,	20
	ADD	r23,	r3,	r0
	ADD	r27,	r4,	r0
	ADDI	r1,	r1,	-20
	ADD	r6,	r24,	r0
	ADD	r7,	r28,	r0
	ADD	r8,	r29,	r0
	brlid	r15,	__divdf3
	ADD	r9,	r30,	r0
	ADDI	r1,	r1,	20
	ADD	r24,	r3,	r0
	ADD	r28,	r4,	r0
	ADDI	r1,	r1,	-12
	ADD	r6,	r25,	r0
	brlid	r15,	__truncdfsf2
	ADD	r7,	r26,	r0
	ADDI	r1,	r1,	12
	ADD	r25,	r3,	r0
	ADDI	r1,	r1,	-12
	ADD	r6,	r23,	r0
	brlid	r15,	__truncdfsf2
	ADD	r7,	r27,	r0
	ADDI	r1,	r1,	12
	ADD	r23,	r3,	r0
	ADDI	r1,	r1,	-12
	ADD	r6,	r24,	r0
	brlid	r15,	__truncdfsf2
	ADD	r7,	r28,	r0
	ADDI	r1,	r1,	12
	FPMUL	r4,	r3,	r20
	ORI	r3,	r0,	0
	ADDI	r5,	r0,	1
	FPLT	r6,	r4,	r3
	bneid	r6,	$0BB0_244
	NOP
	ADDI	r5,	r0,	0
$0BB0_244:
	bneid	r5,	$0BB0_249
	NOP
	ORI	r3,	r0,	1065353216
	ADDI	r5,	r0,	1
	FPGT	r6,	r4,	r3
	bneid	r6,	$0BB0_247
	NOP
	ADDI	r5,	r0,	0
$0BB0_247:
	bneid	r5,	$0BB0_249
	NOP
	ADD	r3,	r4,	r0
$0BB0_249:
	FPMUL	r4,	r25,	r22
	ORI	r5,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r7,	r4,	r5
	bneid	r7,	$0BB0_251
	NOP
	ADDI	r6,	r0,	0
$0BB0_251:
	bneid	r6,	$0BB0_256
	NOP
	ORI	r5,	r0,	1065353216
	ADDI	r6,	r0,	1
	FPGT	r7,	r4,	r5
	bneid	r7,	$0BB0_254
	NOP
	ADDI	r6,	r0,	0
$0BB0_254:
	bneid	r6,	$0BB0_256
	NOP
	ADD	r5,	r4,	r0
$0BB0_256:
	FPMUL	r4,	r23,	r21
	ORI	r6,	r0,	0
	ADDI	r7,	r0,	1
	FPLT	r8,	r4,	r6
	bneid	r8,	$0BB0_258
	NOP
	ADDI	r7,	r0,	0
$0BB0_258:
	bneid	r7,	$0BB0_263
	NOP
	ORI	r6,	r0,	1065353216
	ADDI	r7,	r0,	1
	FPGT	r8,	r4,	r6
	bneid	r8,	$0BB0_261
	NOP
	ADDI	r7,	r0,	0
$0BB0_261:
	bneid	r7,	$0BB0_263
	NOP
	ADD	r6,	r4,	r0
$0BB0_263:
	LWI	r7,	r19,	220560
	LWI	r4,	r19,	220556
	ADD	r4,	r4,	r7
	MULI	r4,	r4,	3
	LWI	r7,	r19,	220576
	ADD	r4,	r4,	r7
	STORE	r4,	r3,	0
	STORE	r4,	r6,	1
	STORE	r4,	r5,	2
	ATOMIC_INC	r4,	0
	LWI	r3,	r19,	220628
	CMP	r3,	r4,	r3
	bgtid	r3,	$0BB0_136
	NOP
$0BB0_264:
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
	ADDI	r1,	r1,	220632
	rtsd	r15,	8
	ADD	r3,	r0,	r0
#	.end	main
$0tmp0:
#	.size	main, ($tmp0)-main


