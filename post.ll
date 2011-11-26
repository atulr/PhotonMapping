; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

%struct.Color = type { float, float, float }
%struct.Photon = type { %struct.Color, %struct.Color, [3 x float], float, float, i32, float }

declare float @llvm.trax.loadf(i32, i32) nounwind

declare i32 @llvm.trax.loadi(i32, i32) nounwind

declare void @llvm.trax.storef(float, i32, i32) nounwind

declare float @llvm.trax.rand() nounwind

define i32 @main() nounwind ssp {
invcont11:
  %stack.i = alloca [32 x i32], align 4
  %0 = call i32 @llvm.trax.loadi(i32 0, i32 1)
  %1 = call i32 @llvm.trax.loadi(i32 0, i32 4)
  %2 = call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %3 = call float @llvm.trax.loadf(i32 0, i32 2)
  %4 = call float @llvm.trax.loadf(i32 0, i32 5)
  %5 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %6 = call float @llvm.trax.loadf(i32 %5, i32 0) nounwind
  %7 = call float @llvm.trax.loadf(i32 %5, i32 1) nounwind
  %8 = call float @llvm.trax.loadf(i32 %5, i32 2) nounwind
  %9 = call i32 @llvm.trax.loadi(i32 0, i32 10)
  %10 = call float @llvm.trax.loadf(i32 %9, i32 0) nounwind
  %11 = call float @llvm.trax.loadf(i32 %9, i32 1) nounwind
  %12 = call float @llvm.trax.loadf(i32 %9, i32 2) nounwind
  %13 = add nsw i32 %9, 9
  %14 = call float @llvm.trax.loadf(i32 %13, i32 0) nounwind
  %15 = call float @llvm.trax.loadf(i32 %13, i32 1) nounwind
  %16 = call float @llvm.trax.loadf(i32 %13, i32 2) nounwind
  %17 = add nsw i32 %9, 12
  %18 = call float @llvm.trax.loadf(i32 %17, i32 0) nounwind
  %19 = call float @llvm.trax.loadf(i32 %17, i32 1) nounwind
  %20 = call float @llvm.trax.loadf(i32 %17, i32 2) nounwind
  %21 = add nsw i32 %9, 15
  %22 = call float @llvm.trax.loadf(i32 %21, i32 0) nounwind
  %23 = call float @llvm.trax.loadf(i32 %21, i32 1) nounwind
  %24 = call float @llvm.trax.loadf(i32 %21, i32 2) nounwind
  %25 = add nsw i32 %9, 18
  %26 = call float @llvm.trax.loadf(i32 %25, i32 0) nounwind
  %27 = call float @llvm.trax.loadf(i32 %25, i32 1) nounwind
  %28 = call float @llvm.trax.loadf(i32 %25, i32 2) nounwind
  %29 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %30 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %31 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %32 = alloca [20000 x %struct.Photon], align 1
  br label %bb

bb:                                               ; preds = %bb, %invcont11
  %indvar1085 = phi i64 [ 0, %invcont11 ], [ %indvar.next1086, %bb ]
  %scevgep1088 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %indvar1085, i32 2, i64 2
  %scevgep1089 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %indvar1085, i32 2, i64 1
  %scevgep1090 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %indvar1085, i32 2, i64 0
  %scevgep1092 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %indvar1085
  %33 = bitcast %struct.Photon* %scevgep1092 to i8*
  call void @llvm.memset.p0i8.i64(i8* %33, i8 0, i64 24, i32 4, i1 false)
  store float 1.000000e+00, float* %scevgep1090, align 4
  store float 1.000000e+00, float* %scevgep1089, align 4
  store float 1.000000e+00, float* %scevgep1088, align 4
  %indvar.next1086 = add i64 %indvar1085, 1
  %exitcond1087 = icmp eq i64 %indvar.next1086, 20000
  br i1 %exitcond1087, label %bb13, label %bb

bb13:                                             ; preds = %bb
  %34 = alloca [5000 x %struct.Photon], align 1
  br label %bb14

bb14:                                             ; preds = %bb14, %bb13
  %indvar1075 = phi i64 [ 0, %bb13 ], [ %indvar.next1076, %bb14 ]
  %scevgep1078 = getelementptr [5000 x %struct.Photon]* %34, i64 0, i64 %indvar1075, i32 2, i64 2
  %scevgep1079 = getelementptr [5000 x %struct.Photon]* %34, i64 0, i64 %indvar1075, i32 2, i64 1
  %scevgep1080 = getelementptr [5000 x %struct.Photon]* %34, i64 0, i64 %indvar1075, i32 2, i64 0
  %scevgep1082 = getelementptr [5000 x %struct.Photon]* %34, i64 0, i64 %indvar1075
  %35 = bitcast %struct.Photon* %scevgep1082 to i8*
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 24, i32 4, i1 false)
  store float 1.000000e+00, float* %scevgep1080, align 4
  store float 1.000000e+00, float* %scevgep1079, align 4
  store float 1.000000e+00, float* %scevgep1078, align 4
  %indvar.next1076 = add i64 %indvar1075, 1
  %exitcond1077 = icmp eq i64 %indvar.next1076, 5000
  br i1 %exitcond1077, label %invcont18, label %bb14

invcont18:                                        ; preds = %bb14
  %36 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %37 = call float @llvm.trax.loadf(i32 %36, i32 0) nounwind
  %38 = call float @llvm.trax.loadf(i32 %36, i32 1) nounwind
  %39 = call float @llvm.trax.loadf(i32 %36, i32 2) nounwind
  %tmp394 = bitcast float %37 to i32
  %tmp388 = bitcast float %38 to i32
  %tmp382 = bitcast float %39 to i32
  br label %bb68.outer.preheader

bb.i105:                                          ; preds = %bb69, %bb.i105
  %40 = call float @llvm.trax.rand()
  %41 = fadd float %40, -5.000000e-01
  %42 = fmul float %41, 2.000000e+00
  %43 = call float @llvm.trax.rand()
  %44 = fadd float %43, -5.000000e-01
  %45 = fmul float %44, 2.000000e+00
  %46 = call float @llvm.trax.rand()
  %47 = fadd float %46, -5.000000e-01
  %48 = fmul float %47, 2.000000e+00
  %49 = fmul float %42, %42
  %50 = fmul float %45, %45
  %51 = fadd float %49, %50
  %52 = fmul float %48, %48
  %53 = fadd float %51, %52
  %54 = fcmp ogt float %53, 1.000000e+00
  br i1 %54, label %bb.i105, label %invcont42

invcont42:                                        ; preds = %bb.i105
  %55 = call float @llvm.trax.invsqrt(float %53) nounwind
  %56 = fdiv float 1.000000e+00, %55
  %57 = fdiv float %48, %56
  %58 = fdiv float %45, %56
  %59 = fdiv float %42, %56
  %tmp18.i = bitcast float %59 to i32
  %tmp12.i = bitcast float %58 to i32
  %tmp3109 = bitcast float %57 to i32
  %tmp3139 = zext i32 %tmp18.i to i96
  %tmp3133 = zext i32 %tmp12.i to i96
  %tmp3134 = shl nuw nsw i96 %tmp3133, 32
  %ins3136 = or i96 %tmp3139, %tmp3134
  %tmp281 = zext i96 %ins3136 to i128
  %mask282 = and i128 %memtmp30.0, -79228162514264337593543950336
  %tmp275 = zext i32 %tmp3109 to i128
  %tmp276 = shl nuw nsw i128 %tmp275, 64
  %mask277 = or i128 %tmp276, %mask282
  %ins278 = or i128 %mask277, %tmp281
  %ins278.tr = trunc i128 %ins278 to i96
  %tmp3143 = lshr i96 %ins278.tr, 64
  %mask474 = and i512 %mask499823, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins475 = or i512 %mask474, 1343554297
  %tmp506 = trunc i96 %tmp3143 to i32
  %tmp507 = bitcast i32 %tmp506 to float
  br label %bb.outer.i

bb.outer.i:                                       ; preds = %bb9.i, %invcont42
  %mask499825 = phi i512 [ %ins475, %invcont42 ], [ %mask499824, %bb9.i ]
  %node_id.0.ph.i = phi i32 [ 0, %invcont42 ], [ %217, %bb9.i ]
  %sp.0.ph.i = phi i32 [ -1, %invcont42 ], [ %218, %bb9.i ]
  %tmp404.i = add i32 %sp.0.ph.i, 1
  %tmp1037 = sext i32 %tmp404.i to i64
  %tmp1040 = zext i32 %sp.0.ph.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb3.i, %bb.outer.i
  %indvar.i = phi i64 [ %indvar.next.i, %bb3.i ], [ 0, %bb.outer.i ]
  %node_id.0.i = phi i32 [ %95, %bb3.i ], [ %node_id.0.ph.i, %bb.outer.i ]
  %tmp1038 = add i64 %tmp1037, %indvar.i
  %scevgep.i = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp1038
  %tmp1041 = add i64 %tmp1040, %indvar.i
  %sp.0.i = trunc i64 %tmp1041 to i32
  %60 = shl nsw i32 %node_id.0.i, 3
  %61 = add nsw i32 %60, %31
  %62 = call float @llvm.trax.loadf(i32 %61, i32 2) nounwind
  %63 = call float @llvm.trax.loadf(i32 %61, i32 1) nounwind
  %64 = call float @llvm.trax.loadf(i32 %61, i32 0) nounwind
  %65 = call float @llvm.trax.loadf(i32 %61, i32 5) nounwind
  %66 = call float @llvm.trax.loadf(i32 %61, i32 4) nounwind
  %67 = call float @llvm.trax.loadf(i32 %61, i32 3) nounwind
  %68 = fsub float %64, %tmp545
  %69 = fdiv float %68, %59
  %70 = fsub float %67, %tmp545
  %71 = fdiv float %70, %59
  %72 = fcmp ogt float %69, %71
  %tx1.i.0.i = select i1 %72, float %71, float %69
  %tx2.i.0.i = select i1 %72, float %69, float %71
  %73 = fcmp ogt float %tx1.i.0.i, -1.000000e+10
  %tnear.i.0.i = select i1 %73, float %tx1.i.0.i, float -1.000000e+10
  %74 = fcmp olt float %tx2.i.0.i, 1.000000e+10
  %tfar.i.0.i = select i1 %74, float %tx2.i.0.i, float 1.000000e+10
  %75 = fcmp ogt float %tnear.i.0.i, %tfar.i.0.i
  %76 = fcmp olt float %tfar.i.0.i, 0.000000e+00
  %or.cond.i = or i1 %75, %76
  br i1 %or.cond.i, label %bb7.i, label %bb29.i.i

bb29.i.i:                                         ; preds = %bb.i
  %77 = fsub float %63, %tmp539
  %78 = fdiv float %77, %58
  %79 = fsub float %66, %tmp539
  %80 = fdiv float %79, %58
  %81 = fcmp ogt float %78, %80
  %ty1.i.0.i = select i1 %81, float %80, float %78
  %ty2.i.0.i = select i1 %81, float %78, float %80
  %82 = fcmp ogt float %ty1.i.0.i, %tnear.i.0.i
  %tnear.i.1.i = select i1 %82, float %ty1.i.0.i, float %tnear.i.0.i
  %83 = fcmp olt float %ty2.i.0.i, %tfar.i.0.i
  %tfar.i.1.i = select i1 %83, float %ty2.i.0.i, float %tfar.i.0.i
  %84 = fcmp ogt float %tnear.i.1.i, %tfar.i.1.i
  %85 = fcmp olt float %tfar.i.1.i, 0.000000e+00
  %or.cond1395.i = or i1 %84, %85
  br i1 %or.cond1395.i, label %bb7.i, label %bb62.i.i

bb62.i.i:                                         ; preds = %bb29.i.i
  %86 = fsub float %62, %tmp531
  %87 = fdiv float %86, %tmp507
  %88 = fsub float %65, %tmp531
  %89 = fdiv float %88, %tmp507
  %90 = fcmp ogt float %87, %89
  %tz1.i.0.i = select i1 %90, float %89, float %87
  %tz2.i.0.i = select i1 %90, float %87, float %89
  %91 = fcmp ogt float %tz1.i.0.i, %tnear.i.1.i
  %tnear.i.2.i = select i1 %91, float %tz1.i.0.i, float %tnear.i.1.i
  %92 = fcmp olt float %tz2.i.0.i, %tfar.i.1.i
  %tfar.i.2.i = select i1 %92, float %tz2.i.0.i, float %tfar.i.1.i
  %93 = fcmp ogt float %tnear.i.2.i, %tfar.i.2.i
  %94 = fcmp olt float %tfar.i.2.i, 0.000000e+00
  %or.cond1396.i = or i1 %93, %94
  br i1 %or.cond1396.i, label %bb7.i, label %bb1.i26

