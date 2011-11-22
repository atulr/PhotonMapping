; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

%struct.Color = type { float, float, float }
%struct.Photon = type { %struct.Color, %struct.Color, [3 x float], float, float, i32, float }

declare float @llvm.trax.loadf(i32, i32) nounwind

declare i32 @llvm.trax.loadi(i32, i32) nounwind

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @llvm.trax.storef(float, i32, i32) nounwind

define i32 @main() ssp {
invcont11:
  %stack.i = alloca [32 x i32], align 4
  %nearest.i = alloca [1000 x %struct.Photon], align 8
  %count_nearest.i = alloca i32, align 4
  %tempPhotons.i = alloca [1000 x %struct.Photon], align 8
  %0 = call i8* @llvm.stacksave()
  %1 = call i32 @llvm.trax.loadi(i32 0, i32 1)
  %2 = call i32 @llvm.trax.loadi(i32 0, i32 4)
  %3 = call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %4 = call float @llvm.trax.loadf(i32 0, i32 2)
  %5 = call float @llvm.trax.loadf(i32 0, i32 5)
  %6 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %7 = call float @llvm.trax.loadf(i32 %6, i32 0) nounwind
  %8 = call float @llvm.trax.loadf(i32 %6, i32 1) nounwind
  %9 = call float @llvm.trax.loadf(i32 %6, i32 2) nounwind
  %10 = call i32 @llvm.trax.loadi(i32 0, i32 10)
  %11 = call float @llvm.trax.loadf(i32 %10, i32 0) nounwind
  %12 = call float @llvm.trax.loadf(i32 %10, i32 1) nounwind
  %13 = call float @llvm.trax.loadf(i32 %10, i32 2) nounwind
  %14 = add nsw i32 %10, 9
  %15 = call float @llvm.trax.loadf(i32 %14, i32 0) nounwind
  %16 = call float @llvm.trax.loadf(i32 %14, i32 1) nounwind
  %17 = call float @llvm.trax.loadf(i32 %14, i32 2) nounwind
  %18 = add nsw i32 %10, 12
  %19 = call float @llvm.trax.loadf(i32 %18, i32 0) nounwind
  %20 = call float @llvm.trax.loadf(i32 %18, i32 1) nounwind
  %21 = call float @llvm.trax.loadf(i32 %18, i32 2) nounwind
  %22 = add nsw i32 %10, 15
  %23 = call float @llvm.trax.loadf(i32 %22, i32 0) nounwind
  %24 = call float @llvm.trax.loadf(i32 %22, i32 1) nounwind
  %25 = call float @llvm.trax.loadf(i32 %22, i32 2) nounwind
  %26 = add nsw i32 %10, 18
  %27 = call float @llvm.trax.loadf(i32 %26, i32 0) nounwind
  %28 = call float @llvm.trax.loadf(i32 %26, i32 1) nounwind
  %29 = call float @llvm.trax.loadf(i32 %26, i32 2) nounwind
  %30 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %31 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %32 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %33 = alloca [1000 x %struct.Photon], align 1
  %.sub = getelementptr inbounds [1000 x %struct.Photon]* %33, i64 0, i64 0
  br label %bb

bb:                                               ; preds = %bb, %invcont11
  %indvar853 = phi i64 [ 0, %invcont11 ], [ %indvar.next854, %bb ]
  %scevgep856 = getelementptr [1000 x %struct.Photon]* %33, i64 0, i64 %indvar853, i32 2, i64 2
  %scevgep857 = getelementptr [1000 x %struct.Photon]* %33, i64 0, i64 %indvar853, i32 2, i64 1
  %scevgep858 = getelementptr [1000 x %struct.Photon]* %33, i64 0, i64 %indvar853, i32 2, i64 0
  %scevgep860 = getelementptr [1000 x %struct.Photon]* %33, i64 0, i64 %indvar853
  %34 = bitcast %struct.Photon* %scevgep860 to i8*
  call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 24, i32 4, i1 false)
  store float 1.000000e+00, float* %scevgep858, align 4
  store float 1.000000e+00, float* %scevgep857, align 4
  store float 1.000000e+00, float* %scevgep856, align 4
  %indvar.next854 = add i64 %indvar853, 1
  %exitcond855 = icmp eq i64 %indvar.next854, 1000
  br i1 %exitcond855, label %bb13, label %bb

bb13:                                             ; preds = %bb
  %35 = alloca [1000 x %struct.Photon], align 1
  %.sub2737 = getelementptr inbounds [1000 x %struct.Photon]* %35, i64 0, i64 0
  br label %bb14

bb14:                                             ; preds = %bb14, %bb13
  %indvar843 = phi i64 [ 0, %bb13 ], [ %indvar.next844, %bb14 ]
  %scevgep846 = getelementptr [1000 x %struct.Photon]* %35, i64 0, i64 %indvar843, i32 2, i64 2
  %scevgep847 = getelementptr [1000 x %struct.Photon]* %35, i64 0, i64 %indvar843, i32 2, i64 1
  %scevgep848 = getelementptr [1000 x %struct.Photon]* %35, i64 0, i64 %indvar843, i32 2, i64 0
  %scevgep850 = getelementptr [1000 x %struct.Photon]* %35, i64 0, i64 %indvar843
  %36 = bitcast %struct.Photon* %scevgep850 to i8*
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 24, i32 4, i1 false)
  store float 1.000000e+00, float* %scevgep848, align 4
  store float 1.000000e+00, float* %scevgep847, align 4
  store float 1.000000e+00, float* %scevgep846, align 4
  %indvar.next844 = add i64 %indvar843, 1
  %exitcond845 = icmp eq i64 %indvar.next844, 1000
  br i1 %exitcond845, label %invcont18, label %bb14

invcont18:                                        ; preds = %bb14
  %37 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %38 = call float @llvm.trax.loadf(i32 %37, i32 0) nounwind
  %39 = call float @llvm.trax.loadf(i32 %37, i32 1) nounwind
  %40 = call float @llvm.trax.loadf(i32 %37, i32 2) nounwind
  %tmp414 = bitcast float %38 to i32
  %tmp408 = bitcast float %39 to i32
  %tmp402 = bitcast float %40 to i32
  br label %bb68.outer.preheader

bb.i99:                                           ; preds = %bb69, %bb.i99
  %41 = call float @llvm.trax.rand()
  %42 = fadd float %41, -5.000000e-01
  %43 = fmul float %42, 2.000000e+00
  %44 = call float @llvm.trax.rand()
  %45 = fadd float %44, -5.000000e-01
  %46 = fmul float %45, 2.000000e+00
  %47 = call float @llvm.trax.rand()
  %48 = fadd float %47, -5.000000e-01
  %49 = fmul float %48, 2.000000e+00
  %50 = fmul float %43, %43
  %51 = fmul float %46, %46
  %52 = fadd float %50, %51
  %53 = fmul float %49, %49
  %54 = fadd float %52, %53
  %55 = fcmp ogt float %54, 1.000000e+00
  br i1 %55, label %bb.i99, label %invcont42

invcont42:                                        ; preds = %bb.i99
  %tmp2372 = bitcast float %43 to i32
  %tmp2373 = zext i32 %tmp2372 to i96
  %tmp2366 = bitcast float %46 to i32
  %tmp2367 = zext i32 %tmp2366 to i96
  %tmp2368 = shl nuw nsw i96 %tmp2367, 32
  %ins2370 = or i96 %tmp2368, %tmp2373
  %tmp2360 = bitcast float %49 to i32
  %tmp305 = zext i96 %ins2370 to i128
  %mask306 = and i128 %memtmp30.0, -79228162514264337593543950336
  %tmp299 = zext i32 %tmp2360 to i128
  %tmp300 = shl nuw nsw i128 %tmp299, 64
  %mask301 = or i128 %tmp300, %mask306
  %ins302 = or i128 %mask301, %tmp305
  %ins302.tr = trunc i128 %ins302 to i96
  %tmp2377 = lshr i96 %ins302.tr, 64
  %mask326 = and i512 %mask351599, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins327 = or i512 %mask326, 1343554297
  %tmp358 = trunc i96 %tmp2377 to i32
  %tmp359 = bitcast i32 %tmp358 to float
  br label %bb.outer.i

bb.outer.i:                                       ; preds = %bb9.i, %invcont42
  %mask351601 = phi i512 [ %ins327, %invcont42 ], [ %mask351600, %bb9.i ]
  %node_id.0.ph.i = phi i32 [ 0, %invcont42 ], [ %213, %bb9.i ]
  %sp.0.ph.i = phi i32 [ -1, %invcont42 ], [ %214, %bb9.i ]
  %tmp404.i = add i32 %sp.0.ph.i, 1
  %tmp809 = sext i32 %tmp404.i to i64
  %tmp812 = zext i32 %sp.0.ph.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb3.i, %bb.outer.i
  %indvar.i = phi i64 [ %indvar.next.i, %bb3.i ], [ 0, %bb.outer.i ]
  %node_id.0.i = phi i32 [ %91, %bb3.i ], [ %node_id.0.ph.i, %bb.outer.i ]
  %tmp810 = add i64 %tmp809, %indvar.i
  %scevgep.i = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp810
  %tmp813 = add i64 %tmp812, %indvar.i
  %sp.0.i = trunc i64 %tmp813 to i32
  %56 = shl nsw i32 %node_id.0.i, 3
  %57 = add nsw i32 %56, %32
  %58 = call float @llvm.trax.loadf(i32 %57, i32 2) nounwind
  %59 = call float @llvm.trax.loadf(i32 %57, i32 1) nounwind
  %60 = call float @llvm.trax.loadf(i32 %57, i32 0) nounwind
  %61 = call float @llvm.trax.loadf(i32 %57, i32 5) nounwind
  %62 = call float @llvm.trax.loadf(i32 %57, i32 4) nounwind
  %63 = call float @llvm.trax.loadf(i32 %57, i32 3) nounwind
  %64 = fsub float %60, %tmp397
  %65 = fdiv float %64, %43
  %66 = fsub float %63, %tmp397
  %67 = fdiv float %66, %43
  %68 = fcmp ogt float %65, %67
  %tx1.i.0.i = select i1 %68, float %67, float %65
  %tx2.i.0.i = select i1 %68, float %65, float %67
  %69 = fcmp ogt float %tx1.i.0.i, -1.000000e+10
  %tnear.i.0.i = select i1 %69, float %tx1.i.0.i, float -1.000000e+10
  %70 = fcmp olt float %tx2.i.0.i, 1.000000e+10
  %tfar.i.0.i = select i1 %70, float %tx2.i.0.i, float 1.000000e+10
  %71 = fcmp ogt float %tnear.i.0.i, %tfar.i.0.i
  %72 = fcmp olt float %tfar.i.0.i, 0.000000e+00
  %or.cond.i = or i1 %71, %72
  br i1 %or.cond.i, label %bb7.i, label %bb29.i.i

bb29.i.i:                                         ; preds = %bb.i
  %73 = fsub float %59, %tmp391
  %74 = fdiv float %73, %46
  %75 = fsub float %62, %tmp391
  %76 = fdiv float %75, %46
  %77 = fcmp ogt float %74, %76
  %ty1.i.0.i = select i1 %77, float %76, float %74
  %ty2.i.0.i = select i1 %77, float %74, float %76
  %78 = fcmp ogt float %ty1.i.0.i, %tnear.i.0.i
  %tnear.i.1.i = select i1 %78, float %ty1.i.0.i, float %tnear.i.0.i
  %79 = fcmp olt float %ty2.i.0.i, %tfar.i.0.i
  %tfar.i.1.i = select i1 %79, float %ty2.i.0.i, float %tfar.i.0.i
  %80 = fcmp ogt float %tnear.i.1.i, %tfar.i.1.i
  %81 = fcmp olt float %tfar.i.1.i, 0.000000e+00
  %or.cond1395.i = or i1 %80, %81
  br i1 %or.cond1395.i, label %bb7.i, label %bb62.i.i

bb62.i.i:                                         ; preds = %bb29.i.i
  %82 = fsub float %58, %tmp383
  %83 = fdiv float %82, %tmp359
  %84 = fsub float %61, %tmp383
  %85 = fdiv float %84, %tmp359
  %86 = fcmp ogt float %83, %85
  %tz1.i.0.i = select i1 %86, float %85, float %83
  %tz2.i.0.i = select i1 %86, float %83, float %85
  %87 = fcmp ogt float %tz1.i.0.i, %tnear.i.1.i
  %tnear.i.2.i = select i1 %87, float %tz1.i.0.i, float %tnear.i.1.i
  %88 = fcmp olt float %tz2.i.0.i, %tfar.i.1.i
  %tfar.i.2.i = select i1 %88, float %tz2.i.0.i, float %tfar.i.1.i
  %89 = fcmp ogt float %tnear.i.2.i, %tfar.i.2.i
  %90 = fcmp olt float %tfar.i.2.i, 0.000000e+00
  %or.cond1396.i = or i1 %89, %90
  br i1 %or.cond1396.i, label %bb7.i, label %bb1.i20

bb1.i20:                                          ; preds = %bb62.i.i
  %91 = call i32 @llvm.trax.loadi(i32 %57, i32 7) nounwind
  %92 = call i32 @llvm.trax.loadi(i32 %57, i32 6) nounwind
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %bb3.i, label %bb6.preheader.i

bb6.preheader.i:                                  ; preds = %bb1.i20
  %94 = icmp sgt i32 %92, 0
  br i1 %94, label %bb5.i21, label %bb7.i

bb3.i:                                            ; preds = %bb1.i20
  %95 = add nsw i32 %91, 1
  store i32 %95, i32* %scevgep.i, align 4
  %indvar.next.i = add i64 %indvar.i, 1
  br label %bb.i

bb5.i21:                                          ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i
  %mask351596 = phi i512 [ %mask351595, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %mask351601, %bb6.preheader.i ]
  %storemerge388.i = phi i32 [ %209, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ 0, %bb6.preheader.i ]
  %tmp816 = mul i32 %storemerge388.i, 11
  %tmp396.i = add i32 %91, %tmp816
  %96 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %97 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %98 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %99 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %100 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %101 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %102 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %103 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %104 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %105 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %106 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %107 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %108 = mul nsw i32 %105, 25
  %109 = add nsw i32 %107, %108
  %110 = call float @llvm.trax.loadf(i32 %109, i32 6) nounwind
  %111 = call float @llvm.trax.loadf(i32 %109, i32 5) nounwind
  %112 = call float @llvm.trax.loadf(i32 %109, i32 4) nounwind
  %113 = fsub float %98, %104
  %114 = fsub float %97, %103
  %115 = fsub float %96, %102
  %116 = fsub float %101, %104
  %117 = fsub float %100, %103
  %118 = fsub float %99, %102
  %119 = fmul float %114, %118
  %120 = fmul float %117, %115
  %121 = fsub float %119, %120
  %122 = fmul float %116, %115
  %123 = fmul float %113, %118
  %124 = fsub float %122, %123
  %125 = fmul float %117, %113
  %126 = fmul float %116, %114
  %127 = fsub float %125, %126
  %128 = fmul float %121, %121
  %129 = fmul float %124, %124
  %130 = fadd float %128, %129
  %131 = fmul float %127, %127
  %132 = fadd float %130, %131
  %133 = call float @llvm.trax.invsqrt(float %132) nounwind
  %134 = fmul float %46, %118
  %135 = fmul float %117, %tmp359
  %136 = fsub float %134, %135
  %137 = fmul float %116, %tmp359
  %138 = fmul float %43, %118
  %139 = fsub float %137, %138
  %140 = fmul float %117, %43
  %141 = fmul float %116, %46
  %142 = fsub float %140, %141
  %143 = fmul float %136, %113
  %144 = fadd float %143, 0.000000e+00
  %145 = fmul float %139, %114
  %146 = fadd float %145, %144
  %147 = fmul float %142, %115
  %148 = fadd float %147, %146
  %149 = fdiv float 1.000000e+00, %148
  %150 = fsub float %tmp397, %104
  %151 = fsub float %tmp391, %103
  %152 = fsub float %tmp383, %102
  %153 = fmul float %136, %150
  %154 = fadd float %153, 0.000000e+00
  %155 = fmul float %139, %151
  %156 = fadd float %155, %154
  %157 = fmul float %142, %152
  %158 = fadd float %157, %156
  %159 = fmul float %158, %149
  %160 = fcmp olt float %159, 0.000000e+00
  %161 = fcmp ogt float %159, 1.000000e+00
  %or.cond1397.i = or i1 %160, %161
  br i1 %or.cond1397.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb73.i.i

