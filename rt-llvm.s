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
#	.frame	r19,800860,r15
#	.mask	0xfff88000
	ADDI	r1,	r1,	-800860
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
	SWI	r4,	r19,	800780
	LOAD	r4,	r3,	4
	SWI	r4,	r19,	800832
	LOAD	r4,	r3,	7
	SWI	r4,	r19,	800772
	LOAD	r4,	r3,	2
	LOAD	r4,	r3,	5
	LOAD	r4,	r3,	12
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	800784
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	800788
	LOAD	r4,	r4,	2
	SWI	r4,	r19,	800792
	LOAD	r4,	r3,	10
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	800748
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	800752
	LOAD	r5,	r4,	2
	SWI	r5,	r19,	800756
	ADDI	r5,	r4,	9
	LOAD	r6,	r5,	0
	LOAD	r6,	r5,	1
	ADDI	r6,	r4,	12
	LOAD	r5,	r5,	2
	LOAD	r5,	r6,	0
	SWI	r5,	r19,	800796
	LOAD	r5,	r6,	1
	SWI	r5,	r19,	800800
	LOAD	r5,	r6,	2
	SWI	r5,	r19,	800804
	ADDI	r5,	r4,	15
	LOAD	r6,	r5,	0
	SWI	r6,	r19,	800808
	LOAD	r6,	r5,	1
	SWI	r6,	r19,	800812
	LOAD	r5,	r5,	2
	SWI	r5,	r19,	800816
	ADDI	r4,	r4,	18
	LOAD	r5,	r4,	0
	SWI	r5,	r19,	800820
	LOAD	r5,	r4,	1
	SWI	r5,	r19,	800824
	ADDI	r5,	r19,	184
	ADDI	r5,	r5,	16
	LOAD	r4,	r4,	2
	SWI	r4,	r19,	800828
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
	SWI	r4,	r19,	800672
	ADDI	r1,	r1,	-4
	ADDI	r5,	r0,	-8
	BITAND	r4,	r1,	r5
	ADDI	r5,	r4,	-7040000
	SWI	r5,	r19,	800740
	ADDI	r4,	r4,	-7039984
	ADD	r1,	r5,	r0
	ADDI	r5,	r0,	220000
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
	ADDI	r3,	r19,	160216
	ADDI	r3,	r3,	16
	ADD	r4,	r0,	r0
	ADDI	r5,	r0,	20000
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
	SWI	r3,	r19,	800768
	LOAD	r4,	r3,	12
	LOAD	r5,	r4,	0
	LOAD	r6,	r4,	1
	LOAD	r4,	r4,	2
	SWI	r5,	r19,	800216
	SWI	r6,	r19,	800220
	SWI	r4,	r19,	800224
	LWI	r4,	r19,	800216
	SWI	r4,	r19,	800712
	LWI	r4,	r19,	800220
	SWI	r4,	r19,	800716
	LWI	r4,	r19,	800224
	SWI	r4,	r19,	800720
	ADDI	r4,	r0,	110000
	SWI	r4,	r19,	800776
	SWI	r3,	r19,	800736
	brid	$0BB0_201
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
	FPDIV	r5,	r5,	r6
	SWI	r5,	r19,	800628
	FPDIV	r3,	r3,	r6
	SWI	r3,	r19,	800632
	FPDIV	r4,	r4,	r6
	SWI	r4,	r19,	800636
	SWI	r5,	r19,	800524
	SWI	r3,	r19,	800520
	SWI	r4,	r19,	800528
	ADD	r3,	r0,	r0
	SWI	r3,	r19,	800692
	LWI	r4,	r19,	800528
	SWI	r4,	r19,	800696
	ADDI	r4,	r0,	-1
	SWI	r4,	r19,	800620
	ADDI	r4,	r0,	1343554297
	SWI	r4,	r19,	800640
	SWI	r3,	r19,	800660
	SWI	r3,	r19,	800664
	SWI	r3,	r19,	800668
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
	LWI	r4,	r19,	800672
	ADD	r4,	r3,	r4
	LOAD	r3,	r4,	2
	LOAD	r5,	r4,	1
	LOAD	r6,	r4,	0
	LOAD	r7,	r4,	5
	LOAD	r8,	r4,	4
	LOAD	r9,	r4,	3
	LWI	r10,	r19,	800648
	FPRSUB	r6,	r10,	r6
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r19,	800632
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
	LWI	r9,	r19,	800644
	FPRSUB	r5,	r9,	r5
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	800628
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
	LWI	r6,	r19,	800652
	FPRSUB	r3,	r6,	r3
	FPRSUB	r6,	r6,	r7
	LWI	r7,	r19,	800636
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
	SWI	r4,	r19,	800624
	ADD	r5,	r0,	r0
	CMP	r4,	r5,	r4
	bltid	r4,	$0BB0_105
	NOP
	ADD	r4,	r0,	r0
	LWI	r5,	r19,	800624
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
	SWI	r7,	r19,	800656
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r19,	800628
	FPMUL	r21,	r20,	r7
	LWI	r22,	r19,	800636
	FPMUL	r23,	r8,	r22
	FPRSUB	r6,	r12,	r6
	LOAD	r24,	r3,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r19,	800632
	FPMUL	r25,	r23,	r7
	FPRSUB	r4,	r10,	r4
	FPRSUB	r5,	r11,	r5
	LWI	r26,	r19,	800648
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r6
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r3,	9
	LWI	r28,	r19,	800644
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
	LWI	r31,	r19,	800652
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
	LWI	r10,	r19,	800632
	FPMUL	r10,	r7,	r10
	ORI	r11,	r0,	0
	FPRSUB	r5,	r6,	r5
	LWI	r6,	r19,	800628
	FPMUL	r6,	r4,	r6
	FPADD	r10,	r10,	r11
	LWI	r12,	r19,	800636
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
	LWI	r8,	r19,	800656
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
	LWI	r5,	r19,	800640
	SWI	r5,	r19,	800532
	LWI	r5,	r19,	800532
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
	SWI	r22,	r19,	800676
	ADD	r22,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r22,	r22,	9
	ADD	r21,	r22,	r21
	LOAD	r22,	r21,	6
	LOAD	r23,	r21,	5
	LOAD	r21,	r21,	4
	SWI	r22,	r19,	800576
	SWI	r23,	r19,	800580
	SWI	r21,	r19,	800584
	SWI	r11,	r19,	800564
	SWI	r12,	r19,	800568
	SWI	r20,	r19,	800572
	SWI	r8,	r19,	800552
	SWI	r9,	r19,	800556
	SWI	r10,	r19,	800560
	SWI	r5,	r19,	800540
	SWI	r6,	r19,	800544
	SWI	r7,	r19,	800548
	SWI	r4,	r19,	800536
	ADDI	r4,	r0,	1060320051
	SWI	r4,	r19,	800680
	ADDI	r4,	r0,	1050253722
	SWI	r4,	r19,	800684
	LWI	r9,	r19,	800576
	SWI	r9,	r19,	800660
	LWI	r9,	r19,	800580
	SWI	r9,	r19,	800664
	LWI	r9,	r19,	800584
	SWI	r9,	r19,	800668
	LWI	r4,	r19,	800536
	SWI	r4,	r19,	800640
$0BB0_100:
	LWI	r4,	r19,	800624
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	800624
	ADDI	r3,	r3,	11
	ADD	r5,	r0,	r0
	CMP	r4,	r5,	r4
	bneid	r4,	$0BB0_75
	NOP
$0BB0_101:
	ADD	r3,	r0,	r0
	LWI	r4,	r19,	800620
	CMP	r3,	r3,	r4
	bltid	r3,	$0BB0_108
	NOP
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r4,	r19,	800620
	beqid	r3,	$0BB0_104
	ADDI	r4,	r4,	0
$0BB0_103:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_103
	ADDK	r4,	r4,	r4
$0BB0_104:
	ADDI	r3,	r19,	56
	LW	r3,	r3,	r4
	LWI	r4,	r19,	800620
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	800620
	brid	$0BB0_11
	NOP
$0BB0_105:
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r5,	r19,	800620
	beqid	r4,	$0BB0_107
	ADDI	r5,	r5,	0
$0BB0_106:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_106
	ADDK	r5,	r5,	r5
$0BB0_107:
	ADDI	r4,	r19,	56
	LWI	r6,	r19,	800620
	ADDI	r6,	r6,	1
	SWI	r6,	r19,	800620
	ADDI	r6,	r3,	1
	ADD	r4,	r4,	r5
	brid	$0BB0_11
	SWI	r6,	r4,	4
$0BB0_108:
	LWI	r3,	r19,	800640
	SWI	r3,	r19,	800588
	LWI	r3,	r19,	800588
	ORI	r4,	r0,	1343554297
	ADDI	r5,	r0,	1
	FPLT	r4,	r3,	r4
	bneid	r4,	$0BB0_110
	NOP
	ADDI	r5,	r0,	0
$0BB0_110:
	bneid	r5,	$0BB0_113
	NOP
	LWI	r3,	r19,	800688
	ADDI	r4,	r3,	1
	ORI	r5,	r0,	0
	ADD	r6,	r0,	r0
	CMP	r3,	r6,	r3
	bleid	r3,	$0BB0_199
	NOP
	ADD	r3,	r5,	r0
	brid	$0BB0_121
	ADD	r6,	r5,	r0
$0BB0_113:
	LWI	r9,	r19,	800668
	SWI	r9,	r19,	800600
	LWI	r9,	r19,	800664
	SWI	r9,	r19,	800596
	LWI	r4,	r19,	800600
	SWI	r4,	r19,	800700
	LWI	r5,	r19,	800596
	SWI	r5,	r19,	800704
	LWI	r9,	r19,	800660
	SWI	r9,	r19,	800592
	LWI	r6,	r19,	800592
	SWI	r6,	r19,	800708
	FPADD	r4,	r4,	r5
	FPADD	r4,	r4,	r6
	ORI	r5,	r0,	1077936128
	FPUN	r6,	r4,	r5
	FPLE	r4,	r4,	r5
	BITOR	r4,	r6,	r4
	bneid	r4,	$0BB0_115
	ADDI	r5,	r0,	1
	ADDI	r5,	r0,	0
$0BB0_115:
	bneid	r5,	$0BB0_117
	NOP
	ORI	r4,	r0,	981668463
	LWI	r5,	r19,	800700
	FPMUL	r5,	r5,	r4
	SWI	r5,	r19,	800700
	LWI	r5,	r19,	800704
	FPMUL	r5,	r5,	r4
	SWI	r5,	r19,	800704
	LWI	r5,	r19,	800708
	FPMUL	r5,	r5,	r4
	SWI	r5,	r19,	800708