bb1.i26:                                          ; preds = %bb62.i.i
  %95 = call i32 @llvm.trax.loadi(i32 %61, i32 7) nounwind
  %96 = call i32 @llvm.trax.loadi(i32 %61, i32 6) nounwind
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %bb3.i, label %bb6.preheader.i

bb6.preheader.i:                                  ; preds = %bb1.i26
  %98 = icmp sgt i32 %96, 0
  br i1 %98, label %bb5.i27, label %bb7.i

bb3.i:                                            ; preds = %bb1.i26
  %99 = add nsw i32 %95, 1
  store i32 %99, i32* %scevgep.i, align 4
  %indvar.next.i = add i64 %indvar.i, 1
  br label %bb.i

bb5.i27:                                          ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i
  %mask499820 = phi i512 [ %mask499819, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %mask499825, %bb6.preheader.i ]
  %storemerge388.i = phi i32 [ %213, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ 0, %bb6.preheader.i ]
  %tmp1044 = mul i32 %storemerge388.i, 11
  %tmp396.i = add i32 %95, %tmp1044
  %100 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %101 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %102 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %103 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %104 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %105 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %106 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %107 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %108 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %109 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %110 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %111 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %112 = mul nsw i32 %109, 25
  %113 = add nsw i32 %111, %112
  %114 = call float @llvm.trax.loadf(i32 %113, i32 6) nounwind
  %115 = call float @llvm.trax.loadf(i32 %113, i32 5) nounwind
  %116 = call float @llvm.trax.loadf(i32 %113, i32 4) nounwind
  %117 = fsub float %102, %108
  %118 = fsub float %101, %107
  %119 = fsub float %100, %106
  %120 = fsub float %105, %108
  %121 = fsub float %104, %107
  %122 = fsub float %103, %106
  %123 = fmul float %118, %122
  %124 = fmul float %121, %119
  %125 = fsub float %123, %124
  %126 = fmul float %120, %119
  %127 = fmul float %117, %122
  %128 = fsub float %126, %127
  %129 = fmul float %121, %117
  %130 = fmul float %120, %118
  %131 = fsub float %129, %130
  %132 = fmul float %125, %125
  %133 = fmul float %128, %128
  %134 = fadd float %132, %133
  %135 = fmul float %131, %131
  %136 = fadd float %134, %135
  %137 = call float @llvm.trax.invsqrt(float %136) nounwind
  %138 = fmul float %58, %122
  %139 = fmul float %121, %tmp507
  %140 = fsub float %138, %139
  %141 = fmul float %120, %tmp507
  %142 = fmul float %59, %122
  %143 = fsub float %141, %142
  %144 = fmul float %121, %59
  %145 = fmul float %120, %58
  %146 = fsub float %144, %145
  %147 = fmul float %140, %117
  %148 = fadd float %147, 0.000000e+00
  %149 = fmul float %143, %118
  %150 = fadd float %149, %148
  %151 = fmul float %146, %119
  %152 = fadd float %151, %150
  %153 = fdiv float 1.000000e+00, %152
  %154 = fsub float %tmp545, %108
  %155 = fsub float %tmp539, %107
  %156 = fsub float %tmp531, %106
  %157 = fmul float %140, %154
  %158 = fadd float %157, 0.000000e+00
  %159 = fmul float %143, %155
  %160 = fadd float %159, %158
  %161 = fmul float %146, %156
  %162 = fadd float %161, %160
  %163 = fmul float %162, %153
  %164 = fcmp olt float %163, 0.000000e+00
  %165 = fcmp ogt float %163, 1.000000e+00
  %or.cond1397.i = or i1 %164, %165
  br i1 %or.cond1397.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb73.i.i

bb73.i.i:                                         ; preds = %bb5.i27
  %166 = fmul float %155, %119
  %167 = fmul float %118, %156
  %168 = fsub float %166, %167
  %169 = fmul float %117, %156
  %170 = fmul float %154, %119
  %171 = fsub float %169, %170
  %172 = fmul float %118, %154
  %173 = fmul float %117, %155
  %174 = fsub float %172, %173
  %175 = fmul float %168, %59
  %176 = fadd float %175, 0.000000e+00
  %177 = fmul float %171, %58
  %178 = fadd float %177, %176
  %179 = fmul float %174, %tmp507
  %180 = fadd float %179, %178
  %181 = fmul float %180, %153
  %182 = fcmp olt float %181, 0.000000e+00
  br i1 %182, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb94.i55.i

bb94.i55.i:                                       ; preds = %bb73.i.i
  %183 = fadd float %181, %163
  %184 = fcmp ogt float %183, 1.000000e+00
  br i1 %184, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb96.i.i

bb96.i.i:                                         ; preds = %bb94.i55.i
  %185 = fmul float %168, %120
  %186 = fadd float %185, 0.000000e+00
  %187 = fmul float %171, %121
  %188 = fadd float %187, %186
  %189 = fmul float %174, %122
  %190 = fadd float %189, %188
  %191 = fmul float %190, %153
  %192 = fcmp ule float %191, 0.000000e+00
  %193 = fcmp olt float %191, 0x3F50624DE0000000
  %or.cond1398.i = or i1 %192, %193
  %194 = fcmp oeq float %191, 1.000000e+10
  %or.cond1399.i = or i1 %or.cond1398.i, %194
  br i1 %or.cond1399.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb96.i.i
  %tmp464 = trunc i512 %mask499820 to i32
  %tmp465 = bitcast i32 %tmp464 to float
  %195 = fcmp ogt float %tmp465, %191
  br i1 %195, label %bb3.i.i.i28, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

bb3.i.i.i28:                                      ; preds = %bb2.i.i.i
  %tmp459 = bitcast float %191 to i32
  %tmp460 = zext i32 %tmp459 to i512
  %196 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %197 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %198 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %199 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %200 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %201 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %202 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %203 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %204 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %205 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %206 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %tmp369.i = bitcast float %198 to i32
  %tmp370.i = zext i32 %tmp369.i to i480
  %tmp301.i = bitcast float %197 to i32
  %tmp302.i = zext i32 %tmp301.i to i480
  %tmp303.i = shl nuw nsw i480 %tmp302.i, 32
  %tmp295.i = bitcast float %196 to i32
  %tmp296.i = zext i32 %tmp295.i to i480
  %tmp297.i = shl nuw nsw i480 %tmp296.i, 64
  %tmp363.i = bitcast float %201 to i32
  %tmp364.i = zext i32 %tmp363.i to i480
  %tmp365.i = shl nuw nsw i480 %tmp364.i, 96
  %tmp357.i = bitcast float %200 to i32
  %tmp358.i = zext i32 %tmp357.i to i480
  %tmp359.i = shl nuw nsw i480 %tmp358.i, 128
  %tmp351.i = bitcast float %199 to i32
  %tmp352.i = zext i32 %tmp351.i to i480
  %tmp353.i = shl nuw nsw i480 %tmp352.i, 160
  %tmp345.i = bitcast float %204 to i32
  %tmp346.i = zext i32 %tmp345.i to i480
  %tmp347.i = shl nuw nsw i480 %tmp346.i, 192
  %tmp339.i = bitcast float %203 to i32
  %tmp340.i = zext i32 %tmp339.i to i480
  %tmp341.i = shl nuw nsw i480 %tmp340.i, 224
  %tmp333.i = bitcast float %202 to i32
  %tmp334.i = zext i32 %tmp333.i to i480
  %tmp335.i = shl nuw nsw i480 %tmp334.i, 256
  %tmp290.i = zext i32 %206 to i480
  %tmp291.i = shl nuw nsw i480 %tmp290.i, 288
  %207 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %208 = mul nsw i32 %205, 25
  %209 = add nsw i32 %207, %208
  %210 = call float @llvm.trax.loadf(i32 %209, i32 6) nounwind
  %211 = call float @llvm.trax.loadf(i32 %209, i32 5) nounwind
  %212 = call float @llvm.trax.loadf(i32 %209, i32 4) nounwind
  %tmp325.i = bitcast float %212 to i32
  %tmp326.i = zext i32 %tmp325.i to i480
  %tmp327.i = shl nuw nsw i480 %tmp326.i, 320
  %tmp317.i = bitcast float %211 to i32
  %tmp318.i = zext i32 %tmp317.i to i480
  %tmp319.i = shl nuw nsw i480 %tmp318.i, 352
  %tmp309.i = bitcast float %210 to i32
  %tmp310.i = zext i32 %tmp309.i to i480
  %tmp311.i = shl nuw nsw i480 %tmp310.i, 384
  %mask298.i = or i480 %tmp297.i, %tmp370.i
  %mask366.i = or i480 %mask298.i, %tmp303.i
  %mask360.masked.masked.masked.masked.masked.i = or i480 %mask366.i, %tmp353.i
  %mask354.masked.masked.masked.masked.masked.masked.i = or i480 %mask360.masked.masked.masked.masked.masked.i, %tmp359.i
  %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i = or i480 %mask354.masked.masked.masked.masked.masked.masked.i, %tmp365.i
  %mask342.masked.masked.masked.masked.masked.masked.masked.i = or i480 %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i, %tmp335.i
  %mask336.masked.masked.masked.masked.masked.masked.i = or i480 %mask342.masked.masked.masked.masked.masked.masked.masked.i, %tmp341.i
  %mask292.masked.masked.masked.masked.masked.i = or i480 %mask336.masked.masked.masked.masked.masked.masked.i, %tmp347.i
  %mask328.masked.masked.masked.masked.i = or i480 %mask292.masked.masked.masked.masked.masked.i, %tmp291.i
  %mask320.masked.masked.masked.i = or i480 %mask328.masked.masked.masked.masked.i, %tmp311.i
  %mask312.masked.masked.i = or i480 %mask320.masked.masked.masked.i, %tmp319.i
  %ins288.i = or i480 %mask312.masked.masked.i, %tmp327.i
  %ins285.i = or i480 %ins288.i, 770681673391627619131312691654083964084373995933406099189890146314966155308140517402099473489517307419678932548501811235986099843289400054120448
  %tmp454 = zext i480 %ins285.i to i512
  %tmp455 = shl nuw i512 %tmp454, 32
  %ins457 = or i512 %tmp455, %tmp460
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i: ; preds = %bb3.i.i.i28, %bb2.i.i.i, %bb96.i.i, %bb94.i55.i, %bb73.i.i, %bb5.i27
  %mask499819 = phi i512 [ %ins457, %bb3.i.i.i28 ], [ %mask499820, %bb2.i.i.i ], [ %mask499820, %bb96.i.i ], [ %mask499820, %bb94.i55.i ], [ %mask499820, %bb73.i.i ], [ %mask499820, %bb5.i27 ]
  %213 = add nsw i32 %storemerge388.i, 1
  %exitcond1043 = icmp eq i32 %213, %96
  br i1 %exitcond1043, label %bb7.i, label %bb5.i27

bb7.i:                                            ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i, %bb62.i.i, %bb29.i.i, %bb.i
  %mask499824 = phi i512 [ %mask499825, %bb6.preheader.i ], [ %mask499825, %bb.i ], [ %mask499825, %bb29.i.i ], [ %mask499825, %bb62.i.i ], [ %mask499819, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ]
  %214 = icmp slt i32 %sp.0.i, 0
  br i1 %214, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit, label %bb9.i

bb9.i:                                            ; preds = %bb7.i
  %215 = sext i32 %sp.0.i to i64
  %216 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %215
  %217 = load i32* %216, align 4
  %218 = add nsw i32 %sp.0.i, -1
  br label %bb.outer.i

_ZN3BVH9intersectER9HitRecordR3Ray.exit:          ; preds = %bb7.i
  %tmp471 = trunc i512 %mask499824 to i32
  %tmp472 = bitcast i32 %tmp471 to float
  %219 = fcmp olt float %tmp472, 1.000000e+10
  %indvar.next1052 = add i32 %indvar1051, 1
  br i1 %219, label %invcont61, label %bb69

invcont61:                                        ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %tmp467 = lshr i512 %mask499824, 480
  %tmp468 = trunc i512 %tmp467 to i32
  %tmp469 = bitcast i32 %tmp468 to float
  %220 = fmul float %59, %tmp472
  %221 = fmul float %58, %tmp472
  %222 = fmul float %tmp507, %tmp472
  %tmp64.i = bitcast float %220 to i32
  %tmp58.i = bitcast float %221 to i32
  %tmp252 = bitcast float %222 to i32
  store float %220, float* %.0301, align 4
  store float %221, float* %.1303, align 4
  store float %222, float* %.2305, align 4
  store float 0.000000e+00, float* %.1.0, align 4
  store float 0.000000e+00, float* %.1.1, align 4
  store float 0.000000e+00, float* %.1.2, align 4
  store float %tmp469, float* %.2.0, align 4
  store float %tmp469, float* %.2.1, align 4
  store float %tmp469, float* %.2.2, align 4
  %indvar.next1057 = add i64 %indvar1056, 1
  br label %bb68.outer

bb68.outer:                                       ; preds = %bb68.outer.preheader, %invcont61
  %indvar1056 = phi i64 [ 0, %bb68.outer.preheader ], [ %indvar.next1057, %invcont61 ]
  %mask499821 = phi i512 [ %mask499822974, %bb68.outer.preheader ], [ %mask499824, %invcont61 ]
  %memtmp30.0.ph = phi i128 [ %memtmp30.1975, %bb68.outer.preheader ], [ %ins278, %invcont61 ]
  %ray_origin.0.ph.off0 = phi i32 [ %ray_origin.1.off0976, %bb68.outer.preheader ], [ %tmp64.i, %invcont61 ]
  %ray_origin.0.ph.off32 = phi i32 [ %ray_origin.1.off32977, %bb68.outer.preheader ], [ %tmp58.i, %invcont61 ]
  %ray_origin.0.ph.off64 = phi i32 [ %ray_origin.1.off64978, %bb68.outer.preheader ], [ %tmp252, %invcont61 ]
  %bounces.0.ph = phi i32 [ 0, %bb68.outer.preheader ], [ %tmp1054, %invcont61 ]
  %indvar1018 = trunc i64 %indvar1056 to i32
  %tmp1060 = add i64 %tmp1059, %indvar1056
  %count.0.ph = trunc i64 %tmp1060 to i32
  %tmp1063 = add i64 %tmp1062, %indvar1056
  %.2.2 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %tmp1063, i32 2, i64 2
  %.2.1 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %tmp1063, i32 2, i64 1
  %.2.0 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %tmp1063, i32 2, i64 0
  %.1.2 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %tmp1063, i32 1, i32 2
  %.1.1 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %tmp1063, i32 1, i32 1
  %.1.0 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %tmp1063, i32 1, i32 0
  %.2305 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %tmp1063, i32 0, i32 2
  %.1303 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %tmp1063, i32 0, i32 1
  %.0301 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %tmp1063, i32 0, i32 0
  %tmp545 = bitcast i32 %ray_origin.0.ph.off0 to float
  %tmp539 = bitcast i32 %ray_origin.0.ph.off32 to float
  %tmp531 = bitcast i32 %ray_origin.0.ph.off64 to float
  %tmp1053 = add i32 %bounces.0.ph, 1
  br label %bb69

bb69:                                             ; preds = %bb68.outer, %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %indvar1051 = phi i32 [ 0, %bb68.outer ], [ %indvar.next1052, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %mask499823 = phi i512 [ %mask499821, %bb68.outer ], [ %mask499824, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %memtmp30.0 = phi i128 [ %memtmp30.0.ph, %bb68.outer ], [ %ins278, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %tmp1054 = add i32 %tmp1053, %indvar1051
  %bounces.0 = add i32 %bounces.0.ph, %indvar1051
  %223 = icmp slt i32 %bounces.0, 6
  br i1 %223, label %bb.i105, label %bb70

bb70:                                             ; preds = %bb69
  %224 = add nsw i32 %iterator.0980, 1
  %exitcond1074 = icmp eq i32 %224, 5000
  br i1 %exitcond1074, label %invcont74, label %bb68.outer.preheader

bb68.outer.preheader:                             ; preds = %bb70, %invcont18
  %iterator.0980 = phi i32 [ 0, %invcont18 ], [ %224, %bb70 ]
  %count.1979 = phi i32 [ 0, %invcont18 ], [ %count.0.ph, %bb70 ]
  %ray_origin.1.off64978 = phi i32 [ %tmp382, %invcont18 ], [ %ray_origin.0.ph.off64, %bb70 ]
  %ray_origin.1.off32977 = phi i32 [ %tmp388, %invcont18 ], [ %ray_origin.0.ph.off32, %bb70 ]
  %ray_origin.1.off0976 = phi i32 [ %tmp394, %invcont18 ], [ %ray_origin.0.ph.off0, %bb70 ]
  %memtmp30.1975 = phi i128 [ undef, %invcont18 ], [ %memtmp30.0, %bb70 ]
  %mask499822974 = phi i512 [ undef, %invcont18 ], [ %mask499823, %bb70 ]
  %tmp1059 = zext i32 %count.1979 to i64
  %tmp1062 = sext i32 %count.1979 to i64
  br label %bb68.outer

invcont74:                                        ; preds = %bb70
  %225 = call i32 @llvm.trax.atominc(i32 0)
  %226 = mul nsw i32 %1, %0
  %227 = sitofp i32 %0 to float
  %228 = fdiv float %227, -2.000000e+00
  %229 = sitofp i32 %1 to float
  %230 = fdiv float %229, -2.000000e+00
  %231 = icmp sgt i32 %226, %225
  br i1 %231, label %invcont83.lr.ph, label %return

invcont83.lr.ph:                                  ; preds = %invcont74
  %tmp707 = bitcast float %10 to i32
  %tmp708 = zext i32 %tmp707 to i192
  %tmp662 = bitcast float %11 to i32
  %tmp663 = zext i32 %tmp662 to i192
  %tmp664 = shl nuw nsw i192 %tmp663, 32
  %tmp652 = bitcast float %12 to i32
  %tmp653 = zext i32 %tmp652 to i192
  %tmp654 = shl nuw nsw i192 %tmp653, 64
  %mask655.masked.masked = or i192 %tmp664, %tmp708
  %mask701.masked = or i192 %mask655.masked.masked, %tmp654
  %tmp2347 = zext i32 %tmp707 to i96
  %tmp2342 = trunc i192 %tmp664 to i96
  %ins2344 = or i96 %tmp2342, %tmp2347
  %tmp1260 = zext i96 %ins2344 to i128
  %tmp1255 = trunc i192 %tmp654 to i128
  %mask1256 = or i128 %tmp1260, %tmp1255
  %232 = icmp sgt i32 %count.0.ph, 0
  %tmp1020 = add i32 %count.1979, %indvar1018
  %tmp1021 = zext i32 %tmp1020 to i64
  br label %invcont83

invcont83:                                        ; preds = %invcont100, %invcont83.lr.ph
  %storemerge2954 = phi i32 [ %225, %invcont83.lr.ph ], [ %721, %invcont100 ]
  %memtmp.i.i.2947 = phi i128 [ undef, %invcont83.lr.ph ], [ %memtmp.i.i.13688, %invcont100 ]
  %memtmp13.i.i.3946 = phi i128 [ undef, %invcont83.lr.ph ], [ %memtmp13.i.i.23686, %invcont100 ]
  %memtmp4.i.1944 = phi i128 [ undef, %invcont83.lr.ph ], [ %memtmp4.i.03680, %invcont100 ]
  %memtmp24.i.1942 = phi i128 [ undef, %invcont83.lr.ph ], [ %memtmp24.i.03674, %invcont100 ]
  %memtmp47.i.2940 = phi i128 [ undef, %invcont83.lr.ph ], [ %memtmp47.i.13668, %invcont100 ]
  %memtmp105.i.2937 = phi i128 [ undef, %invcont83.lr.ph ], [ %memtmp105.i.13656, %invcont100 ]
  %memtmp115.i.2936 = phi i128 [ undef, %invcont83.lr.ph ], [ %memtmp115.i.13654, %invcont100 ]
  %mask452828932 = phi i512 [ undef, %invcont83.lr.ph ], [ %mask452829, %invcont100 ]
  %233 = sdiv i32 %storemerge2954, %0
  %234 = srem i32 %storemerge2954, %0
  %235 = sitofp i32 %234 to float
  %236 = fadd float %235, %228
  %237 = fadd float %236, 5.000000e-01
  %238 = fmul float %237, 2.000000e+00
  %239 = fdiv float %238, %227
  %240 = sitofp i32 %233 to float
  %241 = fadd float %240, %230
  %242 = fadd float %241, 5.000000e-01
  %243 = fmul float %242, 2.000000e+00
  %244 = fdiv float %243, %229
  %245 = fmul float %26, %244
  %246 = fmul float %27, %244
  %247 = fmul float %28, %244
  %248 = fmul float %22, %239
  %249 = fmul float %23, %239
  %250 = fmul float %24, %239
  %251 = fadd float %245, %248
  %252 = fadd float %246, %249
  %253 = fadd float %250, %247
  %254 = fadd float %251, %18
  %255 = fadd float %252, %19
  %256 = fadd float %20, %253
  %257 = fmul float %254, %254
  %258 = fmul float %255, %255
  %259 = fadd float %257, %258
  %260 = fmul float %256, %256
  %261 = fadd float %259, %260
  %262 = call float @llvm.trax.invsqrt(float %261) nounwind
  %263 = fdiv float 1.000000e+00, %262
  %264 = fdiv float %256, %263
  %265 = fdiv float %255, %263
  %266 = fdiv float %254, %263
  %tmp698 = bitcast float %266 to i32
  %tmp699 = zext i32 %tmp698 to i192
  %tmp700 = shl nuw nsw i192 %tmp699, 96
  %tmp686 = bitcast float %265 to i32
  %tmp687 = zext i32 %tmp686 to i192
  %tmp688 = shl nuw nsw i192 %tmp687, 128
  %tmp672 = bitcast float %264 to i32
  %tmp673 = zext i32 %tmp672 to i192
  %tmp674 = shl nuw i192 %tmp673, 160
  %mask689.masked = or i192 %mask701.masked, %tmp688
  %mask675 = or i192 %mask689.masked, %tmp700
  %ins676 = or i192 %mask675, %tmp674
  %mask427 = and i512 %mask452828932, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins428 = or i512 %mask427, 1343554297
  %tmp606 = lshr i192 %ins676, 160
  %tmp607 = trunc i192 %tmp606 to i32
  %tmp608 = bitcast i32 %tmp607 to float
  br label %bb.outer.i64

bb.outer.i64:                                     ; preds = %bb9.i164, %invcont83
  %mask452830 = phi i512 [ %ins428, %invcont83 ], [ %mask452829, %bb9.i164 ]
  %node_id.0.ph.i59 = phi i32 [ 0, %invcont83 ], [ %424, %bb9.i164 ]
  %sp.0.ph.i60 = phi i32 [ -1, %invcont83 ], [ %425, %bb9.i164 ]
  %tmp404.i62 = add i32 %sp.0.ph.i60, 1
  %tmp1009 = sext i32 %tmp404.i62 to i64
  %tmp1011 = zext i32 %sp.0.ph.i60 to i64
  br label %bb.i76

bb.i76:                                           ; preds = %bb3.i92, %bb.outer.i64
  %indvar.i65 = phi i64 [ %indvar.next.i91, %bb3.i92 ], [ 0, %bb.outer.i64 ]
  %node_id.0.i66 = phi i32 [ %302, %bb3.i92 ], [ %node_id.0.ph.i59, %bb.outer.i64 ]
  %tmp1010 = add i64 %tmp1009, %indvar.i65
  %scevgep.i70 = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp1010
  %tmp1014 = add i64 %tmp1011, %indvar.i65
  %sp.0.i68 = trunc i64 %tmp1014 to i32
  %267 = shl nsw i32 %node_id.0.i66, 3
  %268 = add nsw i32 %267, %31
  %269 = call float @llvm.trax.loadf(i32 %268, i32 2) nounwind
  %270 = call float @llvm.trax.loadf(i32 %268, i32 1) nounwind
  %271 = call float @llvm.trax.loadf(i32 %268, i32 0) nounwind
  %272 = call float @llvm.trax.loadf(i32 %268, i32 5) nounwind
  %273 = call float @llvm.trax.loadf(i32 %268, i32 4) nounwind
  %274 = call float @llvm.trax.loadf(i32 %268, i32 3) nounwind
  %275 = fsub float %271, %10
  %276 = fdiv float %275, %266
  %277 = fsub float %274, %10
  %278 = fdiv float %277, %266
  %279 = fcmp ogt float %276, %278
  %tx1.i.0.i71 = select i1 %279, float %278, float %276
  %tx2.i.0.i72 = select i1 %279, float %276, float %278
  %280 = fcmp ogt float %tx1.i.0.i71, -1.000000e+10
  %tnear.i.0.i73 = select i1 %280, float %tx1.i.0.i71, float -1.000000e+10
  %281 = fcmp olt float %tx2.i.0.i72, 1.000000e+10
  %tfar.i.0.i74 = select i1 %281, float %tx2.i.0.i72, float 1.000000e+10
  %282 = fcmp ogt float %tnear.i.0.i73, %tfar.i.0.i74
  %283 = fcmp olt float %tfar.i.0.i74, 0.000000e+00
  %or.cond.i75 = or i1 %282, %283
  br i1 %or.cond.i75, label %bb7.i163, label %bb29.i.i82

bb29.i.i82:                                       ; preds = %bb.i76
  %284 = fsub float %270, %11
  %285 = fdiv float %284, %265
  %286 = fsub float %273, %11
  %287 = fdiv float %286, %265
  %288 = fcmp ogt float %285, %287
  %ty1.i.0.i77 = select i1 %288, float %287, float %285
  %ty2.i.0.i78 = select i1 %288, float %285, float %287
  %289 = fcmp ogt float %ty1.i.0.i77, %tnear.i.0.i73
  %tnear.i.1.i79 = select i1 %289, float %ty1.i.0.i77, float %tnear.i.0.i73
  %290 = fcmp olt float %ty2.i.0.i78, %tfar.i.0.i74
  %tfar.i.1.i80 = select i1 %290, float %ty2.i.0.i78, float %tfar.i.0.i74
  %291 = fcmp ogt float %tnear.i.1.i79, %tfar.i.1.i80
  %292 = fcmp olt float %tfar.i.1.i80, 0.000000e+00
  %or.cond1395.i81 = or i1 %291, %292
  br i1 %or.cond1395.i81, label %bb7.i163, label %bb62.i.i88

bb62.i.i88:                                       ; preds = %bb29.i.i82
  %293 = fsub float %269, %12
  %294 = fdiv float %293, %tmp608
  %295 = fsub float %272, %12
  %296 = fdiv float %295, %tmp608
  %297 = fcmp ogt float %294, %296
  %tz1.i.0.i83 = select i1 %297, float %296, float %294
  %tz2.i.0.i84 = select i1 %297, float %294, float %296
  %298 = fcmp ogt float %tz1.i.0.i83, %tnear.i.1.i79
  %tnear.i.2.i85 = select i1 %298, float %tz1.i.0.i83, float %tnear.i.1.i79
  %299 = fcmp olt float %tz2.i.0.i84, %tfar.i.1.i80
  %tfar.i.2.i86 = select i1 %299, float %tz2.i.0.i84, float %tfar.i.1.i80
  %300 = fcmp ogt float %tnear.i.2.i85, %tfar.i.2.i86
  %301 = fcmp olt float %tfar.i.2.i86, 0.000000e+00
  %or.cond1396.i87 = or i1 %300, %301
  br i1 %or.cond1396.i87, label %bb7.i163, label %bb1.i89

bb1.i89:                                          ; preds = %bb62.i.i88
  %302 = call i32 @llvm.trax.loadi(i32 %268, i32 7) nounwind
  %303 = call i32 @llvm.trax.loadi(i32 %268, i32 6) nounwind
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %bb3.i92, label %bb6.preheader.i90

bb6.preheader.i90:                                ; preds = %bb1.i89
  %305 = icmp sgt i32 %303, 0
  br i1 %305, label %bb5.i103, label %bb7.i163

bb3.i92:                                          ; preds = %bb1.i89
  %306 = add nsw i32 %302, 1
  store i32 %306, i32* %scevgep.i70, align 4
  %indvar.next.i91 = add i64 %indvar.i65, 1
  br label %bb.i76

bb5.i103:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i162, %bb6.preheader.i90
  %mask452827 = phi i512 [ %mask452826, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i162 ], [ %mask452830, %bb6.preheader.i90 ]
  %storemerge388.i93 = phi i32 [ %420, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i162 ], [ 0, %bb6.preheader.i90 ]
  %tmp1003 = mul i32 %storemerge388.i93, 11
  %tmp396.i95 = add i32 %302, %tmp1003
  %307 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 2) nounwind
  %308 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 1) nounwind
  %309 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 0) nounwind
  %310 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 5) nounwind
  %311 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 4) nounwind
  %312 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 3) nounwind
  %313 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 8) nounwind
  %314 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 7) nounwind
  %315 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 6) nounwind
  %316 = call i32 @llvm.trax.loadi(i32 %tmp396.i95, i32 10) nounwind
  %317 = call i32 @llvm.trax.loadi(i32 %tmp396.i95, i32 9) nounwind
  %318 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %319 = mul nsw i32 %316, 25
  %320 = add nsw i32 %318, %319
  %321 = call float @llvm.trax.loadf(i32 %320, i32 6) nounwind
  %322 = call float @llvm.trax.loadf(i32 %320, i32 5) nounwind
  %323 = call float @llvm.trax.loadf(i32 %320, i32 4) nounwind
  %324 = fsub float %309, %315
  %325 = fsub float %308, %314
  %326 = fsub float %307, %313
  %327 = fsub float %312, %315
  %328 = fsub float %311, %314
  %329 = fsub float %310, %313
  %330 = fmul float %325, %329
  %331 = fmul float %328, %326
  %332 = fsub float %330, %331
  %333 = fmul float %327, %326
  %334 = fmul float %324, %329
  %335 = fsub float %333, %334
  %336 = fmul float %328, %324
  %337 = fmul float %327, %325
  %338 = fsub float %336, %337
  %339 = fmul float %332, %332
  %340 = fmul float %335, %335
  %341 = fadd float %339, %340
  %342 = fmul float %338, %338
  %343 = fadd float %341, %342
  %344 = call float @llvm.trax.invsqrt(float %343) nounwind
  %345 = fmul float %265, %329
  %346 = fmul float %328, %tmp608
  %347 = fsub float %345, %346
  %348 = fmul float %327, %tmp608
  %349 = fmul float %266, %329
  %350 = fsub float %348, %349
  %351 = fmul float %328, %266
  %352 = fmul float %327, %265
  %353 = fsub float %351, %352
  %354 = fmul float %347, %324
  %355 = fadd float %354, 0.000000e+00
  %356 = fmul float %350, %325
  %357 = fadd float %356, %355
  %358 = fmul float %353, %326
  %359 = fadd float %358, %357
  %360 = fdiv float 1.000000e+00, %359
  %361 = fsub float %10, %315
  %362 = fsub float %11, %314
  %363 = fsub float %12, %313
  %364 = fmul float %347, %361
  %365 = fadd float %364, 0.000000e+00
  %366 = fmul float %350, %362
  %367 = fadd float %366, %365
  %368 = fmul float %353, %363
  %369 = fadd float %368, %367
  %370 = fmul float %369, %360
  %371 = fcmp olt float %370, 0.000000e+00
  %372 = fcmp ogt float %370, 1.000000e+00
  %or.cond1397.i102 = or i1 %371, %372
  br i1 %or.cond1397.i102, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i162, label %bb73.i.i104

bb73.i.i104:                                      ; preds = %bb5.i103
  %373 = fmul float %362, %326
  %374 = fmul float %325, %363
  %375 = fsub float %373, %374
  %376 = fmul float %324, %363
  %377 = fmul float %361, %326
  %378 = fsub float %376, %377
  %379 = fmul float %325, %361
  %380 = fmul float %324, %362
  %381 = fsub float %379, %380
  %382 = fmul float %375, %266
  %383 = fadd float %382, 0.000000e+00
  %384 = fmul float %378, %265
  %385 = fadd float %384, %383
  %386 = fmul float %381, %tmp608
  %387 = fadd float %386, %385
  %388 = fmul float %387, %360
  %389 = fcmp olt float %388, 0.000000e+00
  br i1 %389, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i162, label %bb94.i55.i105

bb94.i55.i105:                                    ; preds = %bb73.i.i104
  %390 = fadd float %388, %370
  %391 = fcmp ogt float %390, 1.000000e+00
  br i1 %391, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i162, label %bb96.i.i108

bb96.i.i108:                                      ; preds = %bb94.i55.i105
  %392 = fmul float %375, %327
  %393 = fadd float %392, 0.000000e+00
  %394 = fmul float %378, %328
  %395 = fadd float %394, %393
  %396 = fmul float %381, %329
  %397 = fadd float %396, %395
  %398 = fmul float %397, %360
  %399 = fcmp ule float %398, 0.000000e+00
  %400 = fcmp olt float %398, 0x3F50624DE0000000
  %or.cond1398.i106 = or i1 %399, %400
  %401 = fcmp oeq float %398, 1.000000e+10
  %or.cond1399.i107 = or i1 %or.cond1398.i106, %401
  br i1 %or.cond1399.i107, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i162, label %bb2.i.i.i109

bb2.i.i.i109:                                     ; preds = %bb96.i.i108
  %tmp424 = trunc i512 %mask452827 to i32
  %tmp425 = bitcast i32 %tmp424 to float
  %402 = fcmp ogt float %tmp425, %398
  br i1 %402, label %bb3.i.i.i160, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i162

bb3.i.i.i160:                                     ; preds = %bb2.i.i.i109
  %tmp419 = bitcast float %398 to i32
  %tmp420 = zext i32 %tmp419 to i512
  %403 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 2) nounwind
  %404 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 1) nounwind
  %405 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 0) nounwind
  %406 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 5) nounwind
  %407 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 4) nounwind
  %408 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 3) nounwind
  %409 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 8) nounwind
  %410 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 7) nounwind
  %411 = call float @llvm.trax.loadf(i32 %tmp396.i95, i32 6) nounwind
  %412 = call i32 @llvm.trax.loadi(i32 %tmp396.i95, i32 10) nounwind
  %413 = call i32 @llvm.trax.loadi(i32 %tmp396.i95, i32 9) nounwind
  %tmp369.i110 = bitcast float %405 to i32
  %tmp370.i111 = zext i32 %tmp369.i110 to i480
  %tmp301.i112 = bitcast float %404 to i32
  %tmp302.i113 = zext i32 %tmp301.i112 to i480
  %tmp303.i114 = shl nuw nsw i480 %tmp302.i113, 32
  %tmp295.i115 = bitcast float %403 to i32
  %tmp296.i116 = zext i32 %tmp295.i115 to i480
  %tmp297.i117 = shl nuw nsw i480 %tmp296.i116, 64
  %tmp363.i118 = bitcast float %408 to i32
  %tmp364.i119 = zext i32 %tmp363.i118 to i480
  %tmp365.i120 = shl nuw nsw i480 %tmp364.i119, 96
  %tmp357.i121 = bitcast float %407 to i32
  %tmp358.i122 = zext i32 %tmp357.i121 to i480
  %tmp359.i123 = shl nuw nsw i480 %tmp358.i122, 128
  %tmp351.i124 = bitcast float %406 to i32
  %tmp352.i125 = zext i32 %tmp351.i124 to i480
  %tmp353.i126 = shl nuw nsw i480 %tmp352.i125, 160
  %tmp345.i127 = bitcast float %411 to i32
  %tmp346.i128 = zext i32 %tmp345.i127 to i480
  %tmp347.i129 = shl nuw nsw i480 %tmp346.i128, 192
  %tmp339.i130 = bitcast float %410 to i32
  %tmp340.i131 = zext i32 %tmp339.i130 to i480
  %tmp341.i132 = shl nuw nsw i480 %tmp340.i131, 224
  %tmp333.i133 = bitcast float %409 to i32
  %tmp334.i134 = zext i32 %tmp333.i133 to i480
  %tmp335.i135 = shl nuw nsw i480 %tmp334.i134, 256
  %tmp290.i136 = zext i32 %413 to i480
  %tmp291.i137 = shl nuw nsw i480 %tmp290.i136, 288
  %414 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %415 = mul nsw i32 %412, 25
  %416 = add nsw i32 %414, %415
  %417 = call float @llvm.trax.loadf(i32 %416, i32 6) nounwind
  %418 = call float @llvm.trax.loadf(i32 %416, i32 5) nounwind
  %419 = call float @llvm.trax.loadf(i32 %416, i32 4) nounwind
  %tmp325.i138 = bitcast float %419 to i32
  %tmp326.i139 = zext i32 %tmp325.i138 to i480
  %tmp327.i140 = shl nuw nsw i480 %tmp326.i139, 320
  %tmp317.i141 = bitcast float %418 to i32
  %tmp318.i142 = zext i32 %tmp317.i141 to i480
  %tmp319.i143 = shl nuw nsw i480 %tmp318.i142, 352
  %tmp309.i144 = bitcast float %417 to i32
  %tmp310.i145 = zext i32 %tmp309.i144 to i480
  %tmp311.i146 = shl nuw nsw i480 %tmp310.i145, 384
  %mask298.i147 = or i480 %tmp297.i117, %tmp370.i111
  %mask366.i148 = or i480 %mask298.i147, %tmp303.i114
  %mask360.masked.masked.masked.masked.masked.i149 = or i480 %mask366.i148, %tmp353.i126
  %mask354.masked.masked.masked.masked.masked.masked.i150 = or i480 %mask360.masked.masked.masked.masked.masked.i149, %tmp359.i123
  %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i151 = or i480 %mask354.masked.masked.masked.masked.masked.masked.i150, %tmp365.i120
  %mask342.masked.masked.masked.masked.masked.masked.masked.i152 = or i480 %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i151, %tmp335.i135
  %mask336.masked.masked.masked.masked.masked.masked.i153 = or i480 %mask342.masked.masked.masked.masked.masked.masked.masked.i152, %tmp341.i132
  %mask292.masked.masked.masked.masked.masked.i154 = or i480 %mask336.masked.masked.masked.masked.masked.masked.i153, %tmp347.i129
  %mask328.masked.masked.masked.masked.i155 = or i480 %mask292.masked.masked.masked.masked.masked.i154, %tmp291.i137
  %mask320.masked.masked.masked.i156 = or i480 %mask328.masked.masked.masked.masked.i155, %tmp311.i146
  %mask312.masked.masked.i157 = or i480 %mask320.masked.masked.masked.i156, %tmp319.i143
  %ins288.i158 = or i480 %mask312.masked.masked.i157, %tmp327.i140
  %ins285.i159 = or i480 %ins288.i158, 770681673391627619131312691654083964084373995933406099189890146314966155308140517402099473489517307419678932548501811235986099843289400054120448
  %tmp416 = zext i480 %ins285.i159 to i512
  %tmp417 = shl nuw i512 %tmp416, 32
  %ins = or i512 %tmp417, %tmp420
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i162

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i162: ; preds = %bb3.i.i.i160, %bb2.i.i.i109, %bb96.i.i108, %bb94.i55.i105, %bb73.i.i104, %bb5.i103
  %mask452826 = phi i512 [ %ins, %bb3.i.i.i160 ], [ %mask452827, %bb2.i.i.i109 ], [ %mask452827, %bb96.i.i108 ], [ %mask452827, %bb94.i55.i105 ], [ %mask452827, %bb73.i.i104 ], [ %mask452827, %bb5.i103 ]
  %420 = add nsw i32 %storemerge388.i93, 1
  %exitcond1002 = icmp eq i32 %420, %303
  br i1 %exitcond1002, label %bb7.i163, label %bb5.i103

bb7.i163:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i162, %bb6.preheader.i90, %bb62.i.i88, %bb29.i.i82, %bb.i76
  %mask452829 = phi i512 [ %mask452830, %bb6.preheader.i90 ], [ %mask452826, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i162 ], [ %mask452830, %bb.i76 ], [ %mask452830, %bb29.i.i82 ], [ %mask452830, %bb62.i.i88 ]
  %421 = icmp slt i32 %sp.0.i68, 0
  br i1 %421, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit165, label %bb9.i164

bb9.i164:                                         ; preds = %bb7.i163
  %422 = sext i32 %sp.0.i68 to i64
  %423 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %422
  %424 = load i32* %423, align 4
  %425 = add nsw i32 %sp.0.i68, -1
  br label %bb.outer.i64

_ZN3BVH9intersectER9HitRecordR3Ray.exit165:       ; preds = %bb7.i163
  %tmp787 = trunc i512 %mask452829 to i32
  %tmp788 = bitcast i32 %tmp787 to float
  %426 = fcmp olt float %tmp788, 1.000000e+10
  br i1 %426, label %bb.i38, label %bb4.i

bb.i38:                                           ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit165
  %tmp780 = lshr i512 %mask452829, 32
  %tmp781 = trunc i512 %tmp780 to i32
  %tmp782 = bitcast i32 %tmp781 to float
  %tmp776 = lshr i512 %mask452829, 64
  %tmp777 = trunc i512 %tmp776 to i32
  %tmp778 = bitcast i32 %tmp777 to float
  %tmp766 = lshr i512 %mask452829, 128
  %tmp767 = trunc i512 %tmp766 to i32
  %tmp768 = bitcast i32 %tmp767 to float
  %tmp762 = lshr i512 %mask452829, 160
  %tmp763 = trunc i512 %tmp762 to i32
  %tmp764 = bitcast i32 %tmp763 to float
  %tmp754 = lshr i512 %mask452829, 224
  %tmp742 = lshr i512 %mask452829, 352
  %tmp730 = lshr i512 %mask452829, 448
  %tmp731 = trunc i512 %tmp730 to i32
  %tmp732 = bitcast i32 %tmp731 to float
  %tmp726 = lshr i512 %mask452829, 480
  %tmp727 = trunc i512 %tmp726 to i32
  %tmp728 = bitcast i32 %tmp727 to float
  %427 = lshr i192 %ins676, 96
  %.tr = trunc i192 %427 to i128
  %tmp1299 = and i128 %.tr, 79228162495817593519834398720
  %tmp1286 = lshr exact i128 %tmp1299, 64
  %tmp1287 = trunc i128 %tmp1286 to i32
  %tmp1288 = bitcast i32 %tmp1287 to float
  %428 = fmul float %266, %tmp788
  %429 = fmul float %265, %tmp788
  %430 = fmul float %tmp1288, %tmp788
  %tmp2257 = bitcast float %428 to i32
  %tmp2258 = zext i32 %tmp2257 to i96
  %tmp2251 = bitcast float %429 to i32
  %tmp2252 = zext i32 %tmp2251 to i96
  %tmp2253 = shl nuw nsw i96 %tmp2252, 32
  %ins2255 = or i96 %tmp2253, %tmp2258
  %tmp2245 = bitcast float %430 to i32
  %tmp1282 = zext i96 %ins2255 to i128
  %mask1283 = and i128 %memtmp4.i.1944, -79228162514264337593543950336
  %tmp1276 = zext i32 %tmp2245 to i128
  %tmp1277 = shl nuw nsw i128 %tmp1276, 64
  %mask1278 = or i128 %tmp1277, %mask1283
  %ins1279 = or i128 %mask1278, %tmp1282
  %ins1279.tr = trunc i128 %ins1279 to i96
  %tmp1242 = lshr i128 %mask1256, 64
  %tmp1243 = trunc i128 %tmp1242 to i32
  %tmp1244 = bitcast i32 %tmp1243 to float
  %tmp1527 = lshr i96 %ins1279.tr, 64
  %tmp1528 = trunc i96 %tmp1527 to i32
  %tmp1529 = bitcast i32 %tmp1528 to float
  %431 = fadd float %428, %10
  %432 = fadd float %429, %11
  %433 = fadd float %tmp1244, %tmp1529
  %tmp2525 = trunc i512 %tmp766 to i128
  %tmp2526 = and i128 %tmp2525, 79228162495817593519834398720
  %tmp2503 = trunc i512 %tmp780 to i128
  %tmp2504 = and i128 %tmp2503, 79228162495817593519834398720
  %tmp2491 = lshr exact i128 %tmp2504, 64
  %tmp2492 = trunc i128 %tmp2491 to i32
  %tmp2493 = bitcast i32 %tmp2492 to float
  %tmp2555985 = lshr i512 %mask452829, 192
  %tmp2556 = trunc i512 %tmp2555985 to i32
  %tmp2557 = bitcast i32 %tmp2556 to float
  %434 = fsub float %tmp782, %tmp768
  %435 = fsub float %tmp778, %tmp764
  %436 = fsub float %tmp2493, %tmp2557
  %tmp2425 = lshr exact i128 %tmp2526, 64
  %tmp2426 = trunc i128 %tmp2425 to i32
  %tmp2427 = bitcast i32 %tmp2426 to float
  %tmp2579987 = lshr i512 %mask452829, 288
  %tmp2580 = trunc i512 %tmp2579987 to i32
  %tmp2581 = bitcast i32 %tmp2580 to float
  %tmp41.i197 = trunc i512 %tmp754 to i32
  %tmp42.i198 = bitcast i32 %tmp41.i197 to float
  %437 = fsub float %tmp768, %tmp42.i198
  %tmp37.i199880 = lshr i512 %mask452829, 256
  %tmp38.i200 = trunc i512 %tmp37.i199880 to i32
  %tmp39.i201 = bitcast i32 %tmp38.i200 to float
  %438 = fsub float %tmp764, %tmp39.i201
  %439 = fsub float %tmp2427, %tmp2581
  %440 = fmul float %435, %439
  %441 = fmul float %438, %436
  %442 = fsub float %440, %441
  %443 = fmul float %437, %436
  %444 = fmul float %434, %439
  %445 = fsub float %443, %444
  %446 = fmul float %438, %434
  %447 = fmul float %437, %435
  %448 = fsub float %446, %447
  %449 = fmul float %442, %442
  %450 = fmul float %445, %445
  %451 = fadd float %449, %450
  %452 = fmul float %448, %448
  %453 = fadd float %451, %452
  %454 = call float @llvm.trax.invsqrt(float %453) nounwind
  %455 = fdiv float 1.000000e+00, %454
  %456 = fdiv float %448, %455
  %457 = fdiv float %445, %455
  %458 = fdiv float %442, %455
  %tmp18.i221 = bitcast float %458 to i32
  %tmp19.i222 = zext i32 %tmp18.i221 to i64
  %tmp12.i223 = bitcast float %457 to i32
  %tmp13.i224 = zext i32 %tmp12.i223 to i64
  %tmp14.i225 = shl nuw i64 %tmp13.i224, 32
  %ins16.i226 = or i64 %tmp19.i222, %tmp14.i225
  %tmp2370 = bitcast float %456 to i32
  %tmp2622 = zext i32 %tmp18.i221 to i96
  %tmp2616 = zext i32 %tmp12.i223 to i96
  %tmp2617 = shl nuw nsw i96 %tmp2616, 32
  %ins2619 = or i96 %tmp2622, %tmp2617
  %tmp1216 = zext i96 %ins2619 to i128
  %mask1217 = and i128 %memtmp24.i.1942, -79228162514264337593543950336
  %tmp1210 = zext i32 %tmp2370 to i128
  %tmp1211 = shl nuw nsw i128 %tmp1210, 64
  %mask1212 = or i128 %tmp1211, %mask1217
  %ins1213 = or i128 %mask1212, %tmp1216
  %ins1213.tr = trunc i128 %ins1213 to i96
  %459 = fmul float %266, %266
  %460 = fmul float %265, %265
  %461 = fadd float %459, %460
  %462 = fmul float %tmp1288, %tmp1288
  %463 = fadd float %461, %462
  %464 = call float @llvm.trax.invsqrt(float %463) nounwind
  %465 = fdiv float 1.000000e+00, %464
  %466 = fdiv float %tmp1288, %465
  %467 = fdiv float %265, %465
  %468 = fdiv float %266, %465
  %469 = fmul float %468, %458
  %470 = fadd float %469, 0.000000e+00
  %471 = fmul float %467, %457
  %472 = fadd float %471, %470
  %tmp1346 = lshr i96 %ins1213.tr, 64
  %tmp1347 = trunc i96 %tmp1346 to i32
  %tmp1348 = bitcast i32 %tmp1347 to float
  %473 = fmul float %466, %tmp1348
  %474 = fadd float %473, %472
  %475 = fcmp ogt float %474, 0.000000e+00
  br i1 %475, label %bb46.i, label %bb53.i