bb73.i.i:                                         ; preds = %bb5.i21
  %162 = fmul float %151, %115
  %163 = fmul float %114, %152
  %164 = fsub float %162, %163
  %165 = fmul float %113, %152
  %166 = fmul float %150, %115
  %167 = fsub float %165, %166
  %168 = fmul float %114, %150
  %169 = fmul float %113, %151
  %170 = fsub float %168, %169
  %171 = fmul float %164, %43
  %172 = fadd float %171, 0.000000e+00
  %173 = fmul float %167, %46
  %174 = fadd float %173, %172
  %175 = fmul float %170, %tmp359
  %176 = fadd float %175, %174
  %177 = fmul float %176, %149
  %178 = fcmp olt float %177, 0.000000e+00
  br i1 %178, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb94.i55.i

bb94.i55.i:                                       ; preds = %bb73.i.i
  %179 = fadd float %177, %159
  %180 = fcmp ogt float %179, 1.000000e+00
  br i1 %180, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb96.i.i

bb96.i.i:                                         ; preds = %bb94.i55.i
  %181 = fmul float %164, %116
  %182 = fadd float %181, 0.000000e+00
  %183 = fmul float %167, %117
  %184 = fadd float %183, %182
  %185 = fmul float %170, %118
  %186 = fadd float %185, %184
  %187 = fmul float %186, %149
  %188 = fcmp ule float %187, 0.000000e+00
  %189 = fcmp olt float %187, 0x3F50624DE0000000
  %or.cond1398.i = or i1 %188, %189
  %190 = fcmp oeq float %187, 1.000000e+10
  %or.cond1399.i = or i1 %or.cond1398.i, %190
  br i1 %or.cond1399.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb96.i.i
  %tmp316 = trunc i512 %mask351596 to i32
  %tmp317 = bitcast i32 %tmp316 to float
  %191 = fcmp ogt float %tmp317, %187
  br i1 %191, label %bb3.i.i.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

bb3.i.i.i:                                        ; preds = %bb2.i.i.i
  %tmp311 = bitcast float %187 to i32
  %tmp312 = zext i32 %tmp311 to i512
  %192 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %193 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %194 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %195 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %196 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %197 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %198 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %199 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %200 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %201 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %202 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %tmp369.i = bitcast float %194 to i32
  %tmp370.i = zext i32 %tmp369.i to i480
  %tmp301.i = bitcast float %193 to i32
  %tmp302.i = zext i32 %tmp301.i to i480
  %tmp303.i = shl nuw nsw i480 %tmp302.i, 32
  %tmp295.i = bitcast float %192 to i32
  %tmp296.i = zext i32 %tmp295.i to i480
  %tmp297.i = shl nuw nsw i480 %tmp296.i, 64
  %tmp363.i = bitcast float %197 to i32
  %tmp364.i = zext i32 %tmp363.i to i480
  %tmp365.i = shl nuw nsw i480 %tmp364.i, 96
  %tmp357.i = bitcast float %196 to i32
  %tmp358.i = zext i32 %tmp357.i to i480
  %tmp359.i = shl nuw nsw i480 %tmp358.i, 128
  %tmp351.i = bitcast float %195 to i32
  %tmp352.i = zext i32 %tmp351.i to i480
  %tmp353.i = shl nuw nsw i480 %tmp352.i, 160
  %tmp345.i = bitcast float %200 to i32
  %tmp346.i = zext i32 %tmp345.i to i480
  %tmp347.i = shl nuw nsw i480 %tmp346.i, 192
  %tmp339.i = bitcast float %199 to i32
  %tmp340.i = zext i32 %tmp339.i to i480
  %tmp341.i = shl nuw nsw i480 %tmp340.i, 224
  %tmp333.i = bitcast float %198 to i32
  %tmp334.i = zext i32 %tmp333.i to i480
  %tmp335.i = shl nuw nsw i480 %tmp334.i, 256
  %tmp290.i = zext i32 %202 to i480
  %tmp291.i = shl nuw nsw i480 %tmp290.i, 288
  %203 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %204 = mul nsw i32 %201, 25
  %205 = add nsw i32 %203, %204
  %206 = call float @llvm.trax.loadf(i32 %205, i32 6) nounwind
  %207 = call float @llvm.trax.loadf(i32 %205, i32 5) nounwind
  %208 = call float @llvm.trax.loadf(i32 %205, i32 4) nounwind
  %tmp325.i = bitcast float %208 to i32
  %tmp326.i = zext i32 %tmp325.i to i480
  %tmp327.i = shl nuw nsw i480 %tmp326.i, 320
  %tmp317.i = bitcast float %207 to i32
  %tmp318.i = zext i32 %tmp317.i to i480
  %tmp319.i = shl nuw nsw i480 %tmp318.i, 352
  %tmp309.i = bitcast float %206 to i32
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
  %tmp306 = zext i480 %ins285.i to i512
  %tmp307 = shl nuw i512 %tmp306, 32
  %ins309 = or i512 %tmp307, %tmp312
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i: ; preds = %bb3.i.i.i, %bb2.i.i.i, %bb96.i.i, %bb94.i55.i, %bb73.i.i, %bb5.i21
  %mask351595 = phi i512 [ %ins309, %bb3.i.i.i ], [ %mask351596, %bb2.i.i.i ], [ %mask351596, %bb96.i.i ], [ %mask351596, %bb94.i55.i ], [ %mask351596, %bb73.i.i ], [ %mask351596, %bb5.i21 ]
  %209 = add nsw i32 %storemerge388.i, 1
  %exitcond815 = icmp eq i32 %209, %92
  br i1 %exitcond815, label %bb7.i, label %bb5.i21

bb7.i:                                            ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i, %bb62.i.i, %bb29.i.i, %bb.i
  %mask351600 = phi i512 [ %mask351601, %bb6.preheader.i ], [ %mask351601, %bb.i ], [ %mask351601, %bb29.i.i ], [ %mask351601, %bb62.i.i ], [ %mask351595, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ]
  %210 = icmp slt i32 %sp.0.i, 0
  br i1 %210, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit, label %bb9.i

bb9.i:                                            ; preds = %bb7.i
  %211 = sext i32 %sp.0.i to i64
  %212 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %211
  %213 = load i32* %212, align 4
  %214 = add nsw i32 %sp.0.i, -1
  br label %bb.outer.i

_ZN3BVH9intersectER9HitRecordR3Ray.exit:          ; preds = %bb7.i
  %tmp323 = trunc i512 %mask351600 to i32
  %tmp324 = bitcast i32 %tmp323 to float
  %215 = fcmp olt float %tmp324, 1.000000e+10
  %indvar.next822 = add i32 %indvar821, 1
  br i1 %215, label %invcont61, label %bb69

invcont61:                                        ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %tmp319 = lshr i512 %mask351600, 480
  %tmp320 = trunc i512 %tmp319 to i32
  %tmp321 = bitcast i32 %tmp320 to float
  %216 = fmul float %43, %tmp324
  %217 = fmul float %46, %tmp324
  %218 = fmul float %tmp359, %tmp324
  %tmp64.i = bitcast float %216 to i32
  %tmp58.i = bitcast float %217 to i32
  %tmp276 = bitcast float %218 to i32
  store float %216, float* %.0325, align 4
  store float %217, float* %.1327, align 4
  store float %218, float* %.2329, align 4
  store float 0.000000e+00, float* %.1.0, align 4
  store float 0.000000e+00, float* %.1.1, align 4
  store float 0.000000e+00, float* %.1.2, align 4
  store float %tmp321, float* %.2.0, align 4
  store float %tmp321, float* %.2.1, align 4
  store float %tmp321, float* %.2.2, align 4
  %indvar.next827 = add i64 %indvar826, 1
  br label %bb68.outer

bb68.outer:                                       ; preds = %bb68.outer.preheader, %invcont61
  %indvar826 = phi i64 [ 0, %bb68.outer.preheader ], [ %indvar.next827, %invcont61 ]
  %mask351597 = phi i512 [ %mask351598738, %bb68.outer.preheader ], [ %mask351600, %invcont61 ]
  %memtmp30.0.ph = phi i128 [ %memtmp30.1739, %bb68.outer.preheader ], [ %ins302, %invcont61 ]
  %ray_origin.0.ph.off0 = phi i32 [ %ray_origin.1.off0740, %bb68.outer.preheader ], [ %tmp64.i, %invcont61 ]
  %ray_origin.0.ph.off32 = phi i32 [ %ray_origin.1.off32741, %bb68.outer.preheader ], [ %tmp58.i, %invcont61 ]
  %ray_origin.0.ph.off64 = phi i32 [ %ray_origin.1.off64742, %bb68.outer.preheader ], [ %tmp276, %invcont61 ]
  %bounces.0.ph = phi i32 [ 0, %bb68.outer.preheader ], [ %tmp824, %invcont61 ]
  %tmp829 = add i64 %tmp828, %indvar826
  %count.0.ph = trunc i64 %tmp829 to i32
  %tmp832 = add i64 %tmp831, %indvar826
  %.2.2 = getelementptr [1000 x %struct.Photon]* %33, i64 0, i64 %tmp832, i32 2, i64 2
  %.2.1 = getelementptr [1000 x %struct.Photon]* %33, i64 0, i64 %tmp832, i32 2, i64 1
  %.2.0 = getelementptr [1000 x %struct.Photon]* %33, i64 0, i64 %tmp832, i32 2, i64 0
  %.1.2 = getelementptr [1000 x %struct.Photon]* %33, i64 0, i64 %tmp832, i32 1, i32 2
  %.1.1 = getelementptr [1000 x %struct.Photon]* %33, i64 0, i64 %tmp832, i32 1, i32 1
  %.1.0 = getelementptr [1000 x %struct.Photon]* %33, i64 0, i64 %tmp832, i32 1, i32 0
  %.2329 = getelementptr [1000 x %struct.Photon]* %33, i64 0, i64 %tmp832, i32 0, i32 2
  %.1327 = getelementptr [1000 x %struct.Photon]* %33, i64 0, i64 %tmp832, i32 0, i32 1
  %.0325 = getelementptr [1000 x %struct.Photon]* %33, i64 0, i64 %tmp832, i32 0, i32 0
  %tmp397 = bitcast i32 %ray_origin.0.ph.off0 to float
  %tmp391 = bitcast i32 %ray_origin.0.ph.off32 to float
  %tmp383 = bitcast i32 %ray_origin.0.ph.off64 to float
  %tmp823 = add i32 %bounces.0.ph, 1
  br label %bb69

bb69:                                             ; preds = %bb68.outer, %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %indvar821 = phi i32 [ 0, %bb68.outer ], [ %indvar.next822, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %mask351599 = phi i512 [ %mask351597, %bb68.outer ], [ %mask351600, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %memtmp30.0 = phi i128 [ %memtmp30.0.ph, %bb68.outer ], [ %ins302, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %tmp824 = add i32 %tmp823, %indvar821
  %bounces.0 = add i32 %bounces.0.ph, %indvar821
  %219 = icmp slt i32 %bounces.0, 3
  br i1 %219, label %bb.i99, label %bb71.loopexit

bb71.loopexit:                                    ; preds = %bb69
  %220 = icmp slt i32 %count.0.ph, 1000
  br i1 %220, label %bb68.outer.preheader, label %bb72

bb68.outer.preheader:                             ; preds = %bb71.loopexit, %invcont18
  %count.1743 = phi i32 [ 0, %invcont18 ], [ %count.0.ph, %bb71.loopexit ]
  %ray_origin.1.off64742 = phi i32 [ %tmp402, %invcont18 ], [ %ray_origin.0.ph.off64, %bb71.loopexit ]
  %ray_origin.1.off32741 = phi i32 [ %tmp408, %invcont18 ], [ %ray_origin.0.ph.off32, %bb71.loopexit ]
  %ray_origin.1.off0740 = phi i32 [ %tmp414, %invcont18 ], [ %ray_origin.0.ph.off0, %bb71.loopexit ]
  %memtmp30.1739 = phi i128 [ undef, %invcont18 ], [ %memtmp30.0, %bb71.loopexit ]
  %mask351598738 = phi i512 [ undef, %invcont18 ], [ %mask351599, %bb71.loopexit ]
  %tmp828 = zext i32 %count.1743 to i64
  %tmp831 = sext i32 %count.1743 to i64
  br label %bb68.outer

bb72:                                             ; preds = %bb71.loopexit
  invoke fastcc void @_ZN9PhotonMap8generateEP6PhotonS1_ii(%struct.Photon* %.sub, %struct.Photon* %.sub2737, i32 %count.0.ph, i32 0)
          to label %invcont75 unwind label %Unwind

invcont75:                                        ; preds = %bb72
  %221 = call i32 @llvm.trax.atominc(i32 0)
  %222 = mul nsw i32 %2, %1
  %223 = sitofp i32 %1 to float
  %224 = fdiv float %223, -2.000000e+00
  %225 = sitofp i32 %2 to float
  %226 = fdiv float %225, -2.000000e+00
  %227 = getelementptr inbounds [1000 x %struct.Photon]* %nearest.i, i64 0, i64 0
  %228 = sitofp i32 %count.0.ph to double
  %229 = fmul double %228, 0x3FF8A14D4A15A4D3
  %230 = icmp sgt i32 %222, %221
  br i1 %230, label %bb76.lr.ph, label %return

bb76.lr.ph:                                       ; preds = %invcont75
  %tmp575 = bitcast float %11 to i32
  %tmp576 = zext i32 %tmp575 to i192
  %tmp530 = bitcast float %12 to i32
  %tmp531 = zext i32 %tmp530 to i192
  %tmp532 = shl nuw nsw i192 %tmp531, 32
  %tmp520 = bitcast float %13 to i32
  %tmp521 = zext i32 %tmp520 to i192
  %tmp522 = shl nuw nsw i192 %tmp521, 64
  %mask523 = or i192 %tmp532, %tmp576
  %mask569 = or i192 %mask523, %tmp522
  %tmp2084 = zext i32 %tmp575 to i96
  %tmp2079 = trunc i192 %tmp532 to i96
  %ins2081 = or i96 %tmp2079, %tmp2084
  %tmp1137 = zext i96 %ins2081 to i128
  %tmp1132 = trunc i192 %tmp522 to i128
  %mask1133 = or i128 %tmp1137, %tmp1132
  br label %bb76

bb76:                                             ; preds = %invcont115, %bb76.lr.ph
  %storemerge2721 = phi i32 [ %221, %bb76.lr.ph ], [ %515, %invcont115 ]
  %memtmp.i149.1720 = phi i128 [ undef, %bb76.lr.ph ], [ %ins2546, %invcont115 ]
  %memtmp7.i.2712 = phi i128 [ undef, %bb76.lr.ph ], [ %memtmp7.i.0, %invcont115 ]
  %memtmp27.i.2710 = phi i128 [ undef, %bb76.lr.ph ], [ %memtmp27.i.0, %invcont115 ]
  %memtmp49.i.3708 = phi i128 [ undef, %bb76.lr.ph ], [ %memtmp49.i.1, %invcont115 ]
  %color.i.2.2706 = phi float [ undef, %bb76.lr.ph ], [ %color.i.2.0, %invcont115 ]
  %color.i.1.2705 = phi float [ undef, %bb76.lr.ph ], [ %color.i.1.0, %invcont115 ]
  %color.i.0.2704 = phi float [ undef, %bb76.lr.ph ], [ %color.i.0.0, %invcont115 ]
  %mask303604703 = phi i512 [ undef, %bb76.lr.ph ], [ %mask303606, %invcont115 ]
  %231 = sdiv i32 %storemerge2721, %1
  %232 = srem i32 %storemerge2721, %1
  %233 = sitofp i32 %232 to float
  %234 = fadd float %233, %224
  %235 = fadd float %234, 5.000000e-01
  %236 = fmul float %235, 2.000000e+00
  %237 = fdiv float %236, %223
  %238 = sitofp i32 %231 to float
  %239 = fadd float %238, %226
  %240 = fadd float %239, 5.000000e-01
  %241 = fmul float %240, 2.000000e+00
  %242 = fdiv float %241, %225
  br label %bb83

bb83:                                             ; preds = %invcont94, %bb76
  %storemerge3702 = phi i32 [ 0, %bb76 ], [ %504, %invcont94 ]
  %memtmp.i149.0701 = phi i128 [ %memtmp.i149.1720, %bb76 ], [ %ins2546, %invcont94 ]
  %memtmp7.i.1693 = phi i128 [ %memtmp7.i.2712, %bb76 ], [ %memtmp7.i.0, %invcont94 ]
  %memtmp27.i.1691 = phi i128 [ %memtmp27.i.2710, %bb76 ], [ %memtmp27.i.0, %invcont94 ]
  %memtmp49.i.2689 = phi i128 [ %memtmp49.i.3708, %bb76 ], [ %memtmp49.i.1, %invcont94 ]
  %color.i.2.1687 = phi float [ %color.i.2.2706, %bb76 ], [ %color.i.2.0, %invcont94 ]
  %color.i.1.1686 = phi float [ %color.i.1.2705, %bb76 ], [ %color.i.1.0, %invcont94 ]
  %color.i.0.1685 = phi float [ %color.i.0.2704, %bb76 ], [ %color.i.0.0, %invcont94 ]
  %mask303605684 = phi i512 [ %mask303604703, %bb76 ], [ %mask303606, %invcont94 ]
  %243 = call float @llvm.trax.rand()
  %244 = call float @llvm.trax.rand()
  %245 = fadd float %243, -5.000000e-01
  %246 = fmul float %245, 2.000000e+00
  %247 = fadd float %244, -5.000000e-01
  %248 = fmul float %247, 2.000000e+00
  %249 = fmul float %246, %4
  %250 = fmul float %248, %5
  %251 = fadd float %242, %250
  %252 = fadd float %237, %249
  %253 = fmul float %27, %251
  %254 = fmul float %28, %251
  %255 = fmul float %29, %251
  %tmp2691 = bitcast float %253 to i32
  %tmp2692 = zext i32 %tmp2691 to i96
  %tmp2685 = bitcast float %254 to i32
  %tmp2686 = zext i32 %tmp2685 to i96
  %tmp2687 = shl nuw nsw i96 %tmp2686, 32
  %ins2689 = or i96 %tmp2687, %tmp2692
  %tmp2679 = bitcast float %255 to i32
  %tmp2549 = zext i96 %ins2689 to i128
  %mask2550 = and i128 %memtmp.i149.0701, -79228162514264337593543950336
  %tmp2543 = zext i32 %tmp2679 to i128
  %tmp2544 = shl nuw nsw i128 %tmp2543, 64
  %mask2545 = or i128 %tmp2544, %mask2550
  %ins2546 = or i128 %mask2545, %tmp2549
  %ins2546.tr = trunc i128 %ins2546 to i96
  %256 = fmul float %23, %252
  %257 = fmul float %24, %252
  %258 = fmul float %25, %252
  %tmp2573 = lshr i96 %ins2546.tr, 64
  %tmp2574 = trunc i96 %tmp2573 to i32
  %tmp2575 = bitcast i32 %tmp2574 to float
  %259 = fadd float %253, %256
  %260 = fadd float %254, %257
  %261 = fadd float %258, %tmp2575
  %262 = fadd float %259, %19
  %263 = fadd float %260, %20
  %264 = fadd float %21, %261
  %265 = fmul float %262, %262
  %266 = fmul float %263, %263
  %267 = fadd float %265, %266
  %268 = fmul float %264, %264
  %269 = fadd float %267, %268
  %270 = call float @llvm.trax.invsqrt(float %269) nounwind
  %271 = fdiv float 1.000000e+00, %270
  %272 = fdiv float %264, %271
  %273 = fdiv float %263, %271
  %274 = fdiv float %262, %271
  %tmp566 = bitcast float %274 to i32
  %tmp567 = zext i32 %tmp566 to i192
  %tmp568 = shl nuw nsw i192 %tmp567, 96
  %tmp554 = bitcast float %273 to i32
  %tmp555 = zext i32 %tmp554 to i192
  %tmp556 = shl nuw nsw i192 %tmp555, 128
  %tmp540 = bitcast float %272 to i32
  %tmp541 = zext i32 %tmp540 to i192
  %tmp542 = shl nuw i192 %tmp541, 160
  %mask557 = or i192 %mask569, %tmp556
  %mask543 = or i192 %mask557, %tmp568
  %ins544 = or i192 %mask543, %tmp542
  %mask227 = and i512 %mask303605684, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins228 = or i512 %mask227, 1343554297
  %tmp474 = lshr i192 %ins544, 160
  %tmp475 = trunc i192 %tmp474 to i32
  %tmp476 = bitcast i32 %tmp475 to float
  br label %bb.outer.i48

bb.outer.i48:                                     ; preds = %bb9.i148, %bb83
  %mask303607 = phi i512 [ %ins228, %bb83 ], [ %mask303606, %bb9.i148 ]
  %node_id.0.ph.i43 = phi i32 [ 0, %bb83 ], [ %432, %bb9.i148 ]
  %sp.0.ph.i44 = phi i32 [ -1, %bb83 ], [ %433, %bb9.i148 ]
  %tmp404.i46 = add i32 %sp.0.ph.i44, 1
  %tmp794 = sext i32 %tmp404.i46 to i64
  %tmp797 = zext i32 %sp.0.ph.i44 to i64
  br label %bb.i60

bb.i60:                                           ; preds = %bb3.i76, %bb.outer.i48
  %indvar.i49 = phi i64 [ %indvar.next.i75, %bb3.i76 ], [ 0, %bb.outer.i48 ]
  %node_id.0.i50 = phi i32 [ %310, %bb3.i76 ], [ %node_id.0.ph.i43, %bb.outer.i48 ]
  %tmp795 = add i64 %tmp794, %indvar.i49
  %scevgep.i54 = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp795
  %tmp798 = add i64 %tmp797, %indvar.i49
  %sp.0.i52 = trunc i64 %tmp798 to i32
  %275 = shl nsw i32 %node_id.0.i50, 3
  %276 = add nsw i32 %275, %32
  %277 = call float @llvm.trax.loadf(i32 %276, i32 2) nounwind
  %278 = call float @llvm.trax.loadf(i32 %276, i32 1) nounwind
  %279 = call float @llvm.trax.loadf(i32 %276, i32 0) nounwind
  %280 = call float @llvm.trax.loadf(i32 %276, i32 5) nounwind
  %281 = call float @llvm.trax.loadf(i32 %276, i32 4) nounwind
  %282 = call float @llvm.trax.loadf(i32 %276, i32 3) nounwind
  %283 = fsub float %279, %11
  %284 = fdiv float %283, %274
  %285 = fsub float %282, %11
  %286 = fdiv float %285, %274
  %287 = fcmp ogt float %284, %286
  %tx1.i.0.i55 = select i1 %287, float %286, float %284
  %tx2.i.0.i56 = select i1 %287, float %284, float %286
  %288 = fcmp ogt float %tx1.i.0.i55, -1.000000e+10
  %tnear.i.0.i57 = select i1 %288, float %tx1.i.0.i55, float -1.000000e+10
  %289 = fcmp olt float %tx2.i.0.i56, 1.000000e+10
  %tfar.i.0.i58 = select i1 %289, float %tx2.i.0.i56, float 1.000000e+10
  %290 = fcmp ogt float %tnear.i.0.i57, %tfar.i.0.i58
  %291 = fcmp olt float %tfar.i.0.i58, 0.000000e+00
  %or.cond.i59 = or i1 %290, %291
  br i1 %or.cond.i59, label %bb7.i147, label %bb29.i.i66

bb29.i.i66:                                       ; preds = %bb.i60
  %292 = fsub float %278, %12
  %293 = fdiv float %292, %273
  %294 = fsub float %281, %12
  %295 = fdiv float %294, %273
  %296 = fcmp ogt float %293, %295
  %ty1.i.0.i61 = select i1 %296, float %295, float %293
  %ty2.i.0.i62 = select i1 %296, float %293, float %295
  %297 = fcmp ogt float %ty1.i.0.i61, %tnear.i.0.i57
  %tnear.i.1.i63 = select i1 %297, float %ty1.i.0.i61, float %tnear.i.0.i57
  %298 = fcmp olt float %ty2.i.0.i62, %tfar.i.0.i58
  %tfar.i.1.i64 = select i1 %298, float %ty2.i.0.i62, float %tfar.i.0.i58
  %299 = fcmp ogt float %tnear.i.1.i63, %tfar.i.1.i64
  %300 = fcmp olt float %tfar.i.1.i64, 0.000000e+00
  %or.cond1395.i65 = or i1 %299, %300
  br i1 %or.cond1395.i65, label %bb7.i147, label %bb62.i.i72

bb62.i.i72:                                       ; preds = %bb29.i.i66
  %301 = fsub float %277, %13
  %302 = fdiv float %301, %tmp476
  %303 = fsub float %280, %13
  %304 = fdiv float %303, %tmp476
  %305 = fcmp ogt float %302, %304
  %tz1.i.0.i67 = select i1 %305, float %304, float %302
  %tz2.i.0.i68 = select i1 %305, float %302, float %304
  %306 = fcmp ogt float %tz1.i.0.i67, %tnear.i.1.i63
  %tnear.i.2.i69 = select i1 %306, float %tz1.i.0.i67, float %tnear.i.1.i63
  %307 = fcmp olt float %tz2.i.0.i68, %tfar.i.1.i64
  %tfar.i.2.i70 = select i1 %307, float %tz2.i.0.i68, float %tfar.i.1.i64
  %308 = fcmp ogt float %tnear.i.2.i69, %tfar.i.2.i70
  %309 = fcmp olt float %tfar.i.2.i70, 0.000000e+00
  %or.cond1396.i71 = or i1 %308, %309
  br i1 %or.cond1396.i71, label %bb7.i147, label %bb1.i73

bb1.i73:                                          ; preds = %bb62.i.i72
  %310 = call i32 @llvm.trax.loadi(i32 %276, i32 7) nounwind
  %311 = call i32 @llvm.trax.loadi(i32 %276, i32 6) nounwind
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %bb3.i76, label %bb6.preheader.i74

bb6.preheader.i74:                                ; preds = %bb1.i73
  %313 = icmp sgt i32 %311, 0
  br i1 %313, label %bb5.i87, label %bb7.i147

bb3.i76:                                          ; preds = %bb1.i73
  %314 = add nsw i32 %310, 1
  store i32 %314, i32* %scevgep.i54, align 4
  %indvar.next.i75 = add i64 %indvar.i49, 1
  br label %bb.i60

bb5.i87:                                          ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i146, %bb6.preheader.i74
  %mask303603 = phi i512 [ %mask303602, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i146 ], [ %mask303607, %bb6.preheader.i74 ]
  %storemerge388.i77 = phi i32 [ %428, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i146 ], [ 0, %bb6.preheader.i74 ]
  %tmp788 = mul i32 %storemerge388.i77, 11
  %tmp396.i79 = add i32 %310, %tmp788
  %315 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 2) nounwind
  %316 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 1) nounwind
  %317 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 0) nounwind
  %318 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 5) nounwind
  %319 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 4) nounwind
  %320 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 3) nounwind
  %321 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 8) nounwind
  %322 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 7) nounwind
  %323 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 6) nounwind
  %324 = call i32 @llvm.trax.loadi(i32 %tmp396.i79, i32 10) nounwind
  %325 = call i32 @llvm.trax.loadi(i32 %tmp396.i79, i32 9) nounwind
  %326 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %327 = mul nsw i32 %324, 25
  %328 = add nsw i32 %326, %327
  %329 = call float @llvm.trax.loadf(i32 %328, i32 6) nounwind
  %330 = call float @llvm.trax.loadf(i32 %328, i32 5) nounwind
  %331 = call float @llvm.trax.loadf(i32 %328, i32 4) nounwind
  %332 = fsub float %317, %323
  %333 = fsub float %316, %322
  %334 = fsub float %315, %321
  %335 = fsub float %320, %323
  %336 = fsub float %319, %322
  %337 = fsub float %318, %321
  %338 = fmul float %333, %337
  %339 = fmul float %336, %334
  %340 = fsub float %338, %339
  %341 = fmul float %335, %334
  %342 = fmul float %332, %337
  %343 = fsub float %341, %342
  %344 = fmul float %336, %332
  %345 = fmul float %335, %333
  %346 = fsub float %344, %345
  %347 = fmul float %340, %340
  %348 = fmul float %343, %343
  %349 = fadd float %347, %348
  %350 = fmul float %346, %346
  %351 = fadd float %349, %350
  %352 = call float @llvm.trax.invsqrt(float %351) nounwind
  %353 = fmul float %273, %337
  %354 = fmul float %336, %tmp476
  %355 = fsub float %353, %354
  %356 = fmul float %335, %tmp476
  %357 = fmul float %274, %337
  %358 = fsub float %356, %357
  %359 = fmul float %336, %274
  %360 = fmul float %335, %273
  %361 = fsub float %359, %360
  %362 = fmul float %355, %332
  %363 = fadd float %362, 0.000000e+00
  %364 = fmul float %358, %333
  %365 = fadd float %364, %363
  %366 = fmul float %361, %334
  %367 = fadd float %366, %365
  %368 = fdiv float 1.000000e+00, %367
  %369 = fsub float %11, %323
  %370 = fsub float %12, %322
  %371 = fsub float %13, %321
  %372 = fmul float %355, %369
  %373 = fadd float %372, 0.000000e+00
  %374 = fmul float %358, %370
  %375 = fadd float %374, %373
  %376 = fmul float %361, %371
  %377 = fadd float %376, %375
  %378 = fmul float %377, %368
  %379 = fcmp olt float %378, 0.000000e+00
  %380 = fcmp ogt float %378, 1.000000e+00
  %or.cond1397.i86 = or i1 %379, %380
  br i1 %or.cond1397.i86, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i146, label %bb73.i.i88

bb73.i.i88:                                       ; preds = %bb5.i87
  %381 = fmul float %370, %334
  %382 = fmul float %333, %371
  %383 = fsub float %381, %382
  %384 = fmul float %332, %371
  %385 = fmul float %369, %334
  %386 = fsub float %384, %385
  %387 = fmul float %333, %369
  %388 = fmul float %332, %370
  %389 = fsub float %387, %388
  %390 = fmul float %383, %274
  %391 = fadd float %390, 0.000000e+00
  %392 = fmul float %386, %273
  %393 = fadd float %392, %391
  %394 = fmul float %389, %tmp476
  %395 = fadd float %394, %393
  %396 = fmul float %395, %368
  %397 = fcmp olt float %396, 0.000000e+00
  br i1 %397, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i146, label %bb94.i55.i89

bb94.i55.i89:                                     ; preds = %bb73.i.i88
  %398 = fadd float %396, %378
  %399 = fcmp ogt float %398, 1.000000e+00
  br i1 %399, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i146, label %bb96.i.i92

bb96.i.i92:                                       ; preds = %bb94.i55.i89
  %400 = fmul float %383, %335
  %401 = fadd float %400, 0.000000e+00
  %402 = fmul float %386, %336
  %403 = fadd float %402, %401
  %404 = fmul float %389, %337
  %405 = fadd float %404, %403
  %406 = fmul float %405, %368
  %407 = fcmp ule float %406, 0.000000e+00
  %408 = fcmp olt float %406, 0x3F50624DE0000000
  %or.cond1398.i90 = or i1 %407, %408
  %409 = fcmp oeq float %406, 1.000000e+10
  %or.cond1399.i91 = or i1 %or.cond1398.i90, %409
  br i1 %or.cond1399.i91, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i146, label %bb2.i.i.i93

bb2.i.i.i93:                                      ; preds = %bb96.i.i92
  %tmp221 = trunc i512 %mask303603 to i32
  %tmp222 = bitcast i32 %tmp221 to float
  %410 = fcmp ogt float %tmp222, %406
  br i1 %410, label %bb3.i.i.i144, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i146

bb3.i.i.i144:                                     ; preds = %bb2.i.i.i93
  %tmp216 = bitcast float %406 to i32
  %tmp217 = zext i32 %tmp216 to i512
  %411 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 2) nounwind
  %412 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 1) nounwind
  %413 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 0) nounwind
  %414 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 5) nounwind
  %415 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 4) nounwind
  %416 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 3) nounwind
  %417 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 8) nounwind
  %418 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 7) nounwind
  %419 = call float @llvm.trax.loadf(i32 %tmp396.i79, i32 6) nounwind
  %420 = call i32 @llvm.trax.loadi(i32 %tmp396.i79, i32 10) nounwind
  %421 = call i32 @llvm.trax.loadi(i32 %tmp396.i79, i32 9) nounwind
  %tmp369.i94 = bitcast float %413 to i32
  %tmp370.i95 = zext i32 %tmp369.i94 to i480
  %tmp301.i96 = bitcast float %412 to i32
  %tmp302.i97 = zext i32 %tmp301.i96 to i480
  %tmp303.i98 = shl nuw nsw i480 %tmp302.i97, 32
  %tmp295.i99 = bitcast float %411 to i32
  %tmp296.i100 = zext i32 %tmp295.i99 to i480
  %tmp297.i101 = shl nuw nsw i480 %tmp296.i100, 64
  %tmp363.i102 = bitcast float %416 to i32
  %tmp364.i103 = zext i32 %tmp363.i102 to i480
  %tmp365.i104 = shl nuw nsw i480 %tmp364.i103, 96
  %tmp357.i105 = bitcast float %415 to i32
  %tmp358.i106 = zext i32 %tmp357.i105 to i480
  %tmp359.i107 = shl nuw nsw i480 %tmp358.i106, 128
  %tmp351.i108 = bitcast float %414 to i32
  %tmp352.i109 = zext i32 %tmp351.i108 to i480
  %tmp353.i110 = shl nuw nsw i480 %tmp352.i109, 160
  %tmp345.i111 = bitcast float %419 to i32
  %tmp346.i112 = zext i32 %tmp345.i111 to i480
  %tmp347.i113 = shl nuw nsw i480 %tmp346.i112, 192
  %tmp339.i114 = bitcast float %418 to i32
  %tmp340.i115 = zext i32 %tmp339.i114 to i480
  %tmp341.i116 = shl nuw nsw i480 %tmp340.i115, 224
  %tmp333.i117 = bitcast float %417 to i32
  %tmp334.i118 = zext i32 %tmp333.i117 to i480
  %tmp335.i119 = shl nuw nsw i480 %tmp334.i118, 256
  %tmp290.i120 = zext i32 %421 to i480
  %tmp291.i121 = shl nuw nsw i480 %tmp290.i120, 288
  %422 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %423 = mul nsw i32 %420, 25
  %424 = add nsw i32 %422, %423
  %425 = call float @llvm.trax.loadf(i32 %424, i32 6) nounwind
  %426 = call float @llvm.trax.loadf(i32 %424, i32 5) nounwind
  %427 = call float @llvm.trax.loadf(i32 %424, i32 4) nounwind
  %tmp325.i122 = bitcast float %427 to i32
  %tmp326.i123 = zext i32 %tmp325.i122 to i480
  %tmp327.i124 = shl nuw nsw i480 %tmp326.i123, 320
  %tmp317.i125 = bitcast float %426 to i32
  %tmp318.i126 = zext i32 %tmp317.i125 to i480
  %tmp319.i127 = shl nuw nsw i480 %tmp318.i126, 352
  %tmp309.i128 = bitcast float %425 to i32
  %tmp310.i129 = zext i32 %tmp309.i128 to i480
  %tmp311.i130 = shl nuw nsw i480 %tmp310.i129, 384
  %mask298.i131 = or i480 %tmp297.i101, %tmp370.i95
  %mask366.i132 = or i480 %mask298.i131, %tmp303.i98
  %mask360.masked.masked.masked.masked.masked.i133 = or i480 %mask366.i132, %tmp353.i110
  %mask354.masked.masked.masked.masked.masked.masked.i134 = or i480 %mask360.masked.masked.masked.masked.masked.i133, %tmp359.i107
  %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i135 = or i480 %mask354.masked.masked.masked.masked.masked.masked.i134, %tmp365.i104
  %mask342.masked.masked.masked.masked.masked.masked.masked.i136 = or i480 %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i135, %tmp335.i119
  %mask336.masked.masked.masked.masked.masked.masked.i137 = or i480 %mask342.masked.masked.masked.masked.masked.masked.masked.i136, %tmp341.i116
  %mask292.masked.masked.masked.masked.masked.i138 = or i480 %mask336.masked.masked.masked.masked.masked.masked.i137, %tmp347.i113
  %mask328.masked.masked.masked.masked.i139 = or i480 %mask292.masked.masked.masked.masked.masked.i138, %tmp291.i121
  %mask320.masked.masked.masked.i140 = or i480 %mask328.masked.masked.masked.masked.i139, %tmp311.i130
  %mask312.masked.masked.i141 = or i480 %mask320.masked.masked.masked.i140, %tmp319.i127
  %ins288.i142 = or i480 %mask312.masked.masked.i141, %tmp327.i124
  %ins285.i143 = or i480 %ins288.i142, 770681673391627619131312691654083964084373995933406099189890146314966155308140517402099473489517307419678932548501811235986099843289400054120448
  %tmp = zext i480 %ins285.i143 to i512
  %tmp214 = shl nuw i512 %tmp, 32
  %ins = or i512 %tmp214, %tmp217
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i146

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i146: ; preds = %bb3.i.i.i144, %bb2.i.i.i93, %bb96.i.i92, %bb94.i55.i89, %bb73.i.i88, %bb5.i87
  %mask303602 = phi i512 [ %ins, %bb3.i.i.i144 ], [ %mask303603, %bb2.i.i.i93 ], [ %mask303603, %bb96.i.i92 ], [ %mask303603, %bb94.i55.i89 ], [ %mask303603, %bb73.i.i88 ], [ %mask303603, %bb5.i87 ]
  %428 = add nsw i32 %storemerge388.i77, 1
  %exitcond787 = icmp eq i32 %428, %311
  br i1 %exitcond787, label %bb7.i147, label %bb5.i87

bb7.i147:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i146, %bb6.preheader.i74, %bb62.i.i72, %bb29.i.i66, %bb.i60
  %mask303606 = phi i512 [ %mask303607, %bb6.preheader.i74 ], [ %mask303602, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i146 ], [ %mask303607, %bb.i60 ], [ %mask303607, %bb29.i.i66 ], [ %mask303607, %bb62.i.i72 ]
  %429 = icmp slt i32 %sp.0.i52, 0
  br i1 %429, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit149, label %bb9.i148

bb9.i148:                                         ; preds = %bb7.i147
  %430 = sext i32 %sp.0.i52 to i64
  %431 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %430
  %432 = load i32* %431, align 4
  %433 = add nsw i32 %sp.0.i52, -1
  br label %bb.outer.i48

_ZN3BVH9intersectER9HitRecordR3Ray.exit149:       ; preds = %bb7.i147
  %tmp224 = trunc i512 %mask303606 to i32
  %tmp225 = bitcast i32 %tmp224 to float
  %tmp297 = lshr i512 %mask303606, 32
  %tmp298 = trunc i512 %tmp297 to i32
  %tmp301 = bitcast i32 %tmp298 to float
  %tmp291 = lshr i512 %mask303606, 64
  %tmp292 = trunc i512 %tmp291 to i32
  %tmp293 = bitcast i32 %tmp292 to float
  %tmp279 = lshr i512 %mask303606, 128
  %tmp280 = trunc i512 %tmp279 to i32
  %tmp281 = bitcast i32 %tmp280 to float
  %tmp273 = lshr i512 %mask303606, 160
  %tmp274 = trunc i512 %tmp273 to i32
  %tmp275 = bitcast i32 %tmp274 to float
  %tmp260 = lshr i512 %mask303606, 224
  %tmp242 = lshr i512 %mask303606, 352
  %tmp243 = trunc i512 %tmp242 to i32
  %tmp244 = bitcast i32 %tmp243 to float
  %tmp236 = lshr i512 %mask303606, 384
  %tmp237 = trunc i512 %tmp236 to i32
  %tmp238 = bitcast i32 %tmp237 to float
  %434 = fcmp olt float %tmp225, 1.000000e+10
  br i1 %434, label %bb1.i37, label %invcont94

bb1.i37:                                          ; preds = %bb1.i37, %_ZN3BVH9intersectER9HitRecordR3Ray.exit149
  %indvar = phi i64 [ %indvar.next, %bb1.i37 ], [ 0, %_ZN3BVH9intersectER9HitRecordR3Ray.exit149 ]
  %scevgep = getelementptr [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %indvar, i32 2, i64 2
  %scevgep754 = getelementptr [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %indvar, i32 2, i64 1
  %scevgep755 = getelementptr [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %indvar, i32 2, i64 0
  %scevgep757 = getelementptr [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %indvar
  %435 = bitcast %struct.Photon* %scevgep757 to i8*
  call void @llvm.memset.p0i8.i64(i8* %435, i8 0, i64 24, i32 4, i1 false)
  store float 1.000000e+00, float* %scevgep755, align 4
  store float 1.000000e+00, float* %scevgep754, align 4
  store float 1.000000e+00, float* %scevgep, align 4
  %indvar.next = add i64 %indvar, 1
  %exitcond = icmp eq i64 %indvar.next, 1000
  br i1 %exitcond, label %bb3.i42, label %bb1.i37

bb3.i42:                                          ; preds = %bb1.i37
  store i32 0, i32* %count_nearest.i, align 4
  %436 = lshr i192 %ins544, 96
  %.tr = trunc i192 %436 to i128
  %tmp1176 = and i128 %.tr, 79228162495817593519834398720
  %tmp1163 = lshr exact i128 %tmp1176, 64
  %tmp1164 = trunc i128 %tmp1163 to i32
  %tmp1165 = bitcast i32 %tmp1164 to float
  %437 = fmul float %274, %tmp225
  %438 = fmul float %273, %tmp225
  %439 = fmul float %tmp1165, %tmp225
  %tmp2060 = bitcast float %437 to i32
  %tmp2061 = zext i32 %tmp2060 to i96
  %tmp2054 = bitcast float %438 to i32
  %tmp2055 = zext i32 %tmp2054 to i96
  %tmp2056 = shl nuw nsw i96 %tmp2055, 32
  %ins2058 = or i96 %tmp2056, %tmp2061
  %tmp2048 = bitcast float %439 to i32
  %tmp1159 = zext i96 %ins2058 to i128
  %mask1160 = and i128 %memtmp7.i.1693, -79228162514264337593543950336
  %tmp1153 = zext i32 %tmp2048 to i128
  %tmp1154 = shl nuw nsw i128 %tmp1153, 64
  %mask1155 = or i128 %tmp1154, %mask1160
  %ins1156 = or i128 %mask1155, %tmp1159
  %ins1156.tr = trunc i128 %ins1156 to i96
  %tmp1119 = lshr i128 %mask1133, 64
  %tmp1120 = trunc i128 %tmp1119 to i32
  %tmp1121 = bitcast i32 %tmp1120 to float
  %tmp1307 = lshr i96 %ins1156.tr, 64
  %tmp1308 = trunc i96 %tmp1307 to i32
  %tmp1309 = bitcast i32 %tmp1308 to float
  %440 = fadd float %437, %11
  %441 = fadd float %438, %12
  %442 = fadd float %tmp1121, %tmp1309
  %tmp17.i156 = bitcast float %440 to i32
  %tmp18.i157 = zext i32 %tmp17.i156 to i64
  %tmp11.i158 = bitcast float %441 to i32
  %tmp12.i159 = zext i32 %tmp11.i158 to i64
  %tmp13.i160 = shl nuw i64 %tmp12.i159, 32
  %ins15.i161 = or i64 %tmp13.i160, %tmp18.i157
  %tmp6.i162 = bitcast i64 %ins15.i161 to double
  %tmp1826 = trunc i512 %tmp279 to i128
  %tmp1827 = and i128 %tmp1826, 79228162495817593519834398720
  %tmp1804 = trunc i512 %tmp297 to i128
  %tmp1805 = and i128 %tmp1804, 79228162495817593519834398720
  %tmp1792 = lshr exact i128 %tmp1805, 64
  %tmp1793 = trunc i128 %tmp1792 to i32
  %tmp1794 = bitcast i32 %tmp1793 to float
  %tmp1856750 = lshr i512 %mask303606, 192
  %tmp1857 = trunc i512 %tmp1856750 to i32
  %tmp1858 = bitcast i32 %tmp1857 to float
  %443 = fsub float %tmp301, %tmp281
  %444 = fsub float %tmp293, %tmp275
  %445 = fsub float %tmp1794, %tmp1858
  %tmp1726 = lshr exact i128 %tmp1827, 64
  %tmp1727 = trunc i128 %tmp1726 to i32
  %tmp1728 = bitcast i32 %tmp1727 to float
  %tmp1880752 = lshr i512 %mask303606, 288
  %tmp1881 = trunc i512 %tmp1880752 to i32
  %tmp1882 = bitcast i32 %tmp1881 to float
  %tmp41.i181 = trunc i512 %tmp260 to i32
  %tmp42.i182 = bitcast i32 %tmp41.i181 to float
  %446 = fsub float %tmp281, %tmp42.i182
  %tmp37.i183652 = lshr i512 %mask303606, 256
  %tmp38.i184 = trunc i512 %tmp37.i183652 to i32
  %tmp39.i185 = bitcast i32 %tmp38.i184 to float
  %447 = fsub float %tmp275, %tmp39.i185
  %448 = fsub float %tmp1728, %tmp1882
  %449 = fmul float %444, %448
  %450 = fmul float %447, %445
  %451 = fsub float %449, %450
  %452 = fmul float %446, %445
  %453 = fmul float %443, %448
  %454 = fsub float %452, %453
  %455 = fmul float %447, %443
  %456 = fmul float %446, %444
  %457 = fsub float %455, %456
  %458 = fmul float %451, %451
  %459 = fmul float %454, %454
  %460 = fadd float %458, %459
  %461 = fmul float %457, %457
  %462 = fadd float %460, %461
  %463 = call float @llvm.trax.invsqrt(float %462) nounwind
  %464 = fdiv float 1.000000e+00, %463
  %465 = fdiv float %457, %464
  %466 = fdiv float %454, %464
  %467 = fdiv float %451, %464
  %tmp18.i205 = bitcast float %467 to i32
  %tmp12.i207 = bitcast float %466 to i32
  %tmp1671 = bitcast float %465 to i32
  %tmp1923 = zext i32 %tmp18.i205 to i96
  %tmp1917 = zext i32 %tmp12.i207 to i96
  %tmp1918 = shl nuw nsw i96 %tmp1917, 32
  %ins1920 = or i96 %tmp1923, %tmp1918
  %tmp1093 = zext i96 %ins1920 to i128
  %mask1094 = and i128 %memtmp27.i.1691, -79228162514264337593543950336
  %tmp1087 = zext i32 %tmp1671 to i128
  %tmp1088 = shl nuw nsw i128 %tmp1087, 64
  %mask1089 = or i128 %tmp1088, %mask1094
  %ins1090 = or i128 %mask1089, %tmp1093
  call fastcc void @_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi(double %tmp6.i162, float %442, i32 0, %struct.Photon* %227, %struct.Photon* %.sub2737, i32 %count.0.ph, i32* %count_nearest.i) nounwind
  br label %bb37.i

bb37.i:                                           ; preds = %bb37.i, %bb3.i42
  %indvar760 = phi i64 [ 0, %bb3.i42 ], [ %indvar.next761, %bb37.i ]
  %scevgep763 = getelementptr [1000 x %struct.Photon]* %tempPhotons.i, i64 0, i64 %indvar760, i32 2, i64 2
  %scevgep764 = getelementptr [1000 x %struct.Photon]* %tempPhotons.i, i64 0, i64 %indvar760, i32 2, i64 1
  %scevgep765 = getelementptr [1000 x %struct.Photon]* %tempPhotons.i, i64 0, i64 %indvar760, i32 2, i64 0
  %scevgep767 = getelementptr [1000 x %struct.Photon]* %tempPhotons.i, i64 0, i64 %indvar760
  %468 = bitcast %struct.Photon* %scevgep767 to i8*
  call void @llvm.memset.p0i8.i64(i8* %468, i8 0, i64 24, i32 4, i1 false)
  store float 1.000000e+00, float* %scevgep765, align 4
  store float 1.000000e+00, float* %scevgep764, align 4
  store float 1.000000e+00, float* %scevgep763, align 4
  %indvar.next761 = add i64 %indvar760, 1
  %exitcond762 = icmp eq i64 %indvar.next761, 1000
  br i1 %exitcond762, label %bb39.i, label %bb37.i

bb39.i:                                           ; preds = %bb37.i
  %count_nearest.i.promoted = load i32* %count_nearest.i, align 4
  %469 = icmp eq i32 %count_nearest.i.promoted, 0
  br i1 %469, label %bb60.i, label %bb41.i.lr.ph

bb41.i.lr.ph:                                     ; preds = %bb39.i
  %ins1090.tr = trunc i128 %ins1090 to i96
  %tmp1584 = lshr i96 %ins1090.tr, 64
  %tmp1585 = trunc i96 %tmp1584 to i32
  %tmp1586 = bitcast i32 %tmp1585 to float
  %tmp776 = zext i32 %count_nearest.i.promoted to i64
  %tmp779 = sext i32 %count_nearest.i.promoted to i64
  br label %bb41.i

bb41.i:                                           ; preds = %bb41.i, %bb41.i.lr.ph
  %indvar774 = phi i64 [ 0, %bb41.i.lr.ph ], [ %indvar.next775, %bb41.i ]
  %memtmp49.i.0668 = phi i128 [ %memtmp49.i.2689, %bb41.i.lr.ph ], [ %ins1046, %bb41.i ]
  %irr.i.2.0667 = phi float [ 0.000000e+00, %bb41.i.lr.ph ], [ %485, %bb41.i ]
  %irr.i.1.0666 = phi float [ 0.000000e+00, %bb41.i.lr.ph ], [ %483, %bb41.i ]
  %irr.i.0.0665 = phi float [ 0.000000e+00, %bb41.i.lr.ph ], [ %481, %bb41.i ]
  %tmp780 = sub i64 %tmp779, %indvar774
  %.21188.2 = getelementptr [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %tmp780, i32 2, i64 2
  %.21188.1 = getelementptr [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %tmp780, i32 2, i64 1
  %.21188.0 = getelementptr [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %tmp780, i32 2, i64 0
  %.11187.2 = getelementptr [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %tmp780, i32 1, i32 2
  %.11187.1 = getelementptr [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %tmp780, i32 1, i32 1
  %.11187.0 = getelementptr [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %tmp780, i32 1, i32 0
  %tmp1217 = load float* %.11187.0, align 4
  %tmp1218 = load float* %.11187.1, align 4
  %tmp1219 = load float* %.11187.2, align 4
  %tmp1211 = load float* %.21188.0, align 4
  %tmp1212 = load float* %.21188.1, align 4
  %tmp1213 = load float* %.21188.2, align 4
  %470 = fmul float %tmp1217, -1.000000e+00
  %471 = fmul float %tmp1218, -1.000000e+00
  %472 = fmul float %tmp1219, -1.000000e+00
  %tmp1624 = bitcast float %470 to i32
  %tmp1625 = zext i32 %tmp1624 to i96
  %tmp1618 = bitcast float %471 to i32
  %tmp1619 = zext i32 %tmp1618 to i96
  %tmp1620 = shl nuw nsw i96 %tmp1619, 32
  %ins1622 = or i96 %tmp1620, %tmp1625
  %tmp1612 = bitcast float %472 to i32
  %tmp1049 = zext i96 %ins1622 to i128
  %mask1050 = and i128 %memtmp49.i.0668, -79228162514264337593543950336
  %tmp1043 = zext i32 %tmp1612 to i128
  %tmp1044 = shl nuw nsw i128 %tmp1043, 64
  %mask1045 = or i128 %tmp1049, %mask1050
  %ins1046 = or i128 %mask1045, %tmp1044
  %tmp1031 = lshr i128 %ins1046, 64
  %tmp1032 = trunc i128 %tmp1031 to i32
  %tmp1033 = bitcast i32 %tmp1032 to float
  %473 = fmul float %467, %470
  %474 = fadd float %473, 0.000000e+00
  %475 = fmul float %466, %471
  %476 = fadd float %475, %474
  %477 = fmul float %tmp1586, %tmp1033
  %478 = fadd float %477, %476
  %479 = fcmp ogt float %478, 0.000000e+00
  %storemerge.i185 = select i1 %479, float %478, float 0.000000e+00
  %480 = fmul float %tmp1211, %storemerge.i185
  %481 = fadd float %irr.i.0.0665, %480
  %482 = fmul float %tmp1212, %storemerge.i185
  %483 = fadd float %irr.i.1.0666, %482
  %484 = fmul float %tmp1213, %storemerge.i185
  %485 = fadd float %irr.i.2.0667, %484
  %indvar.next775 = add i64 %indvar774, 1
  %exitcond777 = icmp eq i64 %indvar.next775, %tmp776
  br i1 %exitcond777, label %bb60.i, label %bb41.i

bb60.i:                                           ; preds = %bb41.i, %bb39.i
  %memtmp49.i.0.lcssa = phi i128 [ %memtmp49.i.2689, %bb39.i ], [ %ins1046, %bb41.i ]
  %irr.i.2.0.lcssa = phi float [ 0.000000e+00, %bb39.i ], [ %485, %bb41.i ]
  %irr.i.1.0.lcssa = phi float [ 0.000000e+00, %bb39.i ], [ %483, %bb41.i ]
  %irr.i.0.0.lcssa = phi float [ 0.000000e+00, %bb39.i ], [ %481, %bb41.i ]
  store i32 0, i32* %count_nearest.i, align 4
  %486 = fpext float %color.i.0.1685 to double
  %tmp1528 = trunc i512 %tmp242 to i128
  %tmp1529 = and i128 %tmp1528, 79228162495817593519834398720
  %487 = fmul float %irr.i.0.0.lcssa, %tmp244
  %488 = fpext float %487 to double
  %489 = fdiv double %488, %229
  %490 = fadd double %486, %489
  %491 = fptrunc double %490 to float
  %492 = fpext float %color.i.1.1686 to double
  %493 = fmul float %irr.i.1.0.lcssa, %tmp238
  %494 = fpext float %493 to double
  %495 = fdiv double %494, %229
  %496 = fadd double %492, %495
  %497 = fptrunc double %496 to float
  %498 = fpext float %color.i.2.1687 to double
  %tmp965 = lshr exact i128 %tmp1529, 64
  %tmp966 = trunc i128 %tmp965 to i32
  %tmp967 = bitcast i32 %tmp966 to float
  %499 = fmul float %irr.i.2.0.lcssa, %tmp967
  %500 = fpext float %499 to double
  %501 = fdiv double %500, %229
  %502 = fadd double %498, %501
  %503 = fptrunc double %502 to float
  %phitmp = fmul float %491, 0x3FC99999A0000000
  %phitmp4 = fmul float %497, 0x3FC99999A0000000
  %phitmp749 = fmul float %503, 0x3FC99999A0000000
  br label %invcont94

invcont94:                                        ; preds = %bb60.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit149
  %.01345.0.off0 = phi float [ %phitmp, %bb60.i ], [ 0x3FBCB923A0000000, %_ZN3BVH9intersectER9HitRecordR3Ray.exit149 ]
  %.11346.0.off32 = phi float [ %phitmp4, %bb60.i ], [ 0x3FC2A99300000000, %_ZN3BVH9intersectER9HitRecordR3Ray.exit149 ]
  %.21347.0 = phi float [ %phitmp749, %bb60.i ], [ 0x3FC94AF4E0000000, %_ZN3BVH9intersectER9HitRecordR3Ray.exit149 ]
  %color.i.0.0 = phi float [ %491, %bb60.i ], [ %color.i.0.1685, %_ZN3BVH9intersectER9HitRecordR3Ray.exit149 ]
  %color.i.1.0 = phi float [ %497, %bb60.i ], [ %color.i.1.1686, %_ZN3BVH9intersectER9HitRecordR3Ray.exit149 ]
  %color.i.2.0 = phi float [ %503, %bb60.i ], [ %color.i.2.1687, %_ZN3BVH9intersectER9HitRecordR3Ray.exit149 ]
  %memtmp49.i.1 = phi i128 [ %memtmp49.i.0.lcssa, %bb60.i ], [ %memtmp49.i.2689, %_ZN3BVH9intersectER9HitRecordR3Ray.exit149 ]
  %memtmp27.i.0 = phi i128 [ %ins1090, %bb60.i ], [ %memtmp27.i.1691, %_ZN3BVH9intersectER9HitRecordR3Ray.exit149 ]
  %memtmp7.i.0 = phi i128 [ %ins1156, %bb60.i ], [ %memtmp7.i.1693, %_ZN3BVH9intersectER9HitRecordR3Ray.exit149 ]
  %504 = add nsw i32 %storemerge3702, 1
  %exitcond801 = icmp eq i32 %504, 5
  br i1 %exitcond801, label %invcont103, label %bb83

invcont103:                                       ; preds = %invcont94
  %505 = fcmp olt float %.01345.0.off0, 0.000000e+00
  br i1 %505, label %bb5.i, label %bb1.i

bb1.i:                                            ; preds = %invcont103
  %506 = fcmp ogt float %.01345.0.off0, 1.000000e+00
  br i1 %506, label %bb5.i, label %bb4.i

bb4.i:                                            ; preds = %bb1.i
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb1.i, %invcont103
  %r.i.0 = phi float [ %.01345.0.off0, %bb4.i ], [ 0.000000e+00, %invcont103 ], [ 1.000000e+00, %bb1.i ]
  %507 = fcmp olt float %.21347.0, 0.000000e+00
  br i1 %507, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i
  %508 = fcmp ogt float %.21347.0, 1.000000e+00
  br i1 %508, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i
  %b.i.0 = phi float [ %.21347.0, %bb11.i ], [ 0.000000e+00, %bb5.i ], [ 1.000000e+00, %bb8.i ]
  %509 = fcmp olt float %.11346.0.off32, 0.000000e+00
  br i1 %509, label %invcont115, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %510 = fcmp ogt float %.11346.0.off32, 1.000000e+00
  br i1 %510, label %invcont115, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %invcont115

invcont115:                                       ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.i.0 = phi float [ %.11346.0.off32, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %511 = mul nsw i32 %231, %1
  %512 = add nsw i32 %511, %232
  %513 = mul nsw i32 %512, 3
  %514 = add nsw i32 %513, %3
  call void @llvm.trax.storef(float %r.i.0, i32 %514, i32 0) nounwind
  call void @llvm.trax.storef(float %g.i.0, i32 %514, i32 1) nounwind
  call void @llvm.trax.storef(float %b.i.0, i32 %514, i32 2) nounwind
  %515 = call i32 @llvm.trax.atominc(i32 0)
  %516 = icmp sgt i32 %222, %515
  br i1 %516, label %bb76, label %return

return:                                           ; preds = %invcont115, %invcont75
  ret i32 0

Unwind:                                           ; preds = %bb72
  %eh_ptr = call i8* @llvm.eh.exception()
  %eh_select123 = call i32 (i8*, i8*, ...)* @llvm.eh.selector(i8* %eh_ptr, i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*), i32 0)
  call void @llvm.stackrestore(i8* %0)
  call void @_Unwind_Resume_or_Rethrow(i8* %eh_ptr)
  unreachable
}

declare float @llvm.trax.rand() nounwind

declare i8* @llvm.stacksave() nounwind

declare i32 @llvm.trax.atominc(i32) nounwind

declare void @llvm.stackrestore(i8*) nounwind

declare i8* @llvm.eh.exception() nounwind readonly

declare i32 @llvm.eh.selector(i8*, i8*, ...) nounwind

declare i32 @__gxx_personality_v0(...)

declare void @_Unwind_Resume_or_Rethrow(i8*)

declare double @llvm.log.f64(double) nounwind readonly

define internal fastcc void @_ZN9PhotonMap8generateEP6PhotonS1_ii(%struct.Photon* %photons, %struct.Photon* %photonHeap, i32 %count, i32 %currentPos) ssp align 2 {
entry:
  %pivot.i = alloca %struct.Photon, align 8
  %0 = icmp eq i32 %count, 0
  br i1 %0, label %return, label %invcont.lr.ph

invcont.lr.ph:                                    ; preds = %entry
  %1 = call i8* @llvm.stacksave()
  %tmp146 = zext i32 %count to i64
  br label %invcont

invcont:                                          ; preds = %invcont, %invcont.lr.ph
  %indvar144 = phi i64 [ 0, %invcont.lr.ph ], [ %indvar.next145, %invcont ]
  %maxXYZ.2.136 = phi float [ -9.999999e+06, %invcont.lr.ph ], [ %maxXYZ.2.0, %invcont ]
  %maxXYZ.1.135 = phi float [ -9.999999e+06, %invcont.lr.ph ], [ %maxXYZ.1.0, %invcont ]
  %maxXYZ.0.134 = phi float [ -9.999999e+06, %invcont.lr.ph ], [ %maxXYZ.0.0, %invcont ]
  %minXYZ.2.133 = phi float [ 9.999999e+06, %invcont.lr.ph ], [ %minXYZ.2.0, %invcont ]
  %minXYZ.1.132 = phi float [ 9.999999e+06, %invcont.lr.ph ], [ %minXYZ.1.0, %invcont ]
  %minXYZ.0.131 = phi float [ 9.999999e+06, %invcont.lr.ph ], [ %minXYZ.0.0, %invcont ]
  %scevgep148 = getelementptr %struct.Photon* %photons, i64 %indvar144, i32 0, i32 2
  %scevgep149 = getelementptr %struct.Photon* %photons, i64 %indvar144, i32 0, i32 1
  %scevgep150151 = getelementptr inbounds %struct.Photon* %photons, i64 %indvar144, i32 0, i32 0
  %2 = load float* %scevgep150151, align 4
  %3 = load float* %scevgep149, align 4
  %4 = load float* %scevgep148, align 4
  %5 = fcmp olt float %2, %minXYZ.0.131
  %minXYZ.0.0 = select i1 %5, float %2, float %minXYZ.0.131
  %6 = fcmp olt float %3, %minXYZ.1.132
  %minXYZ.1.0 = select i1 %6, float %3, float %minXYZ.1.132
  %7 = fcmp olt float %4, %minXYZ.2.133
  %minXYZ.2.0 = select i1 %7, float %4, float %minXYZ.2.133
  %8 = fcmp ogt float %2, %maxXYZ.0.134
  %maxXYZ.0.0 = select i1 %8, float %2, float %maxXYZ.0.134
  %9 = fcmp ogt float %3, %maxXYZ.1.135
  %maxXYZ.1.0 = select i1 %9, float %3, float %maxXYZ.1.135
  %10 = fcmp ogt float %4, %maxXYZ.2.136
  %maxXYZ.2.0 = select i1 %10, float %4, float %maxXYZ.2.136
  %indvar.next145 = add i64 %indvar144, 1
  %exitcond147 = icmp eq i64 %indvar.next145, %tmp146
  br i1 %exitcond147, label %bb120, label %invcont

bb120:                                            ; preds = %invcont
  %11 = fsub float %maxXYZ.0.0, %minXYZ.0.0
  %12 = fsub float %maxXYZ.1.0, %minXYZ.1.0
  %13 = fsub float %maxXYZ.2.0, %minXYZ.2.0
  %14 = fcmp ule float %11, %12
  %15 = fcmp ule float %11, %13
  %or.cond = or i1 %14, %15
  br i1 %or.cond, label %bb123, label %bb127

bb123:                                            ; preds = %bb120
  %16 = fcmp ule float %12, %11
  %17 = fcmp ule float %12, %13
  %or.cond1403 = or i1 %16, %17
  %. = select i1 %or.cond1403, i32 2, i32 1
  br label %bb127

bb127:                                            ; preds = %bb123, %bb120
  %18 = phi i32 [ 0, %bb120 ], [ %., %bb123 ]
  %savedstack = call i8* @llvm.stacksave()
  %19 = bitcast %struct.Photon* %pivot.i to i8*
  %20 = getelementptr inbounds %struct.Photon* %pivot.i, i64 0, i32 2, i64 0
  %21 = bitcast %struct.Photon* %pivot.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 24, i32 8, i1 false)
  store float 1.000000e+00, float* %20, align 8
  %22 = getelementptr inbounds %struct.Photon* %pivot.i, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %22, align 4
  %23 = getelementptr inbounds %struct.Photon* %pivot.i, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %23, align 8
  %24 = shl i32 %count, 2
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 4
  %27 = bitcast i8* %26 to [0 x i32]*
  %28 = bitcast i8* %26 to i32*
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds i8* %26, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %count, i32* %30, align 4
  %31 = getelementptr inbounds %struct.Photon* %pivot.i, i64 0, i32 0, i32 2
  %tmp = icmp eq i32 %18, 0
  %32 = getelementptr inbounds %struct.Photon* %pivot.i, i64 0, i32 0, i32 0
  %33 = getelementptr inbounds %struct.Photon* %pivot.i, i64 0, i32 0, i32 1
  br label %bb28.i

bb.i52:                                           ; preds = %bb28.i
  %34 = add nsw i32 %sp.i.4, -1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [0 x i32]* %27, i64 0, i64 %35
  %37 = load i32* %36, align 4
  %38 = add i32 %sp.i.4, -2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i32]* %27, i64 0, i64 %39
  %41 = load i32* %40, align 4
  br label %bb1.i53

bb1.i53:                                          ; preds = %bb27.i, %bb.i52
  %right_addr.i.0 = phi i32 [ %37, %bb.i52 ], [ %right_addr.i.1, %bb27.i ]
  %left_addr.i.0 = phi i32 [ %41, %bb.i52 ], [ %left_addr.i.1, %bb27.i ]
  %sp.i.0 = phi i32 [ %38, %bb.i52 ], [ %sp.i.3, %bb27.i ]
  %42 = add nsw i32 %left_addr.i.0, %right_addr.i.0
  %43 = sdiv i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.Photon* %photons, i64 %44
  %46 = bitcast %struct.Photon* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %46, i64 52, i32 1, i1 false)
  br label %bb5.i.outer

bb5.i.outer:                                      ; preds = %bb19.i, %bb1.i53
  %l2.i.0.ph = phi i32 [ %left_addr.i.0, %bb1.i53 ], [ %l2.i.1, %bb19.i ]
  %r2.i.0.ph = phi i32 [ %right_addr.i.0, %bb1.i53 ], [ %r2.i.2, %bb19.i ]
  switch i32 %18, label %bb12.i [
    i32 0, label %_ZN6Photon8get_axisEi.exit
    i32 1, label %bb5.i1
  ]

bb5.i1:                                           ; preds = %bb5.i.outer
  br label %_ZN6Photon8get_axisEi.exit

bb12.i:                                           ; preds = %bb5.i.outer
  br label %_ZN6Photon8get_axisEi.exit

_ZN6Photon8get_axisEi.exit:                       ; preds = %bb12.i, %bb5.i1, %bb5.i.outer
  %.0.in.i = phi float* [ %33, %bb5.i1 ], [ %31, %bb12.i ], [ %32, %bb5.i.outer ]
  %.0.i = load float* %.0.in.i, align 4
  %tmp112 = zext i32 %l2.i.0.ph to i64
  %tmp115 = sext i32 %l2.i.0.ph to i64
  br i1 %tmp, label %_ZN6Photon8get_axisEi.exit7.us, label %bb5.i

bb4.i.us:                                         ; preds = %_ZN6Photon8get_axisEi.exit7.us
  %indvar.next111 = add i64 %indvar110, 1
  br label %_ZN6Photon8get_axisEi.exit7.us

_ZN6Photon8get_axisEi.exit7.us:                   ; preds = %bb4.i.us, %_ZN6Photon8get_axisEi.exit
  %indvar110 = phi i64 [ %indvar.next111, %bb4.i.us ], [ 0, %_ZN6Photon8get_axisEi.exit ]
  %tmp113 = add i64 %tmp112, %indvar110
  %tmp116 = add i64 %tmp115, %indvar110
  %scevgep117118 = getelementptr inbounds %struct.Photon* %photons, i64 %tmp116, i32 0, i32 0
  %.0.i6.us = load float* %scevgep117118, align 4
  %47 = fcmp olt float %.0.i6.us, %.0.i
  br i1 %47, label %bb4.i.us, label %bb9.i.loopexit

bb4.i:                                            ; preds = %_ZN6Photon8get_axisEi.exit7
  %48 = add nsw i32 %49, 1
  %indvar.next124 = add i64 %indvar123, 1
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %_ZN6Photon8get_axisEi.exit
  %indvar123 = phi i64 [ %indvar.next124, %bb4.i ], [ 0, %_ZN6Photon8get_axisEi.exit ]
  %49 = phi i32 [ %48, %bb4.i ], [ %l2.i.0.ph, %_ZN6Photon8get_axisEi.exit ]
  %tmp126 = add i64 %tmp112, %indvar123
  %tmp129 = add i64 %tmp115, %indvar123
  %cond = icmp eq i32 %18, 1
  br i1 %cond, label %bb5.i3, label %bb12.i4

bb5.i3:                                           ; preds = %bb5.i
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.Photon* %photons, i64 %50, i32 0, i32 1
  br label %_ZN6Photon8get_axisEi.exit7

bb12.i4:                                          ; preds = %bb5.i
  %scevgep130 = getelementptr %struct.Photon* %photons, i64 %tmp129, i32 0, i32 2
  br label %_ZN6Photon8get_axisEi.exit7

_ZN6Photon8get_axisEi.exit7:                      ; preds = %bb12.i4, %bb5.i3
  %.0.in.i5 = phi float* [ %51, %bb5.i3 ], [ %scevgep130, %bb12.i4 ]
  %.0.i6 = load float* %.0.in.i5, align 4
  %52 = fcmp olt float %.0.i6, %.0.i
  br i1 %52, label %bb4.i, label %bb9.i.loopexit

bb8.i:                                            ; preds = %_ZN6Photon8get_axisEi.exit13
  %53 = add nsw i32 %55, -1
  %indvar.next136 = add i64 %indvar135, 1
  br label %bb9.i

bb9.i.loopexit:                                   ; preds = %_ZN6Photon8get_axisEi.exit7, %_ZN6Photon8get_axisEi.exit7.us
  %.pn46 = phi i64 [ %tmp116, %_ZN6Photon8get_axisEi.exit7.us ], [ %tmp129, %_ZN6Photon8get_axisEi.exit7 ]
  %l2.i.0.lcssa.in = phi i64 [ %tmp113, %_ZN6Photon8get_axisEi.exit7.us ], [ %tmp126, %_ZN6Photon8get_axisEi.exit7 ]
  %l2.i.0.lcssa = trunc i64 %l2.i.0.lcssa.in to i32
  %.lcssa26 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn46
  %tmp102 = zext i32 %r2.i.0.ph to i64
  %tmp105 = sext i32 %r2.i.0.ph to i64
  br i1 %tmp, label %_ZN6Photon8get_axisEi.exit13.us, label %bb9.i

bb8.i.us:                                         ; preds = %_ZN6Photon8get_axisEi.exit13.us
  %indvar.next100 = add i64 %indvar99, 1
  br label %_ZN6Photon8get_axisEi.exit13.us

_ZN6Photon8get_axisEi.exit13.us:                  ; preds = %bb8.i.us, %bb9.i.loopexit
  %indvar99 = phi i64 [ %indvar.next100, %bb8.i.us ], [ 0, %bb9.i.loopexit ]
  %tmp103 = sub i64 %tmp102, %indvar99
  %tmp106 = sub i64 %tmp105, %indvar99
  %scevgep107108 = getelementptr inbounds %struct.Photon* %photons, i64 %tmp106, i32 0, i32 0
  %.0.i12.us = load float* %scevgep107108, align 4
  %54 = fcmp ogt float %.0.i12.us, %.0.i
  br i1 %54, label %bb8.i.us, label %bb13.i

bb9.i:                                            ; preds = %bb9.i.loopexit, %bb8.i
  %indvar135 = phi i64 [ %indvar.next136, %bb8.i ], [ 0, %bb9.i.loopexit ]
  %55 = phi i32 [ %53, %bb8.i ], [ %r2.i.0.ph, %bb9.i.loopexit ]
  %tmp139 = sub i64 %tmp102, %indvar135
  %tmp142 = sub i64 %tmp105, %indvar135
  %cond152 = icmp eq i32 %18, 1
  br i1 %cond152, label %bb5.i9, label %bb12.i10

bb5.i9:                                           ; preds = %bb9.i
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.Photon* %photons, i64 %56, i32 0, i32 1
  br label %_ZN6Photon8get_axisEi.exit13

bb12.i10:                                         ; preds = %bb9.i
  %scevgep143 = getelementptr %struct.Photon* %photons, i64 %tmp142, i32 0, i32 2
  br label %_ZN6Photon8get_axisEi.exit13

_ZN6Photon8get_axisEi.exit13:                     ; preds = %bb12.i10, %bb5.i9
  %.0.in.i11 = phi float* [ %57, %bb5.i9 ], [ %scevgep143, %bb12.i10 ]
  %.0.i12 = load float* %.0.in.i11, align 4
  %58 = fcmp ogt float %.0.i12, %.0.i
  br i1 %58, label %bb8.i, label %bb13.i

bb13.i:                                           ; preds = %_ZN6Photon8get_axisEi.exit13, %_ZN6Photon8get_axisEi.exit13.us
  %.pn = phi i64 [ %tmp106, %_ZN6Photon8get_axisEi.exit13.us ], [ %tmp142, %_ZN6Photon8get_axisEi.exit13 ]
  %r2.i.1.lcssa.in = phi i64 [ %tmp103, %_ZN6Photon8get_axisEi.exit13.us ], [ %tmp139, %_ZN6Photon8get_axisEi.exit13 ]
  %r2.i.1.lcssa = trunc i64 %r2.i.1.lcssa.in to i32
  %.lcssa28 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn
  %59 = icmp sgt i32 %l2.i.0.lcssa, %r2.i.1.lcssa
  br i1 %59, label %bb19.i, label %bb14.i

bb14.i:                                           ; preds = %bb13.i
  %60 = icmp eq i32 %l2.i.0.lcssa, %r2.i.1.lcssa
  br i1 %60, label %bb18.i, label %bb15.i

bb15.i:                                           ; preds = %bb14.i
  %.01067 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn46, i32 0, i32 0
  %tmp1068 = load float* %.01067, align 1
  %.11069 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn46, i32 0, i32 1
  %tmp1070 = load float* %.11069, align 1
  %.21071 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn46, i32 0, i32 2
  %tmp1072 = load float* %.21071, align 1
  %.11045.0 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn46, i32 1, i32 0
  %tmp1061 = load float* %.11045.0, align 1
  %.11045.1 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn46, i32 1, i32 1
  %tmp1062 = load float* %.11045.1, align 1
  %.11045.2 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn46, i32 1, i32 2
  %tmp1063 = load float* %.11045.2, align 1
  %.21046.0 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn46, i32 2, i64 0
  %tmp1055 = load float* %.21046.0, align 1
  %.21046.1 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn46, i32 2, i64 1
  %tmp1056 = load float* %.21046.1, align 1
  %.21046.2 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn46, i32 2, i64 2
  %tmp1057 = load float* %.21046.2, align 1
  %.31047 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn46, i32 3
  %tmp1048 = load float* %.31047, align 1
  %.41049 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn46, i32 4
  %tmp1050 = load float* %.41049, align 1
  %.51051 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn46, i32 5
  %tmp1052 = load i32* %.51051, align 1
  %.61053 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn46, i32 6
  %tmp1054 = load float* %.61053, align 1
  %61 = bitcast %struct.Photon* %.lcssa26 to i8*
  %62 = bitcast %struct.Photon* %.lcssa28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 52, i32 1, i1 false)
  %.01073 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn, i32 0, i32 0
  store float %tmp1068, float* %.01073, align 1
  %.11075 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn, i32 0, i32 1
  store float %tmp1070, float* %.11075, align 1
  %.21077 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn, i32 0, i32 2
  store float %tmp1072, float* %.21077, align 1
  %.11034.0 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn, i32 1, i32 0
  store float %tmp1061, float* %.11034.0, align 1
  %.11034.1 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn, i32 1, i32 1
  store float %tmp1062, float* %.11034.1, align 1
  %.11034.2 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn, i32 1, i32 2
  store float %tmp1063, float* %.11034.2, align 1
  %.21035.0 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn, i32 2, i64 0
  store float %tmp1055, float* %.21035.0, align 1
  %.21035.1 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn, i32 2, i64 1
  store float %tmp1056, float* %.21035.1, align 1
  %.21035.2 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn, i32 2, i64 2
  store float %tmp1057, float* %.21035.2, align 1
  %.31036 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn, i32 3
  store float %tmp1048, float* %.31036, align 1
  %.41038 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn, i32 4
  store float %tmp1050, float* %.41038, align 1
  %.51040 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn, i32 5
  store i32 %tmp1052, i32* %.51040, align 1
  %.61042 = getelementptr inbounds %struct.Photon* %photons, i64 %.pn, i32 6
  store float %tmp1054, float* %.61042, align 1
  br label %bb18.i

bb18.i:                                           ; preds = %bb15.i, %bb14.i
  %63 = add nsw i32 %l2.i.0.lcssa, 1
  %64 = add nsw i32 %r2.i.1.lcssa, -1
  br label %bb19.i

bb19.i:                                           ; preds = %bb18.i, %bb13.i
  %l2.i.1 = phi i32 [ %l2.i.0.lcssa, %bb13.i ], [ %63, %bb18.i ]
  %r2.i.2 = phi i32 [ %r2.i.1.lcssa, %bb13.i ], [ %64, %bb18.i ]
  %65 = icmp slt i32 %l2.i.1, %r2.i.2
  br i1 %65, label %bb5.i.outer, label %bb20.i

bb20.i:                                           ; preds = %bb19.i
  %66 = sub nsw i32 %r2.i.2, %left_addr.i.0
  %67 = sub nsw i32 %right_addr.i.0, %l2.i.1
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %bb21.i, label %bb24.i

bb21.i:                                           ; preds = %bb20.i
  %69 = icmp slt i32 %left_addr.i.0, %r2.i.2
  br i1 %69, label %bb22.i, label %bb27.i

bb22.i:                                           ; preds = %bb21.i
  %70 = sext i32 %sp.i.0 to i64
  %71 = getelementptr inbounds [0 x i32]* %27, i64 0, i64 %70
  store i32 %left_addr.i.0, i32* %71, align 4
  %72 = add nsw i32 %sp.i.0, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [0 x i32]* %27, i64 0, i64 %73
  store i32 %r2.i.2, i32* %74, align 4
  %75 = add i32 %sp.i.0, 2
  br label %bb27.i

bb24.i:                                           ; preds = %bb20.i
  %76 = icmp slt i32 %l2.i.1, %right_addr.i.0
  br i1 %76, label %bb25.i, label %bb27.i

bb25.i:                                           ; preds = %bb24.i
  %77 = sext i32 %sp.i.0 to i64
  %78 = getelementptr inbounds [0 x i32]* %27, i64 0, i64 %77
  store i32 %l2.i.1, i32* %78, align 4
  %79 = add nsw i32 %sp.i.0, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [0 x i32]* %27, i64 0, i64 %80
  store i32 %right_addr.i.0, i32* %81, align 4
  %82 = add i32 %sp.i.0, 2
  br label %bb27.i

bb27.i:                                           ; preds = %bb25.i, %bb24.i, %bb22.i, %bb21.i
  %right_addr.i.1 = phi i32 [ %right_addr.i.0, %bb22.i ], [ %right_addr.i.0, %bb21.i ], [ %r2.i.2, %bb25.i ], [ %r2.i.2, %bb24.i ]
  %left_addr.i.1 = phi i32 [ %l2.i.1, %bb22.i ], [ %l2.i.1, %bb21.i ], [ %left_addr.i.0, %bb25.i ], [ %left_addr.i.0, %bb24.i ]
  %sp.i.3 = phi i32 [ %75, %bb22.i ], [ %sp.i.0, %bb21.i ], [ %82, %bb25.i ], [ %sp.i.0, %bb24.i ]
  %83 = icmp slt i32 %left_addr.i.1, %right_addr.i.1
  br i1 %83, label %bb1.i53, label %bb28.i

bb28.i:                                           ; preds = %bb27.i, %bb127
  %sp.i.4 = phi i32 [ 2, %bb127 ], [ %sp.i.3, %bb27.i ]
  %84 = icmp sgt i32 %sp.i.4, 0
  br i1 %84, label %bb.i52, label %bb129.lr.ph

bb129.lr.ph:                                      ; preds = %bb28.i
  call void @llvm.stackrestore(i8* %savedstack)
  %85 = mul i32 %count, 52
  %86 = zext i32 %85 to i64
  %87 = alloca i8, i64 %86, align 1
  %88 = bitcast i8* %87 to [0 x %struct.Photon]*
  %89 = bitcast i8* %87 to %struct.Photon*
  %tmp79 = sext i32 %count to i64
  br label %bb129

bb129:                                            ; preds = %bb129, %bb129.lr.ph
  %indvar77 = phi i64 [ 0, %bb129.lr.ph ], [ %indvar.next78, %bb129 ]
  %tmp81 = mul i64 %indvar77, 52
  %tmp82 = add i64 %tmp81, 32
  %scevgep83 = getelementptr i8* %87, i64 %tmp82
  %scevgep8384 = bitcast i8* %scevgep83 to float*
  %tmp85 = add i64 %tmp81, 28
  %scevgep86 = getelementptr i8* %87, i64 %tmp85
  %scevgep8687 = bitcast i8* %scevgep86 to float*
  %tmp88 = add i64 %tmp81, 24
  %scevgep89 = getelementptr i8* %87, i64 %tmp88
  %scevgep8990 = bitcast i8* %scevgep89 to float*
  %tmp91 = add i64 %tmp81, 20
  %scevgep92 = getelementptr i8* %87, i64 %tmp91
  %scevgep9293 = bitcast i8* %scevgep92 to float*
  %scevgep94 = getelementptr i8* %87, i64 %tmp81
  %tmp95 = add i64 %tmp81, 16
  %scevgep96 = getelementptr i8* %87, i64 %tmp95
  %scevgep9697 = bitcast i8* %scevgep96 to float*
  call void @llvm.memset.p0i8.i64(i8* %scevgep94, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %scevgep9697, align 4
  store float 0.000000e+00, float* %scevgep9293, align 4
  store float 1.000000e+00, float* %scevgep8990, align 4
  store float 1.000000e+00, float* %scevgep8687, align 4
  store float 1.000000e+00, float* %scevgep8384, align 4
  %indvar.next78 = add i64 %indvar77, 1
  %exitcond80 = icmp eq i64 %indvar.next78, %tmp79
  br i1 %exitcond80, label %bb132.lr.ph, label %bb129

bb132.lr.ph:                                      ; preds = %bb129
  %90 = alloca i8, i64 %86, align 1
  %91 = bitcast i8* %90 to [0 x %struct.Photon]*
  %92 = bitcast i8* %90 to %struct.Photon*
  %tmp58 = sext i32 %count to i64
  br label %bb132

bb132:                                            ; preds = %bb132, %bb132.lr.ph
  %indvar56 = phi i64 [ 0, %bb132.lr.ph ], [ %indvar.next57, %bb132 ]
  %tmp60 = mul i64 %indvar56, 52
  %tmp61 = add i64 %tmp60, 32
  %scevgep62 = getelementptr i8* %90, i64 %tmp61
  %scevgep6263 = bitcast i8* %scevgep62 to float*
  %tmp64 = add i64 %tmp60, 28
  %scevgep65 = getelementptr i8* %90, i64 %tmp64
  %scevgep6566 = bitcast i8* %scevgep65 to float*
  %tmp67 = add i64 %tmp60, 24
  %scevgep68 = getelementptr i8* %90, i64 %tmp67
  %scevgep6869 = bitcast i8* %scevgep68 to float*
  %tmp70 = add i64 %tmp60, 20
  %scevgep71 = getelementptr i8* %90, i64 %tmp70
  %scevgep7172 = bitcast i8* %scevgep71 to float*
  %scevgep73 = getelementptr i8* %90, i64 %tmp60
  %tmp74 = add i64 %tmp60, 16
  %scevgep75 = getelementptr i8* %90, i64 %tmp74
  %scevgep7576 = bitcast i8* %scevgep75 to float*
  call void @llvm.memset.p0i8.i64(i8* %scevgep73, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %scevgep7576, align 4
  store float 0.000000e+00, float* %scevgep7172, align 4
  store float 1.000000e+00, float* %scevgep6869, align 4
  store float 1.000000e+00, float* %scevgep6566, align 4
  store float 1.000000e+00, float* %scevgep6263, align 4
  %indvar.next57 = add i64 %indvar56, 1
  %exitcond59 = icmp eq i64 %indvar.next57, %tmp58
  br i1 %exitcond59, label %invcont159.lr.ph, label %bb132

invcont159.lr.ph:                                 ; preds = %bb132
  %93 = sitofp i32 %count to double
  %94 = call double @llvm.log.f64(double %93) nounwind
  %95 = call double @llvm.log.f64(double 2.000000e+00) nounwind
  %96 = fdiv double %94, %95
  %97 = fptosi double %96 to i32
  %98 = add i32 %97, -1
  %exp2 = call double @ldexp(double 1.000000e+00, i32 %98)
  %exp214 = call double @ldexp(double 1.000000e+00, i32 %97)
  %99 = fadd double %exp214, -1.000000e+00
  %100 = fsub double %93, %99
  %101 = fptosi double %100 to i32
  %102 = fptosi double %exp2 to i32
  %103 = icmp slt i32 %102, %101
  %storemerge.i = select i1 %103, i32 %102, i32 %101
  %104 = sitofp i32 %storemerge.i to double
  %105 = fadd double %exp2, %104
  %106 = fptosi double %105 to i32
  %107 = sext i32 %currentPos to i64
  %108 = getelementptr inbounds %struct.Photon* %photonHeap, i64 %107, i32 5
  %109 = getelementptr inbounds %struct.Photon* %photonHeap, i64 %107, i32 1, i32 0
  %110 = getelementptr inbounds %struct.Photon* %photonHeap, i64 %107, i32 1, i32 1
  %111 = getelementptr inbounds %struct.Photon* %photonHeap, i64 %107, i32 1, i32 2
  %112 = getelementptr inbounds %struct.Photon* %photonHeap, i64 %107, i32 0, i32 0
  %113 = getelementptr inbounds %struct.Photon* %photonHeap, i64 %107, i32 0, i32 1
  %114 = getelementptr inbounds %struct.Photon* %photonHeap, i64 %107, i32 0, i32 2
  %tmp47 = zext i32 %count to i64
  br label %invcont159

invcont159:                                       ; preds = %bb191, %invcont159.lr.ph
  %indvar = phi i64 [ 0, %invcont159.lr.ph ], [ %tmp54, %bb191 ]
  %count_lower.119 = phi i32 [ 0, %invcont159.lr.ph ], [ %count_lower.0, %bb191 ]
  %count_upper.118 = phi i32 [ 0, %invcont159.lr.ph ], [ %count_upper.0, %bb191 ]
  %memtmp166.116 = phi i128 [ undef, %invcont159.lr.ph ], [ %memtmp166.0, %bb191 ]
  %memtmp178.115 = phi i128 [ undef, %invcont159.lr.ph ], [ %memtmp178.0, %bb191 ]
  %scevgep = getelementptr %struct.Photon* %photons, i64 %indvar, i32 1, i32 2
  %scevgep48 = getelementptr %struct.Photon* %photons, i64 %indvar, i32 1, i32 1
  %scevgep49 = getelementptr %struct.Photon* %photons, i64 %indvar, i32 1, i32 0
  %scevgep50 = getelementptr %struct.Photon* %photons, i64 %indvar, i32 0, i32 2
  %scevgep51 = getelementptr %struct.Photon* %photons, i64 %indvar, i32 0, i32 1
  %scevgep5253 = getelementptr inbounds %struct.Photon* %photons, i64 %indvar, i32 0, i32 0
  %tmp54 = add i64 %indvar, 1
  %i.017 = trunc i64 %tmp54 to i32
  %115 = load float* %scevgep5253, align 4
  %116 = load float* %scevgep51, align 4
  %117 = load float* %scevgep50, align 4
  %118 = load float* %scevgep49, align 4
  %119 = load float* %scevgep48, align 4
  %120 = load float* %scevgep, align 4
  %121 = icmp slt i32 %i.017, %106
  br i1 %121, label %bb160, label %bb162

bb160:                                            ; preds = %invcont159
  %122 = sext i32 %count_lower.119 to i64
  %.0576 = getelementptr inbounds [0 x %struct.Photon]* %91, i64 0, i64 %122, i32 0, i32 0
  store float %115, float* %.0576, align 4
  %.1578 = getelementptr inbounds [0 x %struct.Photon]* %91, i64 0, i64 %122, i32 0, i32 1
  store float %116, float* %.1578, align 4
  %.2580 = getelementptr inbounds [0 x %struct.Photon]* %91, i64 0, i64 %122, i32 0, i32 2
  store float %117, float* %.2580, align 4
  %.1554.0 = getelementptr inbounds [0 x %struct.Photon]* %91, i64 0, i64 %122, i32 1, i32 0
  store float %118, float* %.1554.0, align 4
  %.1554.1 = getelementptr inbounds [0 x %struct.Photon]* %91, i64 0, i64 %122, i32 1, i32 1
  store float %119, float* %.1554.1, align 4
  %.1554.2 = getelementptr inbounds [0 x %struct.Photon]* %91, i64 0, i64 %122, i32 1, i32 2
  store float %120, float* %.1554.2, align 4
  %.2555.0 = getelementptr inbounds [0 x %struct.Photon]* %91, i64 0, i64 %122, i32 2, i64 0
  store float 1.000000e+00, float* %.2555.0, align 4
  %.2555.1 = getelementptr inbounds [0 x %struct.Photon]* %91, i64 0, i64 %122, i32 2, i64 1
  store float 1.000000e+00, float* %.2555.1, align 4
  %.2555.2 = getelementptr inbounds [0 x %struct.Photon]* %91, i64 0, i64 %122, i32 2, i64 2
  store float 1.000000e+00, float* %.2555.2, align 4
  %123 = add nsw i32 %count_lower.119, 1
  br label %bb191

bb162:                                            ; preds = %invcont159
  %124 = icmp eq i32 %i.017, %106
  br i1 %124, label %invcont188, label %bb189

invcont188:                                       ; preds = %bb162
  store i32 %18, i32* %108, align 4
  %125 = load float* %scevgep49, align 4
  %126 = load float* %scevgep48, align 4
  %127 = load float* %scevgep, align 4
  %tmp891 = bitcast float %125 to i32
  %tmp892 = zext i32 %tmp891 to i96
  %tmp885 = bitcast float %126 to i32
  %tmp886 = zext i32 %tmp885 to i96
  %tmp887 = shl nuw nsw i96 %tmp886, 32
  %ins889 = or i96 %tmp887, %tmp892
  %tmp879 = bitcast float %127 to i32
  %tmp188 = zext i96 %ins889 to i128
  %mask189 = and i128 %memtmp166.116, -79228162514264337593543950336
  %tmp182 = zext i32 %tmp879 to i128
  %tmp183 = shl nuw nsw i128 %tmp182, 64
  %mask184 = or i128 %tmp183, %mask189
  %ins185 = or i128 %mask184, %tmp188
  %ins185.tr = trunc i128 %ins185 to i96
  store float %125, float* %109, align 4
  store float %126, float* %110, align 4
  %tmp851 = lshr i96 %ins185.tr, 64
  %tmp852 = trunc i96 %tmp851 to i32
  %tmp853 = bitcast i32 %tmp852 to float
  store float %tmp853, float* %111, align 4
  %128 = load float* %scevgep5253, align 4
  %129 = load float* %scevgep51, align 4
  %130 = load float* %scevgep50, align 4
  %tmp846 = bitcast float %128 to i32
  %tmp847 = zext i32 %tmp846 to i96
  %tmp840 = bitcast float %129 to i32
  %tmp841 = zext i32 %tmp840 to i96
  %tmp842 = shl nuw nsw i96 %tmp841, 32
  %ins844 = or i96 %tmp842, %tmp847
  %tmp834 = bitcast float %130 to i32
  %tmp166 = zext i96 %ins844 to i128
  %mask167 = and i128 %memtmp178.115, -79228162514264337593543950336
  %tmp162 = zext i32 %tmp834 to i128
  %tmp163 = shl nuw nsw i128 %tmp162, 64
  %mask = or i128 %tmp163, %mask167
  %ins = or i128 %mask, %tmp166
  %ins.tr = trunc i128 %ins to i96
  store float %128, float* %112, align 4
  store float %129, float* %113, align 4
  %tmp806 = lshr i96 %ins.tr, 64
  %tmp807 = trunc i96 %tmp806 to i32
  %tmp808 = bitcast i32 %tmp807 to float
  store float %tmp808, float* %114, align 4
  br label %bb191

bb189:                                            ; preds = %bb162
  %131 = sext i32 %count_upper.118 to i64
  %.0582 = getelementptr inbounds [0 x %struct.Photon]* %88, i64 0, i64 %131, i32 0, i32 0
  store float %115, float* %.0582, align 4
  %.1584 = getelementptr inbounds [0 x %struct.Photon]* %88, i64 0, i64 %131, i32 0, i32 1
  store float %116, float* %.1584, align 4
  %.2586 = getelementptr inbounds [0 x %struct.Photon]* %88, i64 0, i64 %131, i32 0, i32 2
  store float %117, float* %.2586, align 4
  %.1.0 = getelementptr inbounds [0 x %struct.Photon]* %88, i64 0, i64 %131, i32 1, i32 0
  store float %118, float* %.1.0, align 4
  %.1.1 = getelementptr inbounds [0 x %struct.Photon]* %88, i64 0, i64 %131, i32 1, i32 1
  store float %119, float* %.1.1, align 4
  %.1.2 = getelementptr inbounds [0 x %struct.Photon]* %88, i64 0, i64 %131, i32 1, i32 2
  store float %120, float* %.1.2, align 4
  %.2.0 = getelementptr inbounds [0 x %struct.Photon]* %88, i64 0, i64 %131, i32 2, i64 0
  store float 1.000000e+00, float* %.2.0, align 4
  %.2.1 = getelementptr inbounds [0 x %struct.Photon]* %88, i64 0, i64 %131, i32 2, i64 1
  store float 1.000000e+00, float* %.2.1, align 4
  %.2.2 = getelementptr inbounds [0 x %struct.Photon]* %88, i64 0, i64 %131, i32 2, i64 2
  store float 1.000000e+00, float* %.2.2, align 4
  %132 = add nsw i32 %count_upper.118, 1
  br label %bb191

bb191:                                            ; preds = %bb189, %invcont188, %bb160
  %memtmp178.0 = phi i128 [ %memtmp178.115, %bb160 ], [ %ins, %invcont188 ], [ %memtmp178.115, %bb189 ]
  %memtmp166.0 = phi i128 [ %memtmp166.116, %bb160 ], [ %ins185, %invcont188 ], [ %memtmp166.116, %bb189 ]
  %count_upper.0 = phi i32 [ %count_upper.118, %bb160 ], [ %count_upper.118, %invcont188 ], [ %132, %bb189 ]
  %count_lower.0 = phi i32 [ %123, %bb160 ], [ %count_lower.119, %invcont188 ], [ %count_lower.119, %bb189 ]
  %exitcond = icmp eq i64 %tmp54, %tmp47
  br i1 %exitcond, label %bb193, label %invcont159

bb193:                                            ; preds = %bb191
  %133 = shl nsw i32 %currentPos, 1
  %134 = or i32 %133, 1
  invoke fastcc void @_ZN9PhotonMap8generateEP6PhotonS1_ii(%struct.Photon* %92, %struct.Photon* %photonHeap, i32 %count_lower.0, i32 %134) ssp
          to label %invcont194 unwind label %Unwind

invcont194:                                       ; preds = %bb193
  %135 = add i32 %133, 2
  invoke fastcc void @_ZN9PhotonMap8generateEP6PhotonS1_ii(%struct.Photon* %89, %struct.Photon* %photonHeap, i32 %count_upper.0, i32 %135) ssp
          to label %invcont195 unwind label %Unwind

invcont195:                                       ; preds = %invcont194
  call void @llvm.stackrestore(i8* %1)
  br label %return

return:                                           ; preds = %invcont195, %entry
  ret void

Unwind:                                           ; preds = %invcont194, %bb193
  %eh_ptr = call i8* @llvm.eh.exception()
  %eh_select201 = call i32 (i8*, i8*, ...)* @llvm.eh.selector(i8* %eh_ptr, i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*), i32 0)
  call void @llvm.stackrestore(i8* %1)
  call void @_Unwind_Resume_or_Rethrow(i8* %eh_ptr)
  unreachable
}

define internal fastcc void @_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi(double %position.0, float %position.1, i32 %p, %struct.Photon* %nearest, %struct.Photon* %heap, i32 %sizeHeap, i32* %size_nearest) nounwind ssp align 2 {
entry:
  %tmp143 = bitcast double %position.0 to i64
  %0 = shl i32 %p, 1
  %1 = add i32 %0, 2
  %2 = icmp slt i32 %1, %sizeHeap
  %3 = sext i32 %p to i64
  br i1 %2, label %bb, label %bb25

bb:                                               ; preds = %entry
  %4 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 5
  %5 = load i32* %4, align 4
  switch i32 %5, label %bb4 [
    i32 0, label %_ZN6Photon8get_axisEi.exit
    i32 1, label %_ZN6Photon8get_axisEi.exit6
  ]

_ZN6Photon8get_axisEi.exit:                       ; preds = %bb
  %tmp9913 = trunc i64 %tmp143 to i32
  %tmp10014 = bitcast i32 %tmp9913 to float
  %6 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 0, i32 0
  %.0.i = load float* %6, align 4
  %7 = fsub float %tmp10014, %.0.i
  br label %bb5

_ZN6Photon8get_axisEi.exit6:                      ; preds = %bb
  %tmp9517 = lshr i64 %tmp143, 32
  %tmp9618 = trunc i64 %tmp9517 to i32
  %tmp9719 = bitcast i32 %tmp9618 to float
  %8 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 0, i32 1
  %.0.i5 = load float* %8, align 4
  %9 = fsub float %tmp9719, %.0.i5
  br label %bb5

bb4:                                              ; preds = %bb
  %10 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 0, i32 2
  %.0.i11 = load float* %10, align 4
  %11 = fsub float %position.1, %.0.i11
  br label %bb5

bb5:                                              ; preds = %bb4, %_ZN6Photon8get_axisEi.exit6, %_ZN6Photon8get_axisEi.exit
  %phi.0 = phi float [ %7, %_ZN6Photon8get_axisEi.exit ], [ %9, %_ZN6Photon8get_axisEi.exit6 ], [ %11, %bb4 ]
  %12 = fcmp olt float %phi.0, 0.000000e+00
  br i1 %12, label %bb6, label %bb15

bb6:                                              ; preds = %bb5
  %13 = or i32 %0, 1
  tail call fastcc void @_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi(double %position.0, float %position.1, i32 %13, %struct.Photon* %nearest, %struct.Photon* %heap, i32 %sizeHeap, i32* %size_nearest) ssp
  %14 = fmul float %phi.0, %phi.0
  %15 = fcmp olt float %14, 0x3FDF5C28E0000000
  br i1 %15, label %bb9, label %bb25

bb9:                                              ; preds = %bb6
  tail call fastcc void @_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi(double %position.0, float %position.1, i32 %1, %struct.Photon* %nearest, %struct.Photon* %heap, i32 %sizeHeap, i32* %size_nearest) ssp
  br label %bb25

bb15:                                             ; preds = %bb5
  tail call fastcc void @_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi(double %position.0, float %position.1, i32 %1, %struct.Photon* %nearest, %struct.Photon* %heap, i32 %sizeHeap, i32* %size_nearest) ssp
  %16 = fmul float %phi.0, %phi.0
  %17 = fcmp olt float %16, 0x3FDF5C28E0000000
  br i1 %17, label %bb20, label %bb25

bb20:                                             ; preds = %bb15
  %18 = or i32 %0, 1
  tail call fastcc void @_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi(double %position.0, float %position.1, i32 %18, %struct.Photon* %nearest, %struct.Photon* %heap, i32 %sizeHeap, i32* %size_nearest) ssp
  br label %bb25

bb25:                                             ; preds = %bb20, %bb15, %bb9, %bb6, %entry
  %19 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 0, i32 0
  %20 = load float* %19, align 4
  %21 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 0, i32 1
  %22 = load float* %21, align 4
  %23 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 0, i32 2
  %24 = load float* %23, align 4
  %tmp178 = trunc i64 %tmp143 to i32
  %tmp179 = bitcast i32 %tmp178 to float
  %25 = fsub float %20, %tmp179
  %26 = fmul float %25, %25
  %tmp174 = lshr i64 %tmp143, 32
  %tmp175 = trunc i64 %tmp174 to i32
  %tmp176 = bitcast i32 %tmp175 to float
  %27 = fsub float %22, %tmp176
  %28 = fmul float %27, %27
  %29 = fadd float %26, %28
  %30 = fsub float %24, %position.1
  %31 = fmul float %30, %30
  %32 = fadd float %29, %31
  %33 = fcmp olt float %32, 0x3FDF5C28E0000000
  br i1 %33, label %bb37, label %return

bb37:                                             ; preds = %bb25
  %.117.0 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 1, i32 0
  %tmp33 = load float* %.117.0, align 1
  %.117.1 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 1, i32 1
  %tmp34 = load float* %.117.1, align 1
  %.117.2 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 1, i32 2
  %tmp35 = load float* %.117.2, align 1
  %.218.0 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 2, i64 0
  %tmp27 = load float* %.218.0, align 1
  %.218.1 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 2, i64 1
  %tmp28 = load float* %.218.1, align 1
  %.218.2 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 2, i64 2
  %tmp29 = load float* %.218.2, align 1
  %.319 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 3
  %tmp20 = load float* %.319, align 1
  %.421 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 4
  %tmp22 = load float* %.421, align 1
  %.523 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 5
  %tmp24 = load i32* %.523, align 1
  %.625 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 6
  %tmp26 = load float* %.625, align 1
  %34 = load i32* %size_nearest, align 4
  %35 = sext i32 %34 to i64
  %.045 = getelementptr inbounds %struct.Photon* %nearest, i64 %35, i32 0, i32 0
  store float %20, float* %.045, align 1
  %.147 = getelementptr inbounds %struct.Photon* %nearest, i64 %35, i32 0, i32 1
  store float %22, float* %.147, align 1
  %.249 = getelementptr inbounds %struct.Photon* %nearest, i64 %35, i32 0, i32 2
  store float %24, float* %.249, align 1
  %.1.0 = getelementptr inbounds %struct.Photon* %nearest, i64 %35, i32 1, i32 0
  store float %tmp33, float* %.1.0, align 1
  %.1.1 = getelementptr inbounds %struct.Photon* %nearest, i64 %35, i32 1, i32 1
  store float %tmp34, float* %.1.1, align 1
  %.1.2 = getelementptr inbounds %struct.Photon* %nearest, i64 %35, i32 1, i32 2
  store float %tmp35, float* %.1.2, align 1
  %.2.0 = getelementptr inbounds %struct.Photon* %nearest, i64 %35, i32 2, i64 0
  store float %tmp27, float* %.2.0, align 1
  %.2.1 = getelementptr inbounds %struct.Photon* %nearest, i64 %35, i32 2, i64 1
  store float %tmp28, float* %.2.1, align 1
  %.2.2 = getelementptr inbounds %struct.Photon* %nearest, i64 %35, i32 2, i64 2
  store float %tmp29, float* %.2.2, align 1
  %.3 = getelementptr inbounds %struct.Photon* %nearest, i64 %35, i32 3
  store float %tmp20, float* %.3, align 1
  %.4 = getelementptr inbounds %struct.Photon* %nearest, i64 %35, i32 4
  store float %tmp22, float* %.4, align 1
  %.5 = getelementptr inbounds %struct.Photon* %nearest, i64 %35, i32 5
  store i32 %tmp24, i32* %.5, align 1
  %.6 = getelementptr inbounds %struct.Photon* %nearest, i64 %35, i32 6
  store float %tmp26, float* %.6, align 1
  %36 = add nsw i32 %34, 1
  store i32 %36, i32* %size_nearest, align 4
  %37 = icmp sgt i32 %36, 50
  br i1 %37, label %bb41, label %return

bb41:                                             ; preds = %bb37
  store i32 %34, i32* %size_nearest, align 4
  br label %return

return:                                           ; preds = %bb41, %bb37, %bb25
  ret void
}

declare float @llvm.trax.invsqrt(float) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare double @ldexp(double, i32)