$0BB0_117:
	LWI	r7,	r19,	800688
	ADDI	r4,	r7,	1
	LWI	r5,	r19,	800632
	FPMUL	r5,	r5,	r3
	LWI	r6,	r19,	800628
	FPMUL	r8,	r6,	r3
	LWI	r6,	r19,	800636
	FPMUL	r9,	r6,	r3
	LWI	r3,	r19,	800648
	FPADD	r6,	r5,	r3
	LWI	r3,	r19,	800644
	FPADD	r3,	r8,	r3
	LWI	r5,	r19,	800652
	FPADD	r5,	r5,	r9
	SWI	r6,	r19,	800604
	SWI	r3,	r19,	800608
	SWI	r5,	r19,	800612
	LWI	r8,	r19,	800604
	SWI	r8,	r19,	800712
	LWI	r8,	r19,	800608
	SWI	r8,	r19,	800716
	LWI	r8,	r19,	800612
	SWI	r8,	r19,	800720
	ADDI	r8,	r0,	1
	CMP	r7,	r8,	r7
	bltid	r7,	$0BB0_198
	NOP
	ADDI	r4,	r0,	5
	ANDI	r4,	r4,	31
	LWI	r7,	r19,	800736
	beqid	r4,	$0BB0_120
	ADDI	r7,	r7,	0
$0BB0_119:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_119
	ADDK	r7,	r7,	r7
$0BB0_120:
	LWI	r4,	r19,	800740
	ADD	r8,	r4,	r7
	SW	r6,	r4,	r7
	SWI	r3,	r8,	4
	SWI	r5,	r8,	8
	LWI	r4,	r19,	800732
	SWI	r4,	r8,	12
	LWI	r4,	r19,	800728
	SWI	r4,	r8,	16
	LWI	r4,	r19,	800736
	ADDI	r4,	r4,	1
	SWI	r4,	r19,	800736
	ADD	r4,	r0,	r0
	LWI	r7,	r19,	800724
	SWI	r7,	r8,	20
	sbi	r4,	r8,	24
$0BB0_121:
	ORI	r4,	r0,	1132756992
	ORI	r7,	r0,	1134362657
	LWI	r8,	r19,	800648
	FPRSUB	r4,	r8,	r4
	FPRSUB	r7,	r8,	r7
	LWI	r8,	r19,	800632
	FPDIV	r9,	r4,	r8
	FPDIV	r4,	r7,	r8
	FPGT	r7,	r9,	r4
	ADDI	r8,	r0,	1
	ADDI	r10,	r0,	0
	bneid	r7,	$0BB0_123
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_123:
	bneid	r11,	$0BB0_125
	ADD	r7,	r4,	r0
	ADD	r7,	r9,	r0
$0BB0_125:
	ORI	r12,	r0,	-803929351
	bneid	r11,	$0BB0_127
	NOP
	ADD	r9,	r4,	r0
$0BB0_127:
	ORI	r4,	r0,	1343554297
	FPGT	r11,	r7,	r12
	FPLT	r20,	r9,	r4
	bneid	r11,	$0BB0_129
	ADD	r21,	r8,	r0
	ADD	r21,	r10,	r0
$0BB0_129:
	bneid	r20,	$0BB0_131
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_131:
	bneid	r21,	$0BB0_133
	NOP
	ADD	r7,	r12,	r0
$0BB0_133:
	bneid	r11,	$0BB0_135
	NOP
	ADD	r9,	r4,	r0
$0BB0_135:
	FPGT	r4,	r7,	r9
	bneid	r4,	$0BB0_137
	NOP
	ADD	r8,	r10,	r0
$0BB0_137:
	LWI	r4,	r19,	800688
	bneid	r8,	$0BB0_198
	ADDI	r4,	r4,	1
	ORI	r8,	r0,	0
	ADDI	r10,	r0,	1
	FPLT	r8,	r9,	r8
	bneid	r8,	$0BB0_140
	NOP
	ADDI	r10,	r0,	0
$0BB0_140:
	bneid	r10,	$0BB0_198
	NOP
	ORI	r8,	r0,	1133772800
	ORI	r10,	r0,	1139015713
	LWI	r11,	r19,	800644
	FPRSUB	r8,	r11,	r8
	FPRSUB	r10,	r11,	r10
	LWI	r11,	r19,	800628
	FPDIV	r8,	r8,	r11
	FPDIV	r10,	r10,	r11
	FPGT	r11,	r8,	r10
	ADDI	r12,	r0,	1
	ADDI	r20,	r0,	0
	bneid	r11,	$0BB0_143
	ADD	r21,	r12,	r0
	ADD	r21,	r20,	r0
$0BB0_143:
	bneid	r21,	$0BB0_145
	ADD	r11,	r10,	r0
	ADD	r11,	r8,	r0
$0BB0_145:
	bneid	r21,	$0BB0_147
	NOP
	ADD	r8,	r10,	r0
$0BB0_147:
	FPGT	r10,	r11,	r7
	FPLT	r21,	r8,	r9
	bneid	r10,	$0BB0_149
	ADD	r22,	r12,	r0
	ADD	r22,	r20,	r0
$0BB0_149:
	bneid	r21,	$0BB0_151
	ADD	r10,	r12,	r0
	ADD	r10,	r20,	r0
$0BB0_151:
	bneid	r22,	$0BB0_153
	NOP
	ADD	r11,	r7,	r0
$0BB0_153:
	bneid	r10,	$0BB0_155
	NOP
	ADD	r8,	r9,	r0
$0BB0_155:
	FPGT	r7,	r11,	r8
	bneid	r7,	$0BB0_157
	NOP
	ADD	r12,	r20,	r0
$0BB0_157:
	bneid	r12,	$0BB0_198
	NOP
	ORI	r7,	r0,	0
	ADDI	r9,	r0,	1
	FPLT	r7,	r8,	r7
	bneid	r7,	$0BB0_160
	NOP
	ADDI	r9,	r0,	0
$0BB0_160:
	bneid	r9,	$0BB0_198
	NOP
	LWI	r7,	r19,	800692
	LWI	r4,	r19,	800696
	BITOR	r4,	r7,	r4
	SWI	r4,	r19,	800616
	ORI	r4,	r0,	0
	ORI	r7,	r0,	1134886945
	LWI	r9,	r19,	800652
	FPRSUB	r4,	r9,	r4
	LWI	r10,	r19,	800616
	FPRSUB	r7,	r9,	r7
	FPDIV	r9,	r4,	r10
	FPDIV	r4,	r7,	r10
	FPGT	r7,	r9,	r4
	ADDI	r10,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r7,	$0BB0_163
	ADD	r20,	r10,	r0
	ADD	r20,	r12,	r0
$0BB0_163:
	bneid	r20,	$0BB0_165
	ADD	r7,	r4,	r0
	ADD	r7,	r9,	r0
$0BB0_165:
	bneid	r20,	$0BB0_167
	NOP
	ADD	r9,	r4,	r0
$0BB0_167:
	FPGT	r4,	r7,	r11
	FPLT	r20,	r9,	r8
	bneid	r4,	$0BB0_169
	ADD	r21,	r10,	r0
	ADD	r21,	r12,	r0
$0BB0_169:
	bneid	r20,	$0BB0_171
	ADD	r4,	r10,	r0
	ADD	r4,	r12,	r0
$0BB0_171:
	bneid	r4,	$0BB0_173
	NOP
	ADD	r9,	r8,	r0
$0BB0_173:
	bneid	r21,	$0BB0_175
	NOP
	ADD	r7,	r11,	r0
$0BB0_175:
	FPGT	r4,	r7,	r9
	bneid	r4,	$0BB0_177
	NOP
	ADD	r10,	r12,	r0
$0BB0_177:
	LWI	r7,	r19,	800692
	LWI	r4,	r19,	800760
	BITOR	r8,	r7,	r4
	LWI	r4,	r19,	800764
	BITOR	r11,	r7,	r4
	LWI	r4,	r19,	800688
	BITOR	r8,	r8,	r7
	SWI	r8,	r19,	800760
	BITOR	r7,	r11,	r7
	SWI	r7,	r19,	800764
	bneid	r10,	$0BB0_198
	ADDI	r4,	r4,	1
	ORI	r7,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r7,	r9,	r7
	bneid	r7,	$0BB0_180
	NOP
	ADDI	r8,	r0,	0
$0BB0_180:
	bneid	r8,	$0BB0_198
	NOP
	ADDI	r4,	r0,	2
	ANDI	r7,	r4,	31
	LWI	r8,	r19,	800744
	beqid	r7,	$0BB0_183
	ADDI	r8,	r8,	0
$0BB0_182:
	ADDI	r7,	r7,	-1
	bneid	r7,	$0BB0_182
	ADDK	r8,	r8,	r8
$0BB0_183:
	ANDI	r7,	r4,	31
	LWI	r9,	r19,	800744
	beqid	r7,	$0BB0_185
	ADDI	r9,	r9,	0
$0BB0_184:
	ADDI	r7,	r7,	-1
	bneid	r7,	$0BB0_184
	ADDK	r9,	r9,	r9
$0BB0_185:
	ANDI	r7,	r4,	31
	LWI	r10,	r19,	800744
	beqid	r7,	$0BB0_187
	ADDI	r10,	r10,	0
$0BB0_186:
	ADDI	r7,	r7,	-1
	bneid	r7,	$0BB0_186
	ADDK	r10,	r10,	r10
$0BB0_187:
	ADDI	r7,	r19,	160216
	SW	r6,	r7,	r9
	ANDI	r6,	r4,	31
	LWI	r9,	r19,	800744
	beqid	r6,	$0BB0_189
	ADDI	r9,	r9,	0
$0BB0_188:
	ADDI	r6,	r6,	-1
	bneid	r6,	$0BB0_188
	ADDK	r9,	r9,	r9
$0BB0_189:
	ADD	r6,	r7,	r8
	SWI	r3,	r6,	4
	ANDI	r3,	r4,	31
	LWI	r6,	r19,	800744
	beqid	r3,	$0BB0_191
	ADDI	r6,	r6,	0
$0BB0_190:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_190
	ADDK	r6,	r6,	r6
$0BB0_191:
	ADD	r3,	r7,	r10
	SWI	r5,	r3,	8
	ANDI	r4,	r4,	31
	LWI	r3,	r19,	800744
	beqid	r4,	$0BB0_193
	ADDI	r3,	r3,	0
$0BB0_192:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_192
	ADDK	r3,	r3,	r3
$0BB0_193:
	ADD	r4,	r7,	r9
	ADDI	r5,	r0,	5
	LWI	r8,	r19,	800732
	SWI	r8,	r4,	12
	ANDI	r4,	r5,	31
	LWI	r5,	r19,	800768
	beqid	r4,	$0BB0_195
	ADDI	r5,	r5,	0
$0BB0_194:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_194
	ADDK	r5,	r5,	r5
$0BB0_195:
	ADD	r4,	r7,	r6
	ADD	r3,	r7,	r3
	LWI	r6,	r19,	800728
	SWI	r6,	r4,	16
	LWI	r4,	r19,	800688
	ADDI	r4,	r4,	1
	LWI	r6,	r19,	800768
	ADDI	r6,	r6,	1
	SWI	r6,	r19,	800768
	ADD	r6,	r0,	r0
	ADD	r5,	r7,	r5
	LWI	r7,	r19,	800724
	SWI	r7,	r3,	20
	sbi	r6,	r5,	24
$0BB0_196:
	ADDI	r3,	r0,	3
	ANDI	r3,	r3,	31
	LWI	r5,	r19,	800768
	ADDI	r5,	r5,	0
	SWI	r5,	r19,	800744
	beqid	r3,	$0BB0_198
	NOP
$0BB0_197:
	LWI	r5,	r19,	800744
	ADDK	r5,	r5,	r5
	SWI	r5,	r19,	800744
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_197
	NOP
$0BB0_198:
	LWI	r3,	r19,	800712
	SWI	r3,	r19,	800228
	LWI	r3,	r19,	800716
	SWI	r3,	r19,	800232
	LWI	r3,	r19,	800720
	SWI	r3,	r19,	800236
	ORI	r3,	r0,	1060320051
	LWI	r5,	r19,	800700
	FPMUL	r5,	r5,	r3
	SWI	r5,	r19,	800732
	LWI	r5,	r19,	800704
	FPMUL	r5,	r5,	r3
	SWI	r5,	r19,	800728
	LWI	r5,	r19,	800708
	FPMUL	r3,	r5,	r3
	SWI	r3,	r19,	800724
	LWI	r3,	r19,	800228
	SWI	r3,	r19,	800648
	LWI	r3,	r19,	800232
	SWI	r3,	r19,	800644
	LWI	r3,	r19,	800236
	SWI	r3,	r19,	800652
$0BB0_199:
	SWI	r4,	r19,	800688
	ADDI	r3,	r0,	3
	CMP	r4,	r3,	r4
	bltid	r4,	$0BB0_7
	NOP
	LWI	r4,	r19,	800776
	ADDI	r4,	r4,	-1
	SWI	r4,	r19,	800776
	ADD	r3,	r0,	r0
	CMP	r4,	r3,	r4
	beqid	r4,	$0BB0_202
	NOP
$0BB0_201:
	ORI	r3,	r0,	0
	SWI	r3,	r19,	800700
	SWI	r3,	r19,	800704
	SWI	r3,	r19,	800708
	brid	$0BB0_196
	ADD	r4,	r0,	r0
$0BB0_202:
	ORI	r3,	r0,	0
	LWI	r4,	r19,	800780
	FPCONV	r5,	r4
	SWI	r5,	r19,	800744
	LWI	r5,	r19,	800832
	FPCONV	r6,	r5
	SWI	r6,	r19,	800760
	ORI	r6,	r0,	-1073741824
	PRINT	r3
	MUL	r3,	r5,	r4
	SWI	r3,	r19,	800856
	ATOMIC_INC	r4,	0
	CMP	r3,	r4,	r3
	bleid	r3,	$0BB0_545
	NOP
	LWI	r3,	r19,	800744
	FPDIV	r3,	r3,	r6
	SWI	r3,	r19,	800764
	LWI	r3,	r19,	800760
	FPDIV	r3,	r3,	r6
	SWI	r3,	r19,	800776
	ORI	r3,	r0,	1132756992
	ORI	r5,	r0,	1134362657
	ORI	r6,	r0,	1133772800
	ORI	r7,	r0,	1139015713
	LWI	r8,	r19,	800756
	SWI	r8,	r19,	800248
	LWI	r8,	r19,	800752
	SWI	r8,	r19,	800244
	LWI	r9,	r19,	800748
	SWI	r9,	r19,	800240
	ADD	r10,	r0,	r0
	SWI	r10,	r19,	800832
	LWI	r10,	r19,	800248
	SWI	r10,	r19,	800836
	FPRSUB	r3,	r9,	r3
	SWI	r3,	r19,	800840
	FPRSUB	r3,	r9,	r5
	SWI	r3,	r19,	800844
	FPRSUB	r3,	r8,	r6
	SWI	r3,	r19,	800848
	FPRSUB	r3,	r8,	r7
	SWI	r3,	r19,	800852
$0BB0_204:
	LWI	r3,	r19,	800780
	DIV	r5,	r3,	r4
	MUL	r3,	r5,	r3
	SWI	r3,	r19,	800716
	RSUB	r4,	r3,	r4
	SWI	r4,	r19,	800720
	FPCONV	r3,	r5
	FPCONV	r4,	r4
	LWI	r5,	r19,	800776
	FPADD	r3,	r3,	r5
	ORI	r5,	r0,	1056964608
	LWI	r6,	r19,	800764
	FPADD	r4,	r4,	r6
	FPADD	r3,	r3,	r5
	FPADD	r4,	r4,	r5
	FPADD	r3,	r3,	r3
	FPADD	r4,	r4,	r4
	LWI	r5,	r19,	800760
	FPDIV	r3,	r3,	r5
	LWI	r5,	r19,	800744
	FPDIV	r4,	r4,	r5
	LWI	r5,	r19,	800824
	FPMUL	r5,	r5,	r3
	LWI	r6,	r19,	800812
	FPMUL	r6,	r6,	r4
	LWI	r7,	r19,	800820
	FPMUL	r7,	r7,	r3
	LWI	r8,	r19,	800808
	FPMUL	r8,	r8,	r4
	LWI	r9,	r19,	800816
	FPMUL	r4,	r9,	r4
	LWI	r9,	r19,	800828
	FPMUL	r3,	r9,	r3
	FPADD	r5,	r5,	r6
	FPADD	r6,	r7,	r8
	LWI	r7,	r19,	800800
	FPADD	r5,	r5,	r7
	LWI	r7,	r19,	800796
	FPADD	r6,	r6,	r7
	FPADD	r4,	r4,	r3
	LWI	r3,	r19,	800804
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
	SWI	r4,	r19,	800260
	FPDIV	r4,	r5,	r3
	SWI	r4,	r19,	800632
	FPDIV	r3,	r6,	r3
	SWI	r3,	r19,	800636
	LWI	r5,	r19,	800260
	LWI	r6,	r19,	800832
	BITOR	r5,	r6,	r5
	SWI	r5,	r19,	800724
	SWI	r4,	r19,	800256
	SWI	r3,	r19,	800252
	SWI	r5,	r19,	800264
	ADD	r4,	r0,	r0
	SWI	r4,	r19,	800688
	LWI	r3,	r19,	800264
	SWI	r3,	r19,	800624
	ADDI	r3,	r0,	-1
	SWI	r3,	r19,	800628
	ADDI	r3,	r0,	1343554297
	SWI	r3,	r19,	800620
	SWI	r4,	r19,	800680
	SWI	r4,	r19,	800684
	SWI	r4,	r19,	800648
	SWI	r4,	r19,	800652
	SWI	r4,	r19,	800656
	SWI	r4,	r19,	800660
	SWI	r4,	r19,	800664
	SWI	r4,	r19,	800676
	SWI	r4,	r19,	800692
	SWI	r4,	r19,	800696
	SWI	r4,	r19,	800700
$0BB0_205:
	ADDI	r3,	r0,	3
	ANDI	r3,	r3,	31
	beqid	r3,	$0BB0_207
	ADDI	r4,	r4,	0
$0BB0_206:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_206
	ADDK	r4,	r4,	r4
$0BB0_207:
	LWI	r3,	r19,	800672
	ADD	r3,	r4,	r3
	LOAD	r4,	r3,	2
	LOAD	r5,	r3,	1
	LOAD	r6,	r3,	0
	LOAD	r7,	r3,	5
	LOAD	r8,	r3,	4
	LOAD	r9,	r3,	3
	LWI	r10,	r19,	800748
	FPRSUB	r6,	r10,	r6
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r19,	800636
	FPDIV	r6,	r6,	r10
	FPDIV	r9,	r9,	r10
	FPGT	r10,	r6,	r9
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r10,	$0BB0_209
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_209:
	bneid	r20,	$0BB0_211
	ADD	r10,	r9,	r0
	ADD	r10,	r6,	r0
$0BB0_211:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_213
	NOP
	ADD	r6,	r9,	r0
$0BB0_213:
	ORI	r9,	r0,	1343554297
	FPGT	r20,	r10,	r21
	FPLT	r22,	r6,	r9
	bneid	r20,	$0BB0_215
	ADD	r23,	r11,	r0
	ADD	r23,	r12,	r0
$0BB0_215:
	bneid	r22,	$0BB0_217
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_217:
	bneid	r23,	$0BB0_219
	NOP
	ADD	r10,	r21,	r0
$0BB0_219:
	bneid	r20,	$0BB0_221
	NOP
	ADD	r6,	r9,	r0
$0BB0_221:
	FPGT	r9,	r10,	r6
	bneid	r9,	$0BB0_223
	NOP
	ADD	r11,	r12,	r0
$0BB0_223:
	bneid	r11,	$0BB0_295
	NOP
	ORI	r9,	r0,	0
	ADDI	r11,	r0,	1
	FPLT	r9,	r6,	r9
	bneid	r9,	$0BB0_226
	NOP
	ADDI	r11,	r0,	0
$0BB0_226:
	bneid	r11,	$0BB0_295
	NOP
	LWI	r9,	r19,	800752
	FPRSUB	r5,	r9,	r5
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	800632
	FPDIV	r5,	r5,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r5,	r8
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_229
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_229:
	bneid	r20,	$0BB0_231
	ADD	r9,	r8,	r0
	ADD	r9,	r5,	r0
$0BB0_231:
	bneid	r20,	$0BB0_233
	NOP
	ADD	r5,	r8,	r0
$0BB0_233:
	FPGT	r8,	r9,	r10
	FPLT	r20,	r5,	r6
	bneid	r8,	$0BB0_235
	ADD	r21,	r11,	r0
	ADD	r21,	r12,	r0
$0BB0_235:
	bneid	r20,	$0BB0_237
	ADD	r8,	r11,	r0
	ADD	r8,	r12,	r0
$0BB0_237:
	bneid	r21,	$0BB0_239
	NOP
	ADD	r9,	r10,	r0
$0BB0_239:
	bneid	r8,	$0BB0_241
	NOP
	ADD	r5,	r6,	r0
$0BB0_241:
	FPGT	r6,	r9,	r5
	bneid	r6,	$0BB0_243
	NOP
	ADD	r11,	r12,	r0
$0BB0_243:
	bneid	r11,	$0BB0_295
	NOP
	ORI	r6,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r6,	r5,	r6
	bneid	r6,	$0BB0_246
	NOP
	ADDI	r8,	r0,	0
$0BB0_246:
	bneid	r8,	$0BB0_295
	NOP
	LWI	r6,	r19,	800756
	FPRSUB	r4,	r6,	r4
	FPRSUB	r6,	r6,	r7
	LWI	r7,	r19,	800624
	FPDIV	r4,	r4,	r7
	FPDIV	r6,	r6,	r7
	FPGT	r7,	r4,	r6
	ADDI	r8,	r0,	1
	ADDI	r10,	r0,	0
	bneid	r7,	$0BB0_249
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_249:
	bneid	r11,	$0BB0_251
	ADD	r7,	r6,	r0
	ADD	r7,	r4,	r0
$0BB0_251:
	bneid	r11,	$0BB0_253
	NOP
	ADD	r4,	r6,	r0
$0BB0_253:
	FPGT	r6,	r7,	r9
	FPLT	r11,	r4,	r5
	bneid	r6,	$0BB0_255
	ADD	r12,	r8,	r0
	ADD	r12,	r10,	r0
$0BB0_255:
	bneid	r11,	$0BB0_257
	ADD	r6,	r8,	r0
	ADD	r6,	r10,	r0
$0BB0_257:
	bneid	r6,	$0BB0_259
	NOP
	ADD	r4,	r5,	r0
$0BB0_259:
	bneid	r12,	$0BB0_261
	NOP
	ADD	r7,	r9,	r0
$0BB0_261:
	FPGT	r5,	r7,	r4
	bneid	r5,	$0BB0_263
	NOP
	ADD	r8,	r10,	r0
$0BB0_263:
	bneid	r8,	$0BB0_295
	NOP
	ORI	r5,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r4,	r4,	r5
	bneid	r4,	$0BB0_266
	NOP
	ADDI	r6,	r0,	0
$0BB0_266:
	bneid	r6,	$0BB0_295
	NOP
	LOAD	r4,	r3,	7
	LOAD	r3,	r3,	6
	SWI	r3,	r19,	800640
	ADD	r5,	r0,	r0
	CMP	r3,	r5,	r3
	bltid	r3,	$0BB0_299
	NOP
	ADD	r3,	r0,	r0
	LWI	r5,	r19,	800640
	CMP	r3,	r3,	r5
	bleid	r3,	$0BB0_295
	NOP
$0BB0_269:
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
	SWI	r7,	r19,	800644
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r19,	800632
	FPMUL	r21,	r20,	r7
	LWI	r22,	r19,	800624
	FPMUL	r23,	r8,	r22
	FPRSUB	r6,	r12,	r6
	LOAD	r24,	r4,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r19,	800636
	FPMUL	r25,	r23,	r7
	FPRSUB	r3,	r10,	r3
	FPRSUB	r5,	r11,	r5
	LWI	r26,	r19,	800748
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r6
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r4,	9
	LWI	r28,	r19,	800752
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
	LWI	r31,	r19,	800756
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
	bneid	r23,	$0BB0_271
	NOP
	ADDI	r21,	r0,	0
$0BB0_271:
	bneid	r21,	$0BB0_294
	NOP
	ORI	r7,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r7,	r20,	r7
	bneid	r7,	$0BB0_274
	NOP
	ADDI	r21,	r0,	0
$0BB0_274:
	bneid	r21,	$0BB0_294
	NOP
	FPMUL	r7,	r11,	r3
	FPMUL	r21,	r5,	r10
	FPRSUB	r7,	r21,	r7
	FPMUL	r10,	r6,	r10
	FPMUL	r3,	r12,	r3
	FPRSUB	r3,	r3,	r10
	FPMUL	r5,	r5,	r12
	FPMUL	r6,	r6,	r11
	LWI	r10,	r19,	800636
	FPMUL	r10,	r7,	r10
	ORI	r11,	r0,	0
	FPRSUB	r5,	r6,	r5
	LWI	r6,	r19,	800632
	FPMUL	r6,	r3,	r6
	FPADD	r10,	r10,	r11
	LWI	r12,	r19,	800624
	FPMUL	r12,	r5,	r12
	FPADD	r6,	r6,	r10
	FPADD	r6,	r12,	r6
	FPMUL	r6,	r6,	r22
	ADDI	r10,	r0,	1
	FPLT	r11,	r6,	r11
	bneid	r11,	$0BB0_277
	NOP
	ADDI	r10,	r0,	0
$0BB0_277:
	bneid	r10,	$0BB0_294
	NOP
	FPADD	r6,	r6,	r20
	ORI	r10,	r0,	1065353216
	ADDI	r11,	r0,	1
	FPGT	r6,	r6,	r10
	bneid	r6,	$0BB0_280
	NOP
	ADDI	r11,	r0,	0
$0BB0_280:
	bneid	r11,	$0BB0_294
	NOP
	FPMUL	r6,	r7,	r9
	ORI	r7,	r0,	0
	FPMUL	r3,	r3,	r8
	FPADD	r6,	r6,	r7
	LWI	r8,	r19,	800644
	FPMUL	r5,	r5,	r8
	FPADD	r3,	r3,	r6
	FPADD	r3,	r5,	r3
	FPMUL	r3,	r3,	r22
	FPUN	r5,	r3,	r7
	FPLE	r6,	r3,	r7
	BITOR	r5,	r5,	r6
	bneid	r5,	$0BB0_283
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_283:
	bneid	r7,	$0BB0_294
	NOP
	ORI	r5,	r0,	981668463
	ADDI	r6,	r0,	1
	FPLT	r5,	r3,	r5
	bneid	r5,	$0BB0_286
	NOP
	ADDI	r6,	r0,	0
$0BB0_286:
	bneid	r6,	$0BB0_294
	NOP
	ORI	r5,	r0,	1343554297
	ADDI	r6,	r0,	1
	FPEQ	r5,	r3,	r5
	bneid	r5,	$0BB0_289
	NOP
	ADDI	r6,	r0,	0
$0BB0_289:
	bneid	r6,	$0BB0_294
	NOP
	LWI	r5,	r19,	800620
	SWI	r5,	r19,	800268
	LWI	r5,	r19,	800268
	FPUN	r6,	r5,	r3
	FPLE	r5,	r5,	r3
	BITOR	r5,	r6,	r5
	bneid	r5,	$0BB0_292
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_292:
	bneid	r7,	$0BB0_294
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
	SWI	r22,	r19,	800708
	ADD	r22,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r22,	r22,	9
	ADD	r21,	r22,	r21
	LOAD	r22,	r21,	6
	LOAD	r23,	r21,	5
	LOAD	r21,	r21,	4
	SWI	r22,	r19,	800312
	SWI	r23,	r19,	800316
	SWI	r21,	r19,	800320
	SWI	r11,	r19,	800300
	SWI	r12,	r19,	800304
	SWI	r20,	r19,	800308
	SWI	r8,	r19,	800288
	SWI	r9,	r19,	800292
	SWI	r10,	r19,	800296
	SWI	r5,	r19,	800276
	SWI	r6,	r19,	800280
	SWI	r7,	r19,	800284
	SWI	r3,	r19,	800272
	ADDI	r3,	r0,	1060320051
	SWI	r3,	r19,	800704
	ADDI	r3,	r0,	1050253722
	SWI	r3,	r19,	800712
	LWI	r3,	r19,	800312
	SWI	r3,	r19,	800688
	LWI	r6,	r19,	800316
	SWI	r6,	r19,	800680
	LWI	r6,	r19,	800320
	SWI	r6,	r19,	800684
	LWI	r5,	r19,	800300
	SWI	r5,	r19,	800648
	LWI	r5,	r19,	800304
	SWI	r5,	r19,	800652
	LWI	r5,	r19,	800308
	SWI	r5,	r19,	800656
	LWI	r5,	r19,	800288
	SWI	r5,	r19,	800660
	LWI	r5,	r19,	800292
	SWI	r5,	r19,	800664
	LWI	r5,	r19,	800296
	SWI	r5,	r19,	800676
	LWI	r5,	r19,	800276
	SWI	r5,	r19,	800692
	LWI	r5,	r19,	800280
	SWI	r5,	r19,	800696
	LWI	r5,	r19,	800284
	SWI	r5,	r19,	800700
	LWI	r3,	r19,	800272
	SWI	r3,	r19,	800620
$0BB0_294:
	LWI	r3,	r19,	800640
	ADDI	r3,	r3,	-1
	SWI	r3,	r19,	800640
	ADDI	r4,	r4,	11
	ADD	r5,	r0,	r0
	CMP	r3,	r5,	r3
	bneid	r3,	$0BB0_269
	NOP
$0BB0_295:
	ADD	r4,	r0,	r0
	LWI	r3,	r19,	800628
	CMP	r4,	r4,	r3
	bltid	r4,	$0BB0_302
	NOP
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r3,	r19,	800628
	beqid	r4,	$0BB0_298
	ADDI	r3,	r3,	0
$0BB0_297:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_297
	ADDK	r3,	r3,	r3
$0BB0_298:
	ADDI	r4,	r19,	56
	LW	r4,	r4,	r3
	LWI	r3,	r19,	800628
	ADDI	r3,	r3,	-1
	SWI	r3,	r19,	800628
	brid	$0BB0_205
	NOP
$0BB0_299:
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r5,	r19,	800628
	beqid	r3,	$0BB0_301
	ADDI	r5,	r5,	0
$0BB0_300:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_300
	ADDK	r5,	r5,	r5
$0BB0_301:
	ADDI	r3,	r19,	56
	LWI	r6,	r19,	800628
	ADDI	r6,	r6,	1
	SWI	r6,	r19,	800628
	ADDI	r6,	r4,	1
	ADD	r3,	r3,	r5
	brid	$0BB0_205
	SWI	r6,	r3,	4