bb46.i:                                           ; preds = %bb.i38
  %476 = fmul float %458, -1.000000e+00
  %477 = fmul float %457, -1.000000e+00
  %478 = fmul float %tmp1348, -1.000000e+00
  %tmp2781 = bitcast float %476 to i32
  %tmp2782 = zext i32 %tmp2781 to i96
  %tmp2775 = bitcast float %477 to i32
  %tmp2776 = zext i32 %tmp2775 to i96
  %tmp2777 = shl nuw nsw i96 %tmp2776, 32
  %ins2779 = or i96 %tmp2782, %tmp2777
  %tmp2769 = bitcast float %478 to i32
  %tmp1150 = zext i96 %ins2779 to i128
  %mask1151 = and i128 %memtmp47.i.2940, -79228162514264337593543950336
  %tmp1144 = zext i32 %tmp2769 to i128
  %tmp1145 = shl nuw nsw i128 %tmp1144, 64
  %mask1146 = or i128 %tmp1150, %mask1151
  %ins1147 = or i128 %mask1146, %tmp1145
  %tmp1381 = zext i32 %tmp2781 to i64
  %tmp1375 = zext i32 %tmp2775 to i64
  %tmp1376 = shl nuw i64 %tmp1375, 32
  %ins1378 = or i64 %tmp1381, %tmp1376
  %tmp1132 = lshr i128 %ins1147, 64
  %tmp1133 = trunc i128 %tmp1132 to i32
  br label %bb53.i

bb53.i:                                           ; preds = %bb46.i, %bb.i38
  %memtmp47.i.0 = phi i128 [ %ins1147, %bb46.i ], [ %memtmp47.i.2940, %bb.i38 ]
  %N.i.0.off0 = phi i32 [ %tmp2781, %bb46.i ], [ %tmp18.i221, %bb.i38 ]
  %N.i.0.off03570 = phi i64 [ %ins1378, %bb46.i ], [ %ins16.i226, %bb.i38 ]
  %N.i.0.off32 = phi i32 [ %tmp2775, %bb46.i ], [ %tmp12.i223, %bb.i38 ]
  %N.i.0.off64 = phi i32 [ %tmp1133, %bb46.i ], [ %tmp1347, %bb.i38 ]
  %479 = fmul float %tmp732, 0.000000e+00
  %480 = fsub float %6, %431
  %481 = fsub float %7, %432
  %482 = fsub float %8, %433
  %483 = fmul float %480, %480
  %484 = fmul float %481, %481
  %485 = fadd float %483, %484
  %486 = fmul float %482, %482
  %487 = fadd float %485, %486
  %488 = call float @llvm.trax.invsqrt(float %487) nounwind
  %489 = fdiv float 1.000000e+00, %488
  %490 = fdiv float %482, %489
  %491 = fdiv float %481, %489
  %492 = fdiv float %480, %489
  %tmp1351 = bitcast i32 %N.i.0.off0 to float
  %493 = fmul float %492, %tmp1351
  %494 = fadd float %493, 0.000000e+00
  %tmp1355 = bitcast i32 %N.i.0.off32 to float
  %495 = fmul float %491, %tmp1355
  %496 = fadd float %495, %494
  %tmp1359 = bitcast i32 %N.i.0.off64 to float
  %497 = fmul float %490, %tmp1359
  %498 = fadd float %497, %496
  %499 = fcmp ogt float %498, 0.000000e+00
  br i1 %499, label %bb94.i, label %bb121.i

bb94.i:                                           ; preds = %bb53.i
  %500 = call float @llvm.trax.invsqrt(float %487) nounwind
  br label %bb.outer.i269

bb.outer.i269:                                    ; preds = %bb9.i369, %bb94.i
  %tmp786814.off0 = phi i32 [ %tmp787, %bb94.i ], [ %tmp786813.off0, %bb9.i369 ]
  %node_id.0.ph.i264 = phi i32 [ 0, %bb94.i ], [ %658, %bb9.i369 ]
  %sp.0.ph.i265 = phi i32 [ -1, %bb94.i ], [ %659, %bb9.i369 ]
  %tmp404.i267 = add i32 %sp.0.ph.i265, 1
  %tmp997 = sext i32 %tmp404.i267 to i64
  %tmp999 = zext i32 %sp.0.ph.i265 to i64
  br label %bb.i281

bb.i281:                                          ; preds = %bb3.i297, %bb.outer.i269
  %indvar.i270 = phi i64 [ %indvar.next.i296, %bb3.i297 ], [ 0, %bb.outer.i269 ]
  %node_id.0.i271 = phi i32 [ %536, %bb3.i297 ], [ %node_id.0.ph.i264, %bb.outer.i269 ]
  %tmp998 = add i64 %tmp997, %indvar.i270
  %scevgep.i275 = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp998
  %tmp1000 = add i64 %tmp999, %indvar.i270
  %sp.0.i273 = trunc i64 %tmp1000 to i32
  %501 = shl nsw i32 %node_id.0.i271, 3
  %502 = add nsw i32 %501, %31
  %503 = call float @llvm.trax.loadf(i32 %502, i32 2) nounwind
  %504 = call float @llvm.trax.loadf(i32 %502, i32 1) nounwind
  %505 = call float @llvm.trax.loadf(i32 %502, i32 0) nounwind
  %506 = call float @llvm.trax.loadf(i32 %502, i32 5) nounwind
  %507 = call float @llvm.trax.loadf(i32 %502, i32 4) nounwind
  %508 = call float @llvm.trax.loadf(i32 %502, i32 3) nounwind
  %509 = fsub float %505, %431
  %510 = fdiv float %509, %492
  %511 = fsub float %508, %431
  %512 = fdiv float %511, %492
  %513 = fcmp ogt float %510, %512
  %tx1.i.0.i276 = select i1 %513, float %512, float %510
  %tx2.i.0.i277 = select i1 %513, float %510, float %512
  %514 = fcmp ogt float %tx1.i.0.i276, -1.000000e+10
  %tnear.i.0.i278 = select i1 %514, float %tx1.i.0.i276, float -1.000000e+10
  %515 = fcmp olt float %tx2.i.0.i277, 1.000000e+10
  %tfar.i.0.i279 = select i1 %515, float %tx2.i.0.i277, float 1.000000e+10
  %516 = fcmp ogt float %tnear.i.0.i278, %tfar.i.0.i279
  %517 = fcmp olt float %tfar.i.0.i279, 0.000000e+00
  %or.cond.i280 = or i1 %516, %517
  br i1 %or.cond.i280, label %bb7.i368, label %bb29.i.i287

bb29.i.i287:                                      ; preds = %bb.i281
  %518 = fsub float %504, %432
  %519 = fdiv float %518, %491
  %520 = fsub float %507, %432
  %521 = fdiv float %520, %491
  %522 = fcmp ogt float %519, %521
  %ty1.i.0.i282 = select i1 %522, float %521, float %519
  %ty2.i.0.i283 = select i1 %522, float %519, float %521
  %523 = fcmp ogt float %ty1.i.0.i282, %tnear.i.0.i278
  %tnear.i.1.i284 = select i1 %523, float %ty1.i.0.i282, float %tnear.i.0.i278
  %524 = fcmp olt float %ty2.i.0.i283, %tfar.i.0.i279
  %tfar.i.1.i285 = select i1 %524, float %ty2.i.0.i283, float %tfar.i.0.i279
  %525 = fcmp ogt float %tnear.i.1.i284, %tfar.i.1.i285
  %526 = fcmp olt float %tfar.i.1.i285, 0.000000e+00
  %or.cond1395.i286 = or i1 %525, %526
  br i1 %or.cond1395.i286, label %bb7.i368, label %bb62.i.i293

bb62.i.i293:                                      ; preds = %bb29.i.i287
  %527 = fsub float %503, %433
  %528 = fdiv float %527, %490
  %529 = fsub float %506, %433
  %530 = fdiv float %529, %490
  %531 = fcmp ogt float %528, %530
  %tz1.i.0.i288 = select i1 %531, float %530, float %528
  %tz2.i.0.i289 = select i1 %531, float %528, float %530
  %532 = fcmp ogt float %tz1.i.0.i288, %tnear.i.1.i284
  %tnear.i.2.i290 = select i1 %532, float %tz1.i.0.i288, float %tnear.i.1.i284
  %533 = fcmp olt float %tz2.i.0.i289, %tfar.i.1.i285
  %tfar.i.2.i291 = select i1 %533, float %tz2.i.0.i289, float %tfar.i.1.i285
  %534 = fcmp ogt float %tnear.i.2.i290, %tfar.i.2.i291
  %535 = fcmp olt float %tfar.i.2.i291, 0.000000e+00
  %or.cond1396.i292 = or i1 %534, %535
  br i1 %or.cond1396.i292, label %bb7.i368, label %bb1.i294

bb1.i294:                                         ; preds = %bb62.i.i293
  %536 = call i32 @llvm.trax.loadi(i32 %502, i32 7) nounwind
  %537 = call i32 @llvm.trax.loadi(i32 %502, i32 6) nounwind
  %538 = icmp slt i32 %537, 0
  br i1 %538, label %bb3.i297, label %bb6.preheader.i295

bb6.preheader.i295:                               ; preds = %bb1.i294
  %539 = icmp sgt i32 %537, 0
  br i1 %539, label %bb5.i308, label %bb7.i368

bb3.i297:                                         ; preds = %bb1.i294
  %540 = add nsw i32 %536, 1
  store i32 %540, i32* %scevgep.i275, align 4
  %indvar.next.i296 = add i64 %indvar.i270, 1
  br label %bb.i281

bb5.i308:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i367, %bb6.preheader.i295
  %tmp786812.off0 = phi i32 [ %tmp786811.off0, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i367 ], [ %tmp786814.off0, %bb6.preheader.i295 ]
  %storemerge388.i298 = phi i32 [ %654, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i367 ], [ 0, %bb6.preheader.i295 ]
  %tmp992 = mul i32 %storemerge388.i298, 11
  %tmp396.i300 = add i32 %536, %tmp992
  %541 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 2) nounwind
  %542 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 1) nounwind
  %543 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 0) nounwind
  %544 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 5) nounwind
  %545 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 4) nounwind
  %546 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 3) nounwind
  %547 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 8) nounwind
  %548 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 7) nounwind
  %549 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 6) nounwind
  %550 = call i32 @llvm.trax.loadi(i32 %tmp396.i300, i32 10) nounwind
  %551 = call i32 @llvm.trax.loadi(i32 %tmp396.i300, i32 9) nounwind
  %552 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %553 = mul nsw i32 %550, 25
  %554 = add nsw i32 %552, %553
  %555 = call float @llvm.trax.loadf(i32 %554, i32 6) nounwind
  %556 = call float @llvm.trax.loadf(i32 %554, i32 5) nounwind
  %557 = call float @llvm.trax.loadf(i32 %554, i32 4) nounwind
  %558 = fsub float %543, %549
  %559 = fsub float %542, %548
  %560 = fsub float %541, %547
  %561 = fsub float %546, %549
  %562 = fsub float %545, %548
  %563 = fsub float %544, %547
  %564 = fmul float %559, %563
  %565 = fmul float %562, %560
  %566 = fsub float %564, %565
  %567 = fmul float %561, %560
  %568 = fmul float %558, %563
  %569 = fsub float %567, %568
  %570 = fmul float %562, %558
  %571 = fmul float %561, %559
  %572 = fsub float %570, %571
  %573 = fmul float %566, %566
  %574 = fmul float %569, %569
  %575 = fadd float %573, %574
  %576 = fmul float %572, %572
  %577 = fadd float %575, %576
  %578 = call float @llvm.trax.invsqrt(float %577) nounwind
  %579 = fmul float %491, %563
  %580 = fmul float %562, %490
  %581 = fsub float %579, %580
  %582 = fmul float %561, %490
  %583 = fmul float %492, %563
  %584 = fsub float %582, %583
  %585 = fmul float %562, %492
  %586 = fmul float %561, %491
  %587 = fsub float %585, %586
  %588 = fmul float %581, %558
  %589 = fadd float %588, 0.000000e+00
  %590 = fmul float %584, %559
  %591 = fadd float %590, %589
  %592 = fmul float %587, %560
  %593 = fadd float %592, %591
  %594 = fdiv float 1.000000e+00, %593
  %595 = fsub float %431, %549
  %596 = fsub float %432, %548
  %597 = fsub float %433, %547
  %598 = fmul float %581, %595
  %599 = fadd float %598, 0.000000e+00
  %600 = fmul float %584, %596
  %601 = fadd float %600, %599
  %602 = fmul float %587, %597
  %603 = fadd float %602, %601
  %604 = fmul float %603, %594
  %605 = fcmp olt float %604, 0.000000e+00
  %606 = fcmp ogt float %604, 1.000000e+00
  %or.cond1397.i307 = or i1 %605, %606
  br i1 %or.cond1397.i307, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i367, label %bb73.i.i309

bb73.i.i309:                                      ; preds = %bb5.i308
  %607 = fmul float %596, %560
  %608 = fmul float %559, %597
  %609 = fsub float %607, %608
  %610 = fmul float %558, %597
  %611 = fmul float %595, %560
  %612 = fsub float %610, %611
  %613 = fmul float %559, %595
  %614 = fmul float %558, %596
  %615 = fsub float %613, %614
  %616 = fmul float %609, %492
  %617 = fadd float %616, 0.000000e+00
  %618 = fmul float %612, %491
  %619 = fadd float %618, %617
  %620 = fmul float %615, %490
  %621 = fadd float %620, %619
  %622 = fmul float %621, %594
  %623 = fcmp olt float %622, 0.000000e+00
  br i1 %623, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i367, label %bb94.i55.i310

bb94.i55.i310:                                    ; preds = %bb73.i.i309
  %624 = fadd float %622, %604
  %625 = fcmp ogt float %624, 1.000000e+00
  br i1 %625, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i367, label %bb96.i.i313

bb96.i.i313:                                      ; preds = %bb94.i55.i310
  %626 = fmul float %609, %561
  %627 = fadd float %626, 0.000000e+00
  %628 = fmul float %612, %562
  %629 = fadd float %628, %627
  %630 = fmul float %615, %563
  %631 = fadd float %630, %629
  %632 = fmul float %631, %594
  %633 = fcmp ule float %632, 0.000000e+00
  %634 = fcmp olt float %632, 0x3F50624DE0000000
  %or.cond1398.i311 = or i1 %633, %634
  %635 = fcmp oeq float %632, 1.000000e+10
  %or.cond1399.i312 = or i1 %or.cond1398.i311, %635
  br i1 %or.cond1399.i312, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i367, label %bb2.i.i.i314

bb2.i.i.i314:                                     ; preds = %bb96.i.i313
  %tmp724 = bitcast i32 %tmp786812.off0 to float
  %636 = fcmp ogt float %tmp724, %632
  br i1 %636, label %bb3.i.i.i365, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i367

bb3.i.i.i365:                                     ; preds = %bb2.i.i.i314
  %tmp718 = bitcast float %632 to i32
  %637 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 2) nounwind
  %638 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 1) nounwind
  %639 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 0) nounwind
  %640 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 5) nounwind
  %641 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 4) nounwind
  %642 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 3) nounwind
  %643 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 8) nounwind
  %644 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 7) nounwind
  %645 = call float @llvm.trax.loadf(i32 %tmp396.i300, i32 6) nounwind
  %646 = call i32 @llvm.trax.loadi(i32 %tmp396.i300, i32 10) nounwind
  %647 = call i32 @llvm.trax.loadi(i32 %tmp396.i300, i32 9) nounwind
  %648 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %649 = mul nsw i32 %646, 25
  %650 = add nsw i32 %648, %649
  %651 = call float @llvm.trax.loadf(i32 %650, i32 6) nounwind
  %652 = call float @llvm.trax.loadf(i32 %650, i32 5) nounwind
  %653 = call float @llvm.trax.loadf(i32 %650, i32 4) nounwind
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i367

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i367: ; preds = %bb3.i.i.i365, %bb2.i.i.i314, %bb96.i.i313, %bb94.i55.i310, %bb73.i.i309, %bb5.i308
  %tmp786811.off0 = phi i32 [ %tmp718, %bb3.i.i.i365 ], [ %tmp786812.off0, %bb2.i.i.i314 ], [ %tmp786812.off0, %bb96.i.i313 ], [ %tmp786812.off0, %bb94.i55.i310 ], [ %tmp786812.off0, %bb73.i.i309 ], [ %tmp786812.off0, %bb5.i308 ]
  %654 = add nsw i32 %storemerge388.i298, 1
  %exitcond = icmp eq i32 %654, %537
  br i1 %exitcond, label %bb7.i368, label %bb5.i308

bb7.i368:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i367, %bb6.preheader.i295, %bb62.i.i293, %bb29.i.i287, %bb.i281
  %tmp786813.off0 = phi i32 [ %tmp786814.off0, %bb6.preheader.i295 ], [ %tmp786811.off0, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i367 ], [ %tmp786814.off0, %bb.i281 ], [ %tmp786814.off0, %bb29.i.i287 ], [ %tmp786814.off0, %bb62.i.i293 ]
  %655 = icmp slt i32 %sp.0.i273, 0
  br i1 %655, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit370, label %bb9.i369

bb9.i369:                                         ; preds = %bb7.i368
  %656 = sext i32 %sp.0.i273 to i64
  %657 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %656
  %658 = load i32* %657, align 4
  %659 = add nsw i32 %sp.0.i273, -1
  br label %bb.outer.i269

_ZN3BVH9intersectER9HitRecordR3Ray.exit370:       ; preds = %bb7.i368
  %660 = fdiv float 1.000000e+00, %500
  %tmp785 = bitcast i32 %tmp786813.off0 to float
  %661 = fcmp uge float %tmp785, %660
  %662 = fcmp ule float %tmp785, 0x3F847AE140000000
  %or.cond = or i1 %661, %662
  br i1 %or.cond, label %bb98.i, label %bb121.i

bb98.i:                                           ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit370
  %663 = fmul float %tmp728, %498
  %tmp2188 = bitcast float %663 to i32
  %tmp2189 = zext i32 %tmp2188 to i96
  %tmp2184 = shl nuw nsw i96 %tmp2189, 32
  %ins2186 = or i96 %tmp2184, %tmp2189
  %tmp1018 = zext i96 %ins2186 to i128
  %mask1019 = and i128 %memtmp105.i.2937, -79228162514264337593543950336
  %tmp1012 = zext i32 %tmp2188 to i128
  %tmp1013 = shl nuw nsw i128 %tmp1012, 64
  %mask1014 = or i128 %tmp1013, %mask1019
  %ins1015 = or i128 %mask1014, %tmp1018
  %ins1015.tr = trunc i128 %ins1015 to i96
  %664 = fadd float %663, %479
  %tmp2148 = lshr i96 %ins1015.tr, 64
  %tmp2149 = trunc i96 %tmp2148 to i32
  %tmp2150 = bitcast i32 %tmp2149 to float
  %665 = fadd float %tmp2150, %479
  %tmp2143 = bitcast float %664 to i32
  %tmp2144 = zext i32 %tmp2143 to i96
  %tmp2139 = shl nuw nsw i96 %tmp2144, 32
  %ins2141 = or i96 %tmp2139, %tmp2144
  %tmp2131 = bitcast float %665 to i32
  %tmp996 = zext i96 %ins2141 to i128
  %mask997 = and i128 %memtmp115.i.2936, -79228162514264337593543950336
  %tmp990 = zext i32 %tmp2131 to i128
  %tmp991 = shl nuw nsw i128 %tmp990, 64
  %mask992 = or i128 %tmp996, %mask997
  %ins993 = or i128 %mask992, %tmp991
  %tmp978 = lshr i128 %ins993, 64
  %tmp979 = trunc i128 %tmp978 to i32
  %tmp980 = bitcast i32 %tmp979 to float
  br label %bb121.i

bb121.i:                                          ; preds = %bb98.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit370, %bb53.i
  %tmp1112831 = phi float [ %tmp980, %bb98.i ], [ %479, %bb53.i ], [ %479, %_ZN3BVH9intersectER9HitRecordR3Ray.exit370 ]
  %666 = phi float [ %664, %bb98.i ], [ %479, %bb53.i ], [ %479, %_ZN3BVH9intersectER9HitRecordR3Ray.exit370 ]
  %memtmp115.i.0 = phi i128 [ %ins993, %bb98.i ], [ %memtmp115.i.2936, %bb53.i ], [ %memtmp115.i.2936, %_ZN3BVH9intersectER9HitRecordR3Ray.exit370 ]
  %memtmp105.i.0 = phi i128 [ %ins1015, %bb98.i ], [ %memtmp105.i.2937, %bb53.i ], [ %memtmp105.i.2937, %_ZN3BVH9intersectER9HitRecordR3Ray.exit370 ]
  %tmp2069 = trunc i512 %tmp742 to i128
  %tmp2070 = and i128 %tmp2069, 79228162495817593519834398720
  %tmp956 = lshr exact i128 %tmp2070, 64
  %tmp957 = trunc i128 %tmp956 to i32
  %tmp958 = bitcast i32 %tmp957 to float
  %tmp41.i372 = trunc i512 %tmp742 to i32
  %tmp42.i373 = bitcast i32 %tmp41.i372 to float
  %667 = fmul float %tmp42.i373, %666
  %tmp37.i374892 = lshr i512 %mask452829, 384
  %tmp38.i375 = trunc i512 %tmp37.i374892 to i32
  %tmp39.i376 = bitcast i32 %tmp38.i375 to float
  %668 = fmul float %tmp39.i376, %666
  %669 = fmul float %tmp1112831, %tmp958
  %tmp1837 = trunc i64 %N.i.0.off03570 to i32
  %tmp1838 = bitcast i32 %tmp1837 to float
  %tmp1840 = lshr i64 %N.i.0.off03570, 32
  %tmp1841 = trunc i64 %tmp1840 to i32
  %tmp1842 = bitcast i32 %tmp1841 to float
  %tmp1819989 = lshr i512 %mask452829, 416
  %tmp1820 = trunc i512 %tmp1819989 to i32
  %tmp1821 = bitcast i32 %tmp1820 to float
  br i1 %232, label %bb.i.i, label %invcont88

bb.i.i:                                           ; preds = %bb33.i.i, %bb121.i
  %indvar = phi i64 [ %indvar.next, %bb33.i.i ], [ 0, %bb121.i ]
  %memtmp.i.i.0926 = phi i128 [ %ins1745, %bb33.i.i ], [ %memtmp.i.i.2947, %bb121.i ]
  %memtmp13.i.i.1925 = phi i128 [ %memtmp13.i.i.0, %bb33.i.i ], [ %memtmp13.i.i.3946, %bb121.i ]
  %temp.i.i.2.1924 = phi float [ %temp.i.i.2.0, %bb33.i.i ], [ 0.000000e+00, %bb121.i ]
  %temp.i.i.1.1923 = phi float [ %temp.i.i.1.0, %bb33.i.i ], [ 0.000000e+00, %bb121.i ]
  %temp.i.i.0.1922 = phi float [ %temp.i.i.0.0, %bb33.i.i ], [ 0.000000e+00, %bb121.i ]
  %scevgep = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %indvar, i32 2, i64 0
  %scevgep1023 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %indvar, i32 2, i64 1
  %scevgep1024 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %indvar, i32 2, i64 2
  %scevgep1025 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %indvar, i32 0, i32 2
  %scevgep1026 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %indvar, i32 0, i32 1
  %scevgep10271028 = getelementptr [20000 x %struct.Photon]* %32, i64 0, i64 %indvar, i32 0, i32 0
  %670 = load float* %scevgep10271028, align 4
  %671 = load float* %scevgep1026, align 4
  %672 = load float* %scevgep1025, align 4
  %tmp1895 = bitcast float %670 to i32
  %tmp1896 = zext i32 %tmp1895 to i96
  %tmp1889 = bitcast float %671 to i32
  %tmp1890 = zext i32 %tmp1889 to i96
  %tmp1891 = shl nuw nsw i96 %tmp1890, 32
  %ins1893 = or i96 %tmp1891, %tmp1896
  %tmp1883 = bitcast float %672 to i32
  %tmp1748 = zext i96 %ins1893 to i128
  %mask1749 = and i128 %memtmp.i.i.0926, -79228162514264337593543950336
  %tmp1742 = zext i32 %tmp1883 to i128
  %tmp1743 = shl nuw nsw i128 %tmp1742, 64
  %mask1744 = or i128 %tmp1743, %mask1749
  %ins1745 = or i128 %mask1744, %tmp1748
  %ins1745.tr = trunc i128 %ins1745 to i96
  %673 = fsub float %431, %670
  %674 = fmul float %673, %673
  %675 = fcmp ogt float %674, 3.000000e+00
  br i1 %675, label %bb33.i.i, label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %bb.i.i
  %676 = fsub float %432, %671
  %677 = fmul float %676, %676
  %678 = fadd float %677, %674
  %679 = fcmp ogt float %678, 3.000000e+00
  br i1 %679, label %bb33.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb1.i.i.i
  %tmp1900 = lshr i96 %ins1745.tr, 64
  %tmp1901 = trunc i96 %tmp1900 to i32
  %tmp1902 = bitcast i32 %tmp1901 to float
  %680 = fsub float %433, %tmp1902
  %681 = fmul float %680, %680
  %682 = fadd float %681, %678
  %683 = fcmp ogt float %682, 3.000000e+00
  br i1 %683, label %bb33.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i.i.i
  %mask1727 = and i128 %memtmp13.i.i.1925, -79228162514264337593543950336
  %mask1722 = or i128 %tmp1743, %mask1727
  %ins1723 = or i128 %mask1722, %tmp1748
  %ins1723.tr = trunc i128 %ins1723 to i96
  %684 = fmul float %670, %tmp1838
  %685 = fadd float %684, 0.000000e+00
  %686 = fmul float %671, %tmp1842
  %687 = fadd float %686, %685
  %tmp1944 = lshr i96 %ins1723.tr, 64
  %tmp1945 = trunc i96 %tmp1944 to i32
  %tmp1946 = bitcast i32 %tmp1945 to float
  %688 = fmul float %tmp1946, %tmp1359
  %689 = fadd float %688, %687
  %690 = fsub float -0.000000e+00, %689
  %691 = fcmp olt float %690, 0.000000e+00
  br i1 %691, label %llvm.trax.max.exit.i, label %bb1.i.i

bb1.i.i:                                          ; preds = %bb10.i.i
  %phitmp3602 = fpext float %690 to double
  br label %llvm.trax.max.exit.i

llvm.trax.max.exit.i:                             ; preds = %bb1.i.i, %bb10.i.i
  %storemerge.i4.i = phi double [ %phitmp3602, %bb1.i.i ], [ 0.000000e+00, %bb10.i.i ]
  %692 = call float @llvm.trax.invsqrt(float %682) nounwind
  %693 = fdiv float 1.000000e+00, %692
  %694 = fpext float %693 to double
  %695 = fsub double 1.000000e+00, %694
  %696 = fdiv double %695, 1.000000e+00
  %697 = fmul double %storemerge.i4.i, %696
  %698 = fptrunc double %697 to float
  %699 = load float* %scevgep1024, align 4
  %700 = fadd float %699, %698
  %701 = load float* %scevgep1023, align 4
  %702 = fadd float %701, %698
  %703 = load float* %scevgep, align 4
  %704 = fadd float %703, %698
  %705 = fmul float %tmp42.i373, %704
  %706 = fmul float %tmp39.i376, %702
  %707 = fmul float %700, %tmp1821
  br label %bb33.i.i

bb33.i.i:                                         ; preds = %llvm.trax.max.exit.i, %bb3.i.i.i, %bb1.i.i.i, %bb.i.i
  %temp.i.i.0.0 = phi float [ %705, %llvm.trax.max.exit.i ], [ %temp.i.i.0.1922, %bb.i.i ], [ %temp.i.i.0.1922, %bb1.i.i.i ], [ %temp.i.i.0.1922, %bb3.i.i.i ]
  %temp.i.i.1.0 = phi float [ %706, %llvm.trax.max.exit.i ], [ %temp.i.i.1.1923, %bb.i.i ], [ %temp.i.i.1.1923, %bb1.i.i.i ], [ %temp.i.i.1.1923, %bb3.i.i.i ]
  %temp.i.i.2.0 = phi float [ %707, %llvm.trax.max.exit.i ], [ %temp.i.i.2.1924, %bb.i.i ], [ %temp.i.i.2.1924, %bb1.i.i.i ], [ %temp.i.i.2.1924, %bb3.i.i.i ]
  %memtmp13.i.i.0 = phi i128 [ %ins1723, %llvm.trax.max.exit.i ], [ %memtmp13.i.i.1925, %bb.i.i ], [ %memtmp13.i.i.1925, %bb1.i.i.i ], [ %memtmp13.i.i.1925, %bb3.i.i.i ]
  %indvar.next = add i64 %indvar, 1
  %exitcond1022 = icmp eq i64 %indvar.next, %tmp1021
  br i1 %exitcond1022, label %invcont88, label %bb.i.i

invcont88:                                        ; preds = %bb33.i.i, %bb121.i
  %memtmp.i.i.0.lcssa = phi i128 [ %memtmp.i.i.2947, %bb121.i ], [ %ins1745, %bb33.i.i ]
  %memtmp13.i.i.1.lcssa = phi i128 [ %memtmp13.i.i.3946, %bb121.i ], [ %memtmp13.i.i.0, %bb33.i.i ]
  %temp.i.i.2.1.lcssa = phi float [ 0.000000e+00, %bb121.i ], [ %temp.i.i.2.0, %bb33.i.i ]
  %temp.i.i.1.1.lcssa = phi float [ 0.000000e+00, %bb121.i ], [ %temp.i.i.1.0, %bb33.i.i ]
  %temp.i.i.0.1.lcssa = phi float [ 0.000000e+00, %bb121.i ], [ %temp.i.i.0.0, %bb33.i.i ]
  %708 = fmul float %temp.i.i.0.1.lcssa, %667
  %709 = fmul float %temp.i.i.1.1.lcssa, %668
  %710 = fmul float %669, %temp.i.i.2.1.lcssa
  %711 = fcmp olt float %708, 0.000000e+00
  br i1 %711, label %bb5.i, label %bb1.i

bb1.i:                                            ; preds = %invcont88
  %712 = fcmp ogt float %708, 1.000000e+00
  br i1 %712, label %bb5.i, label %bb4.i

bb4.i:                                            ; preds = %bb1.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit165
  %.01640.0.off036393748 = phi float [ %708, %bb1.i ], [ 0x3FE1F3B640000000, %_ZN3BVH9intersectER9HitRecordR3Ray.exit165 ]
  %.11641.0.off3236413747 = phi float [ %709, %bb1.i ], [ 0x3FE753F7C0000000, %_ZN3BVH9intersectER9HitRecordR3Ray.exit165 ]
  %.21642.036433746 = phi float [ %710, %bb1.i ], [ 0x3FEF9DB220000000, %_ZN3BVH9intersectER9HitRecordR3Ray.exit165 ]
  %memtmp115.i.136553740 = phi i128 [ %memtmp115.i.0, %bb1.i ], [ %memtmp115.i.2936, %_ZN3BVH9intersectER9HitRecordR3Ray.exit165 ]
  %memtmp105.i.136573739 = phi i128 [ %memtmp105.i.0, %bb1.i ], [ %memtmp105.i.2937, %_ZN3BVH9intersectER9HitRecordR3Ray.exit165 ]
  %memtmp47.i.136693733 = phi i128 [ %memtmp47.i.0, %bb1.i ], [ %memtmp47.i.2940, %_ZN3BVH9intersectER9HitRecordR3Ray.exit165 ]
  %memtmp24.i.036753730 = phi i128 [ %ins1213, %bb1.i ], [ %memtmp24.i.1942, %_ZN3BVH9intersectER9HitRecordR3Ray.exit165 ]
  %memtmp4.i.036813727 = phi i128 [ %ins1279, %bb1.i ], [ %memtmp4.i.1944, %_ZN3BVH9intersectER9HitRecordR3Ray.exit165 ]
  %memtmp13.i.i.236873724 = phi i128 [ %memtmp13.i.i.1.lcssa, %bb1.i ], [ %memtmp13.i.i.3946, %_ZN3BVH9intersectER9HitRecordR3Ray.exit165 ]
  %memtmp.i.i.136893723 = phi i128 [ %memtmp.i.i.0.lcssa, %bb1.i ], [ %memtmp.i.i.2947, %_ZN3BVH9intersectER9HitRecordR3Ray.exit165 ]
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb1.i, %invcont88
  %memtmp.i.i.13688 = phi i128 [ %memtmp.i.i.136893723, %bb4.i ], [ %memtmp.i.i.0.lcssa, %invcont88 ], [ %memtmp.i.i.0.lcssa, %bb1.i ]
  %memtmp13.i.i.23686 = phi i128 [ %memtmp13.i.i.236873724, %bb4.i ], [ %memtmp13.i.i.1.lcssa, %invcont88 ], [ %memtmp13.i.i.1.lcssa, %bb1.i ]
  %memtmp4.i.03680 = phi i128 [ %memtmp4.i.036813727, %bb4.i ], [ %ins1279, %invcont88 ], [ %ins1279, %bb1.i ]
  %memtmp24.i.03674 = phi i128 [ %memtmp24.i.036753730, %bb4.i ], [ %ins1213, %invcont88 ], [ %ins1213, %bb1.i ]
  %memtmp47.i.13668 = phi i128 [ %memtmp47.i.136693733, %bb4.i ], [ %memtmp47.i.0, %invcont88 ], [ %memtmp47.i.0, %bb1.i ]
  %memtmp105.i.13656 = phi i128 [ %memtmp105.i.136573739, %bb4.i ], [ %memtmp105.i.0, %invcont88 ], [ %memtmp105.i.0, %bb1.i ]
  %memtmp115.i.13654 = phi i128 [ %memtmp115.i.136553740, %bb4.i ], [ %memtmp115.i.0, %invcont88 ], [ %memtmp115.i.0, %bb1.i ]
  %.21642.03642 = phi float [ %.21642.036433746, %bb4.i ], [ %710, %invcont88 ], [ %710, %bb1.i ]
  %.11641.0.off323640 = phi float [ %.11641.0.off3236413747, %bb4.i ], [ %709, %invcont88 ], [ %709, %bb1.i ]
  %r.i.0 = phi float [ %.01640.0.off036393748, %bb4.i ], [ 0.000000e+00, %invcont88 ], [ 1.000000e+00, %bb1.i ]
  %713 = fcmp olt float %.21642.03642, 0.000000e+00
  br i1 %713, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i
  %714 = fcmp ogt float %.21642.03642, 1.000000e+00
  br i1 %714, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i
  %b.i.0 = phi float [ %.21642.03642, %bb11.i ], [ 0.000000e+00, %bb5.i ], [ 1.000000e+00, %bb8.i ]
  %715 = fcmp olt float %.11641.0.off323640, 0.000000e+00
  br i1 %715, label %invcont100, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %716 = fcmp ogt float %.11641.0.off323640, 1.000000e+00
  br i1 %716, label %invcont100, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %invcont100

invcont100:                                       ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.i.0 = phi float [ %.11641.0.off323640, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %717 = mul nsw i32 %233, %0
  %718 = add nsw i32 %717, %234
  %719 = mul nsw i32 %718, 3
  %720 = add nsw i32 %719, %2
  call void @llvm.trax.storef(float %r.i.0, i32 %720, i32 0) nounwind
  call void @llvm.trax.storef(float %g.i.0, i32 %720, i32 1) nounwind
  call void @llvm.trax.storef(float %b.i.0, i32 %720, i32 2) nounwind
  %721 = call i32 @llvm.trax.atominc(i32 0)
  %722 = icmp sgt i32 %226, %721
  br i1 %722, label %invcont83, label %return

return:                                           ; preds = %invcont100, %invcont74
  ret i32 0
}

declare i32 @llvm.trax.atominc(i32) nounwind

declare float @llvm.trax.invsqrt(float) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind
