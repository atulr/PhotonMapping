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
#	.frame	r19,156780,r15
#	.mask	0xfff88000
	ADDI	r1,	r1,	-156780
	SWI	r15,	r1,	0
	SWI	r19,	r1,	4
	ADDK	r19,	r1,	r0
	SWI	r20,	r19,	80
	SWI	r21,	r19,	76
	SWI	r22,	r19,	72
	SWI	r23,	r19,	68
	SWI	r24,	r19,	64
	SWI	r25,	r19,	60
	SWI	r26,	r19,	56
	SWI	r27,	r19,	52
	SWI	r28,	r19,	48
	SWI	r29,	r19,	44
	SWI	r30,	r19,	40
	SWI	r31,	r19,	36
	ADD	r3,	r0,	r0
	LOAD	r4,	r3,	1
	SWI	r4,	r19,	156752
	LOAD	r4,	r3,	4
	SWI	r4,	r19,	156628
	LOAD	r4,	r3,	7
	SWI	r4,	r19,	156764
	LOAD	r4,	r3,	2
	SWI	r4,	r19,	156680
	LOAD	r4,	r3,	5
	SWI	r4,	r19,	156684
	LOAD	r4,	r3,	12
	LOAD	r5,	r4,	0
	LOAD	r5,	r4,	1
	LOAD	r4,	r4,	2
	LOAD	r4,	r3,	10
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	156564
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	156568
	LOAD	r5,	r4,	2
	SWI	r5,	r19,	156584
	ADDI	r5,	r4,	9
	LOAD	r6,	r5,	0
	LOAD	r6,	r5,	1
	ADDI	r6,	r4,	12
	LOAD	r5,	r5,	2
	LOAD	r5,	r6,	0
	SWI	r5,	r19,	156688
	LOAD	r5,	r6,	1
	SWI	r5,	r19,	156692
	LOAD	r5,	r6,	2
	SWI	r5,	r19,	156696
	ADDI	r5,	r4,	15
	LOAD	r6,	r5,	0
	SWI	r6,	r19,	156700
	LOAD	r6,	r5,	1
	SWI	r6,	r19,	156704
	LOAD	r5,	r5,	2
	SWI	r5,	r19,	156708
	ADDI	r4,	r4,	18
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	156712
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	156716
	LOAD	r4,	r4,	2
	SWI	r4,	r19,	156720
	LOAD	r4,	r3,	28
	LOAD	r4,	r3,	29
	ADDI	r4,	r19,	104224
	LOAD	r5,	r3,	8
	SWI	r5,	r19,	156588
	ADDI	r5,	r0,	1000
	ADD	r8,	r0,	r0
$0BB0_1:
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
	ADDI	r7,	r4,	52
	SWI	r6,	r4,	28
	BITOR	r9,	r5,	r3
	SWI	r6,	r4,	32
	CMP	r6,	r8,	r9
	bneid	r6,	$0BB0_1
	ADD	r4,	r7,	r0
	ADDI	r1,	r1,	-4
	ADDI	r4,	r0,	-8
	BITAND	r3,	r1,	r4
	ADDI	r3,	r3,	-52000
	SWI	r3,	r19,	156676
	ADD	r1,	r3,	r0
	ADD	r4,	r0,	r0
	ADDI	r5,	r0,	1000
	ADDI	r1,	r1,	4
	ADD	r8,	r0,	r0
$0BB0_3:
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
	ADDI	r7,	r3,	52
	SWI	r6,	r3,	28
	BITOR	r9,	r5,	r4
	SWI	r6,	r3,	32
	CMP	r6,	r8,	r9
	bneid	r6,	$0BB0_3
	ADD	r3,	r7,	r0
	ADD	r3,	r0,	r0
	SWI	r3,	r19,	156664
	LOAD	r4,	r3,	12
	LOAD	r5,	r4,	0
	LOAD	r6,	r4,	1
	LOAD	r4,	r4,	2
	SWI	r5,	r19,	156224
	SWI	r6,	r19,	156228
	SWI	r4,	r19,	156232
	LWI	r4,	r19,	156224
	SWI	r4,	r19,	156616
	LWI	r4,	r19,	156228
	SWI	r4,	r19,	156620
	LWI	r4,	r19,	156232
	SWI	r4,	r19,	156624
	SWI	r3,	r19,	156608
	brid	$0BB0_128
	NOP
$0BB0_5:
	RAND	r3
	ORI	r4,	r0,	-1090519040
	RAND	r5
	FPADD	r3,	r3,	r4
	FPADD	r5,	r5,	r4
	RAND	r6
	FPADD	r3,	r3,	r3
	SWI	r3,	r19,	156552
	FPADD	r5,	r5,	r5
	SWI	r5,	r19,	156548
	FPADD	r4,	r6,	r4
	FPADD	r4,	r4,	r4
	SWI	r4,	r19,	156544
	FPMUL	r3,	r3,	r3
	FPMUL	r5,	r5,	r5
	FPADD	r3,	r3,	r5
	FPMUL	r4,	r4,	r4
	FPADD	r3,	r3,	r4
	ORI	r4,	r0,	1065353216
	ADDI	r5,	r0,	1
	FPGT	r3,	r3,	r4
	bneid	r3,	$0BB0_7
	NOP
	ADDI	r5,	r0,	0
$0BB0_7:
	bneid	r5,	$0BB0_5
	NOP
	LWI	r3,	r19,	156544
	SWI	r3,	r19,	156464
	LWI	r3,	r19,	156548
	SWI	r3,	r19,	156460
	LWI	r3,	r19,	156552
	SWI	r3,	r19,	156456
	ADD	r3,	r0,	r0
	ADDI	r4,	r0,	-1
	SWI	r4,	r19,	156540
	ADDI	r4,	r0,	1343554297
	SWI	r4,	r19,	156560
$0BB0_9:
	ADDI	r4,	r0,	3
	ANDI	r4,	r4,	31
	beqid	r4,	$0BB0_11
	ADDI	r3,	r3,	0
$0BB0_10:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_10
	ADDK	r3,	r3,	r3
$0BB0_11:
	LWI	r4,	r19,	156588
	ADD	r4,	r3,	r4
	LOAD	r3,	r4,	2
	LOAD	r5,	r4,	1
	LOAD	r6,	r4,	0
	LOAD	r7,	r4,	5
	LOAD	r8,	r4,	4
	LOAD	r9,	r4,	3
	LWI	r10,	r19,	156572
	FPRSUB	r6,	r10,	r6
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r19,	156552
	FPDIV	r6,	r6,	r10
	FPDIV	r9,	r9,	r10
	FPGT	r10,	r6,	r9
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r10,	$0BB0_13
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_13:
	bneid	r20,	$0BB0_15
	ADD	r10,	r9,	r0
	ADD	r10,	r6,	r0
$0BB0_15:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_17
	NOP
	ADD	r6,	r9,	r0
$0BB0_17:
	ORI	r9,	r0,	1343554297
	FPGT	r20,	r10,	r21
	FPLT	r22,	r6,	r9
	bneid	r20,	$0BB0_19
	ADD	r23,	r11,	r0
	ADD	r23,	r12,	r0
$0BB0_19:
	bneid	r22,	$0BB0_21
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_21:
	bneid	r23,	$0BB0_23
	NOP
	ADD	r10,	r21,	r0
$0BB0_23:
	bneid	r20,	$0BB0_25
	NOP
	ADD	r6,	r9,	r0
$0BB0_25:
	FPGT	r9,	r10,	r6
	bneid	r9,	$0BB0_27
	NOP
	ADD	r11,	r12,	r0
$0BB0_27:
	bneid	r11,	$0BB0_99
	NOP
	ORI	r9,	r0,	0
	ADDI	r11,	r0,	1
	FPLT	r9,	r6,	r9
	bneid	r9,	$0BB0_30
	NOP
	ADDI	r11,	r0,	0
$0BB0_30:
	bneid	r11,	$0BB0_99
	NOP
	LWI	r9,	r19,	156576
	FPRSUB	r5,	r9,	r5
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	156548
	FPDIV	r5,	r5,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r5,	r8
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_33
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_33:
	bneid	r20,	$0BB0_35
	ADD	r9,	r8,	r0
	ADD	r9,	r5,	r0
$0BB0_35:
	bneid	r20,	$0BB0_37
	NOP
	ADD	r5,	r8,	r0
$0BB0_37:
	FPGT	r8,	r9,	r10
	FPLT	r20,	r5,	r6
	bneid	r8,	$0BB0_39
	ADD	r21,	r11,	r0
	ADD	r21,	r12,	r0
$0BB0_39:
	bneid	r20,	$0BB0_41
	ADD	r8,	r11,	r0
	ADD	r8,	r12,	r0
$0BB0_41:
	bneid	r21,	$0BB0_43
	NOP
	ADD	r9,	r10,	r0
$0BB0_43:
	bneid	r8,	$0BB0_45
	NOP
	ADD	r5,	r6,	r0
$0BB0_45:
	FPGT	r6,	r9,	r5
	bneid	r6,	$0BB0_47
	NOP
	ADD	r11,	r12,	r0
$0BB0_47:
	bneid	r11,	$0BB0_99
	NOP
	ORI	r6,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r6,	r5,	r6
	bneid	r6,	$0BB0_50
	NOP
	ADDI	r8,	r0,	0
$0BB0_50:
	bneid	r8,	$0BB0_99
	NOP
	LWI	r6,	r19,	156580
	FPRSUB	r3,	r6,	r3
	FPRSUB	r6,	r6,	r7
	LWI	r7,	r19,	156544
	FPDIV	r3,	r3,	r7
	FPDIV	r6,	r6,	r7
	FPGT	r7,	r3,	r6
	ADDI	r8,	r0,	1
	ADDI	r10,	r0,	0
	bneid	r7,	$0BB0_53
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_53:
	bneid	r11,	$0BB0_55
	ADD	r7,	r6,	r0
	ADD	r7,	r3,	r0
$0BB0_55:
	bneid	r11,	$0BB0_57
	NOP
	ADD	r3,	r6,	r0
$0BB0_57:
	FPGT	r6,	r7,	r9
	FPLT	r11,	r3,	r5
	bneid	r6,	$0BB0_59
	ADD	r12,	r8,	r0
	ADD	r12,	r10,	r0
$0BB0_59:
	bneid	r11,	$0BB0_61
	ADD	r6,	r8,	r0
	ADD	r6,	r10,	r0
$0BB0_61:
	bneid	r6,	$0BB0_63
	NOP
	ADD	r3,	r5,	r0
$0BB0_63:
	bneid	r12,	$0BB0_65
	NOP
	ADD	r7,	r9,	r0
$0BB0_65:
	FPGT	r5,	r7,	r3
	bneid	r5,	$0BB0_67
	NOP
	ADD	r8,	r10,	r0
$0BB0_67:
	bneid	r8,	$0BB0_99
	NOP
	ORI	r5,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r3,	r3,	r5
	bneid	r3,	$0BB0_70
	NOP
	ADDI	r6,	r0,	0
$0BB0_70:
	bneid	r6,	$0BB0_99
	NOP
	LOAD	r3,	r4,	7
	LOAD	r4,	r4,	6
	SWI	r4,	r19,	156556
	ADD	r5,	r0,	r0
	CMP	r4,	r5,	r4
	bltid	r4,	$0BB0_103
	NOP
	ADD	r4,	r0,	r0
	LWI	r5,	r19,	156556
	CMP	r4,	r4,	r5
	bleid	r4,	$0BB0_99
	NOP
$0BB0_73:
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
	SWI	r7,	r19,	156592
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r19,	156548
	FPMUL	r21,	r20,	r7
	LWI	r22,	r19,	156544
	FPMUL	r23,	r8,	r22
	FPRSUB	r6,	r12,	r6
	LOAD	r24,	r3,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r19,	156552
	FPMUL	r25,	r23,	r7
	FPRSUB	r4,	r10,	r4
	FPRSUB	r5,	r11,	r5
	LWI	r26,	r19,	156572
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r6
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r3,	9
	LWI	r28,	r19,	156576
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
	LWI	r31,	r19,	156580
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
	bneid	r23,	$0BB0_75
	NOP
	ADDI	r21,	r0,	0
$0BB0_75:
	bneid	r21,	$0BB0_98
	NOP
	ORI	r7,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r7,	r20,	r7
	bneid	r7,	$0BB0_78
	NOP
	ADDI	r21,	r0,	0
$0BB0_78:
	bneid	r21,	$0BB0_98
	NOP
	FPMUL	r7,	r11,	r4
	FPMUL	r21,	r5,	r10
	FPRSUB	r7,	r21,	r7
	FPMUL	r10,	r6,	r10
	FPMUL	r4,	r12,	r4
	FPRSUB	r4,	r4,	r10
	FPMUL	r5,	r5,	r12
	FPMUL	r6,	r6,	r11
	LWI	r10,	r19,	156552
	FPMUL	r10,	r7,	r10
	ORI	r11,	r0,	0
	FPRSUB	r5,	r6,	r5
	LWI	r6,	r19,	156548
	FPMUL	r6,	r4,	r6
	FPADD	r10,	r10,	r11
	LWI	r12,	r19,	156544
	FPMUL	r12,	r5,	r12
	FPADD	r6,	r6,	r10
	FPADD	r6,	r12,	r6
	FPMUL	r6,	r6,	r22
	ADDI	r10,	r0,	1
	FPLT	r11,	r6,	r11
	bneid	r11,	$0BB0_81
	NOP
	ADDI	r10,	r0,	0
$0BB0_81:
	bneid	r10,	$0BB0_98
	NOP
	FPADD	r6,	r6,	r20
	ORI	r10,	r0,	1065353216
	ADDI	r11,	r0,	1
	FPGT	r6,	r6,	r10
	bneid	r6,	$0BB0_84
	NOP
	ADDI	r11,	r0,	0
$0BB0_84:
	bneid	r11,	$0BB0_98
	NOP
	FPMUL	r6,	r7,	r9
	ORI	r7,	r0,	0
	FPMUL	r4,	r4,	r8
	FPADD	r6,	r6,	r7
	LWI	r8,	r19,	156592
	FPMUL	r5,	r5,	r8
	FPADD	r4,	r4,	r6
	FPADD	r4,	r5,	r4
	FPMUL	r4,	r4,	r22
	FPUN	r5,	r4,	r7
	FPLE	r6,	r4,	r7
	BITOR	r5,	r5,	r6
	bneid	r5,	$0BB0_87
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_87:
	bneid	r7,	$0BB0_98
	NOP
	ORI	r5,	r0,	981668463
	ADDI	r6,	r0,	1
	FPLT	r5,	r4,	r5
	bneid	r5,	$0BB0_90
	NOP
	ADDI	r6,	r0,	0
$0BB0_90:
	bneid	r6,	$0BB0_98
	NOP
	ORI	r5,	r0,	1343554297
	ADDI	r6,	r0,	1
	FPEQ	r5,	r4,	r5
	bneid	r5,	$0BB0_93
	NOP
	ADDI	r6,	r0,	0
$0BB0_93:
	bneid	r6,	$0BB0_98
	NOP
	LWI	r5,	r19,	156560
	SWI	r5,	r19,	156468
	LWI	r5,	r19,	156468
	FPUN	r6,	r5,	r4
	FPLE	r5,	r5,	r4
	BITOR	r5,	r6,	r5
	bneid	r5,	$0BB0_96
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_96:
	bneid	r7,	$0BB0_98
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
	SWI	r22,	r19,	156600
	ADD	r22,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r22,	r22,	9
	ADD	r21,	r22,	r21
	LOAD	r22,	r21,	6
	LOAD	r23,	r21,	5
	LOAD	r21,	r21,	4
	SWI	r22,	r19,	156512
	SWI	r23,	r19,	156516
	SWI	r21,	r19,	156520
	SWI	r11,	r19,	156500
	SWI	r12,	r19,	156504
	SWI	r20,	r19,	156508
	SWI	r8,	r19,	156488
	SWI	r9,	r19,	156492
	SWI	r10,	r19,	156496
	SWI	r5,	r19,	156476
	SWI	r6,	r19,	156480
	SWI	r7,	r19,	156484
	SWI	r4,	r19,	156472
	ADDI	r4,	r0,	1060320051
	SWI	r4,	r19,	156596
	ADDI	r4,	r0,	1050253722
	SWI	r4,	r19,	156604
	LWI	r4,	r19,	156472
	SWI	r4,	r19,	156560
$0BB0_98:
	LWI	r4,	r19,	156556
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	156556
	ADDI	r3,	r3,	11
	ADD	r5,	r0,	r0
	CMP	r4,	r5,	r4
	bneid	r4,	$0BB0_73
	NOP
$0BB0_99:
	ADD	r3,	r0,	r0
	LWI	r4,	r19,	156540
	CMP	r3,	r3,	r4
	bltid	r3,	$0BB0_106
	NOP
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r4,	r19,	156540
	beqid	r3,	$0BB0_102
	ADDI	r4,	r4,	0
$0BB0_101:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_101
	ADDK	r4,	r4,	r4
$0BB0_102:
	ADDI	r3,	r19,	84
	LW	r3,	r3,	r4
	LWI	r4,	r19,	156540
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	156540
	brid	$0BB0_9
	NOP
$0BB0_103:
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r5,	r19,	156540
	beqid	r4,	$0BB0_105
	ADDI	r5,	r5,	0
$0BB0_104:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_104
	ADDK	r5,	r5,	r5
$0BB0_105:
	ADDI	r4,	r19,	84
	LWI	r6,	r19,	156540
	ADDI	r6,	r6,	1
	SWI	r6,	r19,	156540
	ADDI	r6,	r3,	1
	ADD	r4,	r4,	r5
	brid	$0BB0_9
	SWI	r6,	r4,	4
$0BB0_106:
	LWI	r3,	r19,	156560
	SWI	r3,	r19,	156524
	LWI	r3,	r19,	156524
	ORI	r4,	r0,	1343554297
	FPUN	r5,	r3,	r4
	FPGE	r4,	r3,	r4
	BITOR	r4,	r5,	r4
	bneid	r4,	$0BB0_108
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_108:
	bneid	r6,	$0BB0_129
	NOP
	ADDI	r4,	r0,	2
	ANDI	r5,	r4,	31
	LWI	r6,	r19,	156612
	beqid	r5,	$0BB0_111
	ADDI	r6,	r6,	0
$0BB0_110:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_110
	ADDK	r6,	r6,	r6
$0BB0_111:
	ANDI	r5,	r4,	31
	LWI	r7,	r19,	156612
	beqid	r5,	$0BB0_113
	ADDI	r7,	r7,	0
$0BB0_112:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_112
	ADDK	r7,	r7,	r7
$0BB0_113:
	ANDI	r5,	r4,	31
	LWI	r8,	r19,	156612
	beqid	r5,	$0BB0_115
	ADDI	r8,	r8,	0
$0BB0_114:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_114
	ADDK	r8,	r8,	r8
$0BB0_115:
	LWI	r5,	r19,	156552
	FPMUL	r5,	r5,	r3
	ADDI	r9,	r19,	104224
	SW	r5,	r9,	r7
	ANDI	r7,	r4,	31
	LWI	r10,	r19,	156612
	beqid	r7,	$0BB0_117
	ADDI	r10,	r10,	0
$0BB0_116:
	ADDI	r7,	r7,	-1
	bneid	r7,	$0BB0_116
	ADDK	r10,	r10,	r10
$0BB0_117:
	LWI	r7,	r19,	156548
	FPMUL	r7,	r7,	r3
	ADD	r6,	r9,	r6
	SWI	r7,	r6,	4
	ANDI	r6,	r4,	31
	LWI	r11,	r19,	156612
	beqid	r6,	$0BB0_119
	ADDI	r11,	r11,	0
$0BB0_118:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB0_118
	ADDK	r11,	r11,	r11
$0BB0_119:
	LWI	r6,	r19,	156544
	FPMUL	r3,	r6,	r3
	ADD	r6,	r9,	r8
	SWI	r3,	r6,	8
	ANDI	r6,	r4,	31
	LWI	r8,	r19,	156612
	beqid	r6,	$0BB0_121
	ADDI	r8,	r8,	0
$0BB0_120:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB0_120
	ADDK	r8,	r8,	r8
$0BB0_121:
	ADD	r6,	r9,	r10
	SWI	r0,	r6,	12
	ANDI	r6,	r4,	31
	LWI	r10,	r19,	156612
	beqid	r6,	$0BB0_123
	ADDI	r10,	r10,	0
$0BB0_122:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB0_122
	ADDK	r10,	r10,	r10
$0BB0_123:
	ADD	r6,	r9,	r11
	SWI	r0,	r6,	16
	ANDI	r6,	r4,	31
	LWI	r11,	r19,	156612
	beqid	r6,	$0BB0_125
	ADDI	r11,	r11,	0
$0BB0_124:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB0_124
	ADDK	r11,	r11,	r11
$0BB0_125:
	ADD	r6,	r9,	r8
	SWI	r0,	r6,	20
	SWI	r5,	r19,	156528
	SWI	r7,	r19,	156532
	SWI	r3,	r19,	156536
	ANDI	r3,	r4,	31
	LWI	r4,	r19,	156612
	beqid	r3,	$0BB0_127
	ADDI	r4,	r4,	0
$0BB0_126:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_126
	ADDK	r4,	r4,	r4
$0BB0_127:
	ADD	r3,	r9,	r10
	ADD	r5,	r9,	r11
	LWI	r6,	r19,	156596
	SWI	r6,	r3,	24
	LWI	r3,	r19,	156528
	SWI	r3,	r19,	156616
	LWI	r3,	r19,	156532
	SWI	r3,	r19,	156620
	LWI	r3,	r19,	156536
	SWI	r3,	r19,	156624
	LWI	r3,	r19,	156664
	ADDI	r3,	r3,	1
	SWI	r3,	r19,	156664
	ADD	r3,	r9,	r4
	SWI	r6,	r5,	28
	SWI	r6,	r3,	32
$0BB0_128:
	LWI	r3,	r19,	156616
	SWI	r3,	r19,	156236
	LWI	r3,	r19,	156620
	SWI	r3,	r19,	156240
	LWI	r3,	r19,	156624
	SWI	r3,	r19,	156244
	LWI	r3,	r19,	156664
	MULI	r3,	r3,	13
	SWI	r3,	r19,	156612
	LWI	r3,	r19,	156236
	SWI	r3,	r19,	156572
	LWI	r3,	r19,	156240
	SWI	r3,	r19,	156576
	LWI	r3,	r19,	156244
	SWI	r3,	r19,	156580
$0BB0_129:
	LWI	r3,	r19,	156608
	ADDI	r4,	r0,	3
	ADDI	r5,	r3,	1
	SWI	r5,	r19,	156608
	CMP	r3,	r4,	r3
	bltid	r3,	$0BB0_5
	NOP
	ADD	r3,	r0,	r0
	SWI	r3,	r19,	156608
	ADDI	r3,	r0,	1000
	LWI	r4,	r19,	156664
	CMP	r3,	r3,	r4
	bltid	r3,	$0BB0_128
	NOP
	ADDI	r1,	r1,	-20
	ADDI	r6,	r19,	104224
	ADD	r9,	r0,	r0
	LWI	r7,	r19,	156676
	brlid	r15,	_ZN9PhotonMap8generateEP6PhotonS1_ii
	ADD	r8,	r4,	r0
	ADDI	r1,	r1,	20
	LWI	r6,	r19,	156664
	brlid	r15,	__floatsidf
	ADDI	r1,	r1,	-8
	ADDI	r1,	r1,	8
	LWI	r20,	r19,	156752
	FPCONV	r5,	r20
	SWI	r5,	r19,	156756
	LWI	r21,	r19,	156628
	FPCONV	r5,	r21
	SWI	r5,	r19,	156760
	ORI	r22,	r0,	-1073741824
	ADDI	r1,	r1,	-20
	ADDI	r8,	r0,	1073258829
	ADDI	r9,	r0,	1242932435
	ADD	r6,	r3,	r0
	brlid	r15,	__muldf3
	ADD	r7,	r4,	r0
	ADDI	r1,	r1,	20
	MUL	r5,	r21,	r20
	SWI	r5,	r19,	156776
	ATOMIC_INC	r6,	0
	CMP	r5,	r6,	r5
	bleid	r5,	$0BB0_272
	NOP
	LWI	r5,	r19,	156756
	FPDIV	r5,	r5,	r22
	SWI	r5,	r19,	156768
	LWI	r5,	r19,	156760
	FPDIV	r5,	r5,	r22
	SWI	r5,	r19,	156772
	SWI	r3,	r19,	156736
	SWI	r4,	r19,	156740
	ADDI	r3,	r19,	216
	LWI	r4,	r19,	156584
	SWI	r4,	r19,	156256
	LWI	r4,	r19,	156568
	SWI	r4,	r19,	156252
	LWI	r4,	r19,	156564
	SWI	r4,	r19,	156248
	ADD	r4,	r0,	r0
	SWI	r4,	r19,	156724
	LWI	r4,	r19,	156256
	SWI	r4,	r19,	156728
	ADDI	r3,	r3,	20
	SWI	r3,	r19,	156732
$0BB0_133:
	LWI	r3,	r19,	156752
	DIV	r4,	r3,	r6
	MUL	r3,	r4,	r3
	SWI	r3,	r19,	156744
	RSUB	r6,	r3,	r6
	SWI	r6,	r19,	156748
	FPCONV	r6,	r6
	FPCONV	r3,	r4
	LWI	r4,	r19,	156768
	FPADD	r6,	r6,	r4
	ORI	r4,	r0,	1056964608
	LWI	r5,	r19,	156772
	FPADD	r3,	r3,	r5
	FPADD	r6,	r6,	r4
	FPADD	r3,	r3,	r4
	FPADD	r6,	r6,	r6
	FPADD	r3,	r3,	r3
	LWI	r4,	r19,	156756
	FPDIV	r6,	r6,	r4
	SWI	r6,	r19,	156668
	LWI	r6,	r19,	156760
	FPDIV	r6,	r3,	r6
	SWI	r6,	r19,	156672
	ADDI	r6,	r0,	5
	SWI	r6,	r19,	156644
$0BB0_134:
	RAND	r6
	ORI	r3,	r0,	-1090519040
	RAND	r4
	FPADD	r4,	r4,	r3
	FPADD	r6,	r6,	r3
	FPADD	r3,	r4,	r4
	FPADD	r6,	r6,	r6
	LWI	r4,	r19,	156684
	FPMUL	r3,	r3,	r4
	LWI	r4,	r19,	156680
	FPMUL	r6,	r6,	r4
	LWI	r4,	r19,	156672
	FPADD	r3,	r4,	r3
	LWI	r4,	r19,	156668
	FPADD	r6,	r4,	r6
	LWI	r4,	r19,	156716
	FPMUL	r4,	r4,	r3
	LWI	r5,	r19,	156704
	FPMUL	r5,	r5,	r6
	LWI	r7,	r19,	156712
	FPMUL	r7,	r7,	r3
	LWI	r8,	r19,	156700
	FPMUL	r8,	r8,	r6
	LWI	r9,	r19,	156720
	FPMUL	r3,	r9,	r3
	LWI	r9,	r19,	156708
	FPMUL	r6,	r9,	r6
	FPADD	r5,	r4,	r5
	FPADD	r8,	r7,	r8
	LWI	r9,	r19,	156692
	FPADD	r5,	r5,	r9
	LWI	r9,	r19,	156688
	FPADD	r8,	r8,	r9
	FPADD	r6,	r6,	r3
	LWI	r9,	r19,	156696
	FPADD	r6,	r9,	r6
	FPMUL	r9,	r8,	r8
	FPMUL	r10,	r5,	r5
	FPADD	r9,	r9,	r10
	FPMUL	r10,	r6,	r6
	FPADD	r9,	r9,	r10
	FPINVSQRT	r9,	r9
	ORI	r10,	r0,	1065353216
	FPDIV	r9,	r10,	r9
	FPDIV	r6,	r6,	r9
	SWI	r6,	r19,	156280
	FPDIV	r6,	r5,	r9
	SWI	r6,	r19,	156552
	FPDIV	r5,	r8,	r9
	SWI	r5,	r19,	156548
	LWI	r8,	r19,	156280
	LWI	r9,	r19,	156724
	BITOR	r8,	r9,	r8
	SWI	r8,	r19,	156660
	SWI	r6,	r19,	156276
	SWI	r5,	r19,	156272
	SWI	r8,	r19,	156284
	SWI	r3,	r19,	156260
	SWI	r4,	r19,	156264
	SWI	r7,	r19,	156268
	ADD	r6,	r0,	r0
	SWI	r6,	r19,	156592
	LWI	r3,	r19,	156284
	SWI	r3,	r19,	156556
	ADDI	r3,	r0,	-1
	SWI	r3,	r19,	156540
	ADDI	r3,	r0,	1343554297
	SWI	r3,	r19,	156560
	SWI	r6,	r19,	156608
	SWI	r6,	r19,	156612
	SWI	r6,	r19,	156576
	SWI	r6,	r19,	156580
	SWI	r6,	r19,	156596
	SWI	r6,	r19,	156604
	SWI	r6,	r19,	156616
	SWI	r6,	r19,	156620
	SWI	r6,	r19,	156600
	SWI	r6,	r19,	156624
	SWI	r6,	r19,	156628
$0BB0_135:
	ADDI	r3,	r0,	3
	ANDI	r3,	r3,	31
	beqid	r3,	$0BB0_137
	ADDI	r6,	r6,	0
$0BB0_136:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_136
	ADDK	r6,	r6,	r6
$0BB0_137:
	LWI	r3,	r19,	156588
	ADD	r3,	r6,	r3
	LOAD	r6,	r3,	2
	LOAD	r4,	r3,	1
	LOAD	r5,	r3,	0
	LOAD	r7,	r3,	5
	LOAD	r8,	r3,	4
	LOAD	r9,	r3,	3
	LWI	r10,	r19,	156564
	FPRSUB	r5,	r10,	r5
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r19,	156548
	FPDIV	r5,	r5,	r10
	FPDIV	r9,	r9,	r10
	FPGT	r10,	r5,	r9
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r10,	$0BB0_139
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_139:
	bneid	r20,	$0BB0_141
	ADD	r10,	r9,	r0
	ADD	r10,	r5,	r0
$0BB0_141:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_143
	NOP
	ADD	r5,	r9,	r0
$0BB0_143:
	ORI	r9,	r0,	1343554297
	FPGT	r20,	r10,	r21
	FPLT	r22,	r5,	r9
	bneid	r20,	$0BB0_145
	ADD	r23,	r11,	r0
	ADD	r23,	r12,	r0
$0BB0_145:
	bneid	r22,	$0BB0_147
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_147:
	bneid	r23,	$0BB0_149
	NOP
	ADD	r10,	r21,	r0
$0BB0_149:
	bneid	r20,	$0BB0_151
	NOP
	ADD	r5,	r9,	r0
$0BB0_151:
	FPGT	r9,	r10,	r5
	bneid	r9,	$0BB0_153
	NOP
	ADD	r11,	r12,	r0
$0BB0_153:
	bneid	r11,	$0BB0_225
	NOP
	ORI	r9,	r0,	0
	ADDI	r11,	r0,	1
	FPLT	r9,	r5,	r9
	bneid	r9,	$0BB0_156
	NOP
	ADDI	r11,	r0,	0
$0BB0_156:
	bneid	r11,	$0BB0_225
	NOP
	LWI	r9,	r19,	156568
	FPRSUB	r4,	r9,	r4
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	156552
	FPDIV	r4,	r4,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r4,	r8
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_159
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_159:
	bneid	r20,	$0BB0_161
	ADD	r9,	r8,	r0
	ADD	r9,	r4,	r0
$0BB0_161:
	bneid	r20,	$0BB0_163
	NOP
	ADD	r4,	r8,	r0
$0BB0_163:
	FPGT	r8,	r9,	r10
	FPLT	r20,	r4,	r5
	bneid	r8,	$0BB0_165
	ADD	r21,	r11,	r0
	ADD	r21,	r12,	r0
$0BB0_165:
	bneid	r20,	$0BB0_167
	ADD	r8,	r11,	r0
	ADD	r8,	r12,	r0
$0BB0_167:
	bneid	r21,	$0BB0_169
	NOP
	ADD	r9,	r10,	r0
$0BB0_169:
	bneid	r8,	$0BB0_171
	NOP
	ADD	r4,	r5,	r0
$0BB0_171:
	FPGT	r5,	r9,	r4
	bneid	r5,	$0BB0_173
	NOP
	ADD	r11,	r12,	r0
$0BB0_173:
	bneid	r11,	$0BB0_225
	NOP
	ORI	r5,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r5,	r4,	r5
	bneid	r5,	$0BB0_176
	NOP
	ADDI	r8,	r0,	0
$0BB0_176:
	bneid	r8,	$0BB0_225
	NOP
	LWI	r5,	r19,	156584
	FPRSUB	r6,	r5,	r6
	FPRSUB	r5,	r5,	r7
	LWI	r7,	r19,	156556
	FPDIV	r6,	r6,	r7
	FPDIV	r5,	r5,	r7
	FPGT	r7,	r6,	r5
	ADDI	r8,	r0,	1
	ADDI	r10,	r0,	0
	bneid	r7,	$0BB0_179
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_179:
	bneid	r11,	$0BB0_181
	ADD	r7,	r5,	r0
	ADD	r7,	r6,	r0
$0BB0_181:
	bneid	r11,	$0BB0_183
	NOP
	ADD	r6,	r5,	r0
$0BB0_183:
	FPGT	r5,	r7,	r9
	FPLT	r11,	r6,	r4
	bneid	r5,	$0BB0_185
	ADD	r12,	r8,	r0
	ADD	r12,	r10,	r0
$0BB0_185:
	bneid	r11,	$0BB0_187
	ADD	r5,	r8,	r0
	ADD	r5,	r10,	r0
$0BB0_187:
	bneid	r5,	$0BB0_189
	NOP
	ADD	r6,	r4,	r0
$0BB0_189:
	bneid	r12,	$0BB0_191
	NOP
	ADD	r7,	r9,	r0
$0BB0_191:
	FPGT	r4,	r7,	r6
	bneid	r4,	$0BB0_193
	NOP
	ADD	r8,	r10,	r0
$0BB0_193:
	bneid	r8,	$0BB0_225
	NOP
	ORI	r4,	r0,	0
	ADDI	r5,	r0,	1
	FPLT	r6,	r6,	r4
	bneid	r6,	$0BB0_196
	NOP
	ADDI	r5,	r0,	0
$0BB0_196:
	bneid	r5,	$0BB0_225
	NOP
	LOAD	r6,	r3,	7
	LOAD	r3,	r3,	6
	SWI	r3,	r19,	156544
	ADD	r4,	r0,	r0
	CMP	r3,	r4,	r3
	bltid	r3,	$0BB0_229
	NOP
	ADD	r3,	r0,	r0
	LWI	r4,	r19,	156544
	CMP	r3,	r3,	r4
	bleid	r3,	$0BB0_225
	NOP
$0BB0_199:
	LOAD	r3,	r6,	2
	LOAD	r4,	r6,	1
	LOAD	r5,	r6,	0
	LOAD	r7,	r6,	5
	LOAD	r8,	r6,	4
	LOAD	r9,	r6,	3
	LOAD	r10,	r6,	8
	LOAD	r11,	r6,	7
	LOAD	r12,	r6,	6
	FPRSUB	r7,	r10,	r7
	SWI	r7,	r19,	156572
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r19,	156552
	FPMUL	r21,	r20,	r7
	LWI	r22,	r19,	156556
	FPMUL	r23,	r8,	r22
	FPRSUB	r5,	r12,	r5
	LOAD	r24,	r6,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r19,	156548
	FPMUL	r25,	r23,	r7
	FPRSUB	r3,	r10,	r3
	FPRSUB	r4,	r11,	r4
	LWI	r26,	r19,	156564
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r5
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r6,	9
	LWI	r28,	r19,	156568
	FPRSUB	r11,	r11,	r28
	FPMUL	r21,	r21,	r12
	FPRSUB	r20,	r20,	r23
	FPMUL	r23,	r22,	r4
	FPADD	r25,	r25,	r26
	FPMUL	r28,	r4,	r7
	FPMUL	r29,	r8,	r3
	FPMUL	r30,	r9,	r3
	FPMUL	r7,	r5,	r7
	MULI	r24,	r24,	25
	LOAD	r27,	r27,	9
	LWI	r31,	r19,	156584
	FPRSUB	r10,	r10,	r31
	FPRSUB	r28,	r29,	r28
	FPRSUB	r7,	r7,	r30
	ADD	r24,	r27,	r24
	FPMUL	r22,	r22,	r11
	FPADD	r21,	r21,	r26
	FPMUL	r27,	r20,	r3
	FPADD	r23,	r23,	r25
	FPMUL	r25,	r8,	r5
	FPMUL	r29,	r9,	r4
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
	bneid	r23,	$0BB0_201
	NOP
	ADDI	r21,	r0,	0
$0BB0_201:
	bneid	r21,	$0BB0_224
	NOP
	ORI	r7,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r7,	r20,	r7
	bneid	r7,	$0BB0_204
	NOP
	ADDI	r21,	r0,	0
$0BB0_204:
	bneid	r21,	$0BB0_224
	NOP
	FPMUL	r7,	r11,	r3
	FPMUL	r21,	r4,	r10
	FPRSUB	r7,	r21,	r7
	FPMUL	r10,	r5,	r10
	FPMUL	r3,	r12,	r3
	FPRSUB	r3,	r3,	r10
	FPMUL	r4,	r4,	r12
	FPMUL	r5,	r5,	r11
	LWI	r10,	r19,	156548
	FPMUL	r10,	r7,	r10
	ORI	r11,	r0,	0
	FPRSUB	r4,	r5,	r4
	LWI	r5,	r19,	156552
	FPMUL	r5,	r3,	r5
	FPADD	r10,	r10,	r11
	LWI	r12,	r19,	156556
	FPMUL	r12,	r4,	r12
	FPADD	r5,	r5,	r10
	FPADD	r5,	r12,	r5
	FPMUL	r5,	r5,	r22
	ADDI	r10,	r0,	1
	FPLT	r11,	r5,	r11
	bneid	r11,	$0BB0_207
	NOP
	ADDI	r10,	r0,	0
$0BB0_207:
	bneid	r10,	$0BB0_224
	NOP
	FPADD	r5,	r5,	r20
	ORI	r10,	r0,	1065353216
	ADDI	r11,	r0,	1
	FPGT	r5,	r5,	r10
	bneid	r5,	$0BB0_210
	NOP
	ADDI	r11,	r0,	0
$0BB0_210:
	bneid	r11,	$0BB0_224
	NOP
	FPMUL	r5,	r7,	r9
	ORI	r7,	r0,	0
	FPMUL	r3,	r3,	r8
	FPADD	r5,	r5,	r7
	LWI	r8,	r19,	156572
	FPMUL	r4,	r4,	r8
	FPADD	r3,	r3,	r5
	FPADD	r3,	r4,	r3
	FPMUL	r3,	r3,	r22
	FPUN	r4,	r3,	r7
	FPLE	r5,	r3,	r7
	BITOR	r4,	r4,	r5
	bneid	r4,	$0BB0_213
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_213:
	bneid	r7,	$0BB0_224
	NOP
	ORI	r4,	r0,	981668463
	ADDI	r5,	r0,	1
	FPLT	r4,	r3,	r4
	bneid	r4,	$0BB0_216
	NOP
	ADDI	r5,	r0,	0
$0BB0_216:
	bneid	r5,	$0BB0_224
	NOP
	ORI	r4,	r0,	1343554297
	ADDI	r5,	r0,	1
	FPEQ	r4,	r3,	r4
	bneid	r4,	$0BB0_219
	NOP
	ADDI	r5,	r0,	0
$0BB0_219:
	bneid	r5,	$0BB0_224
	NOP
	LWI	r4,	r19,	156560
	SWI	r4,	r19,	156288
	LWI	r4,	r19,	156288
	FPUN	r5,	r4,	r3
	FPLE	r4,	r4,	r3
	BITOR	r4,	r5,	r4
	bneid	r4,	$0BB0_222
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_222:
	bneid	r7,	$0BB0_224
	NOP
	LOAD	r4,	r6,	2
	LOAD	r5,	r6,	1
	LOAD	r7,	r6,	0
	LOAD	r8,	r6,	5
	LOAD	r9,	r6,	4
	LOAD	r10,	r6,	3
	LOAD	r11,	r6,	8
	LOAD	r12,	r6,	7
	LOAD	r20,	r6,	6
	LOAD	r21,	r6,	10
	LOAD	r22,	r6,	9
	SWI	r22,	r19,	156632
	ADD	r22,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r22,	r22,	9
	ADD	r21,	r22,	r21
	LOAD	r22,	r21,	6
	LOAD	r23,	r21,	5
	LOAD	r21,	r21,	4
	SWI	r22,	r19,	156332
	SWI	r23,	r19,	156336
	SWI	r21,	r19,	156340
	SWI	r11,	r19,	156320
	SWI	r12,	r19,	156324
	SWI	r20,	r19,	156328
	SWI	r8,	r19,	156308
	SWI	r9,	r19,	156312
	SWI	r10,	r19,	156316
	SWI	r4,	r19,	156296
	SWI	r5,	r19,	156300
	SWI	r7,	r19,	156304
	SWI	r3,	r19,	156292
	ADDI	r3,	r0,	1060320051
	SWI	r3,	r19,	156636
	ADDI	r3,	r0,	1050253722
	SWI	r3,	r19,	156640
	LWI	r3,	r19,	156332
	SWI	r3,	r19,	156592
	LWI	r3,	r19,	156336
	SWI	r3,	r19,	156608
	LWI	r3,	r19,	156340
	SWI	r3,	r19,	156612
	LWI	r20,	r19,	156320
	SWI	r20,	r19,	156576
	LWI	r20,	r19,	156324
	SWI	r20,	r19,	156580
	LWI	r3,	r19,	156328
	SWI	r3,	r19,	156596
	LWI	r3,	r19,	156308
	SWI	r3,	r19,	156604
	LWI	r3,	r19,	156312
	SWI	r3,	r19,	156616
	LWI	r3,	r19,	156316
	SWI	r3,	r19,	156620
	LWI	r3,	r19,	156296
	SWI	r3,	r19,	156600
	LWI	r3,	r19,	156300
	SWI	r3,	r19,	156624
	LWI	r3,	r19,	156304
	SWI	r3,	r19,	156628
	LWI	r3,	r19,	156292
	SWI	r3,	r19,	156560
$0BB0_224:
	LWI	r3,	r19,	156544
	ADDI	r3,	r3,	-1
	SWI	r3,	r19,	156544
	ADDI	r6,	r6,	11
	ADD	r4,	r0,	r0
	CMP	r3,	r4,	r3
	bneid	r3,	$0BB0_199
	NOP
$0BB0_225:
	ADD	r6,	r0,	r0
	LWI	r3,	r19,	156540
	CMP	r6,	r6,	r3
	bltid	r6,	$0BB0_232
	NOP
	ADDI	r6,	r0,	2
	ANDI	r6,	r6,	31
	LWI	r3,	r19,	156540
	beqid	r6,	$0BB0_228
	ADDI	r3,	r3,	0
$0BB0_227:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB0_227
	ADDK	r3,	r3,	r3
$0BB0_228:
	ADDI	r6,	r19,	84
	LW	r6,	r6,	r3
	LWI	r3,	r19,	156540
	ADDI	r3,	r3,	-1
	SWI	r3,	r19,	156540
	brid	$0BB0_135
	NOP
$0BB0_229:
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r4,	r19,	156540
	beqid	r3,	$0BB0_231
	ADDI	r4,	r4,	0
$0BB0_230:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_230
	ADDK	r4,	r4,	r4
$0BB0_231:
	ADDI	r3,	r19,	84
	LWI	r5,	r19,	156540
	ADDI	r5,	r5,	1
	SWI	r5,	r19,	156540
	ADDI	r5,	r6,	1
	ADD	r3,	r3,	r4
	brid	$0BB0_135
	SWI	r5,	r3,	4
$0BB0_232:
	LWI	r6,	r19,	156560
	SWI	r6,	r19,	156368
	LWI	r6,	r19,	156368
	ORI	r3,	r0,	1343554297
	LWI	r4,	r19,	156628
	SWI	r4,	r19,	156364
	LWI	r4,	r19,	156624
	SWI	r4,	r19,	156360
	LWI	r4,	r19,	156620
	SWI	r4,	r19,	156356
	LWI	r4,	r19,	156616
	SWI	r4,	r19,	156352
	LWI	r4,	r19,	156612
	SWI	r4,	r19,	156348
	LWI	r4,	r19,	156608
	SWI	r4,	r19,	156344
	LWI	r4,	r19,	156364
	LWI	r5,	r19,	156360
	LWI	r7,	r19,	156356
	LWI	r8,	r19,	156352
	LWI	r20,	r19,	156348
	LWI	r21,	r19,	156344
	ORI	r9,	r0,	1038469405
	ORI	r10,	r0,	1041583256
	ORI	r11,	r0,	1045059495
	FPUN	r12,	r6,	r3
	FPGE	r3,	r6,	r3
	BITOR	r3,	r12,	r3
	bneid	r3,	$0BB0_234
	ADDI	r22,	r0,	1
	ADDI	r22,	r0,	0
$0BB0_234:
	bneid	r22,	$0BB0_249
	NOP
	ADD	r9,	r0,	r0
	ADDI	r10,	r19,	216
	ADDI	r11,	r0,	1000
$0BB0_236:
	SWI	r0,	r10,	0
	SWI	r0,	r10,	4
	SWI	r0,	r10,	8
	SWI	r0,	r10,	12
	SWI	r0,	r10,	16
	SWI	r0,	r10,	20
	ADDI	r3,	r0,	1065353216
	SWI	r3,	r10,	24
	ADDI	r12,	r0,	-1
	ADDK	r11,	r11,	r12
	ADDKC	r9,	r9,	r12
	ADDI	r12,	r10,	52
	SWI	r3,	r10,	28
	ADD	r22,	r0,	r0
	BITOR	r23,	r11,	r9
	SWI	r3,	r10,	32
	CMP	r3,	r22,	r23
	bneid	r3,	$0BB0_236
	ADD	r10,	r12,	r0
	LWI	r3,	r19,	156600
	SWI	r3,	r19,	156416
	LWI	r3,	r19,	156604
	SWI	r3,	r19,	156408
	SWI	r3,	r19,	156412
	LWI	r9,	r19,	156576
	SWI	r9,	r19,	156400
	LWI	r9,	r19,	156580
	SWI	r9,	r19,	156404
	LWI	r3,	r19,	156596
	SWI	r3,	r19,	156420
	LWI	r9,	r19,	156416
	LWI	r10,	r19,	156408
	LWI	r11,	r19,	156412
	LWI	r3,	r19,	156400
	LWI	r12,	r19,	156404
	LWI	r22,	r19,	156420
	FPRSUB	r9,	r10,	r9
	FPRSUB	r10,	r12,	r8
	FPRSUB	r4,	r7,	r4
	FPRSUB	r11,	r3,	r11
	FPRSUB	r3,	r22,	r7
	FPRSUB	r5,	r8,	r5
	FPMUL	r7,	r5,	r11
	FPMUL	r8,	r10,	r9
	FPMUL	r9,	r3,	r9
	FPMUL	r11,	r4,	r11
	FPRSUB	r7,	r8,	r7
	FPRSUB	r9,	r11,	r9
	FPMUL	r10,	r10,	r4
	FPMUL	r11,	r3,	r5
	FPRSUB	r10,	r11,	r10
	FPMUL	r11,	r7,	r7
	FPMUL	r3,	r9,	r9
	FPADD	r11,	r11,	r3
	FPMUL	r3,	r10,	r10
	FPADD	r11,	r11,	r3
	SWI	r0,	r19,	52216
	LWI	r3,	r19,	156660
	SWI	r3,	r19,	156372
	FPINVSQRT	r11,	r11
	ORI	r3,	r0,	1065353216
	FPDIV	r11,	r3,	r11
	LWI	r3,	r19,	156372
	LWI	r4,	r19,	156552
	FPMUL	r4,	r4,	r6
	LWI	r5,	r19,	156548
	FPMUL	r5,	r5,	r6
	FPDIV	r22,	r9,	r11
	FPDIV	r23,	r7,	r11
	LWI	r9,	r19,	156568
	FPADD	r9,	r4,	r9
	LWI	r7,	r19,	156564
	FPADD	r7,	r5,	r7
	LWI	r8,	r19,	156728
	SWI	r8,	r19,	156384
	FPMUL	r3,	r3,	r6
	FPDIV	r6,	r10,	r11
	ADDI	r1,	r1,	-36
	ADDI	r10,	r19,	52216
	SWI	r9,	r19,	156396
	SWI	r7,	r19,	156392
	LWI	r9,	r19,	156384
	SWI	r3,	r19,	156388
	SWI	r4,	r19,	156380
	SWI	r5,	r19,	156376
	SWI	r6,	r19,	156432
	SWI	r22,	r19,	156428
	SWI	r23,	r19,	156424
	LWI	r6,	r19,	156676
	SWI	r6,	r19,	24
	LWI	r6,	r19,	156664
	SWI	r6,	r19,	28
	SWI	r10,	r19,	32
	ADDI	r24,	r19,	52224
	LWI	r25,	r19,	156432
	ADD	r26,	r0,	r0
	ADDI	r27,	r0,	1000
	LWI	r6,	r19,	156396
	LWI	r7,	r19,	156392
	FPADD	r8,	r9,	r3
	ADDI	r10,	r19,	216
	brlid	r15,	_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi
	ADD	r9,	r26,	r0
	ADDI	r1,	r1,	36
$0BB0_238:
	SWI	r0,	r24,	0
	SWI	r0,	r24,	4
	SWI	r0,	r24,	8
	SWI	r0,	r24,	12
	SWI	r0,	r24,	16
	SWI	r0,	r24,	20
	ADDI	r6,	r0,	1065353216
	SWI	r6,	r24,	24
	ADDI	r9,	r0,	-1
	ADDK	r27,	r27,	r9
	ADDKC	r26,	r26,	r9
	ADDI	r9,	r24,	52
	SWI	r6,	r24,	28
	ADD	r10,	r0,	r0
	BITOR	r11,	r27,	r26
	SWI	r6,	r24,	32
	CMP	r6,	r10,	r11
	bneid	r6,	$0BB0_238
	ADD	r24,	r9,	r0
	LWI	r6,	r19,	52216
	ORI	r9,	r0,	0
	ADD	r10,	r0,	r0
	CMP	r10,	r10,	r6
	ADD	r24,	r9,	r0
	beqid	r10,	$0BB0_248
	ADD	r26,	r9,	r0
	MULI	r9,	r6,	13
	ADDI	r10,	r0,	2
	SWI	r25,	r19,	156436
	ANDI	r10,	r10,	31
	beqid	r10,	$0BB0_242
	ADDI	r9,	r9,	0
$0BB0_241:
	ADDI	r10,	r10,	-1
	bneid	r10,	$0BB0_241
	ADDK	r9,	r9,	r9
$0BB0_242:
	LWI	r10,	r19,	156436
	LWI	r11,	r19,	156732
	ADD	r11,	r11,	r9
	ORI	r9,	r0,	0
	ADD	r3,	r0,	r0
	ADD	r24,	r9,	r0
	ADD	r26,	r9,	r0
$0BB0_243:
	LWI	r4,	r11,	-8
	LWI	r5,	r11,	-4
	FPMUL	r7,	r23,	r4
	ORI	r8,	r0,	0
	LWI	r12,	r11,	0
	FPRSUB	r7,	r7,	r8
	FPMUL	r25,	r22,	r5
	FPRSUB	r7,	r25,	r7
	FPMUL	r25,	r10,	r12
	FPRSUB	r7,	r25,	r7
	ADDI	r25,	r0,	1
	FPGT	r27,	r7,	r8
	bneid	r27,	$0BB0_245
	NOP
	ADDI	r25,	r0,	0
$0BB0_245:
	FPNEG	r12,	r12
	SWI	r5,	r19,	156444
	FPNEG	r4,	r4
	bneid	r25,	$0BB0_247
	LWI	r5,	r11,	4
	ADD	r7,	r8,	r0
$0BB0_247:
	LWI	r8,	r11,	8
	LWI	r25,	r11,	12
	SWI	r12,	r19,	156440
	SWI	r4,	r19,	156448
	FPMUL	r4,	r5,	r7
	FPMUL	r5,	r8,	r7
	FPMUL	r7,	r25,	r7
	ADDI	r8,	r0,	-1
	ADDK	r6,	r6,	r8
	ADDKC	r3,	r3,	r8
	FPADD	r26,	r26,	r4
	FPADD	r24,	r24,	r5
	FPADD	r9,	r9,	r7
	ADDI	r11,	r11,	-52
	ADD	r4,	r0,	r0
	BITOR	r5,	r6,	r3
	CMP	r4,	r4,	r5
	bneid	r4,	$0BB0_243
	NOP
$0BB0_248:
	LWI	r6,	r19,	156592
	SWI	r6,	r19,	156452
	LWI	r6,	r19,	156452
	ADDI	r1,	r1,	-8
	brlid	r15,	__extendsfdf2
	FPMUL	r6,	r9,	r6
	ADDI	r1,	r1,	8
	ADD	r22,	r3,	r0
	ADD	r23,	r4,	r0
	LWI	r6,	r19,	156656
	brlid	r15,	__extendsfdf2
	ADDI	r1,	r1,	-8
	ADDI	r1,	r1,	8
	ADD	r25,	r3,	r0
	ADD	r27,	r4,	r0
	ADDI	r1,	r1,	-8
	brlid	r15,	__extendsfdf2
	FPMUL	r6,	r24,	r21
	ADDI	r1,	r1,	8
	ADD	r21,	r3,	r0
	ADD	r24,	r4,	r0
	LWI	r6,	r19,	156652
	brlid	r15,	__extendsfdf2
	ADDI	r1,	r1,	-8
	ADDI	r1,	r1,	8
	ADD	r28,	r3,	r0
	ADD	r29,	r4,	r0
	ADDI	r1,	r1,	-8
	brlid	r15,	__extendsfdf2
	FPMUL	r6,	r26,	r20
	ADDI	r1,	r1,	8
	ADD	r20,	r3,	r0
	ADD	r26,	r4,	r0
	LWI	r6,	r19,	156648
	brlid	r15,	__extendsfdf2
	ADDI	r1,	r1,	-8
	ADDI	r1,	r1,	8
	ADD	r30,	r3,	r0
	ADD	r31,	r4,	r0
	ADDI	r1,	r1,	-20
	ADD	r6,	r22,	r0
	ADD	r7,	r23,	r0
	LWI	r22,	r19,	156736
	ADD	r8,	r22,	r0
	LWI	r23,	r19,	156740
	brlid	r15,	__divdf3
	ADD	r9,	r23,	r0
	ADDI	r1,	r1,	20
	ADDI	r1,	r1,	-20
	ADD	r6,	r25,	r0
	ADD	r7,	r27,	r0
	ADD	r8,	r3,	r0
	brlid	r15,	__adddf3
	ADD	r9,	r4,	r0
	ADDI	r1,	r1,	20
	ADD	r25,	r3,	r0
	ADD	r27,	r4,	r0
	ADDI	r1,	r1,	-20
	ADD	r6,	r21,	r0
	ADD	r7,	r24,	r0
	ADD	r8,	r22,	r0
	brlid	r15,	__divdf3
	ADD	r9,	r23,	r0
	ADDI	r1,	r1,	20
	ADDI	r1,	r1,	-20
	ADD	r6,	r28,	r0
	ADD	r7,	r29,	r0
	ADD	r8,	r3,	r0
	brlid	r15,	__adddf3
	ADD	r9,	r4,	r0
	ADDI	r1,	r1,	20
	ADD	r21,	r3,	r0
	ADD	r24,	r4,	r0
	ADDI	r1,	r1,	-20
	ADD	r6,	r20,	r0
	ADD	r7,	r26,	r0
	ADD	r8,	r22,	r0
	brlid	r15,	__divdf3
	ADD	r9,	r23,	r0
	ADDI	r1,	r1,	20
	ADDI	r1,	r1,	-20
	ADD	r6,	r30,	r0
	ADD	r7,	r31,	r0
	ADD	r8,	r3,	r0
	brlid	r15,	__adddf3
	ADD	r9,	r4,	r0
	ADDI	r1,	r1,	20
	ADD	r20,	r3,	r0
	ADD	r22,	r4,	r0
	ADDI	r1,	r1,	-12
	ADD	r6,	r25,	r0
	brlid	r15,	__truncdfsf2
	ADD	r7,	r27,	r0
	ADDI	r1,	r1,	12
	ADD	r23,	r3,	r0
	SWI	r23,	r19,	156656
	ADDI	r1,	r1,	-12
	ADD	r6,	r21,	r0
	brlid	r15,	__truncdfsf2
	ADD	r7,	r24,	r0
	ADDI	r1,	r1,	12
	ADD	r21,	r3,	r0
	SWI	r21,	r19,	156652
	ADDI	r1,	r1,	-12
	ORI	r24,	r0,	1045220557
	ADD	r6,	r20,	r0
	brlid	r15,	__truncdfsf2
	ADD	r7,	r22,	r0
	ADDI	r1,	r1,	12
	FPMUL	r9,	r3,	r24
	FPMUL	r10,	r21,	r24
	FPMUL	r11,	r23,	r24
	SWI	r0,	r19,	52216
	SWI	r3,	r19,	156648
$0BB0_249:
	LWI	r6,	r19,	156644
	ADDI	r6,	r6,	-1
	SWI	r6,	r19,	156644
	ADD	r3,	r0,	r0
	CMP	r6,	r3,	r6
	bneid	r6,	$0BB0_134
	NOP
	ORI	r6,	r0,	0
	ADDI	r3,	r0,	1
	FPLT	r4,	r9,	r6
	bneid	r4,	$0BB0_252
	NOP
	ADDI	r3,	r0,	0
$0BB0_252:
	bneid	r3,	$0BB0_257
	NOP
	ORI	r6,	r0,	1065353216
	ADDI	r3,	r0,	1
	FPGT	r4,	r9,	r6
	bneid	r4,	$0BB0_255
	NOP
	ADDI	r3,	r0,	0
$0BB0_255:
	bneid	r3,	$0BB0_257
	NOP
	ADD	r6,	r9,	r0
$0BB0_257:
	ORI	r3,	r0,	0
	ADDI	r4,	r0,	1
	FPLT	r5,	r11,	r3
	bneid	r5,	$0BB0_259
	NOP
	ADDI	r4,	r0,	0
$0BB0_259:
	bneid	r4,	$0BB0_264
	NOP
	ORI	r3,	r0,	1065353216
	ADDI	r4,	r0,	1
	FPGT	r5,	r11,	r3
	bneid	r5,	$0BB0_262
	NOP
	ADDI	r4,	r0,	0
$0BB0_262:
	bneid	r4,	$0BB0_264
	NOP
	ADD	r3,	r11,	r0
$0BB0_264:
	ORI	r4,	r0,	0
	ADDI	r5,	r0,	1
	FPLT	r7,	r10,	r4
	bneid	r7,	$0BB0_266
	NOP
	ADDI	r5,	r0,	0
$0BB0_266:
	bneid	r5,	$0BB0_271
	NOP
	ORI	r4,	r0,	1065353216
	ADDI	r5,	r0,	1
	FPGT	r7,	r10,	r4
	bneid	r7,	$0BB0_269
	NOP
	ADDI	r5,	r0,	0
$0BB0_269:
	bneid	r5,	$0BB0_271
	NOP
	ADD	r4,	r10,	r0
$0BB0_271:
	LWI	r7,	r19,	156748
	LWI	r5,	r19,	156744
	ADD	r5,	r5,	r7
	MULI	r5,	r5,	3
	LWI	r7,	r19,	156764
	ADD	r5,	r5,	r7
	STORE	r5,	r6,	0
	STORE	r5,	r4,	1
	STORE	r5,	r3,	2
	ATOMIC_INC	r6,	0
	LWI	r3,	r19,	156776
	CMP	r3,	r6,	r3
	bgtid	r3,	$0BB0_133
	NOP
$0BB0_272:
	LWI	r31,	r19,	36
	LWI	r30,	r19,	40
	LWI	r29,	r19,	44
	LWI	r28,	r19,	48
	LWI	r27,	r19,	52
	LWI	r26,	r19,	56
	LWI	r25,	r19,	60
	LWI	r24,	r19,	64
	LWI	r23,	r19,	68
	LWI	r22,	r19,	72
	LWI	r21,	r19,	76
	LWI	r20,	r19,	80
	ADDK	r1,	r19,	r0
	LWI	r19,	r1,	4
	LWI	r15,	r1,	0
	ADDI	r1,	r1,	156780
	rtsd	r15,	8
	ADD	r3,	r0,	r0
#	.end	main
$0tmp0:
#	.size	main, ($tmp0)-main

#	.align	2
#	.type	_ZN9PhotonMap8generateEP6PhotonS1_ii,@function
#	.ent	_ZN9PhotonMap8generateEP6PhotonS1_ii # @_ZN9PhotonMap8generateEP6PhotonS1_ii
_ZN9PhotonMap8generateEP6PhotonS1_ii:
#	.frame	r19,316,r15
#	.mask	0xfff88000
	ADDI	r1,	r1,	-316
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
	ORI	r3,	r0,	__stack_chk_guard
	LWI	r3,	r3,	0
	ADD	r4,	r0,	r0
	SWI	r3,	r19,	56
	CMP	r3,	r4,	r8
	beqid	r3,	$0BB1_296
	NOP
	SWI	r6,	r19,	228
	SWI	r7,	r19,	300
	ADD	r3,	r8,	r0
	SWI	r3,	r19,	296
	SWI	r9,	r19,	304
	ADDI	r4,	r6,	8
	ORI	r5,	r0,	-887581057
	ORI	r6,	r0,	1259902591
	SWI	r1,	r19,	308
	ADD	r7,	r0,	r0
	ADD	r8,	r5,	r0
	ADD	r9,	r5,	r0
	ADD	r10,	r6,	r0
	ADD	r11,	r6,	r0
$0BB1_2:
	LWI	r12,	r4,	-8
	LWI	r20,	r4,	-4
	LWI	r21,	r4,	0
	FPLT	r22,	r12,	r11
	FPLT	r23,	r20,	r10
	FPLT	r24,	r21,	r6
	FPGT	r25,	r12,	r9
	FPGT	r26,	r20,	r8
	ADDI	r27,	r0,	1
	ADDI	r28,	r0,	0
	FPGT	r29,	r21,	r5
	bneid	r22,	$0BB1_4
	ADD	r30,	r27,	r0
	ADD	r30,	r28,	r0
$0BB1_4:
	bneid	r23,	$0BB1_6
	ADD	r22,	r27,	r0
	ADD	r22,	r28,	r0
$0BB1_6:
	bneid	r24,	$0BB1_8
	ADD	r23,	r27,	r0
	ADD	r23,	r28,	r0
$0BB1_8:
	bneid	r25,	$0BB1_10
	ADD	r24,	r27,	r0
	ADD	r24,	r28,	r0
$0BB1_10:
	bneid	r26,	$0BB1_12
	ADD	r25,	r27,	r0
	ADD	r25,	r28,	r0
$0BB1_12:
	bneid	r29,	$0BB1_14
	NOP
	ADD	r27,	r28,	r0
$0BB1_14:
	ADDI	r26,	r0,	-1
	ADDK	r3,	r3,	r26
	ADDKC	r7,	r7,	r26
	bneid	r30,	$0BB1_16
	ADD	r26,	r12,	r0
	ADD	r26,	r11,	r0
$0BB1_16:
	bneid	r22,	$0BB1_18
	ADD	r28,	r20,	r0
	ADD	r28,	r10,	r0
$0BB1_18:
	bneid	r23,	$0BB1_20
	ADD	r22,	r21,	r0
	ADD	r22,	r6,	r0
$0BB1_20:
	bneid	r24,	$0BB1_22
	NOP
	ADD	r12,	r9,	r0
$0BB1_22:
	bneid	r25,	$0BB1_24
	NOP
	ADD	r20,	r8,	r0
$0BB1_24:
	bneid	r27,	$0BB1_26
	NOP
	ADD	r21,	r5,	r0
$0BB1_26:
	ADDI	r4,	r4,	52
	ADD	r5,	r0,	r0
	BITOR	r6,	r3,	r7
	CMP	r23,	r5,	r6
	ADD	r5,	r21,	r0
	ADD	r8,	r20,	r0
	ADD	r9,	r12,	r0
	ADD	r6,	r22,	r0
	ADD	r10,	r28,	r0
	bneid	r23,	$0BB1_2
	ADD	r11,	r26,	r0
	FPRSUB	r3,	r26,	r12
	FPRSUB	r4,	r28,	r20
	FPUN	r5,	r3,	r4
	FPLE	r6,	r3,	r4
	BITOR	r5,	r5,	r6
	bneid	r5,	$0BB1_29
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB1_29:
	bneid	r7,	$0BB1_33
	FPRSUB	r5,	r22,	r21
	ADDI	r6,	r0,	1
	FPGT	r7,	r3,	r5
	bneid	r7,	$0BB1_32
	NOP
	ADDI	r6,	r0,	0
$0BB1_32:
	ADD	r7,	r0,	r0
	bneid	r6,	$0BB1_39
	SWI	r7,	r19,	232
$0BB1_33:
	FPUN	r6,	r4,	r3
	FPLE	r3,	r4,	r3
	FPUN	r7,	r4,	r5
	FPLE	r4,	r4,	r5
	ADDI	r5,	r0,	1
	BITOR	r3,	r6,	r3
	ADDI	r6,	r0,	0
	bneid	r3,	$0BB1_35
	ADD	r8,	r5,	r0
	ADD	r8,	r6,	r0
$0BB1_35:
	BITOR	r3,	r7,	r4
	bneid	r3,	$0BB1_37
	ADD	r4,	r5,	r0
	ADD	r4,	r6,	r0
$0BB1_37:
	ADDI	r3,	r0,	2
	SWI	r3,	r19,	232
	BITOR	r3,	r8,	r4
	bneid	r3,	$0BB1_39
	NOP
	SWI	r5,	r19,	232
$0BB1_39:
	SWI	r1,	r19,	312
	SWI	r0,	r19,	64
	SWI	r0,	r19,	68
	SWI	r0,	r19,	72
	SWI	r0,	r19,	76
	SWI	r0,	r19,	80
	SWI	r0,	r19,	84
	ADDI	r3,	r0,	1065353216
	SWI	r3,	r19,	88
	SWI	r3,	r19,	92
	SWI	r3,	r19,	96
	ADDI	r1,	r1,	-4
	ADDI	r3,	r0,	2
	SWI	r3,	r19,	288
	ADD	r4,	r1,	r0
	ANDI	r3,	r3,	31
	LWI	r5,	r19,	296
	beqid	r3,	$0BB1_41
	ADDI	r5,	r5,	0
$0BB1_40:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_40
	ADDK	r5,	r5,	r5
$0BB1_41:
	RSUB	r3,	r5,	r4
	SWI	r3,	r19,	292
	ADD	r1,	r3,	r0
	ADDI	r4,	r19,	64
	ADDI	r1,	r1,	4
	LWI	r6,	r19,	228
	ADDI	r5,	r6,	8
	SWI	r5,	r19,	240
	ADDI	r5,	r4,	8
	SWI	r5,	r19,	280
	ORI	r4,	r4,	4
	SWI	r4,	r19,	284
	SWI	r0,	r3,	0
	LWI	r4,	r19,	296
	brid	$0BB1_255
	SWI	r4,	r3,	4
$0BB1_42:
	ADDI	r3,	r0,	2
	ANDI	r4,	r3,	31
	LWI	r5,	r19,	288
	beqid	r4,	$0BB1_44
	ADDI	r5,	r5,	0
$0BB1_43:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB1_43
	ADDK	r5,	r5,	r5
$0BB1_44:
	LWI	r4,	r19,	288
	ADDI	r4,	r4,	-2
	SWI	r4,	r19,	288
	ANDI	r3,	r3,	31
	beqid	r3,	$0BB1_46
	ADDI	r4,	r4,	0
$0BB1_45:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_45
	ADDK	r4,	r4,	r4
$0BB1_46:
	LWI	r3,	r19,	292
	ADD	r5,	r5,	r3
	LWI	r5,	r5,	-4
	SWI	r5,	r19,	272
	LW	r3,	r3,	r4
	SWI	r3,	r19,	276
$0BB1_47:
	LWI	r4,	r19,	276
	LWI	r3,	r19,	272
	ADD	r3,	r4,	r3
	ADDI	r4,	r0,	31
	ANDI	r4,	r4,	31
	beqid	r4,	$0BB1_49
	ADDI	r5,	r3,	0
$0BB1_48:
	srl	r5,	r5
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB1_48
	NOP
$0BB1_49:
	ADD	r3,	r3,	r5
	ADDI	r4,	r0,	1
	ANDI	r4,	r4,	31
	beqid	r4,	$0BB1_51
	ADDI	r3,	r3,	0
$0BB1_50:
	sra	r3,	r3
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB1_50
	NOP
$0BB1_51:
	MULI	r3,	r3,	52
	ADDI	r1,	r1,	-16
	ADDI	r4,	r19,	64
	SWI	r4,	r19,	268
	LWI	r6,	r19,	228
	ADD	r7,	r6,	r3
	ADDI	r8,	r0,	52
	brlid	r15,	memcpy
	ADD	r6,	r4,	r0
	ADDI	r1,	r1,	16
	LWI	r20,	r19,	276
	LWI	r21,	r19,	272
$0BB1_52:
	ADD	r3,	r0,	r0
	LWI	r4,	r19,	232
	CMP	r3,	r3,	r4
	beqid	r3,	$0BB1_56
	LWI	r4,	r19,	268
	ADDI	r4,	r0,	1
	LWI	r3,	r19,	232
	CMP	r4,	r4,	r3
	bneid	r4,	$0BB1_55
	NOP
	brid	$0BB1_56
	LWI	r4,	r19,	284
$0BB1_55:
	LWI	r4,	r19,	280
$0BB1_56:
	LWI	r3,	r4,	0
	ADD	r4,	r0,	r0
	LWI	r5,	r19,	232
	CMP	r4,	r4,	r5
	beqid	r4,	$0BB1_62
	NOP
	MULI	r4,	r20,	13
	ADDI	r5,	r0,	2
	ANDI	r5,	r5,	31
	beqid	r5,	$0BB1_59
	ADDI	r4,	r4,	0
$0BB1_58:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB1_58
	ADDK	r4,	r4,	r4
$0BB1_59:
	ADDI	r5,	r0,	31
	ANDI	r5,	r5,	31
	beqid	r5,	$0BB1_61
	ADDI	r6,	r20,	0
$0BB1_60:
	sra	r6,	r6
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB1_60
	NOP
$0BB1_61:
	LWI	r5,	r19,	240
	ADD	r4,	r5,	r4
	ADD	r5,	r0,	r0
	ADD	r7,	r20,	r0
	brid	$0BB1_70
	ADD	r8,	r20,	r0
$0BB1_62:
	ADDI	r4,	r0,	31
	ANDI	r4,	r4,	31
	beqid	r4,	$0BB1_64
	ADDI	r5,	r20,	0
$0BB1_63:
	sra	r5,	r5
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB1_63
	NOP
$0BB1_64:
	MULI	r4,	r20,	52
	LWI	r6,	r19,	228
	ADD	r4,	r6,	r4
	ADD	r6,	r0,	r0
	brid	$0BB1_66
	ADD	r7,	r20,	r0
$0BB1_65:
	ADDIK	r7,	r7,	1
	ADDIKC	r5,	r5,	0
	ADDIK	r20,	r20,	1
	ADDIKC	r6,	r6,	0
	ADDI	r4,	r4,	52
$0BB1_66:
	LWI	r8,	r4,	0
	ADDI	r9,	r0,	1
	FPLT	r8,	r8,	r3
	bneid	r8,	$0BB1_68
	NOP
	ADDI	r9,	r0,	0
$0BB1_68:
	bneid	r9,	$0BB1_65
	NOP
	brid	$0BB1_75
	NOP
$0BB1_69:
	ADDIK	r7,	r7,	1
	ADDIKC	r6,	r6,	0
	ADDIK	r20,	r20,	1
	ADDIKC	r5,	r5,	0
	ADDI	r8,	r8,	1
	ADDI	r4,	r4,	52
$0BB1_70:
	ADDI	r9,	r0,	1
	LWI	r10,	r19,	232
	CMP	r9,	r9,	r10
	bneid	r9,	$0BB1_72
	ADD	r10,	r4,	r0
	MULI	r10,	r8,	52
	LWI	r9,	r19,	228
	ADD	r10,	r9,	r10
	ADDI	r10,	r10,	4
$0BB1_72:
	LWI	r9,	r10,	0
	ADDI	r10,	r0,	1
	FPLT	r9,	r9,	r3
	bneid	r9,	$0BB1_74
	NOP
	ADDI	r10,	r0,	0
$0BB1_74:
	bneid	r10,	$0BB1_69
	NOP
$0BB1_75:
	MULI	r7,	r7,	52
	LWI	r6,	r19,	228
	ADD	r4,	r6,	r7
	ADD	r5,	r0,	r0
	LWI	r6,	r19,	232
	CMP	r5,	r5,	r6
	beqid	r5,	$0BB1_81
	NOP
	MULI	r5,	r21,	13
	ADDI	r6,	r0,	2
	ANDI	r6,	r6,	31
	beqid	r6,	$0BB1_78
	ADDI	r5,	r5,	0
$0BB1_77:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB1_77
	ADDK	r5,	r5,	r5
$0BB1_78:
	ADDI	r6,	r0,	31
	ANDI	r6,	r6,	31
	beqid	r6,	$0BB1_80
	ADDI	r8,	r21,	0
$0BB1_79:
	sra	r8,	r8
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB1_79
	NOP
$0BB1_80:
	LWI	r6,	r19,	240
	ADD	r6,	r6,	r5
	ADD	r5,	r0,	r0
	ADD	r10,	r21,	r0
	brid	$0BB1_89
	ADD	r9,	r21,	r0
$0BB1_81:
	ADDI	r5,	r0,	31
	ANDI	r5,	r5,	31
	beqid	r5,	$0BB1_83
	ADDI	r6,	r21,	0
$0BB1_82:
	sra	r6,	r6
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB1_82
	NOP
$0BB1_83:
	MULI	r5,	r21,	52
	LWI	r8,	r19,	228
	ADD	r5,	r8,	r5
	ADD	r8,	r0,	r0
	brid	$0BB1_85
	ADD	r10,	r21,	r0
$0BB1_84:
	ADDI	r9,	r0,	-1
	ADDK	r10,	r10,	r9
	ADDKC	r6,	r6,	r9
	ADDK	r21,	r21,	r9
	ADDKC	r8,	r8,	r9
	ADDI	r5,	r5,	-52
$0BB1_85:
	LWI	r9,	r5,	0
	ADDI	r11,	r0,	1
	FPGT	r9,	r9,	r3
	bneid	r9,	$0BB1_87
	NOP
	ADDI	r11,	r0,	0
$0BB1_87:
	bneid	r11,	$0BB1_84
	NOP
	brid	$0BB1_94
	NOP
$0BB1_88:
	ADDI	r11,	r0,	-1
	ADDK	r10,	r10,	r11
	ADDKC	r8,	r8,	r11
	ADDK	r21,	r21,	r11
	ADDKC	r5,	r5,	r11
	ADDI	r9,	r9,	-1
	ADDI	r6,	r6,	-52
$0BB1_89:
	ADDI	r11,	r0,	1
	LWI	r12,	r19,	232
	CMP	r11,	r11,	r12
	bneid	r11,	$0BB1_91
	ADD	r12,	r6,	r0
	MULI	r12,	r9,	52
	LWI	r11,	r19,	228
	ADD	r12,	r11,	r12
	ADDI	r12,	r12,	4
$0BB1_91:
	LWI	r11,	r12,	0
	ADDI	r12,	r0,	1
	FPGT	r11,	r11,	r3
	bneid	r11,	$0BB1_93
	NOP
	ADDI	r12,	r0,	0
$0BB1_93:
	bneid	r12,	$0BB1_88
	NOP
$0BB1_94:
	CMP	r3,	r21,	r20
	bgtid	r3,	$0BB1_242
	NOP
	CMP	r3,	r21,	r20
	beqid	r3,	$0BB1_241
	NOP
	LWI	r6,	r19,	228
	ADD	r22,	r6,	r7
	lbu	r3,	r6,	r7
	ADDI	r23,	r0,	8
	lbui	r5,	r22,	2
	ANDI	r6,	r23,	31
	beqid	r6,	$0BB1_98
	ADDI	r3,	r3,	0
$0BB1_97:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB1_97
	ADDK	r3,	r3,	r3
$0BB1_98:
	lbui	r6,	r22,	1
	lbui	r7,	r22,	4
	ANDI	r8,	r23,	31
	beqid	r8,	$0BB1_100
	ADDI	r5,	r5,	0
$0BB1_99:
	ADDI	r8,	r8,	-1
	bneid	r8,	$0BB1_99
	ADDK	r5,	r5,	r5
$0BB1_100:
	lbui	r8,	r22,	3
	lbui	r9,	r22,	6
	ANDI	r11,	r23,	31
	beqid	r11,	$0BB1_102
	ADDI	r7,	r7,	0
$0BB1_101:
	ADDI	r11,	r11,	-1
	bneid	r11,	$0BB1_101
	ADDK	r7,	r7,	r7
$0BB1_102:
	BITOR	r3,	r3,	r6
	ADDI	r24,	r0,	16
	lbui	r6,	r22,	5
	ANDI	r11,	r24,	31
	beqid	r11,	$0BB1_104
	ADDI	r3,	r3,	0
$0BB1_103:
	ADDI	r11,	r11,	-1
	bneid	r11,	$0BB1_103
	ADDK	r3,	r3,	r3
$0BB1_104:
	lbui	r11,	r22,	8
	ANDI	r12,	r23,	31
	beqid	r12,	$0BB1_106
	ADDI	r9,	r9,	0
$0BB1_105:
	ADDI	r12,	r12,	-1
	bneid	r12,	$0BB1_105
	ADDK	r9,	r9,	r9
$0BB1_106:
	BITOR	r5,	r5,	r8
	BITOR	r3,	r3,	r5
	lbui	r5,	r22,	7
	lbui	r8,	r22,	10
	SWI	r3,	r19,	132
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_108
	ADDI	r11,	r11,	0
$0BB1_107:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_107
	ADDK	r11,	r11,	r11
$0BB1_108:
	BITOR	r3,	r7,	r6
	lbui	r6,	r22,	9
	ANDI	r7,	r24,	31
	beqid	r7,	$0BB1_110
	ADDI	r3,	r3,	0
$0BB1_109:
	ADDI	r7,	r7,	-1
	bneid	r7,	$0BB1_109
	ADDK	r3,	r3,	r3
$0BB1_110:
	lbui	r7,	r22,	12
	LWI	r12,	r19,	132
	lbui	r25,	r22,	47
	SWI	r25,	r19,	244
	ANDI	r25,	r23,	31
	beqid	r25,	$0BB1_112
	ADDI	r8,	r8,	0
$0BB1_111:
	ADDI	r25,	r25,	-1
	bneid	r25,	$0BB1_111
	ADDK	r8,	r8,	r8
$0BB1_112:
	BITOR	r5,	r9,	r5
	BITOR	r3,	r3,	r5
	lbui	r5,	r22,	11
	lbui	r9,	r22,	46
	SWI	r9,	r19,	248
	lbui	r9,	r22,	45
	SWI	r9,	r19,	252
	lbui	r9,	r22,	44
	SWI	r9,	r19,	256
	lbui	r9,	r22,	14
	SWI	r3,	r19,	176
	SWI	r12,	r19,	180
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_114
	ADDI	r25,	r7,	0
$0BB1_113:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_113
	ADDK	r25,	r25,	r25
$0BB1_114:
	BITOR	r3,	r11,	r6
	lbui	r6,	r22,	13
	SWI	r6,	r19,	260
	ANDI	r6,	r24,	31
	beqid	r6,	$0BB1_116
	ADDI	r3,	r3,	0
$0BB1_115:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB1_115
	ADDK	r3,	r3,	r3
$0BB1_116:
	LWI	r26,	r19,	180
	lbui	r27,	r22,	16
	LWI	r6,	r19,	176
	ANDI	r7,	r23,	31
	beqid	r7,	$0BB1_118
	ADDI	r28,	r9,	0
$0BB1_117:
	ADDI	r7,	r7,	-1
	bneid	r7,	$0BB1_117
	ADDK	r28,	r28,	r28
$0BB1_118:
	MULI	r29,	r10,	52
	LWI	r7,	r19,	228
	ADD	r7,	r7,	r29
	BITOR	r5,	r8,	r5
	BITOR	r3,	r3,	r5
	ADDI	r30,	r0,	24
	SWI	r30,	r19,	236
	lbui	r5,	r22,	15
	SWI	r5,	r19,	264
	ADDI	r1,	r1,	-16
	ADDI	r8,	r0,	52
	lbui	r31,	r22,	18
	SWI	r3,	r19,	172
	SWI	r6,	r19,	184
	brlid	r15,	memcpy
	ADD	r6,	r4,	r0
	ADDI	r1,	r1,	16
	ANDI	r3,	r30,	31
	ADDI	r4,	r26,	0
	beqid	r3,	$0BB1_120
	ADD	r5,	r4,	r0
$0BB1_119:
	srl	r5,	r5
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_119
	NOP
$0BB1_120:
	ANDI	r3,	r24,	31
	beqid	r3,	$0BB1_122
	NOP
$0BB1_121:
	srl	r4,	r4
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_121
	NOP
$0BB1_122:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_124
	ADDI	r6,	r26,	0
$0BB1_123:
	srl	r6,	r6
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_123
	NOP
$0BB1_124:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_126
	ADDI	r7,	r27,	0
$0BB1_125:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_125
	ADDK	r7,	r7,	r7
$0BB1_126:
	LWI	r3,	r19,	260
	BITOR	r3,	r25,	r3
	lbui	r8,	r22,	17
	ANDI	r9,	r24,	31
	beqid	r9,	$0BB1_128
	ADDI	r3,	r3,	0
$0BB1_127:
	ADDI	r9,	r9,	-1
	bneid	r9,	$0BB1_127
	ADDK	r3,	r3,	r3
$0BB1_128:
	LWI	r9,	r19,	184
	lbui	r10,	r22,	20
	LWI	r11,	r19,	172
	ANDI	r12,	r23,	31
	beqid	r12,	$0BB1_130
	ADDI	r25,	r31,	0
$0BB1_129:
	ADDI	r12,	r12,	-1
	bneid	r12,	$0BB1_129
	ADDK	r25,	r25,	r25
$0BB1_130:
	LWI	r12,	r19,	228
	ADD	r27,	r12,	r29
	LWI	r30,	r19,	264
	BITOR	r28,	r28,	r30
	BITOR	r3,	r3,	r28
	lbui	r28,	r22,	19
	sb	r5,	r12,	r29
	sbi	r4,	r27,	1
	sbi	r6,	r27,	2
	sbi	r26,	r27,	3
	lbui	r4,	r22,	22
	SWI	r3,	r19,	168
	SWI	r11,	r19,	188
	LWI	r3,	r19,	236
	ANDI	r3,	r3,	31
	ADDI	r5,	r9,	0
	beqid	r3,	$0BB1_132
	ADD	r6,	r5,	r0
$0BB1_131:
	srl	r6,	r6
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_131
	NOP
$0BB1_132:
	ANDI	r3,	r24,	31
	beqid	r3,	$0BB1_134
	NOP
$0BB1_133:
	srl	r5,	r5
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_133
	NOP
$0BB1_134:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_136
	ADDI	r11,	r9,	0
$0BB1_135:
	srl	r11,	r11
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_135
	NOP
$0BB1_136:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_138
	ADDI	r10,	r10,	0
$0BB1_137:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_137
	ADDK	r10,	r10,	r10
$0BB1_138:
	BITOR	r3,	r7,	r8
	lbui	r7,	r22,	21
	ANDI	r8,	r24,	31
	beqid	r8,	$0BB1_140
	ADDI	r3,	r3,	0
$0BB1_139:
	ADDI	r8,	r8,	-1
	bneid	r8,	$0BB1_139
	ADDK	r3,	r3,	r3
$0BB1_140:
	LWI	r8,	r19,	188
	lbui	r12,	r22,	24
	LWI	r26,	r19,	168
	ANDI	r29,	r23,	31
	beqid	r29,	$0BB1_142
	ADDI	r4,	r4,	0
$0BB1_141:
	ADDI	r29,	r29,	-1
	bneid	r29,	$0BB1_141
	ADDK	r4,	r4,	r4
$0BB1_142:
	BITOR	r25,	r25,	r28
	BITOR	r3,	r3,	r25
	lbui	r25,	r22,	23
	sbi	r6,	r27,	4
	sbi	r5,	r27,	5
	sbi	r11,	r27,	6
	sbi	r9,	r27,	7
	lbui	r5,	r22,	26
	SWI	r3,	r19,	136
	SWI	r26,	r19,	192
	LWI	r3,	r19,	236
	ANDI	r3,	r3,	31
	ADDI	r6,	r8,	0
	beqid	r3,	$0BB1_144
	ADD	r9,	r6,	r0
$0BB1_143:
	srl	r9,	r9
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_143
	NOP
$0BB1_144:
	ANDI	r3,	r24,	31
	beqid	r3,	$0BB1_146
	NOP
$0BB1_145:
	srl	r6,	r6
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_145
	NOP
$0BB1_146:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_148
	ADDI	r11,	r8,	0
$0BB1_147:
	srl	r11,	r11
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_147
	NOP
$0BB1_148:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_150
	ADDI	r12,	r12,	0
$0BB1_149:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_149
	ADDK	r12,	r12,	r12
$0BB1_150:
	BITOR	r3,	r10,	r7
	lbui	r7,	r22,	25
	ANDI	r10,	r24,	31
	beqid	r10,	$0BB1_152
	ADDI	r3,	r3,	0
$0BB1_151:
	ADDI	r10,	r10,	-1
	bneid	r10,	$0BB1_151
	ADDK	r3,	r3,	r3
$0BB1_152:
	LWI	r10,	r19,	192
	lbui	r26,	r22,	28
	LWI	r28,	r19,	136
	ANDI	r29,	r23,	31
	beqid	r29,	$0BB1_154
	ADDI	r5,	r5,	0
$0BB1_153:
	ADDI	r29,	r29,	-1
	bneid	r29,	$0BB1_153
	ADDK	r5,	r5,	r5
$0BB1_154:
	BITOR	r4,	r4,	r25
	BITOR	r3,	r3,	r4
	lbui	r4,	r22,	27
	sbi	r9,	r27,	8
	sbi	r6,	r27,	9
	sbi	r11,	r27,	10
	sbi	r8,	r27,	11
	lbui	r6,	r22,	30
	SWI	r3,	r19,	140
	SWI	r28,	r19,	196
	LWI	r3,	r19,	236
	ANDI	r3,	r3,	31
	ADDI	r8,	r10,	0
	beqid	r3,	$0BB1_156
	ADD	r9,	r8,	r0
$0BB1_155:
	srl	r9,	r9
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_155
	NOP
$0BB1_156:
	ANDI	r3,	r24,	31
	beqid	r3,	$0BB1_158
	NOP
$0BB1_157:
	srl	r8,	r8
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_157
	NOP
$0BB1_158:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_160
	ADDI	r11,	r10,	0
$0BB1_159:
	srl	r11,	r11
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_159
	NOP
$0BB1_160:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_162
	ADDI	r25,	r26,	0
$0BB1_161:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_161
	ADDK	r25,	r25,	r25
$0BB1_162:
	BITOR	r3,	r12,	r7
	lbui	r7,	r22,	29
	ANDI	r12,	r24,	31
	beqid	r12,	$0BB1_164
	ADDI	r3,	r3,	0
$0BB1_163:
	ADDI	r12,	r12,	-1
	bneid	r12,	$0BB1_163
	ADDK	r3,	r3,	r3
$0BB1_164:
	LWI	r12,	r19,	196
	lbui	r26,	r22,	32
	LWI	r28,	r19,	140
	ANDI	r29,	r23,	31
	beqid	r29,	$0BB1_166
	ADDI	r6,	r6,	0
$0BB1_165:
	ADDI	r29,	r29,	-1
	bneid	r29,	$0BB1_165
	ADDK	r6,	r6,	r6
$0BB1_166:
	BITOR	r4,	r5,	r4
	BITOR	r3,	r3,	r4
	lbui	r4,	r22,	31
	sbi	r9,	r27,	12
	sbi	r8,	r27,	13
	sbi	r11,	r27,	14
	sbi	r10,	r27,	15
	lbui	r5,	r22,	34
	SWI	r3,	r19,	164
	SWI	r28,	r19,	200
	LWI	r3,	r19,	236
	ANDI	r3,	r3,	31
	ADDI	r8,	r12,	0
	beqid	r3,	$0BB1_168
	ADD	r9,	r8,	r0
$0BB1_167:
	srl	r9,	r9
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_167
	NOP
$0BB1_168:
	ANDI	r3,	r24,	31
	beqid	r3,	$0BB1_170
	NOP
$0BB1_169:
	srl	r8,	r8
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_169
	NOP
$0BB1_170:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_172
	ADDI	r10,	r12,	0
$0BB1_171:
	srl	r10,	r10
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_171
	NOP
$0BB1_172:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_174
	ADDI	r11,	r26,	0
$0BB1_173:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_173
	ADDK	r11,	r11,	r11
$0BB1_174:
	BITOR	r3,	r25,	r7
	lbui	r7,	r22,	33
	ANDI	r25,	r24,	31
	beqid	r25,	$0BB1_176
	ADDI	r3,	r3,	0
$0BB1_175:
	ADDI	r25,	r25,	-1
	bneid	r25,	$0BB1_175
	ADDK	r3,	r3,	r3
$0BB1_176:
	LWI	r25,	r19,	200
	lbui	r26,	r22,	36
	LWI	r28,	r19,	164
	ANDI	r29,	r23,	31
	beqid	r29,	$0BB1_178
	ADDI	r5,	r5,	0
$0BB1_177:
	ADDI	r29,	r29,	-1
	bneid	r29,	$0BB1_177
	ADDK	r5,	r5,	r5
$0BB1_178:
	BITOR	r4,	r6,	r4
	BITOR	r3,	r3,	r4
	lbui	r4,	r22,	35
	sbi	r9,	r27,	16
	sbi	r8,	r27,	17
	sbi	r10,	r27,	18
	sbi	r12,	r27,	19
	lbui	r6,	r22,	38
	SWI	r3,	r19,	144
	SWI	r28,	r19,	204
	LWI	r3,	r19,	236
	ANDI	r3,	r3,	31
	ADDI	r8,	r25,	0
	beqid	r3,	$0BB1_180
	ADD	r9,	r8,	r0
$0BB1_179:
	srl	r9,	r9
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_179
	NOP
$0BB1_180:
	ANDI	r3,	r24,	31
	beqid	r3,	$0BB1_182
	NOP
$0BB1_181:
	srl	r8,	r8
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_181
	NOP
$0BB1_182:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_184
	ADDI	r10,	r25,	0
$0BB1_183:
	srl	r10,	r10
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_183
	NOP
$0BB1_184:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_186
	ADDI	r12,	r26,	0
$0BB1_185:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_185
	ADDK	r12,	r12,	r12
$0BB1_186:
	BITOR	r3,	r11,	r7
	lbui	r7,	r22,	37
	ANDI	r11,	r24,	31
	beqid	r11,	$0BB1_188
	ADDI	r3,	r3,	0
$0BB1_187:
	ADDI	r11,	r11,	-1
	bneid	r11,	$0BB1_187
	ADDK	r3,	r3,	r3
$0BB1_188:
	LWI	r11,	r19,	204
	lbui	r26,	r22,	40
	LWI	r28,	r19,	144
	ANDI	r29,	r23,	31
	beqid	r29,	$0BB1_190
	ADDI	r6,	r6,	0
$0BB1_189:
	ADDI	r29,	r29,	-1
	bneid	r29,	$0BB1_189
	ADDK	r6,	r6,	r6
$0BB1_190:
	BITOR	r4,	r5,	r4
	BITOR	r3,	r3,	r4
	lbui	r4,	r22,	39
	sbi	r9,	r27,	20
	sbi	r8,	r27,	21
	sbi	r10,	r27,	22
	sbi	r25,	r27,	23
	lbui	r5,	r22,	42
	SWI	r3,	r19,	148
	SWI	r28,	r19,	208
	LWI	r3,	r19,	236
	ANDI	r3,	r3,	31
	ADDI	r8,	r11,	0
	beqid	r3,	$0BB1_192
	ADD	r9,	r8,	r0
$0BB1_191:
	srl	r9,	r9
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_191
	NOP
$0BB1_192:
	ANDI	r3,	r24,	31
	beqid	r3,	$0BB1_194
	NOP
$0BB1_193:
	srl	r8,	r8
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_193
	NOP
$0BB1_194:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_196
	ADDI	r10,	r11,	0
$0BB1_195:
	srl	r10,	r10
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_195
	NOP
$0BB1_196:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_198
	ADDI	r25,	r26,	0
$0BB1_197:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_197
	ADDK	r25,	r25,	r25
$0BB1_198:
	BITOR	r3,	r12,	r7
	lbui	r7,	r22,	41
	ANDI	r12,	r24,	31
	beqid	r12,	$0BB1_200
	ADDI	r3,	r3,	0
$0BB1_199:
	ADDI	r12,	r12,	-1
	bneid	r12,	$0BB1_199
	ADDK	r3,	r3,	r3
$0BB1_200:
	LWI	r12,	r19,	208
	LWI	r26,	r19,	148
	ANDI	r28,	r23,	31
	beqid	r28,	$0BB1_202
	ADDI	r5,	r5,	0
$0BB1_201:
	ADDI	r28,	r28,	-1
	bneid	r28,	$0BB1_201
	ADDK	r5,	r5,	r5
$0BB1_202:
	BITOR	r4,	r6,	r4
	BITOR	r3,	r3,	r4
	lbui	r4,	r22,	43
	sbi	r9,	r27,	24
	sbi	r8,	r27,	25
	sbi	r10,	r27,	26
	sbi	r11,	r27,	27
	SWI	r3,	r19,	160
	SWI	r26,	r19,	212
	LWI	r3,	r19,	236
	ANDI	r3,	r3,	31
	ADDI	r6,	r12,	0
	beqid	r3,	$0BB1_204
	ADD	r8,	r6,	r0
$0BB1_203:
	srl	r8,	r8
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_203
	NOP
$0BB1_204:
	ANDI	r3,	r24,	31
	beqid	r3,	$0BB1_206
	NOP
$0BB1_205:
	srl	r6,	r6
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_205
	NOP
$0BB1_206:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_208
	ADDI	r9,	r12,	0
$0BB1_207:
	srl	r9,	r9
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_207
	NOP
$0BB1_208:
	BITOR	r3,	r25,	r7
	ANDI	r7,	r24,	31
	beqid	r7,	$0BB1_210
	ADDI	r3,	r3,	0
$0BB1_209:
	ADDI	r7,	r7,	-1
	bneid	r7,	$0BB1_209
	ADDK	r3,	r3,	r3
$0BB1_210:
	BITOR	r4,	r5,	r4
	LWI	r5,	r19,	212
	lbui	r7,	r22,	48
	BITOR	r3,	r3,	r4
	LWI	r4,	r19,	160
	sbi	r8,	r27,	28
	sbi	r6,	r27,	29
	sbi	r9,	r27,	30
	sbi	r12,	r27,	31
	lbui	r6,	r22,	50
	SWI	r3,	r19,	156
	SWI	r4,	r19,	216
	LWI	r3,	r19,	236
	ANDI	r3,	r3,	31
	ADDI	r4,	r5,	0
	beqid	r3,	$0BB1_212
	ADD	r8,	r4,	r0
$0BB1_211:
	srl	r8,	r8
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_211
	NOP
$0BB1_212:
	ANDI	r3,	r24,	31
	beqid	r3,	$0BB1_214
	NOP
$0BB1_213:
	srl	r4,	r4
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_213
	NOP
$0BB1_214:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_216
	ADDI	r9,	r5,	0
$0BB1_215:
	srl	r9,	r9
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_215
	NOP
$0BB1_216:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_218
	ADDI	r7,	r7,	0
$0BB1_217:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_217
	ADDK	r7,	r7,	r7
$0BB1_218:
	lbui	r3,	r22,	49
	LWI	r10,	r19,	216
	LWI	r11,	r19,	156
	ANDI	r12,	r23,	31
	beqid	r12,	$0BB1_220
	ADDI	r6,	r6,	0
$0BB1_219:
	ADDI	r12,	r12,	-1
	bneid	r12,	$0BB1_219
	ADDK	r6,	r6,	r6
$0BB1_220:
	lbui	r12,	r22,	51
	sbi	r8,	r27,	32
	sbi	r4,	r27,	33
	sbi	r9,	r27,	34
	sbi	r5,	r27,	35
	SWI	r11,	r19,	220
	LWI	r4,	r19,	236
	ANDI	r4,	r4,	31
	ADDI	r5,	r10,	0
	beqid	r4,	$0BB1_222
	ADD	r8,	r5,	r0
$0BB1_221:
	srl	r8,	r8
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB1_221
	NOP
$0BB1_222:
	ANDI	r4,	r24,	31
	beqid	r4,	$0BB1_224
	NOP
$0BB1_223:
	srl	r5,	r5
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB1_223
	NOP
$0BB1_224:
	ANDI	r4,	r23,	31
	beqid	r4,	$0BB1_226
	ADDI	r9,	r10,	0
$0BB1_225:
	srl	r9,	r9
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB1_225
	NOP
$0BB1_226:
	BITOR	r3,	r7,	r3
	ANDI	r4,	r24,	31
	beqid	r4,	$0BB1_228
	ADDI	r3,	r3,	0
$0BB1_227:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB1_227
	ADDK	r3,	r3,	r3
$0BB1_228:
	BITOR	r4,	r6,	r12
	LWI	r6,	r19,	220
	BITOR	r3,	r3,	r4
	sbi	r8,	r27,	36
	sbi	r5,	r27,	37
	sbi	r9,	r27,	38
	sbi	r10,	r27,	39
	SWI	r3,	r19,	152
	LWI	r3,	r19,	236
	ANDI	r3,	r3,	31
	ADDI	r4,	r6,	0
	beqid	r3,	$0BB1_230
	ADD	r5,	r4,	r0
$0BB1_229:
	srl	r5,	r5
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_229
	NOP
$0BB1_230:
	ANDI	r3,	r24,	31
	beqid	r3,	$0BB1_232
	NOP
$0BB1_231:
	srl	r4,	r4
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_231
	NOP
$0BB1_232:
	ANDI	r3,	r23,	31
	beqid	r3,	$0BB1_234
	ADDI	r7,	r6,	0
$0BB1_233:
	srl	r7,	r7
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_233
	NOP
$0BB1_234:
	LWI	r3,	r19,	152
	sbi	r5,	r27,	40
	sbi	r4,	r27,	41
	sbi	r7,	r27,	42
	sbi	r6,	r27,	43
	SWI	r3,	r19,	224
	LWI	r3,	r19,	224
	LWI	r4,	r19,	256
	sbi	r4,	r27,	44
	LWI	r4,	r19,	252
	sbi	r4,	r27,	45
	LWI	r4,	r19,	248
	sbi	r4,	r27,	46
	LWI	r4,	r19,	244
	sbi	r4,	r27,	47
	LWI	r4,	r19,	236
	ANDI	r4,	r4,	31
	ADDI	r5,	r3,	0
	beqid	r4,	$0BB1_236
	ADD	r6,	r5,	r0
$0BB1_235:
	srl	r6,	r6
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB1_235
	NOP
$0BB1_236:
	ANDI	r4,	r24,	31
	beqid	r4,	$0BB1_238
	NOP
$0BB1_237:
	srl	r5,	r5
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB1_237
	NOP
$0BB1_238:
	ANDI	r4,	r23,	31
	beqid	r4,	$0BB1_240
	ADDI	r7,	r3,	0
$0BB1_239:
	srl	r7,	r7
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB1_239
	NOP
$0BB1_240:
	sbi	r6,	r27,	48
	sbi	r5,	r27,	49
	sbi	r7,	r27,	50
	sbi	r3,	r27,	51
$0BB1_241:
	ADDI	r20,	r20,	1
	ADDI	r21,	r21,	-1
$0BB1_242:
	CMP	r3,	r21,	r20
	bltid	r3,	$0BB1_52
	NOP
	LWI	r3,	r19,	272
	RSUB	r3,	r20,	r3
	LWI	r4,	r19,	276
	RSUB	r4,	r4,	r21
	CMP	r3,	r3,	r4
	bleid	r3,	$0BB1_249
	NOP
	LWI	r3,	r19,	276
	CMP	r3,	r21,	r3
	bltid	r3,	$0BB1_246
	NOP
	brid	$0BB1_254
	SWI	r20,	r19,	276
$0BB1_246:
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r4,	r19,	288
	beqid	r3,	$0BB1_248
	ADDI	r4,	r4,	0
$0BB1_247:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_247
	ADDK	r4,	r4,	r4
$0BB1_248:
	LWI	r3,	r19,	288
	ADDI	r3,	r3,	2
	SWI	r3,	r19,	288
	LWI	r3,	r19,	292
	ADD	r5,	r3,	r4
	LWI	r6,	r19,	276
	SW	r6,	r3,	r4
	SWI	r21,	r5,	4
	brid	$0BB1_254
	SWI	r20,	r19,	276
$0BB1_249:
	LWI	r3,	r19,	272
	CMP	r3,	r3,	r20
	bgeid	r3,	$0BB1_253
	NOP
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r4,	r19,	288
	beqid	r3,	$0BB1_252
	ADDI	r4,	r4,	0
$0BB1_251:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_251
	ADDK	r4,	r4,	r4
$0BB1_252:
	LWI	r3,	r19,	288
	ADDI	r3,	r3,	2
	SWI	r3,	r19,	288
	LWI	r3,	r19,	292
	ADD	r5,	r3,	r4
	SW	r20,	r3,	r4
	LWI	r3,	r19,	272
	SWI	r3,	r5,	4
$0BB1_253:
	SWI	r21,	r19,	272
$0BB1_254:
	LWI	r4,	r19,	276
	LWI	r3,	r19,	272
	CMP	r3,	r3,	r4
	bltid	r3,	$0BB1_47
	NOP
$0BB1_255:
	ADD	r3,	r0,	r0
	LWI	r4,	r19,	288
	CMP	r3,	r3,	r4
	bgtid	r3,	$0BB1_42
	NOP
	LWI	r1,	r19,	312
	ADDI	r1,	r1,	-4
	LWI	r8,	r19,	296
	MULI	r3,	r8,	52
	RSUB	r20,	r3,	r1
	ADDI	r4,	r0,	31
	ADD	r1,	r20,	r0
	ANDI	r4,	r4,	31
	beqid	r4,	$0BB1_258
	ADDI	r5,	r8,	0
$0BB1_257:
	sra	r5,	r5
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB1_257
	NOP
$0BB1_258:
	ADDI	r1,	r1,	4
	ADD	r4,	r20,	r0
	LWI	r6,	r19,	296
	ADD	r9,	r0,	r0
$0BB1_259:
	SWI	r0,	r4,	0
	SWI	r0,	r4,	4
	SWI	r0,	r4,	8
	SWI	r0,	r4,	12
	SWI	r0,	r4,	16
	ADDI	r7,	r0,	1065353216
	SWI	r0,	r4,	20
	SWI	r7,	r4,	24
	ADDI	r8,	r0,	-1
	ADDK	r6,	r6,	r8
	ADDKC	r5,	r5,	r8
	ADDI	r8,	r4,	52
	SWI	r7,	r4,	28
	BITOR	r10,	r6,	r5
	SWI	r7,	r4,	32
	CMP	r7,	r9,	r10
	bneid	r7,	$0BB1_259
	ADD	r4,	r8,	r0
	ADDI	r1,	r1,	-4
	ADDI	r3,	r3,	3
	ADDI	r4,	r0,	-4
	BITAND	r3,	r3,	r4
	RSUB	r21,	r3,	r1
	ADDI	r3,	r0,	31
	ADD	r1,	r21,	r0
	ANDI	r3,	r3,	31
	LWI	r8,	r19,	296
	beqid	r3,	$0BB1_262
	ADDI	r4,	r8,	0
$0BB1_261:
	sra	r4,	r4
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_261
	NOP
$0BB1_262:
	ADDI	r1,	r1,	4
	ADD	r3,	r21,	r0
	LWI	r5,	r19,	296
	ADD	r8,	r0,	r0
$0BB1_263:
	SWI	r0,	r3,	0
	SWI	r0,	r3,	4
	SWI	r0,	r3,	8
	SWI	r0,	r3,	12
	SWI	r0,	r3,	16
	ADDI	r6,	r0,	1065353216
	SWI	r0,	r3,	20
	SWI	r6,	r3,	24
	ADDI	r7,	r0,	-1
	ADDK	r5,	r5,	r7
	ADDKC	r4,	r4,	r7
	ADDI	r7,	r3,	52
	SWI	r6,	r3,	28
	BITOR	r9,	r5,	r4
	SWI	r6,	r3,	32
	CMP	r6,	r8,	r9
	bneid	r6,	$0BB1_263
	ADD	r3,	r7,	r0
	ADDI	r1,	r1,	-8
	brlid	r15,	__floatsidf
	LWI	r6,	r19,	296
	ADDI	r1,	r1,	8
	ADD	r22,	r3,	r0
	ADD	r23,	r4,	r0
	ADDI	r1,	r1,	-12
	ADD	r6,	r22,	r0
	brlid	r15,	log
	ADD	r7,	r23,	r0
	ADDI	r1,	r1,	12
	ADD	r24,	r3,	r0
	ADD	r25,	r4,	r0
	ADD	r26,	r0,	r0
	ADDI	r1,	r1,	-12
	ADDI	r6,	r0,	1073741824
	brlid	r15,	log
	ADD	r7,	r26,	r0
	ADDI	r1,	r1,	12
	ADDI	r1,	r1,	-20
	ADD	r6,	r24,	r0
	ADD	r7,	r25,	r0
	ADD	r8,	r3,	r0
	brlid	r15,	__divdf3
	ADD	r9,	r4,	r0
	ADDI	r1,	r1,	20
	ADDI	r1,	r1,	-12
	ADD	r6,	r3,	r0
	brlid	r15,	__fixdfsi
	ADD	r7,	r4,	r0
	ADDI	r1,	r1,	12
	ADD	r24,	r3,	r0
	ADDI	r1,	r1,	-16
	ADDI	r8,	r24,	-1
	ADDI	r25,	r0,	1072693248
	ADD	r6,	r25,	r0
	brlid	r15,	ldexp
	ADD	r7,	r26,	r0
	ADDI	r1,	r1,	16
	ADD	r27,	r3,	r0
	ADD	r28,	r4,	r0
	ADDI	r1,	r1,	-12
	ADD	r6,	r27,	r0
	brlid	r15,	__fixdfsi
	ADD	r7,	r28,	r0
	ADDI	r1,	r1,	12
	ADD	r29,	r3,	r0
	ADDI	r1,	r1,	-16
	ADD	r6,	r25,	r0
	ADD	r7,	r26,	r0
	brlid	r15,	ldexp
	ADD	r8,	r24,	r0
	ADDI	r1,	r1,	16
	ADDI	r1,	r1,	-20
	ADDI	r8,	r0,	-1074790400
	ADD	r6,	r3,	r0
	ADD	r7,	r4,	r0
	brlid	r15,	__adddf3
	ADD	r9,	r26,	r0
	ADDI	r1,	r1,	20
	ADDI	r1,	r1,	-20
	ADD	r6,	r22,	r0
	ADD	r7,	r23,	r0
	ADD	r8,	r3,	r0
	brlid	r15,	__subdf3
	ADD	r9,	r4,	r0
	ADDI	r1,	r1,	20
	ADDI	r1,	r1,	-12
	ADD	r6,	r3,	r0
	brlid	r15,	__fixdfsi
	ADD	r7,	r4,	r0
	ADDI	r1,	r1,	12
	ADDI	r22,	r0,	1
	CMP	r4,	r3,	r29
	bltid	r4,	$0BB1_266
	ADD	r5,	r22,	r0
	ADDI	r5,	r0,	0
$0BB1_266:
	bneid	r5,	$0BB1_268
	ADDI	r1,	r1,	-8
	ADD	r29,	r3,	r0
$0BB1_268:
	brlid	r15,	__floatsidf
	ADD	r6,	r29,	r0
	ADDI	r1,	r1,	8
	ADDI	r1,	r1,	-20
	ADD	r6,	r27,	r0
	ADD	r7,	r28,	r0
	ADD	r8,	r3,	r0
	brlid	r15,	__adddf3
	ADD	r9,	r4,	r0
	ADDI	r1,	r1,	20
	ADDI	r1,	r1,	-12
	ADDI	r23,	r0,	31
	ADD	r6,	r3,	r0
	brlid	r15,	__fixdfsi
	ADD	r7,	r4,	r0
	ANDI	r4,	r23,	31
	beqid	r4,	$0BB1_271
	ADDI	r1,	r1,	12
	LWI	r9,	r19,	304
	ADDI	r5,	r9,	0
$0BB1_270:
	sra	r5,	r5
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB1_270
	NOP
$0BB1_271:
	LWI	r9,	r19,	304
	MULI	r4,	r9,	52
	ADD	r8,	r26,	r0
	ADD	r23,	r26,	r0
$0BB1_272:
	MULI	r5,	r22,	13
	ADDI	r6,	r0,	2
	ANDI	r6,	r6,	31
	beqid	r6,	$0BB1_274
	ADDI	r7,	r5,	0
$0BB1_273:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB1_273
	ADDK	r7,	r7,	r7
$0BB1_274:
	LWI	r6,	r19,	228
	ADD	r6,	r6,	r7
	LWI	r7,	r6,	-52
	LWI	r9,	r6,	-48
	LWI	r10,	r6,	-44
	LWI	r11,	r6,	-40
	LWI	r12,	r6,	-36
	LWI	r6,	r6,	-32
	CMP	r24,	r3,	r22
	bgeid	r24,	$0BB1_276
	NOP
	MULI	r5,	r8,	52
	ADD	r24,	r21,	r5
	SW	r7,	r21,	r5
	SWI	r9,	r24,	4
	SWI	r10,	r24,	8
	SWI	r11,	r24,	12
	SWI	r12,	r24,	16
	ADDI	r5,	r0,	1065353216
	SWI	r6,	r24,	20
	SWI	r5,	r24,	24
	brid	$0BB1_291
	ADDI	r8,	r8,	1
$0BB1_276:
	CMP	r24,	r22,	r3
	bneid	r24,	$0BB1_290
	NOP
	ADDI	r6,	r0,	2
	ANDI	r7,	r6,	31
	beqid	r7,	$0BB1_279
	ADDI	r9,	r5,	0
$0BB1_278:
	ADDI	r7,	r7,	-1
	bneid	r7,	$0BB1_278
	ADDK	r9,	r9,	r9
$0BB1_279:
	ANDI	r7,	r6,	31
	beqid	r7,	$0BB1_281
	ADDI	r10,	r5,	0
$0BB1_280:
	ADDI	r7,	r7,	-1
	bneid	r7,	$0BB1_280
	ADDK	r10,	r10,	r10
$0BB1_281:
	ANDI	r7,	r6,	31
	beqid	r7,	$0BB1_283
	ADDI	r11,	r5,	0
$0BB1_282:
	ADDI	r7,	r7,	-1
	bneid	r7,	$0BB1_282
	ADDK	r11,	r11,	r11
$0BB1_283:
	LWI	r7,	r19,	300
	ADD	r7,	r7,	r4
	LWI	r12,	r19,	228
	ADD	r9,	r12,	r9
	LWI	r24,	r19,	232
	SWI	r24,	r7,	44
	ADD	r10,	r12,	r10
	ADD	r11,	r12,	r11
	LWI	r9,	r9,	-32
	LWI	r10,	r10,	-36
	LWI	r11,	r11,	-40
	SWI	r11,	r7,	12
	ANDI	r12,	r6,	31
	beqid	r12,	$0BB1_285
	ADDI	r24,	r5,	0
$0BB1_284:
	ADDI	r12,	r12,	-1
	bneid	r12,	$0BB1_284
	ADDK	r24,	r24,	r24
$0BB1_285:
	ANDI	r12,	r6,	31
	beqid	r12,	$0BB1_287
	ADDI	r25,	r5,	0
$0BB1_286:
	ADDI	r12,	r12,	-1
	bneid	r12,	$0BB1_286
	ADDK	r25,	r25,	r25
$0BB1_287:
	ANDI	r6,	r6,	31
	beqid	r6,	$0BB1_289
	ADDI	r12,	r5,	0
$0BB1_288:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB1_288
	ADDK	r12,	r12,	r12
$0BB1_289:
	SWI	r10,	r7,	16
	LWI	r6,	r19,	228
	ADD	r5,	r6,	r24
	SWI	r9,	r7,	20
	ADD	r9,	r6,	r25
	ADD	r6,	r6,	r12
	LWI	r12,	r5,	-44
	LWI	r9,	r9,	-48
	LWI	r6,	r6,	-52
	LWI	r5,	r19,	300
	SW	r6,	r5,	r4
	SWI	r10,	r19,	116
	SWI	r11,	r19,	120
	SWI	r9,	r19,	128
	SWI	r6,	r19,	124
	SWI	r9,	r7,	4
	brid	$0BB1_292
	SWI	r12,	r7,	8
$0BB1_290:
	MULI	r5,	r23,	52
	ADD	r24,	r20,	r5
	SW	r7,	r20,	r5
	SWI	r9,	r24,	4
	SWI	r10,	r24,	8
	SWI	r11,	r24,	12
	SWI	r12,	r24,	16
	ADDI	r5,	r0,	1065353216
	SWI	r6,	r24,	20
	SWI	r5,	r24,	24
	ADDI	r23,	r23,	1
$0BB1_291:
	SWI	r5,	r24,	28
	SWI	r5,	r24,	32
$0BB1_292:
	ADDI	r5,	r0,	-1
	LWI	r6,	r19,	296
	ADDK	r6,	r6,	r5
	SWI	r6,	r19,	296
	ADDKC	r26,	r26,	r5
	ADDI	r22,	r22,	1
	ADD	r5,	r0,	r0
	BITOR	r6,	r6,	r26
	CMP	r5,	r5,	r6
	bneid	r5,	$0BB1_272
	NOP
	ADDI	r3,	r0,	1
	ANDI	r3,	r3,	31
	LWI	r9,	r19,	304
	beqid	r3,	$0BB1_295
	ADDI	r22,	r9,	0
$0BB1_294:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB1_294
	ADDK	r22,	r22,	r22
$0BB1_295:
	ADDI	r1,	r1,	-20
	ORI	r9,	r22,	1
	ADD	r6,	r21,	r0
	brlid	r15,	_ZN9PhotonMap8generateEP6PhotonS1_ii
	LWI	r7,	r19,	300
	ADDI	r1,	r1,	20
	ADDI	r1,	r1,	-20
	ADDI	r9,	r22,	2
	ADD	r6,	r20,	r0
	LWI	r7,	r19,	300
	brlid	r15,	_ZN9PhotonMap8generateEP6PhotonS1_ii
	ADD	r8,	r23,	r0
	ADDI	r1,	r1,	20
	LWI	r1,	r19,	308
$0BB1_296:
	ORI	r3,	r0,	__stack_chk_guard
	LWI	r3,	r3,	0
	LWI	r4,	r19,	56
	CMP	r3,	r4,	r3
	bneid	r3,	$0BB1_298
	NOP
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
	rtsd	r15,	8
	ADDI	r1,	r1,	316
$0BB1_298:
	brlid	r15,	__stack_chk_fail
	ADDI	r1,	r1,	-4
	ADDI	r1,	r1,	4
#	.end	_ZN9PhotonMap8generateEP6PhotonS1_ii
$0tmp1:
#	.size	_ZN9PhotonMap8generateEP6PhotonS1_ii, ($tmp1)-_ZN9PhotonMap8generateEP6PhotonS1_ii

#	.align	2
#	.type	_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi,@function
#	.ent	_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi # @_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi
_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi:
#	.frame	r1,200,r15
#	.mask	0xfff08000
	ADDI	r1,	r1,	-200
	SWI	r15,	r1,	0
	SWI	r20,	r1,	80
	SWI	r21,	r1,	76
	SWI	r22,	r1,	72
	SWI	r23,	r1,	68
	SWI	r24,	r1,	64
	SWI	r25,	r1,	60
	SWI	r26,	r1,	56
	SWI	r27,	r1,	52
	SWI	r28,	r1,	48
	SWI	r29,	r1,	44
	SWI	r30,	r1,	40
	SWI	r31,	r1,	36
	ADD	r20,	r10,	r0
	ADD	r21,	r9,	r0
	ADD	r22,	r8,	r0
	ADD	r23,	r7,	r0
	ADD	r24,	r6,	r0
	ADDI	r3,	r0,	1
	ANDI	r3,	r3,	31
	ADDI	r4,	r21,	0
	beqid	r3,	$0BB2_3
	ADD	r25,	r4,	r0
	ADD	r25,	r4,	r0
$0BB2_2:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB2_2
	ADDK	r25,	r25,	r25
$0BB2_3:
	ADDI	r3,	r0,	31
	ANDI	r3,	r3,	31
	beqid	r3,	$0BB2_5
	NOP
$0BB2_4:
	sra	r4,	r4
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB2_4
	NOP
$0BB2_5:
	LWI	r26,	r1,	224
	LWI	r27,	r1,	228
	ADDI	r28,	r25,	2
	LWI	r29,	r1,	232
	CMP	r3,	r27,	r28
	bgeid	r3,	$0BB2_23
	NOP
	MULI	r3,	r21,	52
	ADD	r4,	r26,	r3
	LWI	r5,	r4,	44
	ADDI	r6,	r0,	1
	CMP	r6,	r6,	r5
	beqid	r6,	$0BB2_9
	NOP
	ADD	r4,	r0,	r0
	CMP	r4,	r4,	r5
	bneid	r4,	$0BB2_10
	NOP
	SWI	r23,	r1,	88
	LWI	r4,	r1,	88
	LW	r3,	r26,	r3
	brid	$0BB2_11
	FPRSUB	r3,	r3,	r4
$0BB2_9:
	SWI	r24,	r1,	84
	LWI	r3,	r1,	84
	LWI	r4,	r4,	4
	brid	$0BB2_11
	FPRSUB	r3,	r4,	r3
$0BB2_10:
	ADD	r3,	r26,	r3
	LWI	r3,	r3,	8
	FPRSUB	r3,	r3,	r22
$0BB2_11:
	ORI	r4,	r0,	0
	FPUN	r5,	r3,	r4
	FPGE	r4,	r3,	r4
	BITOR	r4,	r5,	r4
	bneid	r4,	$0BB2_13
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB2_13:
	bneid	r6,	$0BB2_18
	NOP
	FPMUL	r3,	r3,	r3
	ORI	r4,	r0,	1056629063
	FPUN	r5,	r3,	r4
	FPGE	r3,	r3,	r4
	SWI	r26,	r1,	24
	SWI	r27,	r1,	28
	SWI	r29,	r1,	32
	BITOR	r3,	r5,	r3
	bneid	r3,	$0BB2_16
	ADDI	r30,	r0,	1
	ADDI	r30,	r0,	0
$0BB2_16:
	ORI	r9,	r25,	1
	ADD	r6,	r24,	r0
	ADD	r7,	r23,	r0
	ADD	r8,	r22,	r0
	brlid	r15,	_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi
	ADD	r10,	r20,	r0
	bneid	r30,	$0BB2_23
	NOP
	SWI	r26,	r1,	24
	SWI	r27,	r1,	28
	SWI	r29,	r1,	32
	ADD	r6,	r24,	r0
	ADD	r7,	r23,	r0
	ADD	r8,	r22,	r0
	brid	$0BB2_22
	ADD	r9,	r28,	r0
$0BB2_18:
	FPMUL	r3,	r3,	r3
	ORI	r4,	r0,	1056629063
	FPUN	r5,	r3,	r4
	FPGE	r3,	r3,	r4
	SWI	r26,	r1,	24
	SWI	r27,	r1,	28
	SWI	r29,	r1,	32
	BITOR	r3,	r5,	r3
	bneid	r3,	$0BB2_20
	ADDI	r30,	r0,	1
	ADDI	r30,	r0,	0
$0BB2_20:
	ADD	r6,	r24,	r0
	ADD	r7,	r23,	r0
	ADD	r8,	r22,	r0
	ADD	r9,	r28,	r0
	brlid	r15,	_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi
	ADD	r10,	r20,	r0
	bneid	r30,	$0BB2_23
	NOP
	SWI	r26,	r1,	24
	SWI	r27,	r1,	28
	SWI	r29,	r1,	32
	ORI	r9,	r25,	1
	ADD	r6,	r24,	r0
	ADD	r7,	r23,	r0
	ADD	r8,	r22,	r0
$0BB2_22:
	brlid	r15,	_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi
	ADD	r10,	r20,	r0
$0BB2_23:
	MULI	r3,	r21,	52
	ADD	r4,	r26,	r3
	SWI	r23,	r1,	96
	SWI	r24,	r1,	92
	LW	r5,	r26,	r3
	LWI	r6,	r1,	96
	LWI	r7,	r4,	4
	LWI	r8,	r1,	92
	FPRSUB	r6,	r6,	r5
	FPRSUB	r8,	r8,	r7
	LWI	r4,	r4,	8
	FPRSUB	r9,	r22,	r4
	FPMUL	r6,	r6,	r6
	FPMUL	r8,	r8,	r8
	FPADD	r6,	r6,	r8
	FPMUL	r8,	r9,	r9
	FPADD	r6,	r6,	r8
	ORI	r8,	r0,	1056629063
	FPUN	r9,	r6,	r8
	FPGE	r6,	r6,	r8
	BITOR	r6,	r9,	r6
	bneid	r6,	$0BB2_25
	ADDI	r8,	r0,	1
	ADDI	r8,	r0,	0
$0BB2_25:
	bneid	r8,	$0BB2_166
	NOP
	ADD	r3,	r26,	r3
	lbui	r6,	r3,	12
	ADDI	r8,	r0,	8
	LWI	r9,	r29,	0
	lbui	r10,	r3,	14
	SWI	r5,	r1,	136
	ANDI	r5,	r8,	31
	beqid	r5,	$0BB2_28
	ADDI	r6,	r6,	0
$0BB2_27:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB2_27
	ADDK	r6,	r6,	r6
$0BB2_28:
	lbui	r5,	r3,	13
	lbui	r11,	r3,	16
	LWI	r12,	r1,	136
	lbui	r21,	r3,	47
	SWI	r21,	r1,	184
	ANDI	r21,	r8,	31
	beqid	r21,	$0BB2_30
	ADDI	r10,	r10,	0
$0BB2_29:
	ADDI	r21,	r21,	-1
	bneid	r21,	$0BB2_29
	ADDK	r10,	r10,	r10
$0BB2_30:
	ADDI	r21,	r0,	24
	lbui	r22,	r3,	15
	lbui	r23,	r3,	46
	SWI	r23,	r1,	188
	lbui	r23,	r3,	45
	SWI	r23,	r1,	192
	lbui	r23,	r3,	44
	SWI	r23,	r1,	196
	lbui	r23,	r3,	18
	SWI	r7,	r1,	140
	ANDI	r7,	r21,	31
	ADDI	r24,	r12,	0
	beqid	r7,	$0BB2_33
	ADD	r25,	r24,	r0
	ADD	r25,	r24,	r0
$0BB2_32:
	srl	r25,	r25
	ADDI	r7,	r7,	-1
	bneid	r7,	$0BB2_32
	NOP
$0BB2_33:
	ADDI	r7,	r0,	16
	ANDI	r26,	r7,	31
	beqid	r26,	$0BB2_35
	NOP
$0BB2_34:
	srl	r24,	r24
	ADDI	r26,	r26,	-1
	bneid	r26,	$0BB2_34
	NOP
$0BB2_35:
	ANDI	r26,	r8,	31
	beqid	r26,	$0BB2_37
	ADDI	r27,	r12,	0
$0BB2_36:
	srl	r27,	r27
	ADDI	r26,	r26,	-1
	bneid	r26,	$0BB2_36
	NOP
$0BB2_37:
	ANDI	r26,	r8,	31
	beqid	r26,	$0BB2_39
	ADDI	r11,	r11,	0
$0BB2_38:
	ADDI	r26,	r26,	-1
	bneid	r26,	$0BB2_38
	ADDK	r11,	r11,	r11
$0BB2_39:
	BITOR	r5,	r6,	r5
	lbui	r6,	r3,	17
	ANDI	r26,	r7,	31
	beqid	r26,	$0BB2_41
	ADDI	r5,	r5,	0
$0BB2_40:
	ADDI	r26,	r26,	-1
	bneid	r26,	$0BB2_40
	ADDK	r5,	r5,	r5
$0BB2_41:
	LWI	r26,	r1,	140
	lbui	r28,	r3,	20
	ANDI	r30,	r8,	31
	beqid	r30,	$0BB2_43
	ADDI	r23,	r23,	0
$0BB2_42:
	ADDI	r30,	r30,	-1
	bneid	r30,	$0BB2_42
	ADDK	r23,	r23,	r23
$0BB2_43:
	MULI	r30,	r9,	52
	ADD	r31,	r20,	r30
	BITOR	r10,	r10,	r22
	BITOR	r5,	r5,	r10
	lbui	r10,	r3,	19
	sb	r25,	r20,	r30
	sbi	r24,	r31,	1
	sbi	r27,	r31,	2
	sbi	r12,	r31,	3
	lbui	r12,	r3,	22
	SWI	r5,	r1,	132
	SWI	r4,	r1,	144
	ANDI	r4,	r21,	31
	ADDI	r5,	r26,	0
	beqid	r4,	$0BB2_46
	ADD	r20,	r5,	r0
	ADD	r20,	r5,	r0
$0BB2_45:
	srl	r20,	r20
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_45
	NOP
$0BB2_46:
	ANDI	r4,	r7,	31
	beqid	r4,	$0BB2_48
	NOP
$0BB2_47:
	srl	r5,	r5
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_47
	NOP
$0BB2_48:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_50
	ADDI	r22,	r26,	0
$0BB2_49:
	srl	r22,	r22
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_49
	NOP
$0BB2_50:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_52
	ADDI	r24,	r28,	0
$0BB2_51:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_51
	ADDK	r24,	r24,	r24
$0BB2_52:
	BITOR	r4,	r11,	r6
	lbui	r6,	r3,	21
	ANDI	r11,	r7,	31
	beqid	r11,	$0BB2_54
	ADDI	r4,	r4,	0
$0BB2_53:
	ADDI	r11,	r11,	-1
	bneid	r11,	$0BB2_53
	ADDK	r4,	r4,	r4
$0BB2_54:
	LWI	r11,	r1,	144
	lbui	r25,	r3,	24
	LWI	r27,	r1,	132
	ANDI	r28,	r8,	31
	beqid	r28,	$0BB2_56
	ADDI	r12,	r12,	0
$0BB2_55:
	ADDI	r28,	r28,	-1
	bneid	r28,	$0BB2_55
	ADDK	r12,	r12,	r12
$0BB2_56:
	BITOR	r10,	r23,	r10
	BITOR	r4,	r4,	r10
	lbui	r10,	r3,	23
	sbi	r20,	r31,	4
	sbi	r5,	r31,	5
	sbi	r22,	r31,	6
	sbi	r26,	r31,	7
	lbui	r5,	r3,	26
	SWI	r4,	r1,	100
	SWI	r27,	r1,	148
	ANDI	r4,	r21,	31
	ADDI	r20,	r11,	0
	beqid	r4,	$0BB2_59
	ADD	r22,	r20,	r0
	ADD	r22,	r20,	r0
$0BB2_58:
	srl	r22,	r22
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_58
	NOP
$0BB2_59:
	ANDI	r4,	r7,	31
	beqid	r4,	$0BB2_61
	NOP
$0BB2_60:
	srl	r20,	r20
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_60
	NOP
$0BB2_61:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_63
	ADDI	r23,	r11,	0
$0BB2_62:
	srl	r23,	r23
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_62
	NOP
$0BB2_63:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_65
	ADDI	r25,	r25,	0
$0BB2_64:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_64
	ADDK	r25,	r25,	r25
$0BB2_65:
	BITOR	r4,	r24,	r6
	lbui	r6,	r3,	25
	ANDI	r24,	r7,	31
	beqid	r24,	$0BB2_67
	ADDI	r4,	r4,	0
$0BB2_66:
	ADDI	r24,	r24,	-1
	bneid	r24,	$0BB2_66
	ADDK	r4,	r4,	r4
$0BB2_67:
	LWI	r24,	r1,	148
	lbui	r26,	r3,	28
	LWI	r27,	r1,	100
	ANDI	r28,	r8,	31
	beqid	r28,	$0BB2_69
	ADDI	r5,	r5,	0
$0BB2_68:
	ADDI	r28,	r28,	-1
	bneid	r28,	$0BB2_68
	ADDK	r5,	r5,	r5
$0BB2_69:
	BITOR	r10,	r12,	r10
	BITOR	r4,	r4,	r10
	lbui	r10,	r3,	27
	sbi	r22,	r31,	8
	sbi	r20,	r31,	9
	sbi	r23,	r31,	10
	sbi	r11,	r31,	11
	lbui	r11,	r3,	30
	SWI	r4,	r1,	104
	SWI	r27,	r1,	152
	ANDI	r4,	r21,	31
	ADDI	r12,	r24,	0
	beqid	r4,	$0BB2_72
	ADD	r20,	r12,	r0
	ADD	r20,	r12,	r0
$0BB2_71:
	srl	r20,	r20
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_71
	NOP
$0BB2_72:
	ANDI	r4,	r7,	31
	beqid	r4,	$0BB2_74
	NOP
$0BB2_73:
	srl	r12,	r12
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_73
	NOP
$0BB2_74:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_76
	ADDI	r22,	r24,	0
$0BB2_75:
	srl	r22,	r22
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_75
	NOP
$0BB2_76:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_78
	ADDI	r23,	r26,	0
$0BB2_77:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_77
	ADDK	r23,	r23,	r23
$0BB2_78:
	BITOR	r4,	r25,	r6
	lbui	r6,	r3,	29
	ANDI	r25,	r7,	31
	beqid	r25,	$0BB2_80
	ADDI	r4,	r4,	0
$0BB2_79:
	ADDI	r25,	r25,	-1
	bneid	r25,	$0BB2_79
	ADDK	r4,	r4,	r4
$0BB2_80:
	LWI	r25,	r1,	152
	lbui	r26,	r3,	32
	LWI	r27,	r1,	104
	ANDI	r28,	r8,	31
	beqid	r28,	$0BB2_82
	ADDI	r11,	r11,	0
$0BB2_81:
	ADDI	r28,	r28,	-1
	bneid	r28,	$0BB2_81
	ADDK	r11,	r11,	r11
$0BB2_82:
	BITOR	r5,	r5,	r10
	BITOR	r4,	r4,	r5
	lbui	r5,	r3,	31
	sbi	r20,	r31,	12
	sbi	r12,	r31,	13
	sbi	r22,	r31,	14
	sbi	r24,	r31,	15
	lbui	r10,	r3,	34
	SWI	r4,	r1,	128
	SWI	r27,	r1,	156
	ANDI	r4,	r21,	31
	ADDI	r12,	r25,	0
	beqid	r4,	$0BB2_85
	ADD	r20,	r12,	r0
	ADD	r20,	r12,	r0
$0BB2_84:
	srl	r20,	r20
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_84
	NOP
$0BB2_85:
	ANDI	r4,	r7,	31
	beqid	r4,	$0BB2_87
	NOP
$0BB2_86:
	srl	r12,	r12
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_86
	NOP
$0BB2_87:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_89
	ADDI	r22,	r25,	0
$0BB2_88:
	srl	r22,	r22
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_88
	NOP
$0BB2_89:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_91
	ADDI	r24,	r26,	0
$0BB2_90:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_90
	ADDK	r24,	r24,	r24
$0BB2_91:
	BITOR	r4,	r23,	r6
	lbui	r6,	r3,	33
	ANDI	r23,	r7,	31
	beqid	r23,	$0BB2_93
	ADDI	r4,	r4,	0
$0BB2_92:
	ADDI	r23,	r23,	-1
	bneid	r23,	$0BB2_92
	ADDK	r4,	r4,	r4
$0BB2_93:
	LWI	r23,	r1,	156
	lbui	r26,	r3,	36
	LWI	r27,	r1,	128
	ANDI	r28,	r8,	31
	beqid	r28,	$0BB2_95
	ADDI	r10,	r10,	0
$0BB2_94:
	ADDI	r28,	r28,	-1
	bneid	r28,	$0BB2_94
	ADDK	r10,	r10,	r10
$0BB2_95:
	BITOR	r5,	r11,	r5
	BITOR	r4,	r4,	r5
	lbui	r5,	r3,	35
	sbi	r20,	r31,	16
	sbi	r12,	r31,	17
	sbi	r22,	r31,	18
	sbi	r25,	r31,	19
	lbui	r11,	r3,	38
	SWI	r4,	r1,	108
	SWI	r27,	r1,	160
	ANDI	r4,	r21,	31
	ADDI	r12,	r23,	0
	beqid	r4,	$0BB2_98
	ADD	r20,	r12,	r0
	ADD	r20,	r12,	r0
$0BB2_97:
	srl	r20,	r20
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_97
	NOP
$0BB2_98:
	ANDI	r4,	r7,	31
	beqid	r4,	$0BB2_100
	NOP
$0BB2_99:
	srl	r12,	r12
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_99
	NOP
$0BB2_100:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_102
	ADDI	r22,	r23,	0
$0BB2_101:
	srl	r22,	r22
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_101
	NOP
$0BB2_102:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_104
	ADDI	r25,	r26,	0
$0BB2_103:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_103
	ADDK	r25,	r25,	r25
$0BB2_104:
	BITOR	r4,	r24,	r6
	lbui	r6,	r3,	37
	ANDI	r24,	r7,	31
	beqid	r24,	$0BB2_106
	ADDI	r4,	r4,	0
$0BB2_105:
	ADDI	r24,	r24,	-1
	bneid	r24,	$0BB2_105
	ADDK	r4,	r4,	r4
$0BB2_106:
	LWI	r24,	r1,	160
	lbui	r26,	r3,	40
	LWI	r27,	r1,	108
	ANDI	r28,	r8,	31
	beqid	r28,	$0BB2_108
	ADDI	r11,	r11,	0
$0BB2_107:
	ADDI	r28,	r28,	-1
	bneid	r28,	$0BB2_107
	ADDK	r11,	r11,	r11
$0BB2_108:
	BITOR	r5,	r10,	r5
	BITOR	r4,	r4,	r5
	lbui	r5,	r3,	39
	sbi	r20,	r31,	20
	sbi	r12,	r31,	21
	sbi	r22,	r31,	22
	sbi	r23,	r31,	23
	lbui	r10,	r3,	42
	SWI	r4,	r1,	112
	SWI	r27,	r1,	164
	ANDI	r4,	r21,	31
	ADDI	r12,	r24,	0
	beqid	r4,	$0BB2_111
	ADD	r20,	r12,	r0
	ADD	r20,	r12,	r0
$0BB2_110:
	srl	r20,	r20
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_110
	NOP
$0BB2_111:
	ANDI	r4,	r7,	31
	beqid	r4,	$0BB2_113
	NOP
$0BB2_112:
	srl	r12,	r12
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_112
	NOP
$0BB2_113:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_115
	ADDI	r22,	r24,	0
$0BB2_114:
	srl	r22,	r22
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_114
	NOP
$0BB2_115:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_117
	ADDI	r23,	r26,	0
$0BB2_116:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_116
	ADDK	r23,	r23,	r23
$0BB2_117:
	BITOR	r4,	r25,	r6
	lbui	r6,	r3,	41
	ANDI	r25,	r7,	31
	beqid	r25,	$0BB2_119
	ADDI	r4,	r4,	0
$0BB2_118:
	ADDI	r25,	r25,	-1
	bneid	r25,	$0BB2_118
	ADDK	r4,	r4,	r4
$0BB2_119:
	LWI	r25,	r1,	164
	LWI	r26,	r1,	112
	ANDI	r27,	r8,	31
	beqid	r27,	$0BB2_121
	ADDI	r10,	r10,	0
$0BB2_120:
	ADDI	r27,	r27,	-1
	bneid	r27,	$0BB2_120
	ADDK	r10,	r10,	r10
$0BB2_121:
	BITOR	r5,	r11,	r5
	BITOR	r4,	r4,	r5
	lbui	r5,	r3,	43
	sbi	r20,	r31,	24
	sbi	r12,	r31,	25
	sbi	r22,	r31,	26
	sbi	r24,	r31,	27
	SWI	r4,	r1,	124
	SWI	r26,	r1,	168
	ANDI	r4,	r21,	31
	ADDI	r11,	r25,	0
	beqid	r4,	$0BB2_124
	ADD	r12,	r11,	r0
	ADD	r12,	r11,	r0
$0BB2_123:
	srl	r12,	r12
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_123
	NOP
$0BB2_124:
	ANDI	r4,	r7,	31
	beqid	r4,	$0BB2_126
	NOP
$0BB2_125:
	srl	r11,	r11
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_125
	NOP
$0BB2_126:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_128
	ADDI	r20,	r25,	0
$0BB2_127:
	srl	r20,	r20
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_127
	NOP
$0BB2_128:
	BITOR	r4,	r23,	r6
	ANDI	r6,	r7,	31
	beqid	r6,	$0BB2_130
	ADDI	r4,	r4,	0
$0BB2_129:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB2_129
	ADDK	r4,	r4,	r4
$0BB2_130:
	BITOR	r5,	r10,	r5
	LWI	r6,	r1,	168
	lbui	r10,	r3,	48
	BITOR	r4,	r4,	r5
	LWI	r5,	r1,	124
	sbi	r12,	r31,	28
	sbi	r11,	r31,	29
	sbi	r20,	r31,	30
	sbi	r25,	r31,	31
	lbui	r11,	r3,	50
	SWI	r4,	r1,	120
	SWI	r5,	r1,	172
	ANDI	r4,	r21,	31
	ADDI	r5,	r6,	0
	beqid	r4,	$0BB2_133
	ADD	r12,	r5,	r0
	ADD	r12,	r5,	r0
$0BB2_132:
	srl	r12,	r12
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_132
	NOP
$0BB2_133:
	ANDI	r4,	r7,	31
	beqid	r4,	$0BB2_135
	NOP
$0BB2_134:
	srl	r5,	r5
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_134
	NOP
$0BB2_135:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_137
	ADDI	r20,	r6,	0
$0BB2_136:
	srl	r20,	r20
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_136
	NOP
$0BB2_137:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_139
	ADDI	r10,	r10,	0
$0BB2_138:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_138
	ADDK	r10,	r10,	r10
$0BB2_139:
	lbui	r4,	r3,	49
	LWI	r22,	r1,	172
	LWI	r23,	r1,	120
	ANDI	r24,	r8,	31
	beqid	r24,	$0BB2_141
	ADDI	r11,	r11,	0
$0BB2_140:
	ADDI	r24,	r24,	-1
	bneid	r24,	$0BB2_140
	ADDK	r11,	r11,	r11
$0BB2_141:
	lbui	r3,	r3,	51
	sbi	r12,	r31,	32
	sbi	r5,	r31,	33
	sbi	r20,	r31,	34
	sbi	r6,	r31,	35
	SWI	r23,	r1,	176
	ANDI	r5,	r21,	31
	ADDI	r6,	r22,	0
	beqid	r5,	$0BB2_144
	ADD	r12,	r6,	r0
	ADD	r12,	r6,	r0
$0BB2_143:
	srl	r12,	r12
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB2_143
	NOP
$0BB2_144:
	ANDI	r5,	r7,	31
	beqid	r5,	$0BB2_146
	NOP
$0BB2_145:
	srl	r6,	r6
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB2_145
	NOP
$0BB2_146:
	ANDI	r5,	r8,	31
	beqid	r5,	$0BB2_148
	ADDI	r20,	r22,	0
$0BB2_147:
	srl	r20,	r20
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB2_147
	NOP
$0BB2_148:
	BITOR	r4,	r10,	r4
	ANDI	r5,	r7,	31
	beqid	r5,	$0BB2_150
	ADDI	r4,	r4,	0
$0BB2_149:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB2_149
	ADDK	r4,	r4,	r4
$0BB2_150:
	BITOR	r3,	r11,	r3
	LWI	r5,	r1,	176
	BITOR	r3,	r4,	r3
	sbi	r12,	r31,	36
	sbi	r6,	r31,	37
	sbi	r20,	r31,	38
	sbi	r22,	r31,	39
	SWI	r3,	r1,	116
	ANDI	r3,	r21,	31
	ADDI	r4,	r5,	0
	beqid	r3,	$0BB2_153
	ADD	r6,	r4,	r0
	ADD	r6,	r4,	r0
$0BB2_152:
	srl	r6,	r6
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB2_152
	NOP
$0BB2_153:
	ANDI	r3,	r7,	31
	beqid	r3,	$0BB2_155
	NOP
$0BB2_154:
	srl	r4,	r4
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB2_154
	NOP
$0BB2_155:
	ANDI	r3,	r8,	31
	beqid	r3,	$0BB2_157
	ADDI	r10,	r5,	0
$0BB2_156:
	srl	r10,	r10
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB2_156
	NOP
$0BB2_157:
	LWI	r3,	r1,	116
	sbi	r6,	r31,	40
	sbi	r4,	r31,	41
	sbi	r10,	r31,	42
	sbi	r5,	r31,	43
	SWI	r3,	r1,	180
	LWI	r3,	r1,	180
	LWI	r4,	r1,	196
	sbi	r4,	r31,	44
	LWI	r4,	r1,	192
	sbi	r4,	r31,	45
	LWI	r4,	r1,	188
	sbi	r4,	r31,	46
	LWI	r4,	r1,	184
	sbi	r4,	r31,	47
	ANDI	r4,	r21,	31
	ADDI	r5,	r3,	0
	beqid	r4,	$0BB2_160
	ADD	r6,	r5,	r0
	ADD	r6,	r5,	r0
$0BB2_159:
	srl	r6,	r6
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_159
	NOP
$0BB2_160:
	ANDI	r4,	r7,	31
	beqid	r4,	$0BB2_162
	NOP
$0BB2_161:
	srl	r5,	r5
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_161
	NOP
$0BB2_162:
	ANDI	r4,	r8,	31
	beqid	r4,	$0BB2_164
	ADDI	r7,	r3,	0
$0BB2_163:
	srl	r7,	r7
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB2_163
	NOP
$0BB2_164:
	sbi	r6,	r31,	48
	sbi	r5,	r31,	49
	sbi	r7,	r31,	50
	sbi	r3,	r31,	51
	ADDI	r3,	r9,	1
	ADDI	r4,	r0,	51
	SWI	r3,	r29,	0
	CMP	r3,	r4,	r3
	bltid	r3,	$0BB2_166
	NOP
	SWI	r9,	r29,	0
$0BB2_166:
	LWI	r31,	r1,	36
	LWI	r30,	r1,	40
	LWI	r29,	r1,	44
	LWI	r28,	r1,	48
	LWI	r27,	r1,	52
	LWI	r26,	r1,	56
	LWI	r25,	r1,	60
	LWI	r24,	r1,	64
	LWI	r23,	r1,	68
	LWI	r22,	r1,	72
	LWI	r21,	r1,	76
	LWI	r20,	r1,	80
	LWI	r15,	r1,	0
	rtsd	r15,	8
	ADDI	r1,	r1,	200
#	.end	_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi
$0tmp2:
#	.size	_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi, ($tmp2)-_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi


