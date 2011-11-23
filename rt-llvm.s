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
#	.frame	r19,1300668,r15
#	.mask	0xfff88000
	ADDI	r1,	r1,	-1300668
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
	SWI	r4,	r19,	1300596
	LOAD	r4,	r3,	4
	SWI	r4,	r19,	1300560
	LOAD	r4,	r3,	7
	SWI	r4,	r19,	1300608
	LOAD	r4,	r3,	2
	LOAD	r4,	r3,	5
	LOAD	r4,	r3,	12
	LOAD	r5,	r4,	0
	LOAD	r5,	r4,	1
	LOAD	r4,	r4,	2
	LOAD	r4,	r3,	10
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	1300524
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	1300528
	LOAD	r5,	r4,	2
	SWI	r5,	r19,	1300536
	ADDI	r5,	r4,	9
	LOAD	r6,	r5,	0
	LOAD	r6,	r5,	1
	ADDI	r6,	r4,	12
	LOAD	r5,	r5,	2
	LOAD	r5,	r6,	0
	SWI	r5,	r19,	1300612
	LOAD	r5,	r6,	1
	SWI	r5,	r19,	1300616
	LOAD	r5,	r6,	2
	SWI	r5,	r19,	1300620
	ADDI	r5,	r4,	15
	LOAD	r6,	r5,	0
	SWI	r6,	r19,	1300624
	LOAD	r6,	r5,	1
	SWI	r6,	r19,	1300628
	LOAD	r5,	r5,	2
	SWI	r5,	r19,	1300632
	ADDI	r4,	r4,	18
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	1300636
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	1300640
	LOAD	r4,	r4,	2
	SWI	r4,	r19,	1300644
	LOAD	r4,	r3,	28
	LOAD	r4,	r3,	29
	ADDI	r4,	r19,	520184
	LOAD	r5,	r3,	8
	SWI	r5,	r19,	1300508
	ADDI	r5,	r0,	15000
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
	ADDI	r3,	r3,	-780000
	ADD	r1,	r3,	r0
	ADD	r4,	r0,	r0
	ADDI	r5,	r0,	15000
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
	SWI	r3,	r19,	1300572
	LOAD	r3,	r3,	12
	LOAD	r4,	r3,	0
	LOAD	r5,	r3,	1
	LOAD	r3,	r3,	2
	SWI	r4,	r19,	1300184
	SWI	r5,	r19,	1300188
	SWI	r3,	r19,	1300192
	LWI	r3,	r19,	1300184
	SWI	r3,	r19,	1300544
	LWI	r3,	r19,	1300188
	SWI	r3,	r19,	1300548
	LWI	r3,	r19,	1300192
	SWI	r3,	r19,	1300552
	ADDI	r3,	r0,	15000
	SWI	r3,	r19,	1300556
	brid	$0BB0_131
	NOP
$0BB0_5:
	RAND	r3
	ORI	r4,	r0,	-1090519040
	RAND	r5
	FPADD	r3,	r3,	r4
	FPADD	r5,	r5,	r4
	RAND	r6
	FPADD	r3,	r3,	r3
	SWI	r3,	r19,	1300480
	FPADD	r5,	r5,	r5
	SWI	r5,	r19,	1300476
	FPADD	r4,	r6,	r4
	FPADD	r4,	r4,	r4
	SWI	r4,	r19,	1300472
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
	LWI	r3,	r19,	1300472
	SWI	r3,	r19,	1300392
	LWI	r3,	r19,	1300476
	SWI	r3,	r19,	1300388
	LWI	r3,	r19,	1300480
	SWI	r3,	r19,	1300384
	ADD	r3,	r0,	r0
	ADDI	r4,	r0,	-1
	SWI	r4,	r19,	1300468
	ADDI	r4,	r0,	1343554297
	SWI	r4,	r19,	1300488
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
	LWI	r4,	r19,	1300508
	ADD	r4,	r3,	r4
	LOAD	r3,	r4,	2
	LOAD	r5,	r4,	1
	LOAD	r6,	r4,	0
	LOAD	r7,	r4,	5
	LOAD	r8,	r4,	4
	LOAD	r9,	r4,	3
	LWI	r10,	r19,	1300492
	FPRSUB	r6,	r10,	r6
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r19,	1300480
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
	LWI	r9,	r19,	1300496
	FPRSUB	r5,	r9,	r5
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	1300476
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
	LWI	r6,	r19,	1300500
	FPRSUB	r3,	r6,	r3
	FPRSUB	r6,	r6,	r7
	LWI	r7,	r19,	1300472
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
	SWI	r4,	r19,	1300484
	ADD	r5,	r0,	r0
	CMP	r4,	r5,	r4
	bltid	r4,	$0BB0_103
	NOP
	ADD	r4,	r0,	r0
	LWI	r5,	r19,	1300484
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
	SWI	r7,	r19,	1300504
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r19,	1300476
	FPMUL	r21,	r20,	r7
	LWI	r22,	r19,	1300472
	FPMUL	r23,	r8,	r22
	FPRSUB	r6,	r12,	r6
	LOAD	r24,	r3,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r19,	1300480
	FPMUL	r25,	r23,	r7
	FPRSUB	r4,	r10,	r4
	FPRSUB	r5,	r11,	r5
	LWI	r26,	r19,	1300492
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r6
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r3,	9
	LWI	r28,	r19,	1300496
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
	LWI	r31,	r19,	1300500
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
	LWI	r10,	r19,	1300480
	FPMUL	r10,	r7,	r10
	ORI	r11,	r0,	0
	FPRSUB	r5,	r6,	r5
	LWI	r6,	r19,	1300476
	FPMUL	r6,	r4,	r6
	FPADD	r10,	r10,	r11
	LWI	r12,	r19,	1300472
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
	LWI	r8,	r19,	1300504
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
	LWI	r5,	r19,	1300488
	SWI	r5,	r19,	1300396
	LWI	r5,	r19,	1300396
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
	SWI	r22,	r19,	1300516
	ADD	r22,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r22,	r22,	9
	ADD	r21,	r22,	r21
	LOAD	r22,	r21,	6
	LOAD	r23,	r21,	5
	LOAD	r21,	r21,	4
	SWI	r22,	r19,	1300440
	SWI	r23,	r19,	1300444
	SWI	r21,	r19,	1300448
	SWI	r11,	r19,	1300428
	SWI	r12,	r19,	1300432
	SWI	r20,	r19,	1300436
	SWI	r8,	r19,	1300416
	SWI	r9,	r19,	1300420
	SWI	r10,	r19,	1300424
	SWI	r5,	r19,	1300404
	SWI	r6,	r19,	1300408
	SWI	r7,	r19,	1300412
	SWI	r4,	r19,	1300400
	ADDI	r4,	r0,	1060320051
	SWI	r4,	r19,	1300512
	ADDI	r4,	r0,	1050253722
	SWI	r4,	r19,	1300520
	LWI	r4,	r19,	1300400
	SWI	r4,	r19,	1300488
$0BB0_98:
	LWI	r4,	r19,	1300484
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	1300484
	ADDI	r3,	r3,	11
	ADD	r5,	r0,	r0
	CMP	r4,	r5,	r4
	bneid	r4,	$0BB0_73
	NOP
$0BB0_99:
	ADD	r3,	r0,	r0
	LWI	r4,	r19,	1300468
	CMP	r3,	r3,	r4
	bltid	r3,	$0BB0_106
	NOP
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r4,	r19,	1300468
	beqid	r3,	$0BB0_102
	ADDI	r4,	r4,	0
$0BB0_101:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_101
	ADDK	r4,	r4,	r4
$0BB0_102:
	ADDI	r3,	r19,	56
	LW	r3,	r3,	r4
	LWI	r4,	r19,	1300468
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	1300468
	brid	$0BB0_9
	NOP
$0BB0_103:
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r5,	r19,	1300468
	beqid	r4,	$0BB0_105
	ADDI	r5,	r5,	0
$0BB0_104:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_104
	ADDK	r5,	r5,	r5
$0BB0_105:
	ADDI	r4,	r19,	56
	LWI	r6,	r19,	1300468
	ADDI	r6,	r6,	1
	SWI	r6,	r19,	1300468
	ADDI	r6,	r3,	1
	ADD	r4,	r4,	r5
	brid	$0BB0_9
	SWI	r6,	r4,	4
$0BB0_106:
	LWI	r3,	r19,	1300488
	SWI	r3,	r19,	1300452
	LWI	r3,	r19,	1300452
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
	LWI	r6,	r19,	1300540
	beqid	r5,	$0BB0_111
	ADDI	r6,	r6,	0
$0BB0_110:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_110
	ADDK	r6,	r6,	r6
$0BB0_111:
	ANDI	r5,	r4,	31
	LWI	r7,	r19,	1300540
	beqid	r5,	$0BB0_113
	ADDI	r7,	r7,	0
$0BB0_112:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_112
	ADDK	r7,	r7,	r7
$0BB0_113:
	ANDI	r5,	r4,	31
	LWI	r8,	r19,	1300540
	beqid	r5,	$0BB0_115
	ADDI	r8,	r8,	0
$0BB0_114:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_114
	ADDK	r8,	r8,	r8
$0BB0_115:
	LWI	r5,	r19,	1300480
	FPMUL	r5,	r5,	r3
	ADDI	r9,	r19,	520184
	SW	r5,	r9,	r7
	ANDI	r7,	r4,	31
	LWI	r10,	r19,	1300540
	beqid	r7,	$0BB0_117
	ADDI	r10,	r10,	0
$0BB0_116:
	ADDI	r7,	r7,	-1
	bneid	r7,	$0BB0_116
	ADDK	r10,	r10,	r10
$0BB0_117:
	LWI	r7,	r19,	1300476
	FPMUL	r7,	r7,	r3
	ADD	r6,	r9,	r6
	SWI	r7,	r6,	4
	ANDI	r6,	r4,	31
	LWI	r11,	r19,	1300540
	beqid	r6,	$0BB0_119
	ADDI	r11,	r11,	0
$0BB0_118:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB0_118
	ADDK	r11,	r11,	r11
$0BB0_119:
	LWI	r6,	r19,	1300472
	FPMUL	r3,	r6,	r3
	ADD	r6,	r9,	r8
	SWI	r3,	r6,	8
	ANDI	r6,	r4,	31
	LWI	r8,	r19,	1300540
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
	LWI	r10,	r19,	1300540
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
	LWI	r11,	r19,	1300540
	beqid	r6,	$0BB0_125
	ADDI	r11,	r11,	0
$0BB0_124:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB0_124
	ADDK	r11,	r11,	r11
$0BB0_125:
	ADD	r6,	r9,	r8
	SWI	r0,	r6,	20
	SWI	r5,	r19,	1300456
	SWI	r7,	r19,	1300460
	SWI	r3,	r19,	1300464
	ANDI	r3,	r4,	31
	LWI	r4,	r19,	1300540
	beqid	r3,	$0BB0_127
	ADDI	r4,	r4,	0
$0BB0_126:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_126
	ADDK	r4,	r4,	r4
$0BB0_127:
	ADD	r3,	r9,	r10
	ADD	r5,	r9,	r11
	LWI	r6,	r19,	1300512
	SWI	r6,	r3,	24
	LWI	r3,	r19,	1300456
	SWI	r3,	r19,	1300544
	LWI	r3,	r19,	1300460
	SWI	r3,	r19,	1300548
	LWI	r3,	r19,	1300464
	SWI	r3,	r19,	1300552
	LWI	r3,	r19,	1300572
	ADDI	r3,	r3,	1
	SWI	r3,	r19,	1300572
	ADD	r3,	r9,	r4
	SWI	r6,	r5,	28
	SWI	r6,	r3,	32
$0BB0_128:
	LWI	r3,	r19,	1300544
	SWI	r3,	r19,	1300196
	LWI	r3,	r19,	1300548
	SWI	r3,	r19,	1300200
	LWI	r3,	r19,	1300552
	SWI	r3,	r19,	1300204
	LWI	r3,	r19,	1300572
	MULI	r3,	r3,	13
	SWI	r3,	r19,	1300540
	LWI	r3,	r19,	1300196
	SWI	r3,	r19,	1300492
	LWI	r3,	r19,	1300200
	SWI	r3,	r19,	1300496
	LWI	r3,	r19,	1300204
	SWI	r3,	r19,	1300500
$0BB0_129:
	LWI	r3,	r19,	1300532
	ADDI	r4,	r0,	3
	ADDI	r5,	r3,	1
	SWI	r5,	r19,	1300532
	CMP	r3,	r4,	r3
	bltid	r3,	$0BB0_5
	NOP
	LWI	r3,	r19,	1300556
	ADDI	r3,	r3,	-1
	SWI	r3,	r19,	1300556
	ADD	r4,	r0,	r0
	CMP	r3,	r4,	r3
	beqid	r3,	$0BB0_132
	NOP
$0BB0_131:
	ADD	r3,	r0,	r0
	SWI	r3,	r19,	1300532
	brid	$0BB0_128
	NOP
$0BB0_132:
	LWI	r3,	r19,	1300596
	FPCONV	r4,	r3
	SWI	r4,	r19,	1300600
	LWI	r4,	r19,	1300560
	FPCONV	r5,	r4
	SWI	r5,	r19,	1300604
	ORI	r5,	r0,	-1073741824
	MUL	r3,	r4,	r3
	SWI	r3,	r19,	1300664
	ATOMIC_INC	r4,	0
	CMP	r3,	r4,	r3
	bleid	r3,	$0BB0_277
	NOP
	LWI	r3,	r19,	1300600
	FPDIV	r3,	r3,	r5
	SWI	r3,	r19,	1300648
	LWI	r3,	r19,	1300604
	FPDIV	r3,	r3,	r5
	SWI	r3,	r19,	1300652
	ADDI	r3,	r19,	520184
	LWI	r5,	r19,	1300536
	SWI	r5,	r19,	1300216
	LWI	r5,	r19,	1300528
	SWI	r5,	r19,	1300212
	LWI	r5,	r19,	1300524
	SWI	r5,	r19,	1300208
	ADD	r5,	r0,	r0
	SWI	r5,	r19,	1300580
	LWI	r5,	r19,	1300216
	SWI	r5,	r19,	1300656
	ADDI	r3,	r3,	32
	SWI	r3,	r19,	1300660
$0BB0_134:
	LWI	r3,	r19,	1300596
	DIV	r5,	r3,	r4
	MUL	r3,	r5,	r3
	SWI	r3,	r19,	1300584
	RSUB	r4,	r3,	r4
	SWI	r4,	r19,	1300588
	FPCONV	r3,	r5
	FPCONV	r4,	r4
	LWI	r5,	r19,	1300652
	FPADD	r3,	r3,	r5
	ORI	r5,	r0,	1056964608
	LWI	r6,	r19,	1300648
	FPADD	r4,	r4,	r6
	FPADD	r3,	r3,	r5
	FPADD	r4,	r4,	r5
	FPADD	r3,	r3,	r3
	FPADD	r4,	r4,	r4
	LWI	r5,	r19,	1300604
	FPDIV	r3,	r3,	r5
	LWI	r5,	r19,	1300600
	FPDIV	r4,	r4,	r5
	LWI	r5,	r19,	1300640
	FPMUL	r5,	r5,	r3
	LWI	r6,	r19,	1300628
	FPMUL	r6,	r6,	r4
	LWI	r7,	r19,	1300636
	FPMUL	r7,	r7,	r3
	LWI	r8,	r19,	1300624
	FPMUL	r8,	r8,	r4
	LWI	r9,	r19,	1300632
	FPMUL	r4,	r9,	r4
	LWI	r9,	r19,	1300644
	FPMUL	r3,	r9,	r3
	FPADD	r5,	r5,	r6
	FPADD	r6,	r7,	r8
	LWI	r7,	r19,	1300616
	FPADD	r5,	r5,	r7
	LWI	r7,	r19,	1300612
	FPADD	r6,	r6,	r7
	FPADD	r4,	r4,	r3
	LWI	r3,	r19,	1300620
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
	SWI	r4,	r19,	1300228
	FPDIV	r4,	r5,	r3
	SWI	r4,	r19,	1300480
	FPDIV	r3,	r6,	r3
	SWI	r3,	r19,	1300476
	LWI	r5,	r19,	1300228
	LWI	r6,	r19,	1300580
	BITOR	r5,	r6,	r5
	SWI	r5,	r19,	1300592
	SWI	r4,	r19,	1300224
	SWI	r3,	r19,	1300220
	SWI	r5,	r19,	1300232
	ADD	r4,	r0,	r0
	SWI	r4,	r19,	1300496
	LWI	r3,	r19,	1300232
	SWI	r3,	r19,	1300484
	ADDI	r3,	r0,	-1
	SWI	r3,	r19,	1300468
	ADDI	r3,	r0,	1343554297
	SWI	r3,	r19,	1300488
	SWI	r4,	r19,	1300532
	SWI	r4,	r19,	1300540
	SWI	r4,	r19,	1300500
	SWI	r4,	r19,	1300504
	SWI	r4,	r19,	1300512
	SWI	r4,	r19,	1300520
	SWI	r4,	r19,	1300544
	SWI	r4,	r19,	1300548
	SWI	r4,	r19,	1300516
	SWI	r4,	r19,	1300552
	SWI	r4,	r19,	1300556
$0BB0_135:
	ADDI	r3,	r0,	3
	ANDI	r3,	r3,	31
	beqid	r3,	$0BB0_137
	ADDI	r4,	r4,	0
$0BB0_136:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_136
	ADDK	r4,	r4,	r4
$0BB0_137:
	LWI	r3,	r19,	1300508
	ADD	r3,	r4,	r3
	LOAD	r4,	r3,	2
	LOAD	r5,	r3,	1
	LOAD	r6,	r3,	0
	LOAD	r7,	r3,	5
	LOAD	r8,	r3,	4
	LOAD	r9,	r3,	3
	LWI	r10,	r19,	1300524
	FPRSUB	r6,	r10,	r6
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r19,	1300476
	FPDIV	r6,	r6,	r10
	FPDIV	r9,	r9,	r10
	FPGT	r10,	r6,	r9
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r10,	$0BB0_139
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_139:
	bneid	r20,	$0BB0_141
	ADD	r10,	r9,	r0
	ADD	r10,	r6,	r0
$0BB0_141:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_143
	NOP
	ADD	r6,	r9,	r0
$0BB0_143:
	ORI	r9,	r0,	1343554297
	FPGT	r20,	r10,	r21
	FPLT	r22,	r6,	r9
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
	ADD	r6,	r9,	r0
$0BB0_151:
	FPGT	r9,	r10,	r6
	bneid	r9,	$0BB0_153
	NOP
	ADD	r11,	r12,	r0
$0BB0_153:
	bneid	r11,	$0BB0_225
	NOP
	ORI	r9,	r0,	0
	ADDI	r11,	r0,	1
	FPLT	r9,	r6,	r9
	bneid	r9,	$0BB0_156
	NOP
	ADDI	r11,	r0,	0
$0BB0_156:
	bneid	r11,	$0BB0_225
	NOP
	LWI	r9,	r19,	1300528
	FPRSUB	r5,	r9,	r5
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	1300480
	FPDIV	r5,	r5,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r5,	r8
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_159
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_159:
	bneid	r20,	$0BB0_161
	ADD	r9,	r8,	r0
	ADD	r9,	r5,	r0
$0BB0_161:
	bneid	r20,	$0BB0_163
	NOP
	ADD	r5,	r8,	r0
$0BB0_163:
	FPGT	r8,	r9,	r10
	FPLT	r20,	r5,	r6
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
	ADD	r5,	r6,	r0
$0BB0_171:
	FPGT	r6,	r9,	r5
	bneid	r6,	$0BB0_173
	NOP
	ADD	r11,	r12,	r0
$0BB0_173:
	bneid	r11,	$0BB0_225
	NOP
	ORI	r6,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r6,	r5,	r6
	bneid	r6,	$0BB0_176
	NOP
	ADDI	r8,	r0,	0
$0BB0_176:
	bneid	r8,	$0BB0_225
	NOP
	LWI	r6,	r19,	1300536
	FPRSUB	r4,	r6,	r4
	FPRSUB	r6,	r6,	r7
	LWI	r7,	r19,	1300484
	FPDIV	r4,	r4,	r7
	FPDIV	r6,	r6,	r7
	FPGT	r7,	r4,	r6
	ADDI	r8,	r0,	1
	ADDI	r10,	r0,	0
	bneid	r7,	$0BB0_179
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_179:
	bneid	r11,	$0BB0_181
	ADD	r7,	r6,	r0
	ADD	r7,	r4,	r0
$0BB0_181:
	bneid	r11,	$0BB0_183
	NOP
	ADD	r4,	r6,	r0
$0BB0_183:
	FPGT	r6,	r7,	r9
	FPLT	r11,	r4,	r5
	bneid	r6,	$0BB0_185
	ADD	r12,	r8,	r0
	ADD	r12,	r10,	r0
$0BB0_185:
	bneid	r11,	$0BB0_187
	ADD	r6,	r8,	r0
	ADD	r6,	r10,	r0
$0BB0_187:
	bneid	r6,	$0BB0_189
	NOP
	ADD	r4,	r5,	r0
$0BB0_189:
	bneid	r12,	$0BB0_191
	NOP
	ADD	r7,	r9,	r0
$0BB0_191:
	FPGT	r5,	r7,	r4
	bneid	r5,	$0BB0_193
	NOP
	ADD	r8,	r10,	r0
$0BB0_193:
	bneid	r8,	$0BB0_225
	NOP
	ORI	r5,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r4,	r4,	r5
	bneid	r4,	$0BB0_196
	NOP
	ADDI	r6,	r0,	0
$0BB0_196:
	bneid	r6,	$0BB0_225
	NOP
	LOAD	r4,	r3,	7
	LOAD	r3,	r3,	6
	SWI	r3,	r19,	1300472
	ADD	r5,	r0,	r0
	CMP	r3,	r5,	r3
	bltid	r3,	$0BB0_229
	NOP
	ADD	r3,	r0,	r0
	LWI	r5,	r19,	1300472
	CMP	r3,	r3,	r5
	bleid	r3,	$0BB0_225
	NOP
$0BB0_199:
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
	SWI	r7,	r19,	1300492
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r19,	1300480
	FPMUL	r21,	r20,	r7
	LWI	r22,	r19,	1300484
	FPMUL	r23,	r8,	r22
	FPRSUB	r6,	r12,	r6
	LOAD	r24,	r4,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r19,	1300476
	FPMUL	r25,	r23,	r7
	FPRSUB	r3,	r10,	r3
	FPRSUB	r5,	r11,	r5
	LWI	r26,	r19,	1300524
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r6
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r4,	9
	LWI	r28,	r19,	1300528
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
	LWI	r31,	r19,	1300536
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
	FPMUL	r21,	r5,	r10
	FPRSUB	r7,	r21,	r7
	FPMUL	r10,	r6,	r10
	FPMUL	r3,	r12,	r3
	FPRSUB	r3,	r3,	r10
	FPMUL	r5,	r5,	r12
	FPMUL	r6,	r6,	r11
	LWI	r10,	r19,	1300476
	FPMUL	r10,	r7,	r10
	ORI	r11,	r0,	0
	FPRSUB	r5,	r6,	r5
	LWI	r6,	r19,	1300480
	FPMUL	r6,	r3,	r6
	FPADD	r10,	r10,	r11
	LWI	r12,	r19,	1300484
	FPMUL	r12,	r5,	r12
	FPADD	r6,	r6,	r10
	FPADD	r6,	r12,	r6
	FPMUL	r6,	r6,	r22
	ADDI	r10,	r0,	1
	FPLT	r11,	r6,	r11
	bneid	r11,	$0BB0_207
	NOP
	ADDI	r10,	r0,	0
$0BB0_207:
	bneid	r10,	$0BB0_224
	NOP
	FPADD	r6,	r6,	r20
	ORI	r10,	r0,	1065353216
	ADDI	r11,	r0,	1
	FPGT	r6,	r6,	r10
	bneid	r6,	$0BB0_210
	NOP
	ADDI	r11,	r0,	0
$0BB0_210:
	bneid	r11,	$0BB0_224
	NOP
	FPMUL	r6,	r7,	r9
	ORI	r7,	r0,	0
	FPMUL	r3,	r3,	r8
	FPADD	r6,	r6,	r7
	LWI	r8,	r19,	1300492
	FPMUL	r5,	r5,	r8
	FPADD	r3,	r3,	r6
	FPADD	r3,	r5,	r3
	FPMUL	r3,	r3,	r22
	FPUN	r5,	r3,	r7
	FPLE	r6,	r3,	r7
	BITOR	r5,	r5,	r6
	bneid	r5,	$0BB0_213
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_213:
	bneid	r7,	$0BB0_224
	NOP
	ORI	r5,	r0,	981668463
	ADDI	r6,	r0,	1
	FPLT	r5,	r3,	r5
	bneid	r5,	$0BB0_216
	NOP
	ADDI	r6,	r0,	0
$0BB0_216:
	bneid	r6,	$0BB0_224
	NOP
	ORI	r5,	r0,	1343554297
	ADDI	r6,	r0,	1
	FPEQ	r5,	r3,	r5
	bneid	r5,	$0BB0_219
	NOP
	ADDI	r6,	r0,	0
$0BB0_219:
	bneid	r6,	$0BB0_224
	NOP
	LWI	r5,	r19,	1300488
	SWI	r5,	r19,	1300236
	LWI	r5,	r19,	1300236
	FPUN	r6,	r5,	r3
	FPLE	r5,	r5,	r3
	BITOR	r5,	r6,	r5
	bneid	r5,	$0BB0_222
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_222:
	bneid	r7,	$0BB0_224
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
	SWI	r22,	r19,	1300560
	ADD	r22,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r22,	r22,	9
	ADD	r21,	r22,	r21
	LOAD	r22,	r21,	6
	LOAD	r23,	r21,	5
	LOAD	r21,	r21,	4
	SWI	r22,	r19,	1300280
	SWI	r23,	r19,	1300284
	SWI	r21,	r19,	1300288
	SWI	r11,	r19,	1300268
	SWI	r12,	r19,	1300272
	SWI	r20,	r19,	1300276
	SWI	r8,	r19,	1300256
	SWI	r9,	r19,	1300260
	SWI	r10,	r19,	1300264
	SWI	r5,	r19,	1300244
	SWI	r6,	r19,	1300248
	SWI	r7,	r19,	1300252
	SWI	r3,	r19,	1300240
	ADDI	r3,	r0,	1060320051
	SWI	r3,	r19,	1300564
	ADDI	r3,	r0,	1050253722
	SWI	r3,	r19,	1300568
	LWI	r3,	r19,	1300280
	SWI	r3,	r19,	1300496
	LWI	r5,	r19,	1300284
	SWI	r5,	r19,	1300532
	LWI	r5,	r19,	1300288
	SWI	r5,	r19,	1300540
	LWI	r20,	r19,	1300268
	SWI	r20,	r19,	1300500
	LWI	r20,	r19,	1300272
	SWI	r20,	r19,	1300504
	LWI	r20,	r19,	1300276
	SWI	r20,	r19,	1300512
	LWI	r5,	r19,	1300256
	SWI	r5,	r19,	1300520
	LWI	r5,	r19,	1300260
	SWI	r5,	r19,	1300544
	LWI	r5,	r19,	1300264
	SWI	r5,	r19,	1300548
	LWI	r5,	r19,	1300244
	SWI	r5,	r19,	1300516
	LWI	r5,	r19,	1300248
	SWI	r5,	r19,	1300552
	LWI	r5,	r19,	1300252
	SWI	r5,	r19,	1300556
	LWI	r3,	r19,	1300240
	SWI	r3,	r19,	1300488
$0BB0_224:
	LWI	r3,	r19,	1300472
	ADDI	r3,	r3,	-1
	SWI	r3,	r19,	1300472
	ADDI	r4,	r4,	11
	ADD	r5,	r0,	r0
	CMP	r3,	r5,	r3
	bneid	r3,	$0BB0_199
	NOP
$0BB0_225:
	ADD	r4,	r0,	r0
	LWI	r3,	r19,	1300468
	CMP	r4,	r4,	r3
	bltid	r4,	$0BB0_232
	NOP
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r3,	r19,	1300468
	beqid	r4,	$0BB0_228
	ADDI	r3,	r3,	0
$0BB0_227:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_227
	ADDK	r3,	r3,	r3
$0BB0_228:
	ADDI	r4,	r19,	56
	LW	r4,	r4,	r3
	LWI	r3,	r19,	1300468
	ADDI	r3,	r3,	-1
	SWI	r3,	r19,	1300468
	brid	$0BB0_135
	NOP
$0BB0_229:
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r5,	r19,	1300468
	beqid	r3,	$0BB0_231
	ADDI	r5,	r5,	0
$0BB0_230:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_230
	ADDK	r5,	r5,	r5
$0BB0_231:
	ADDI	r3,	r19,	56
	LWI	r6,	r19,	1300468
	ADDI	r6,	r6,	1
	SWI	r6,	r19,	1300468
	ADDI	r6,	r4,	1
	ADD	r3,	r3,	r5
	brid	$0BB0_135
	SWI	r6,	r3,	4
$0BB0_232:
	LWI	r4,	r19,	1300488
	SWI	r4,	r19,	1300316
	LWI	r4,	r19,	1300316
	ORI	r3,	r0,	1343554297
	LWI	r5,	r19,	1300556
	SWI	r5,	r19,	1300312
	LWI	r5,	r19,	1300552
	SWI	r5,	r19,	1300308
	LWI	r5,	r19,	1300548
	SWI	r5,	r19,	1300304
	LWI	r5,	r19,	1300544
	SWI	r5,	r19,	1300300
	LWI	r5,	r19,	1300540
	SWI	r5,	r19,	1300296
	LWI	r5,	r19,	1300532
	SWI	r5,	r19,	1300292
	LWI	r5,	r19,	1300312
	LWI	r6,	r19,	1300308
	LWI	r7,	r19,	1300304
	LWI	r8,	r19,	1300300
	LWI	r9,	r19,	1300296
	SWI	r9,	r19,	1300468
	LWI	r9,	r19,	1300292
	SWI	r9,	r19,	1300472
	ORI	r9,	r0,	1057988018
	ORI	r10,	r0,	1060806590
	ORI	r11,	r0,	1065151889
	FPUN	r12,	r4,	r3
	FPGE	r3,	r4,	r3
	BITOR	r3,	r12,	r3
	bneid	r3,	$0BB0_234
	ADDI	r20,	r0,	1
	ADDI	r20,	r0,	0
$0BB0_234:
	bneid	r20,	$0BB0_261
	NOP
	ADD	r9,	r0,	r0
	ADDI	r10,	r19,	184
	ADDI	r11,	r0,	10000
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
	ADD	r20,	r0,	r0
	BITOR	r21,	r11,	r9
	SWI	r3,	r10,	32
	CMP	r3,	r20,	r21
	bneid	r3,	$0BB0_236
	ADD	r10,	r12,	r0
	LWI	r9,	r19,	1300516
	SWI	r9,	r19,	1300356
	LWI	r9,	r19,	1300520
	SWI	r9,	r19,	1300348
	SWI	r9,	r19,	1300352
	LWI	r9,	r19,	1300500
	SWI	r9,	r19,	1300340
	LWI	r9,	r19,	1300504
	SWI	r9,	r19,	1300344
	LWI	r9,	r19,	1300512
	SWI	r9,	r19,	1300360
	LWI	r9,	r19,	1300356
	LWI	r10,	r19,	1300348
	LWI	r11,	r19,	1300352
	LWI	r3,	r19,	1300340
	LWI	r12,	r19,	1300344
	LWI	r20,	r19,	1300360
	FPRSUB	r9,	r10,	r9
	FPRSUB	r10,	r12,	r8
	FPRSUB	r5,	r7,	r5
	FPRSUB	r11,	r3,	r11
	FPRSUB	r3,	r20,	r7
	FPRSUB	r6,	r8,	r6
	FPMUL	r7,	r6,	r11
	FPMUL	r8,	r10,	r9
	FPMUL	r9,	r3,	r9
	FPMUL	r11,	r5,	r11
	FPRSUB	r7,	r8,	r7
	FPRSUB	r9,	r11,	r9
	FPMUL	r10,	r10,	r5
	FPMUL	r11,	r3,	r6
	FPRSUB	r10,	r11,	r10
	FPMUL	r11,	r7,	r7
	FPMUL	r3,	r9,	r9
	LWI	r5,	r19,	1300592
	SWI	r5,	r19,	1300320
	FPADD	r11,	r11,	r3
	FPMUL	r3,	r10,	r10
	FPADD	r11,	r11,	r3
	LWI	r3,	r19,	1300320
	LWI	r5,	r19,	1300656
	SWI	r5,	r19,	1300332
	FPMUL	r3,	r3,	r4
	LWI	r5,	r19,	1300480
	FPMUL	r5,	r5,	r4
	LWI	r6,	r19,	1300476
	FPMUL	r4,	r6,	r4
	ORI	r6,	r0,	1065353216
	FPINVSQRT	r8,	r11
	LWI	r12,	r19,	1300332
	SWI	r3,	r19,	1300336
	SWI	r5,	r19,	1300328
	SWI	r4,	r19,	1300324
	ORI	r11,	r0,	0
	ADDI	r20,	r0,	1
	LWI	r21,	r19,	1300572
	CMP	r20,	r20,	r21
	bgeid	r20,	$0BB0_239
	NOP
	ADD	r9,	r11,	r0
	brid	$0BB0_261
	ADD	r10,	r11,	r0
$0BB0_239:
	FPDIV	r6,	r6,	r8
	LWI	r8,	r19,	1300524
	FPADD	r4,	r4,	r8
	SWI	r4,	r19,	1300476
	LWI	r4,	r19,	1300528
	FPADD	r20,	r5,	r4
	FPADD	r21,	r12,	r3
	FPDIV	r22,	r10,	r6
	FPDIV	r23,	r9,	r6
	FPDIV	r24,	r7,	r6
	LWI	r25,	r19,	1300660
	LWI	r26,	r19,	1300580
	LWI	r27,	r19,	1300572
	ADD	r10,	r11,	r0
	ADD	r9,	r11,	r0
$0BB0_240:
	LWI	r4,	r25,	-28
	LWI	r3,	r25,	-32
	LWI	r5,	r19,	1300476
	FPRSUB	r5,	r3,	r5
	SWI	r4,	r19,	1300364
	SWI	r3,	r19,	1300368
	LWI	r6,	r25,	-24
	FPMUL	r5,	r5,	r5
	ORI	r7,	r0,	1060320051
	ADDI	r8,	r0,	1
	FPGT	r7,	r5,	r7
	bneid	r7,	$0BB0_242
	NOP
	ADDI	r8,	r0,	0
$0BB0_242:
	bneid	r8,	$0BB0_254
	NOP
	FPRSUB	r7,	r4,	r20
	FPMUL	r7,	r7,	r7
	FPADD	r5,	r7,	r5
	ORI	r7,	r0,	1060320051
	ADDI	r8,	r0,	1
	FPGT	r7,	r5,	r7
	bneid	r7,	$0BB0_245
	NOP
	ADDI	r8,	r0,	0
$0BB0_245:
	bneid	r8,	$0BB0_254
	NOP
	SWI	r6,	r19,	1300372
	LWI	r7,	r19,	1300372
	FPRSUB	r7,	r7,	r21
	FPMUL	r7,	r7,	r7
	FPADD	r28,	r7,	r5
	ORI	r5,	r0,	1060320051
	ADDI	r7,	r0,	1
	FPGT	r5,	r28,	r5
	bneid	r5,	$0BB0_248
	NOP
	ADDI	r7,	r0,	0
$0BB0_248:
	bneid	r7,	$0BB0_254
	NOP
	ADD	r29,	r0,	r0
	BITOR	r9,	r6,	r29
	SWI	r9,	r19,	1300376
	FPMUL	r9,	r3,	r24
	ORI	r10,	r0,	0
	LWI	r11,	r19,	1300376
	FPMUL	r4,	r4,	r23
	FPADD	r9,	r9,	r10
	FPMUL	r11,	r11,	r22
	FPADD	r4,	r4,	r9
	FPADD	r4,	r11,	r4
	FPNEG	r6,	r4
	ADDI	r4,	r0,	1
	FPLT	r9,	r6,	r10
	bneid	r9,	$0BB0_251
	NOP
	ADDI	r4,	r0,	0
$0BB0_251:
	ADD	r30,	r0,	r0
	bneid	r4,	$0BB0_253
	ADD	r31,	r30,	r0
	brlid	r15,	__extendsfdf2
	ADDI	r1,	r1,	-8
	ADDI	r1,	r1,	8
	ADD	r30,	r3,	r0
	ADD	r31,	r4,	r0
$0BB0_253:
	LWI	r4,	r19,	1300576
	BITOR	r4,	r29,	r4
	BITOR	r4,	r4,	r29
	SWI	r4,	r19,	1300576
	ORI	r4,	r0,	-1082130432
	FPINVSQRT	r9,	r28
	ADDI	r1,	r1,	-8
	brlid	r15,	__extendsfdf2
	FPDIV	r6,	r4,	r9
	ADDI	r1,	r1,	8
	ADDI	r1,	r1,	-20
	ADDI	r8,	r0,	1072693248
	ADD	r28,	r0,	r0
	ADD	r6,	r3,	r0
	ADD	r7,	r4,	r0
	brlid	r15,	__adddf3
	ADD	r9,	r28,	r0
	ADDI	r1,	r1,	20
	ADDI	r1,	r1,	-20
	ADDI	r8,	r0,	1078525952
	ADD	r6,	r3,	r0
	ADD	r7,	r4,	r0
	brlid	r15,	__divdf3
	ADD	r9,	r28,	r0
	ADDI	r1,	r1,	20
	ADDI	r1,	r1,	-20
	ADD	r6,	r30,	r0
	ADD	r7,	r31,	r0
	ADD	r8,	r3,	r0
	brlid	r15,	__muldf3
	ADD	r9,	r4,	r0
	ADDI	r1,	r1,	20
	ADDI	r1,	r1,	-12
	LWI	r9,	r19,	1300496
	SWI	r9,	r19,	1300380
	LWI	r28,	r25,	-8
	ADD	r6,	r3,	r0
	brlid	r15,	__truncdfsf2
	ADD	r7,	r4,	r0
	ADDI	r1,	r1,	12
	LWI	r4,	r25,	-4
	LWI	r9,	r25,	0
	FPADD	r10,	r28,	r3
	FPADD	r4,	r4,	r3
	LWI	r11,	r19,	1300380
	FPADD	r3,	r9,	r3
	LWI	r9,	r19,	1300468
	FPMUL	r9,	r9,	r10
	LWI	r10,	r19,	1300472
	FPMUL	r10,	r10,	r4
	FPMUL	r11,	r11,	r3
$0BB0_254:
	ADDI	r4,	r0,	-1
	ADDK	r27,	r27,	r4
	ADDKC	r26,	r26,	r4
	ADDI	r25,	r25,	52
	ADD	r4,	r0,	r0
	BITOR	r3,	r27,	r26
	CMP	r4,	r4,	r3
	bneid	r4,	$0BB0_240
	NOP
	ORI	r4,	r0,	0
	ADDI	r3,	r0,	1
	FPLT	r5,	r9,	r4
	bneid	r5,	$0BB0_257
	NOP
	ADDI	r3,	r0,	0
$0BB0_257:
	bneid	r3,	$0BB0_262
	NOP
	ORI	r4,	r0,	1065353216
	ADDI	r3,	r0,	1
	FPGT	r5,	r9,	r4
	bneid	r5,	$0BB0_260
	NOP
	ADDI	r3,	r0,	0
$0BB0_260:
	bneid	r3,	$0BB0_262
	NOP
$0BB0_261:
	ADD	r4,	r9,	r0
$0BB0_262:
	ORI	r3,	r0,	0
	ADDI	r5,	r0,	1
	FPLT	r6,	r11,	r3
	bneid	r6,	$0BB0_264
	NOP
	ADDI	r5,	r0,	0
$0BB0_264:
	bneid	r5,	$0BB0_269
	NOP
	ORI	r3,	r0,	1065353216
	ADDI	r5,	r0,	1
	FPGT	r6,	r11,	r3
	bneid	r6,	$0BB0_267
	NOP
	ADDI	r5,	r0,	0
$0BB0_267:
	bneid	r5,	$0BB0_269
	NOP
	ADD	r3,	r11,	r0
$0BB0_269:
	ORI	r5,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r7,	r10,	r5
	bneid	r7,	$0BB0_271
	NOP
	ADDI	r6,	r0,	0
$0BB0_271:
	bneid	r6,	$0BB0_276
	NOP
	ORI	r5,	r0,	1065353216
	ADDI	r6,	r0,	1
	FPGT	r7,	r10,	r5
	bneid	r7,	$0BB0_274
	NOP
	ADDI	r6,	r0,	0
$0BB0_274:
	bneid	r6,	$0BB0_276
	NOP
	ADD	r5,	r10,	r0
$0BB0_276:
	LWI	r7,	r19,	1300588
	LWI	r6,	r19,	1300584
	ADD	r6,	r6,	r7
	MULI	r6,	r6,	3
	LWI	r7,	r19,	1300608
	ADD	r6,	r6,	r7
	STORE	r6,	r4,	0
	STORE	r6,	r5,	1
	STORE	r6,	r3,	2
	ATOMIC_INC	r4,	0
	LWI	r3,	r19,	1300664
	CMP	r3,	r4,	r3
	bgtid	r3,	$0BB0_134
	NOP
$0BB0_277:
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
	ADDI	r1,	r1,	1300668
	rtsd	r15,	8
	ADD	r3,	r0,	r0
#	.end	main
$0tmp0:
#	.size	main, ($tmp0)-main