$0BB0_302:
	LWI	r4,	r19,	800620
	SWI	r4,	r19,	800360
	LWI	r5,	r19,	800700
	SWI	r5,	r19,	800356
	LWI	r5,	r19,	800696
	SWI	r5,	r19,	800352
	LWI	r5,	r19,	800692
	SWI	r5,	r19,	800348
	LWI	r5,	r19,	800676
	SWI	r5,	r19,	800344
	LWI	r5,	r19,	800664
	SWI	r5,	r19,	800340
	LWI	r5,	r19,	800660
	SWI	r5,	r19,	800336
	LWI	r5,	r19,	800656
	SWI	r5,	r19,	800332
	LWI	r5,	r19,	800652
	SWI	r5,	r19,	800328
	LWI	r5,	r19,	800648
	SWI	r5,	r19,	800324
	LWI	r4,	r19,	800360
	SWI	r4,	r19,	800692
	ORI	r3,	r0,	1343554297
	LWI	r5,	r19,	800356
	LWI	r6,	r19,	800352
	LWI	r7,	r19,	800348
	LWI	r8,	r19,	800344
	LWI	r9,	r19,	800340
	LWI	r10,	r19,	800336
	LWI	r11,	r19,	800332
	LWI	r12,	r19,	800328
	LWI	r20,	r19,	800324
	ADDI	r21,	r0,	1
	FPLT	r4,	r4,	r3
	bneid	r4,	$0BB0_304
	NOP
	ADDI	r21,	r0,	0
$0BB0_304:
	bneid	r21,	$0BB0_306
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
	LWI	r8,	r19,	800692
	LWI	r7,	r19,	800636
	FPMUL	r7,	r7,	r8
	LWI	r9,	r19,	800632
	FPMUL	r8,	r9,	r8
	FPADD	r4,	r6,	r4
	FPMUL	r5,	r5,	r5
	ADD	r6,	r0,	r0
	LWI	r9,	r19,	800748
	FPADD	r7,	r7,	r9
	SWI	r7,	r19,	800656
	LWI	r7,	r19,	800752
	FPADD	r7,	r8,	r7
	SWI	r7,	r19,	800660
	FPADD	r4,	r4,	r5
	SWI	r4,	r19,	800696
	ORI	r4,	r0,	1057988018
	ADDI	r5,	r0,	1060806590
	ADDI	r7,	r0,	1065151889
	brid	$0BB0_419
	NOP
$0BB0_306:
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
	LWI	r6,	r19,	800724
	SWI	r6,	r19,	800368
	FPMUL	r6,	r9,	r9
	FPMUL	r7,	r4,	r4
	LWI	r3,	r19,	800368
	LWI	r8,	r19,	800636
	FPMUL	r10,	r8,	r8
	LWI	r11,	r19,	800632
	FPMUL	r12,	r11,	r11
	FPADD	r6,	r6,	r7
	FPMUL	r7,	r5,	r5
	FPADD	r6,	r6,	r7
	SWI	r6,	r19,	800696
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
	LWI	r12,	r19,	800692
	FPMUL	r3,	r3,	r12
	FPMUL	r11,	r11,	r12
	FPMUL	r8,	r8,	r12
	FPMUL	r6,	r6,	r5
	FPADD	r7,	r7,	r10
	FPADD	r6,	r6,	r7
	LWI	r7,	r19,	800704
	SWI	r7,	r19,	800364
	SWI	r3,	r19,	800380
	SWI	r11,	r19,	800376
	SWI	r8,	r19,	800372
	LWI	r7,	r19,	800364
	SWI	r7,	r19,	800700
	FPUN	r7,	r6,	r20
	FPLE	r6,	r6,	r20
	BITOR	r6,	r7,	r6
	bneid	r6,	$0BB0_308
	ADDI	r10,	r0,	1
	ADDI	r10,	r0,	0
$0BB0_308:
	bneid	r10,	$0BB0_310
	NOP
	FPNEG	r9,	r9
	FPNEG	r4,	r4
	FPNEG	r5,	r5
$0BB0_310:
	LWI	r6,	r19,	800748
	FPADD	r6,	r8,	r6
	SWI	r6,	r19,	800656
	LWI	r7,	r19,	800752
	FPADD	r7,	r11,	r7
	SWI	r7,	r19,	800660
	LWI	r8,	r19,	800756
	FPADD	r3,	r8,	r3
	SWI	r3,	r19,	800664
	LWI	r8,	r19,	800784
	FPRSUB	r6,	r6,	r8
	LWI	r8,	r19,	800788
	FPRSUB	r7,	r7,	r8
	LWI	r8,	r19,	800792
	FPRSUB	r3,	r3,	r8
	FPMUL	r8,	r6,	r6
	FPMUL	r10,	r7,	r7
	FPADD	r8,	r8,	r10
	FPMUL	r10,	r3,	r3
	FPADD	r8,	r8,	r10
	ORI	r10,	r0,	1065353216
	FPINVSQRT	r11,	r8
	FPDIV	r10,	r10,	r11
	FPDIV	r6,	r6,	r10
	SWI	r6,	r19,	800644
	FPDIV	r7,	r7,	r10
	SWI	r7,	r19,	800648
	ORI	r11,	r0,	0
	FPMUL	r6,	r6,	r9
	FPDIV	r3,	r3,	r10
	SWI	r3,	r19,	800652
	FPMUL	r4,	r7,	r4
	FPADD	r6,	r6,	r11
	FPMUL	r5,	r3,	r5
	FPADD	r4,	r4,	r6
	FPADD	r4,	r5,	r4
	SWI	r4,	r19,	800732
	FPUN	r5,	r4,	r11
	FPLE	r4,	r4,	r11
	BITOR	r4,	r5,	r4
	bneid	r4,	$0BB0_312
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_312:
	bneid	r6,	$0BB0_418
	NOP
	ADD	r4,	r0,	r0
	ADDI	r5,	r0,	-1
	SWI	r5,	r19,	800628
	FPINVSQRT	r5,	r8
	SWI	r5,	r19,	800728
$0BB0_314:
	ADDI	r5,	r0,	3
	ANDI	r5,	r5,	31
	beqid	r5,	$0BB0_316
	ADDI	r4,	r4,	0
$0BB0_315:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_315
	ADDK	r4,	r4,	r4
$0BB0_316:
	LWI	r5,	r19,	800672
	ADD	r5,	r4,	r5
	LOAD	r4,	r5,	2
	LOAD	r6,	r5,	1
	LOAD	r7,	r5,	0
	LOAD	r11,	r5,	5
	LOAD	r3,	r5,	4
	LOAD	r8,	r5,	3
	LWI	r9,	r19,	800656
	FPRSUB	r7,	r9,	r7
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r19,	800644
	FPDIV	r7,	r7,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r7,	r8
	ADDI	r10,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_318
	ADD	r20,	r10,	r0
	ADD	r20,	r12,	r0
$0BB0_318:
	bneid	r20,	$0BB0_320
	ADD	r9,	r8,	r0
	ADD	r9,	r7,	r0
$0BB0_320:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_322
	NOP
	ADD	r7,	r8,	r0
$0BB0_322:
	ORI	r8,	r0,	1343554297
	FPGT	r20,	r9,	r21
	FPLT	r22,	r7,	r8
	bneid	r20,	$0BB0_324
	ADD	r23,	r10,	r0
	ADD	r23,	r12,	r0
$0BB0_324:
	bneid	r22,	$0BB0_326
	ADD	r20,	r10,	r0
	ADD	r20,	r12,	r0
$0BB0_326:
	bneid	r23,	$0BB0_328
	NOP
	ADD	r9,	r21,	r0
$0BB0_328:
	bneid	r20,	$0BB0_330
	NOP
	ADD	r7,	r8,	r0
$0BB0_330:
	FPGT	r8,	r9,	r7
	bneid	r8,	$0BB0_332
	NOP
	ADD	r10,	r12,	r0
$0BB0_332:
	bneid	r10,	$0BB0_404
	NOP
	ORI	r8,	r0,	0
	ADDI	r10,	r0,	1
	FPLT	r8,	r7,	r8
	bneid	r8,	$0BB0_335
	NOP
	ADDI	r10,	r0,	0
$0BB0_335:
	bneid	r10,	$0BB0_404
	NOP
	LWI	r8,	r19,	800660
	FPRSUB	r6,	r8,	r6
	FPRSUB	r3,	r8,	r3
	LWI	r8,	r19,	800648
	FPDIV	r6,	r6,	r8
	FPDIV	r3,	r3,	r8
	FPGT	r8,	r6,	r3
	ADDI	r10,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r8,	$0BB0_338
	ADD	r20,	r10,	r0
	ADD	r20,	r12,	r0
$0BB0_338:
	bneid	r20,	$0BB0_340
	ADD	r8,	r3,	r0
	ADD	r8,	r6,	r0
$0BB0_340:
	bneid	r20,	$0BB0_342
	NOP
	ADD	r6,	r3,	r0
$0BB0_342:
	FPGT	r3,	r8,	r9
	FPLT	r20,	r6,	r7
	bneid	r3,	$0BB0_344
	ADD	r21,	r10,	r0
	ADD	r21,	r12,	r0
$0BB0_344:
	bneid	r20,	$0BB0_346
	ADD	r3,	r10,	r0
	ADD	r3,	r12,	r0
$0BB0_346:
	bneid	r21,	$0BB0_348
	NOP
	ADD	r8,	r9,	r0
$0BB0_348:
	bneid	r3,	$0BB0_350
	NOP
	ADD	r6,	r7,	r0
$0BB0_350:
	FPGT	r7,	r8,	r6
	bneid	r7,	$0BB0_352
	NOP
	ADD	r10,	r12,	r0
$0BB0_352:
	bneid	r10,	$0BB0_404
	NOP
	ORI	r7,	r0,	0
	ADDI	r3,	r0,	1
	FPLT	r7,	r6,	r7
	bneid	r7,	$0BB0_355
	NOP
	ADDI	r3,	r0,	0
$0BB0_355:
	bneid	r3,	$0BB0_404
	NOP
	LWI	r7,	r19,	800664
	FPRSUB	r4,	r7,	r4
	FPRSUB	r7,	r7,	r11
	LWI	r11,	r19,	800652
	FPDIV	r4,	r4,	r11
	FPDIV	r7,	r7,	r11
	FPGT	r11,	r4,	r7
	ADDI	r3,	r0,	1
	ADDI	r9,	r0,	0
	bneid	r11,	$0BB0_358
	ADD	r10,	r3,	r0
	ADD	r10,	r9,	r0
$0BB0_358:
	bneid	r10,	$0BB0_360
	ADD	r11,	r7,	r0
	ADD	r11,	r4,	r0
$0BB0_360:
	bneid	r10,	$0BB0_362
	NOP
	ADD	r4,	r7,	r0
$0BB0_362:
	FPGT	r7,	r11,	r8
	FPLT	r10,	r4,	r6
	bneid	r7,	$0BB0_364
	ADD	r12,	r3,	r0
	ADD	r12,	r9,	r0
$0BB0_364:
	bneid	r10,	$0BB0_366
	ADD	r7,	r3,	r0
	ADD	r7,	r9,	r0
$0BB0_366:
	bneid	r7,	$0BB0_368
	NOP
	ADD	r4,	r6,	r0
$0BB0_368:
	bneid	r12,	$0BB0_370
	NOP
	ADD	r11,	r8,	r0
$0BB0_370:
	FPGT	r6,	r11,	r4
	bneid	r6,	$0BB0_372
	NOP
	ADD	r3,	r9,	r0
$0BB0_372:
	bneid	r3,	$0BB0_404
	NOP
	ORI	r6,	r0,	0
	ADDI	r7,	r0,	1
	FPLT	r4,	r4,	r6
	bneid	r4,	$0BB0_375
	NOP
	ADDI	r7,	r0,	0
$0BB0_375:
	bneid	r7,	$0BB0_404
	NOP
	LOAD	r4,	r5,	7
	LOAD	r5,	r5,	6
	SWI	r5,	r19,	800640
	ADD	r6,	r0,	r0
	CMP	r5,	r6,	r5
	bltid	r5,	$0BB0_408
	NOP
	ADD	r5,	r0,	r0
	LWI	r6,	r19,	800640
	CMP	r5,	r5,	r6
	bleid	r5,	$0BB0_404
	NOP
$0BB0_378:
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
	SWI	r11,	r19,	800676
	FPRSUB	r3,	r10,	r3
	FPRSUB	r8,	r12,	r8
	LWI	r20,	r19,	800648
	FPMUL	r21,	r20,	r11
	LWI	r22,	r19,	800652
	FPMUL	r23,	r3,	r22
	FPRSUB	r7,	r12,	r7
	LOAD	r24,	r4,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r8,	r22
	LWI	r23,	r19,	800644
	FPMUL	r25,	r23,	r11
	FPRSUB	r5,	r9,	r5
	FPRSUB	r6,	r10,	r6
	LWI	r26,	r19,	800656
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r3,	r23
	FPMUL	r20,	r8,	r20
	FPMUL	r25,	r21,	r7
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r4,	9
	LWI	r28,	r19,	800660
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
	LWI	r31,	r19,	800664
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
	bneid	r23,	$0BB0_380
	NOP
	ADDI	r21,	r0,	0
$0BB0_380:
	bneid	r21,	$0BB0_403
	NOP
	ORI	r11,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r11,	r20,	r11
	bneid	r11,	$0BB0_383
	NOP
	ADDI	r21,	r0,	0
$0BB0_383:
	bneid	r21,	$0BB0_403
	NOP
	FPMUL	r11,	r10,	r5
	FPMUL	r21,	r6,	r9
	FPRSUB	r11,	r21,	r11
	FPMUL	r9,	r7,	r9
	FPMUL	r5,	r12,	r5
	FPRSUB	r5,	r5,	r9
	FPMUL	r6,	r6,	r12
	FPMUL	r7,	r7,	r10
	LWI	r9,	r19,	800644
	FPMUL	r9,	r11,	r9
	ORI	r10,	r0,	0
	FPRSUB	r6,	r7,	r6
	LWI	r7,	r19,	800648
	FPMUL	r7,	r5,	r7
	FPADD	r9,	r9,	r10
	LWI	r12,	r19,	800652
	FPMUL	r12,	r6,	r12
	FPADD	r7,	r7,	r9
	FPADD	r7,	r12,	r7
	FPMUL	r7,	r7,	r22
	ADDI	r9,	r0,	1
	FPLT	r10,	r7,	r10
	bneid	r10,	$0BB0_386
	NOP
	ADDI	r9,	r0,	0
$0BB0_386:
	bneid	r9,	$0BB0_403
	NOP
	FPADD	r7,	r7,	r20
	ORI	r9,	r0,	1065353216
	ADDI	r10,	r0,	1
	FPGT	r7,	r7,	r9
	bneid	r7,	$0BB0_389
	NOP
	ADDI	r10,	r0,	0
$0BB0_389:
	bneid	r10,	$0BB0_403
	NOP
	FPMUL	r7,	r11,	r8
	ORI	r11,	r0,	0
	FPMUL	r5,	r5,	r3
	FPADD	r7,	r7,	r11
	LWI	r3,	r19,	800676
	FPMUL	r6,	r6,	r3
	FPADD	r5,	r5,	r7
	FPADD	r5,	r6,	r5
	FPMUL	r5,	r5,	r22
	FPUN	r6,	r5,	r11
	FPLE	r7,	r5,	r11
	BITOR	r6,	r6,	r7
	bneid	r6,	$0BB0_392
	ADDI	r11,	r0,	1
	ADDI	r11,	r0,	0
$0BB0_392:
	bneid	r11,	$0BB0_403
	NOP
	ORI	r6,	r0,	981668463
	ADDI	r7,	r0,	1
	FPLT	r6,	r5,	r6
	bneid	r6,	$0BB0_395
	NOP
	ADDI	r7,	r0,	0
$0BB0_395:
	bneid	r7,	$0BB0_403
	NOP
	ORI	r6,	r0,	1343554297
	ADDI	r7,	r0,	1
	FPEQ	r6,	r5,	r6
	bneid	r6,	$0BB0_398
	NOP
	ADDI	r7,	r0,	0
$0BB0_398:
	bneid	r7,	$0BB0_403
	NOP
	LWI	r6,	r19,	800620
	SWI	r6,	r19,	800384
	LWI	r6,	r19,	800384
	FPUN	r7,	r6,	r5
	FPLE	r6,	r6,	r5
	BITOR	r6,	r7,	r6
	bneid	r6,	$0BB0_401
	ADDI	r11,	r0,	1
	ADDI	r11,	r0,	0
$0BB0_401:
	bneid	r11,	$0BB0_403
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
	SWI	r5,	r19,	800388
	LOAD	r5,	r6,	6
	LWI	r5,	r19,	800388
	SWI	r5,	r19,	800620
	LOAD	r5,	r6,	5
	LOAD	r5,	r6,	4
$0BB0_403:
	LWI	r5,	r19,	800640
	ADDI	r5,	r5,	-1
	SWI	r5,	r19,	800640
	ADDI	r4,	r4,	11
	ADD	r6,	r0,	r0
	CMP	r5,	r6,	r5
	bneid	r5,	$0BB0_378
	NOP
$0BB0_404:
	ADD	r4,	r0,	r0
	LWI	r5,	r19,	800628
	CMP	r4,	r4,	r5
	bltid	r4,	$0BB0_411
	NOP
	ADDI	r4,	r0,	2
	ANDI	r4,	r4,	31
	LWI	r5,	r19,	800628
	beqid	r4,	$0BB0_407
	ADDI	r5,	r5,	0
$0BB0_406:
	ADDI	r4,	r4,	-1
	bneid	r4,	$0BB0_406
	ADDK	r5,	r5,	r5
$0BB0_407:
	ADDI	r4,	r19,	56
	LW	r4,	r4,	r5
	LWI	r5,	r19,	800628
	ADDI	r5,	r5,	-1
	SWI	r5,	r19,	800628
	brid	$0BB0_314
	NOP
$0BB0_408:
	ADDI	r5,	r0,	2
	ANDI	r5,	r5,	31
	LWI	r6,	r19,	800628
	beqid	r5,	$0BB0_410
	ADDI	r6,	r6,	0
$0BB0_409:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_409
	ADDK	r6,	r6,	r6
$0BB0_410:
	ADDI	r5,	r19,	56
	LWI	r7,	r19,	800628
	ADDI	r7,	r7,	1
	SWI	r7,	r19,	800628
	ADDI	r7,	r4,	1
	ADD	r5,	r5,	r6
	brid	$0BB0_314
	SWI	r7,	r5,	4
$0BB0_411:
	LWI	r4,	r19,	800620
	SWI	r4,	r19,	800392
	ORI	r4,	r0,	1065353216
	LWI	r5,	r19,	800392
	LWI	r6,	r19,	800728
	FPDIV	r4,	r4,	r6
	ORI	r11,	r0,	0
	FPUN	r6,	r5,	r4
	FPGE	r4,	r5,	r4
	BITOR	r4,	r6,	r4
	bneid	r4,	$0BB0_413
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_413:
	bneid	r7,	$0BB0_417
	NOP
	ORI	r4,	r0,	1008981770
	ADDI	r6,	r0,	1
	FPGT	r4,	r5,	r4
	bneid	r4,	$0BB0_416
	NOP
	ADDI	r6,	r0,	0
$0BB0_416:
	bneid	r6,	$0BB0_418
	NOP
$0BB0_417:
	LWI	r5,	r19,	800732
	LWI	r4,	r19,	800700
	FPMUL	r4,	r4,	r5
	ORI	r5,	r0,	0
	FPADD	r11,	r4,	r5
$0BB0_418:
	LWI	r6,	r19,	800680
	SWI	r6,	r19,	800396
	LWI	r4,	r19,	800688
	SWI	r4,	r19,	800404
	LWI	r4,	r19,	800396
	LWI	r5,	r19,	800404
	LWI	r6,	r19,	800684
	SWI	r6,	r19,	800412
	FPMUL	r4,	r4,	r11
	FPMUL	r5,	r11,	r5
	LWI	r7,	r19,	800412
	SWI	r4,	r19,	800400
	SWI	r5,	r19,	800408
	ADD	r6,	r0,	r0
	FPMUL	r4,	r7,	r11
	LWI	r5,	r19,	800400
	LWI	r7,	r19,	800408
$0BB0_419:
	LWI	r8,	r19,	800692
	LWI	r3,	r19,	800624
	FPMUL	r3,	r3,	r8
	LWI	r8,	r19,	800756
	FPADD	r3,	r8,	r3
	ADD	r8,	r0,	r0
	ORI	r9,	r0,	0
	BITOR	r6,	r7,	r6
	LWI	r7,	r19,	800696
	FPINVSQRT	r7,	r7
	ADD	r7,	r9,	r0
	ADD	r10,	r9,	r0
	brid	$0BB0_433
	ADD	r11,	r8,	r0
$0BB0_420:
	ADDI	r20,	r0,	5
	ANDI	r20,	r20,	31
	beqid	r20,	$0BB0_422
	ADDI	r21,	r8,	0
$0BB0_421:
	ADDI	r20,	r20,	-1
	bneid	r20,	$0BB0_421
	ADDK	r21,	r21,	r21
$0BB0_422:
	LWI	r20,	r19,	800740
	ADD	r22,	r20,	r21
	LWI	r23,	r22,	8
	SWI	r23,	r19,	800420
	LWI	r22,	r22,	4
	LW	r20,	r20,	r21
	LWI	r21,	r19,	800656
	FPRSUB	r21,	r21,	r20
	LWI	r23,	r19,	800660
	FPRSUB	r23,	r23,	r22
	LWI	r24,	r19,	800420
	FPRSUB	r24,	r3,	r24
	FPMUL	r21,	r21,	r21
	FPMUL	r23,	r23,	r23
	FPADD	r21,	r21,	r23
	FPMUL	r23,	r24,	r24
	SWI	r22,	r19,	800424
	SWI	r20,	r19,	800416
	FPADD	r20,	r21,	r23
	ORI	r21,	r0,	1133543424
	FPUN	r22,	r20,	r21
	FPGE	r20,	r20,	r21
	BITOR	r20,	r22,	r20
	bneid	r20,	$0BB0_424
	ADDI	r21,	r0,	1
	ADDI	r21,	r0,	0
$0BB0_424:
	bneid	r21,	$0BB0_432
	NOP
	ADDI	r20,	r0,	2
	ANDI	r21,	r20,	31
	beqid	r21,	$0BB0_427
	ADDI	r22,	r12,	0
$0BB0_426:
	ADDI	r21,	r21,	-1
	bneid	r21,	$0BB0_426
	ADDK	r22,	r22,	r22
$0BB0_427:
	ANDI	r21,	r20,	31
	beqid	r21,	$0BB0_429
	ADDI	r23,	r12,	0
$0BB0_428:
	ADDI	r21,	r21,	-1
	bneid	r21,	$0BB0_428
	ADDK	r23,	r23,	r23
$0BB0_429:
	ANDI	r20,	r20,	31
	beqid	r20,	$0BB0_431
	ADDI	r12,	r12,	0
$0BB0_430:
	ADDI	r20,	r20,	-1
	bneid	r20,	$0BB0_430
	ADDK	r12,	r12,	r12
$0BB0_431:
	LWI	r20,	r19,	800740
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
	bgtid	r12,	$0BB0_437
	NOP
$0BB0_432:
	ADDI	r8,	r8,	1
$0BB0_433:
	ADDI	r12,	r0,	3
	ANDI	r20,	r12,	31
	beqid	r20,	$0BB0_435
	ADDI	r12,	r8,	0
$0BB0_434:
	ADDI	r20,	r20,	-1
	bneid	r20,	$0BB0_434
	ADDK	r12,	r12,	r12
$0BB0_435:
	LWI	r20,	r19,	800736
	CMP	r20,	r20,	r8
	bltid	r20,	$0BB0_420
	NOP
	ORI	r3,	r0,	0
	ADD	r8,	r0,	r0
	CMP	r8,	r8,	r11
	ADD	r12,	r3,	r0
	beqid	r8,	$0BB0_438
	ADD	r20,	r3,	r0
$0BB0_437:
	LWI	r3,	r19,	800684
	SWI	r3,	r19,	800428
	LWI	r3,	r19,	800680
	SWI	r3,	r19,	800436
	LWI	r3,	r19,	800688
	SWI	r3,	r19,	800432
	FPCONV	r3,	r11
	LWI	r12,	r19,	800428
	FPDIV	r20,	r9,	r3
	LWI	r8,	r19,	800436
	FPDIV	r7,	r7,	r3
	FPDIV	r9,	r10,	r3
	LWI	r10,	r19,	800432
	FPMUL	r3,	r12,	r20
	FPMUL	r12,	r8,	r7
	FPMUL	r20,	r9,	r10
$0BB0_438:
	LWI	r8,	r19,	800636
	LWI	r7,	r19,	800840
	FPDIV	r7,	r7,	r8
	LWI	r9,	r19,	800844
	FPDIV	r8,	r9,	r8
	FPGT	r9,	r7,	r8
	ADDI	r10,	r0,	1
	ADDI	r11,	r0,	0
	bneid	r9,	$0BB0_440
	ADD	r21,	r10,	r0
	ADD	r21,	r11,	r0
$0BB0_440:
	SWI	r5,	r19,	800444
	bneid	r21,	$0BB0_442
	ADD	r5,	r8,	r0
	ADD	r5,	r7,	r0
$0BB0_442:
	ORI	r9,	r0,	-803929351
	bneid	r21,	$0BB0_444
	NOP
	ADD	r7,	r8,	r0
$0BB0_444:
	ORI	r8,	r0,	1343554297
	LWI	r21,	r19,	800444
	SWI	r6,	r19,	800440
	FPGT	r6,	r5,	r9
	FPLT	r22,	r7,	r8
	bneid	r6,	$0BB0_446
	ADD	r23,	r10,	r0
	ADD	r23,	r11,	r0
$0BB0_446:
	bneid	r22,	$0BB0_448
	ADD	r6,	r10,	r0
	ADD	r6,	r11,	r0
$0BB0_448:
	FPADD	r12,	r12,	r21
	SWI	r12,	r19,	800628
	FPADD	r4,	r3,	r4
	SWI	r4,	r19,	800620
	SWI	r12,	r19,	800452
	SWI	r4,	r19,	800448
	LWI	r4,	r19,	800440
	bneid	r23,	$0BB0_450
	NOP
	ADD	r5,	r9,	r0
$0BB0_450:
	bneid	r6,	$0BB0_452
	NOP
	ADD	r7,	r8,	r0
$0BB0_452:
	LWI	r3,	r19,	800452
	LWI	r6,	r19,	800448
	FPGT	r8,	r5,	r7
	bneid	r8,	$0BB0_454
	NOP
	ADD	r10,	r11,	r0
$0BB0_454:
	bneid	r10,	$0BB0_523
	FPADD	r4,	r4,	r20
	ORI	r8,	r0,	0
	ADDI	r9,	r0,	1
	FPLT	r8,	r7,	r8
	bneid	r8,	$0BB0_457
	NOP
	ADDI	r9,	r0,	0
$0BB0_457:
	bneid	r9,	$0BB0_523
	NOP
	LWI	r9,	r19,	800632
	LWI	r8,	r19,	800848
	FPDIV	r8,	r8,	r9
	LWI	r10,	r19,	800852
	FPDIV	r9,	r10,	r9
	FPGT	r10,	r8,	r9
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r10,	$0BB0_460
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_460:
	bneid	r20,	$0BB0_462
	ADD	r10,	r9,	r0
	ADD	r10,	r8,	r0
$0BB0_462:
	bneid	r20,	$0BB0_464
	NOP
	ADD	r8,	r9,	r0
$0BB0_464:
	FPGT	r9,	r10,	r5
	FPLT	r20,	r8,	r7
	bneid	r9,	$0BB0_466
	ADD	r21,	r11,	r0
	ADD	r21,	r12,	r0
$0BB0_466:
	bneid	r20,	$0BB0_468
	ADD	r9,	r11,	r0
	ADD	r9,	r12,	r0
$0BB0_468:
	bneid	r21,	$0BB0_470
	NOP
	ADD	r10,	r5,	r0
$0BB0_470:
	bneid	r9,	$0BB0_472
	NOP
	ADD	r8,	r7,	r0
$0BB0_472:
	FPGT	r5,	r10,	r8
	bneid	r5,	$0BB0_474
	NOP
	ADD	r11,	r12,	r0
$0BB0_474:
	bneid	r11,	$0BB0_523
	NOP
	ORI	r5,	r0,	0
	ADDI	r7,	r0,	1
	FPLT	r5,	r8,	r5
	bneid	r5,	$0BB0_477
	NOP
	ADDI	r7,	r0,	0
$0BB0_477:
	bneid	r7,	$0BB0_523
	NOP
	LWI	r5,	r19,	800836
	SWI	r5,	r19,	800456
	LWI	r5,	r19,	800456
	ORI	r7,	r0,	0
	ORI	r9,	r0,	1134886945
	LWI	r11,	r19,	800724
	SWI	r11,	r19,	800460
	FPRSUB	r7,	r5,	r7
	LWI	r11,	r19,	800460
	FPRSUB	r9,	r5,	r9
	FPDIV	r7,	r7,	r11
	FPDIV	r9,	r9,	r11
	FPGT	r11,	r7,	r9
	ADDI	r12,	r0,	1
	ADDI	r20,	r0,	0
	bneid	r11,	$0BB0_480
	ADD	r21,	r12,	r0
	ADD	r21,	r20,	r0
$0BB0_480:
	bneid	r21,	$0BB0_482
	ADD	r11,	r9,	r0
	ADD	r11,	r7,	r0
$0BB0_482:
	bneid	r21,	$0BB0_484
	NOP
	ADD	r7,	r9,	r0
$0BB0_484:
	FPGT	r9,	r11,	r10
	FPLT	r21,	r7,	r8
	bneid	r9,	$0BB0_486
	ADD	r22,	r12,	r0
	ADD	r22,	r20,	r0
$0BB0_486:
	bneid	r21,	$0BB0_488
	ADD	r9,	r12,	r0
	ADD	r9,	r20,	r0
$0BB0_488:
	bneid	r22,	$0BB0_490
	NOP
	ADD	r11,	r10,	r0
$0BB0_490:
	bneid	r9,	$0BB0_492
	NOP
	ADD	r7,	r8,	r0
$0BB0_492:
	FPGT	r8,	r11,	r7
	bneid	r8,	$0BB0_494
	NOP
	ADD	r12,	r20,	r0
$0BB0_494:
	bneid	r12,	$0BB0_523
	NOP
	ORI	r8,	r0,	0
	ADDI	r9,	r0,	1
	FPLT	r8,	r7,	r8
	bneid	r8,	$0BB0_497
	NOP
	ADDI	r9,	r0,	0
$0BB0_497:
	bneid	r9,	$0BB0_523
	NOP
	ORI	r3,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r8,	r11,	r7
	bneid	r8,	$0BB0_500
	NOP
	ADDI	r6,	r0,	0
$0BB0_500:
	ADD	r8,	r0,	r0
	ADD	r9,	r3,	r0
	ADD	r10,	r3,	r0
	ADD	r12,	r3,	r0
	ADD	r20,	r3,	r0
	bneid	r6,	$0BB0_573
	ADD	r21,	r3,	r0
$0BB0_501:
	ORI	r6,	r0,	1065353216
	FPDIV	r6,	r6,	r11
	FPMUL	r5,	r9,	r6
	FPMUL	r7,	r10,	r6
	LWI	r8,	r19,	800628
	FPADD	r8,	r5,	r8
	LWI	r9,	r19,	800620
	FPADD	r9,	r7,	r9
	FPMUL	r10,	r3,	r6
	SWI	r10,	r19,	800492
	SWI	r5,	r19,	800496
	SWI	r7,	r19,	800500
	SWI	r8,	r19,	800504
	SWI	r9,	r19,	800508
	ORI	r5,	r0,	0
	LWI	r3,	r19,	800504
	LWI	r6,	r19,	800508
	ADDI	r7,	r0,	1
	FPLT	r11,	r9,	r5
	bneid	r11,	$0BB0_503
	NOP
	ADDI	r7,	r0,	0
$0BB0_503:
	bneid	r7,	$0BB0_508
	NOP
	ORI	r5,	r0,	1065353216
	ADDI	r7,	r0,	1
	FPGT	r11,	r9,	r5
	bneid	r11,	$0BB0_506
	NOP
	ADDI	r7,	r0,	0
$0BB0_506:
	bneid	r7,	$0BB0_508
	NOP
	ADD	r5,	r9,	r0
$0BB0_508:
	FPADD	r4,	r4,	r10
	ORI	r7,	r0,	0
	ADDI	r9,	r0,	1
	FPLT	r10,	r4,	r7
	bneid	r10,	$0BB0_510
	NOP
	ADDI	r9,	r0,	0
$0BB0_510:
	bneid	r9,	$0BB0_515
	NOP
	ORI	r7,	r0,	1065353216
	ADDI	r9,	r0,	1
	FPGT	r10,	r4,	r7
	bneid	r10,	$0BB0_513
	NOP
	ADDI	r9,	r0,	0
$0BB0_513:
	bneid	r9,	$0BB0_515
	NOP
	ADD	r7,	r4,	r0
$0BB0_515:
	ORI	r9,	r0,	0
	ADDI	r10,	r0,	1
	FPLT	r11,	r8,	r9
	bneid	r11,	$0BB0_517
	NOP
	ADDI	r10,	r0,	0
$0BB0_517:
	bneid	r10,	$0BB0_522
	NOP
	ORI	r9,	r0,	1065353216
	ADDI	r10,	r0,	1
	FPGT	r11,	r8,	r9
	bneid	r11,	$0BB0_520
	NOP
	ADDI	r10,	r0,	0
$0BB0_520:
	bneid	r10,	$0BB0_522
	NOP
	ADD	r9,	r8,	r0
$0BB0_522:
	LWI	r10,	r19,	800720
	LWI	r8,	r19,	800716
	ADD	r8,	r8,	r10
	MULI	r8,	r8,	3
	LWI	r10,	r19,	800772
	ADD	r8,	r8,	r10
	STORE	r8,	r5,	0
	STORE	r8,	r9,	1
	STORE	r8,	r7,	2
$0BB0_523:
	SWI	r6,	r19,	800512
	LWI	r5,	r19,	800512
	ORI	r6,	r0,	0
	ADDI	r7,	r0,	1
	FPLT	r8,	r5,	r6
	bneid	r8,	$0BB0_525
	NOP
	ADDI	r7,	r0,	0
$0BB0_525:
	bneid	r7,	$0BB0_530
	NOP
	ORI	r6,	r0,	1065353216
	ADDI	r7,	r0,	1
	FPGT	r8,	r5,	r6
	bneid	r8,	$0BB0_528
	NOP
	ADDI	r7,	r0,	0
$0BB0_528:
	bneid	r7,	$0BB0_530
	NOP
	ADD	r6,	r5,	r0
$0BB0_530:
	ORI	r5,	r0,	0
	ADDI	r7,	r0,	1
	FPLT	r8,	r4,	r5
	bneid	r8,	$0BB0_532
	NOP
	ADDI	r7,	r0,	0
$0BB0_532:
	bneid	r7,	$0BB0_537
	NOP
	ORI	r5,	r0,	1065353216
	ADDI	r7,	r0,	1
	FPGT	r8,	r4,	r5
	bneid	r8,	$0BB0_535
	NOP
	ADDI	r7,	r0,	0
$0BB0_535:
	bneid	r7,	$0BB0_537
	NOP
	ADD	r5,	r4,	r0
$0BB0_537:
	SWI	r3,	r19,	800516
	LWI	r4,	r19,	800516
	ORI	r3,	r0,	0
	ADDI	r7,	r0,	1
	FPLT	r8,	r4,	r3
	bneid	r8,	$0BB0_539
	NOP
	ADDI	r7,	r0,	0
$0BB0_539:
	bneid	r7,	$0BB0_544
	NOP
	ORI	r3,	r0,	1065353216
	ADDI	r7,	r0,	1
	FPGT	r8,	r4,	r3
	bneid	r8,	$0BB0_542
	NOP
	ADDI	r7,	r0,	0
$0BB0_542:
	bneid	r7,	$0BB0_544
	NOP
	ADD	r3,	r4,	r0
$0BB0_544:
	LWI	r7,	r19,	800720
	LWI	r4,	r19,	800716
	ADD	r4,	r4,	r7
	MULI	r4,	r4,	3
	LWI	r7,	r19,	800772
	ADD	r4,	r4,	r7
	STORE	r4,	r6,	0
	STORE	r4,	r3,	1
	STORE	r4,	r5,	2
	ATOMIC_INC	r4,	0
	LWI	r3,	r19,	800856
	CMP	r3,	r4,	r3
	bgtid	r3,	$0BB0_204
	NOP
$0BB0_545:
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
	ADDI	r1,	r1,	800860
	rtsd	r15,	8
	ADD	r3,	r0,	r0
$0BB0_546:
	LWI	r26,	r19,	800624
	FPMUL	r26,	r26,	r11
	SWI	r26,	r19,	800472
	ADDI	r26,	r0,	5
	LWI	r27,	r19,	800472
	ANDI	r26,	r26,	31
	beqid	r26,	$0BB0_548
	ADDI	r28,	r6,	0
$0BB0_547:
	ADDI	r26,	r26,	-1
	bneid	r26,	$0BB0_547
	ADDK	r28,	r28,	r28
$0BB0_548:
	ADDI	r26,	r19,	160216
	BITOR	r27,	r22,	r27
	ADD	r29,	r26,	r28
	LWI	r30,	r29,	8
	SWI	r27,	r19,	800476
	SWI	r30,	r19,	800488
	LWI	r27,	r29,	4
	LW	r26,	r26,	r28
	LWI	r28,	r19,	800476
	FPRSUB	r29,	r23,	r26
	FPRSUB	r30,	r24,	r27
	LWI	r31,	r19,	800488
	FPADD	r28,	r5,	r28
	FPRSUB	r28,	r28,	r31
	FPMUL	r29,	r29,	r29
	FPMUL	r30,	r30,	r30
	FPADD	r29,	r29,	r30
	FPMUL	r28,	r28,	r28
	SWI	r27,	r19,	800484
	SWI	r26,	r19,	800480
	FPADD	r26,	r29,	r28
	ORI	r27,	r0,	1176256512
	FPUN	r28,	r26,	r27
	FPGE	r26,	r26,	r27
	BITOR	r26,	r28,	r26
	bneid	r26,	$0BB0_550
	ADDI	r27,	r0,	1
	ADDI	r27,	r0,	0
$0BB0_550:
	LWI	r26,	r19,	800668
	BITOR	r26,	r26,	r22
	SWI	r26,	r19,	800668
	bneid	r27,	$0BB0_558
	NOP
	ADDI	r26,	r0,	2
	ANDI	r27,	r26,	31
	beqid	r27,	$0BB0_553
	ADDI	r28,	r25,	0
$0BB0_552:
	ADDI	r27,	r27,	-1
	bneid	r27,	$0BB0_552
	ADDK	r28,	r28,	r28
$0BB0_553:
	ANDI	r27,	r26,	31
	beqid	r27,	$0BB0_555
	ADDI	r29,	r25,	0
$0BB0_554:
	ADDI	r27,	r27,	-1
	bneid	r27,	$0BB0_554
	ADDK	r29,	r29,	r29
$0BB0_555:
	ANDI	r26,	r26,	31
	beqid	r26,	$0BB0_557
	ADDI	r25,	r25,	0
$0BB0_556:
	ADDI	r26,	r26,	-1
	bneid	r26,	$0BB0_556
	ADDK	r25,	r25,	r25
$0BB0_557:
	ADDI	r26,	r19,	160216
	ADD	r27,	r26,	r28
	ADD	r28,	r26,	r29
	ADD	r25,	r26,	r25
	LWI	r26,	r27,	12
	LWI	r27,	r28,	16
	LWI	r25,	r25,	20
	ADDI	r8,	r8,	1
	FPADD	r21,	r21,	r26
	FPADD	r20,	r20,	r27
	FPADD	r12,	r12,	r25
	ADDI	r25,	r0,	20
	CMP	r25,	r25,	r8
	bgtid	r25,	$0BB0_570
	NOP
$0BB0_558:
	ADD	r25,	r0,	r0
	ADDI	r26,	r0,	1
	CMP	r25,	r25,	r8
	beqid	r25,	$0BB0_560
	NOP
	ADDI	r26,	r0,	0
$0BB0_560:
	bneid	r26,	$0BB0_562
	NOP
	ADD	r10,	r21,	r0
$0BB0_562:
	bneid	r26,	$0BB0_564
	NOP
	ADD	r9,	r20,	r0
$0BB0_564:
	bneid	r26,	$0BB0_566
	NOP
	ADD	r3,	r12,	r0
$0BB0_566:
	ADDI	r6,	r6,	1
$0BB0_567:
	ADDI	r25,	r0,	3
	ANDI	r26,	r25,	31
	beqid	r26,	$0BB0_569
	ADDI	r25,	r6,	0
$0BB0_568:
	ADDI	r26,	r26,	-1
	bneid	r26,	$0BB0_568
	ADDK	r25,	r25,	r25
$0BB0_569:
	LWI	r26,	r19,	800768
	CMP	r26,	r26,	r6
	bltid	r26,	$0BB0_546
	NOP
$0BB0_570:
	ORI	r6,	r0,	1065353216
	FPADD	r11,	r11,	r6
	FPUN	r6,	r11,	r7
	FPGE	r22,	r11,	r7
	BITOR	r6,	r6,	r22
	bneid	r6,	$0BB0_572
	ADDI	r23,	r0,	1
	ADDI	r23,	r0,	0
$0BB0_572:
	bneid	r23,	$0BB0_501
	NOP
$0BB0_573:
	LWI	r6,	r19,	800632
	FPMUL	r6,	r6,	r11
	LWI	r22,	r19,	800636
	FPMUL	r23,	r22,	r11
	SWI	r6,	r19,	800468
	SWI	r23,	r19,	800464
	ADD	r22,	r0,	r0
	LWI	r24,	r19,	800748
	FPADD	r23,	r23,	r24
	LWI	r24,	r19,	800752
	FPADD	r24,	r6,	r24
	LWI	r6,	r19,	800468
	LWI	r6,	r19,	800464
	brid	$0BB0_567
	ADD	r6,	r22,	r0
#	.end	main
$0tmp0:
#	.size	main, ($tmp0)-main


