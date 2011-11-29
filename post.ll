; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

%struct.Color = type { float, float, float }
%struct.Photon = type { %struct.Color, %struct.Color, [3 x float], i32, float }
%struct.PhotonMap = type { [5000 x %struct.Photon], i32, i32, [3 x float], [3 x float] }

declare float @llvm.trax.loadf(i32, i32) nounwind

declare i32 @llvm.trax.loadi(i32, i32) nounwind

declare void @llvm.trax.storef(float, i32, i32) nounwind

declare float @llvm.trax.rand() nounwind

define i32 @main() nounwind ssp {
invcont8:
  %stack.i = alloca [32 x i32], align 4
  %map = alloca %struct.PhotonMap, align 8
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
  br label %bb.i89

bb.i89:                                           ; preds = %bb.i89, %invcont8
  %indvar759 = phi i64 [ 0, %invcont8 ], [ %indvar.next760, %bb.i89 ]
  %scevgep762 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar759, i32 2, i64 2
  %scevgep763 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar759, i32 2, i64 1
  %scevgep764 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar759, i32 2, i64 0
  %scevgep766 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar759
  %29 = bitcast %struct.Photon* %scevgep766 to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 24, i32 4, i1 false)
  store float 1.000000e+00, float* %scevgep764, align 4
  store float 1.000000e+00, float* %scevgep763, align 4
  store float 1.000000e+00, float* %scevgep762, align 4
  %indvar.next760 = add i64 %indvar759, 1
  %exitcond761 = icmp eq i64 %indvar.next760, 5000
  br i1 %exitcond761, label %invcont11, label %bb.i89

invcont11:                                        ; preds = %bb.i89
  %30 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 2
  store float 1.000000e+07, float* %30, align 8
  %31 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 1
  store float 1.000000e+07, float* %31, align 4
  %32 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 0
  store float 1.000000e+07, float* %32, align 8
  %33 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 2
  store float -1.000000e+07, float* %33, align 4
  %34 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 1
  store float -1.000000e+07, float* %34, align 4
  %35 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 0
  store float -1.000000e+07, float* %35, align 4
  %36 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %37 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %38 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %39 = alloca [135000 x %struct.Photon], align 1
  br label %bb

bb:                                               ; preds = %bb, %invcont11
  %indvar749 = phi i64 [ 0, %invcont11 ], [ %indvar.next750, %bb ]
  %scevgep752 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %indvar749, i32 2, i64 2
  %scevgep753 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %indvar749, i32 2, i64 1
  %scevgep754 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %indvar749, i32 2, i64 0
  %scevgep756 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %indvar749
  %40 = bitcast %struct.Photon* %scevgep756 to i8*
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 24, i32 4, i1 false)
  store float 1.000000e+00, float* %scevgep754, align 4
  store float 1.000000e+00, float* %scevgep753, align 4
  store float 1.000000e+00, float* %scevgep752, align 4
  %indvar.next750 = add i64 %indvar749, 1
  %exitcond751 = icmp eq i64 %indvar.next750, 135000
  br i1 %exitcond751, label %bb13, label %bb

bb13:                                             ; preds = %bb
  %41 = alloca [45000 x %struct.Photon], align 1
  br label %bb14

bb14:                                             ; preds = %bb14, %bb13
  %indvar739 = phi i64 [ 0, %bb13 ], [ %indvar.next740, %bb14 ]
  %scevgep742 = getelementptr [45000 x %struct.Photon]* %41, i64 0, i64 %indvar739, i32 2, i64 2
  %scevgep743 = getelementptr [45000 x %struct.Photon]* %41, i64 0, i64 %indvar739, i32 2, i64 1
  %scevgep744 = getelementptr [45000 x %struct.Photon]* %41, i64 0, i64 %indvar739, i32 2, i64 0
  %scevgep746 = getelementptr [45000 x %struct.Photon]* %41, i64 0, i64 %indvar739
  %42 = bitcast %struct.Photon* %scevgep746 to i8*
  call void @llvm.memset.p0i8.i64(i8* %42, i8 0, i64 24, i32 4, i1 false)
  store float 1.000000e+00, float* %scevgep744, align 4
  store float 1.000000e+00, float* %scevgep743, align 4
  store float 1.000000e+00, float* %scevgep742, align 4
  %indvar.next740 = add i64 %indvar739, 1
  %exitcond741 = icmp eq i64 %indvar.next740, 45000
  br i1 %exitcond741, label %invcont18, label %bb14

invcont18:                                        ; preds = %bb14
  %43 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %44 = call float @llvm.trax.loadf(i32 %43, i32 0) nounwind
  %45 = call float @llvm.trax.loadf(i32 %43, i32 1) nounwind
  %46 = call float @llvm.trax.loadf(i32 %43, i32 2) nounwind
  %tmp384 = bitcast float %44 to i32
  %tmp378 = bitcast float %45 to i32
  %tmp372 = bitcast float %46 to i32
  br label %bb67.outer.preheader

bb.i112:                                          ; preds = %bb68, %bb.i112
  %47 = call float @llvm.trax.rand()
  %48 = fadd float %47, -5.000000e-01
  %49 = fmul float %48, 2.000000e+00
  %50 = call float @llvm.trax.rand()
  %51 = fadd float %50, -5.000000e-01
  %52 = fmul float %51, 2.000000e+00
  %53 = call float @llvm.trax.rand()
  %54 = fadd float %53, -5.000000e-01
  %55 = fmul float %54, 2.000000e+00
  %56 = fmul float %49, %49
  %57 = fmul float %52, %52
  %58 = fadd float %56, %57
  %59 = fmul float %55, %55
  %60 = fadd float %58, %59
  %61 = fcmp ogt float %60, 1.000000e+00
  br i1 %61, label %bb.i112, label %invcont41

invcont41:                                        ; preds = %bb.i112
  %62 = call float @llvm.trax.invsqrt(float %60) nounwind
  %63 = fdiv float 1.000000e+00, %62
  %64 = fdiv float %55, %63
  %65 = fdiv float %52, %63
  %66 = fdiv float %49, %63
  %tmp18.i = bitcast float %66 to i32
  %tmp12.i = bitcast float %65 to i32
  %tmp2110 = bitcast float %64 to i32
  %tmp2140 = zext i32 %tmp18.i to i96
  %tmp2134 = zext i32 %tmp12.i to i96
  %tmp2135 = shl nuw nsw i96 %tmp2134, 32
  %ins2137 = or i96 %tmp2140, %tmp2135
  %tmp277 = zext i96 %ins2137 to i128
  %mask278 = and i128 %memtmp29.0, -79228162514264337593543950336
  %tmp271 = zext i32 %tmp2110 to i128
  %tmp272 = shl nuw nsw i128 %tmp271, 64
  %mask273 = or i128 %tmp272, %mask278
  %ins274 = or i128 %mask273, %tmp277
  %ins274.tr = trunc i128 %ins274 to i96
  %mask444 = and i512 %mask469596, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins445 = or i512 %mask444, 1343554297
  %tmp2144 = lshr i96 %ins274.tr, 64
  %tmp339 = trunc i96 %tmp2144 to i32
  %tmp340 = bitcast i32 %tmp339 to float
  br label %bb.outer.i

bb.outer.i:                                       ; preds = %bb9.i, %invcont41
  %mask469598 = phi i512 [ %ins445, %invcont41 ], [ %mask469597, %bb9.i ]
  %node_id.0.ph.i = phi i32 [ 0, %invcont41 ], [ %224, %bb9.i ]
  %sp.0.ph.i = phi i32 [ -1, %invcont41 ], [ %225, %bb9.i ]
  %tmp404.i = add i32 %sp.0.ph.i, 1
  %tmp701 = sext i32 %tmp404.i to i64
  %tmp704 = zext i32 %sp.0.ph.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb3.i, %bb.outer.i
  %indvar.i = phi i64 [ %indvar.next.i, %bb3.i ], [ 0, %bb.outer.i ]
  %node_id.0.i = phi i32 [ %102, %bb3.i ], [ %node_id.0.ph.i, %bb.outer.i ]
  %tmp702 = add i64 %tmp701, %indvar.i
  %scevgep.i = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp702
  %tmp705 = add i64 %tmp704, %indvar.i
  %sp.0.i = trunc i64 %tmp705 to i32
  %67 = shl nsw i32 %node_id.0.i, 3
  %68 = add nsw i32 %67, %38
  %69 = call float @llvm.trax.loadf(i32 %68, i32 2) nounwind
  %70 = call float @llvm.trax.loadf(i32 %68, i32 1) nounwind
  %71 = call float @llvm.trax.loadf(i32 %68, i32 0) nounwind
  %72 = call float @llvm.trax.loadf(i32 %68, i32 5) nounwind
  %73 = call float @llvm.trax.loadf(i32 %68, i32 4) nounwind
  %74 = call float @llvm.trax.loadf(i32 %68, i32 3) nounwind
  %75 = fsub float %71, %tmp380
  %76 = fdiv float %75, %66
  %77 = fsub float %74, %tmp380
  %78 = fdiv float %77, %66
  %79 = fcmp ogt float %76, %78
  %tx1.i.0.i = select i1 %79, float %78, float %76
  %tx2.i.0.i = select i1 %79, float %76, float %78
  %80 = fcmp ogt float %tx1.i.0.i, -1.000000e+10
  %tnear.i.0.i = select i1 %80, float %tx1.i.0.i, float -1.000000e+10
  %81 = fcmp olt float %tx2.i.0.i, 1.000000e+10
  %tfar.i.0.i = select i1 %81, float %tx2.i.0.i, float 1.000000e+10
  %82 = fcmp ogt float %tnear.i.0.i, %tfar.i.0.i
  %83 = fcmp olt float %tfar.i.0.i, 0.000000e+00
  %or.cond.i = or i1 %82, %83
  br i1 %or.cond.i, label %bb7.i, label %bb29.i.i

bb29.i.i:                                         ; preds = %bb.i
  %84 = fsub float %70, %tmp373
  %85 = fdiv float %84, %65
  %86 = fsub float %73, %tmp373
  %87 = fdiv float %86, %65
  %88 = fcmp ogt float %85, %87
  %ty1.i.0.i = select i1 %88, float %87, float %85
  %ty2.i.0.i = select i1 %88, float %85, float %87
  %89 = fcmp ogt float %ty1.i.0.i, %tnear.i.0.i
  %tnear.i.1.i = select i1 %89, float %ty1.i.0.i, float %tnear.i.0.i
  %90 = fcmp olt float %ty2.i.0.i, %tfar.i.0.i
  %tfar.i.1.i = select i1 %90, float %ty2.i.0.i, float %tfar.i.0.i
  %91 = fcmp ogt float %tnear.i.1.i, %tfar.i.1.i
  %92 = fcmp olt float %tfar.i.1.i, 0.000000e+00
  %or.cond1395.i = or i1 %91, %92
  br i1 %or.cond1395.i, label %bb7.i, label %bb62.i.i

bb62.i.i:                                         ; preds = %bb29.i.i
  %93 = fsub float %69, %tmp364
  %94 = fdiv float %93, %tmp340
  %95 = fsub float %72, %tmp364
  %96 = fdiv float %95, %tmp340
  %97 = fcmp ogt float %94, %96
  %tz1.i.0.i = select i1 %97, float %96, float %94
  %tz2.i.0.i = select i1 %97, float %94, float %96
  %98 = fcmp ogt float %tz1.i.0.i, %tnear.i.1.i
  %tnear.i.2.i = select i1 %98, float %tz1.i.0.i, float %tnear.i.1.i
  %99 = fcmp olt float %tz2.i.0.i, %tfar.i.1.i
  %tfar.i.2.i = select i1 %99, float %tz2.i.0.i, float %tfar.i.1.i
  %100 = fcmp ogt float %tnear.i.2.i, %tfar.i.2.i
  %101 = fcmp olt float %tfar.i.2.i, 0.000000e+00
  %or.cond1396.i = or i1 %100, %101
  br i1 %or.cond1396.i, label %bb7.i, label %bb1.i16

bb1.i16:                                          ; preds = %bb62.i.i
  %102 = call i32 @llvm.trax.loadi(i32 %68, i32 7) nounwind
  %103 = call i32 @llvm.trax.loadi(i32 %68, i32 6) nounwind
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %bb3.i, label %bb6.preheader.i

bb6.preheader.i:                                  ; preds = %bb1.i16
  %105 = icmp sgt i32 %103, 0
  br i1 %105, label %bb5.i17, label %bb7.i

bb3.i:                                            ; preds = %bb1.i16
  %106 = add nsw i32 %102, 1
  store i32 %106, i32* %scevgep.i, align 4
  %indvar.next.i = add i64 %indvar.i, 1
  br label %bb.i

bb5.i17:                                          ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i
  %mask469593 = phi i512 [ %mask469592, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %mask469598, %bb6.preheader.i ]
  %storemerge388.i = phi i32 [ %220, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ 0, %bb6.preheader.i ]
  %tmp708 = mul i32 %storemerge388.i, 11
  %tmp396.i = add i32 %102, %tmp708
  %107 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %108 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %109 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %110 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %111 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %112 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %113 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %114 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %115 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %116 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %117 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %118 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %119 = mul nsw i32 %116, 25
  %120 = add nsw i32 %118, %119
  %121 = call float @llvm.trax.loadf(i32 %120, i32 6) nounwind
  %122 = call float @llvm.trax.loadf(i32 %120, i32 5) nounwind
  %123 = call float @llvm.trax.loadf(i32 %120, i32 4) nounwind
  %124 = fsub float %109, %115
  %125 = fsub float %108, %114
  %126 = fsub float %107, %113
  %127 = fsub float %112, %115
  %128 = fsub float %111, %114
  %129 = fsub float %110, %113
  %130 = fmul float %125, %129
  %131 = fmul float %128, %126
  %132 = fsub float %130, %131
  %133 = fmul float %127, %126
  %134 = fmul float %124, %129
  %135 = fsub float %133, %134
  %136 = fmul float %128, %124
  %137 = fmul float %127, %125
  %138 = fsub float %136, %137
  %139 = fmul float %132, %132
  %140 = fmul float %135, %135
  %141 = fadd float %139, %140
  %142 = fmul float %138, %138
  %143 = fadd float %141, %142
  %144 = call float @llvm.trax.invsqrt(float %143) nounwind
  %145 = fmul float %65, %129
  %146 = fmul float %128, %tmp340
  %147 = fsub float %145, %146
  %148 = fmul float %127, %tmp340
  %149 = fmul float %66, %129
  %150 = fsub float %148, %149
  %151 = fmul float %128, %66
  %152 = fmul float %127, %65
  %153 = fsub float %151, %152
  %154 = fmul float %147, %124
  %155 = fadd float %154, 0.000000e+00
  %156 = fmul float %150, %125
  %157 = fadd float %156, %155
  %158 = fmul float %153, %126
  %159 = fadd float %158, %157
  %160 = fdiv float 1.000000e+00, %159
  %161 = fsub float %tmp380, %115
  %162 = fsub float %tmp373, %114
  %163 = fsub float %tmp364, %113
  %164 = fmul float %147, %161
  %165 = fadd float %164, 0.000000e+00
  %166 = fmul float %150, %162
  %167 = fadd float %166, %165
  %168 = fmul float %153, %163
  %169 = fadd float %168, %167
  %170 = fmul float %169, %160
  %171 = fcmp olt float %170, 0.000000e+00
  %172 = fcmp ogt float %170, 1.000000e+00
  %or.cond1397.i = or i1 %171, %172
  br i1 %or.cond1397.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb73.i.i

bb73.i.i:                                         ; preds = %bb5.i17
  %173 = fmul float %162, %126
  %174 = fmul float %125, %163
  %175 = fsub float %173, %174
  %176 = fmul float %124, %163
  %177 = fmul float %161, %126
  %178 = fsub float %176, %177
  %179 = fmul float %125, %161
  %180 = fmul float %124, %162
  %181 = fsub float %179, %180
  %182 = fmul float %175, %66
  %183 = fadd float %182, 0.000000e+00
  %184 = fmul float %178, %65
  %185 = fadd float %184, %183
  %186 = fmul float %181, %tmp340
  %187 = fadd float %186, %185
  %188 = fmul float %187, %160
  %189 = fcmp olt float %188, 0.000000e+00
  br i1 %189, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb94.i55.i

bb94.i55.i:                                       ; preds = %bb73.i.i
  %190 = fadd float %188, %170
  %191 = fcmp ogt float %190, 1.000000e+00
  br i1 %191, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb96.i.i

bb96.i.i:                                         ; preds = %bb94.i55.i
  %192 = fmul float %175, %127
  %193 = fadd float %192, 0.000000e+00
  %194 = fmul float %178, %128
  %195 = fadd float %194, %193
  %196 = fmul float %181, %129
  %197 = fadd float %196, %195
  %198 = fmul float %197, %160
  %199 = fcmp ule float %198, 0.000000e+00
  %200 = fcmp olt float %198, 0x3F50624DE0000000
  %or.cond1398.i = or i1 %199, %200
  %201 = fcmp oeq float %198, 1.000000e+10
  %or.cond1399.i = or i1 %or.cond1398.i, %201
  br i1 %or.cond1399.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb96.i.i
  %tmp434 = trunc i512 %mask469593 to i32
  %tmp435 = bitcast i32 %tmp434 to float
  %202 = fcmp ogt float %tmp435, %198
  br i1 %202, label %bb3.i.i.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

bb3.i.i.i:                                        ; preds = %bb2.i.i.i
  %tmp429 = bitcast float %198 to i32
  %tmp430 = zext i32 %tmp429 to i512
  %203 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %204 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %205 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %206 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %207 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %208 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %209 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %210 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %211 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %212 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %213 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %tmp369.i = bitcast float %205 to i32
  %tmp370.i = zext i32 %tmp369.i to i480
  %tmp301.i = bitcast float %204 to i32
  %tmp302.i = zext i32 %tmp301.i to i480
  %tmp303.i = shl nuw nsw i480 %tmp302.i, 32
  %tmp295.i = bitcast float %203 to i32
  %tmp296.i = zext i32 %tmp295.i to i480
  %tmp297.i = shl nuw nsw i480 %tmp296.i, 64
  %tmp363.i = bitcast float %208 to i32
  %tmp364.i = zext i32 %tmp363.i to i480
  %tmp365.i = shl nuw nsw i480 %tmp364.i, 96
  %tmp357.i = bitcast float %207 to i32
  %tmp358.i = zext i32 %tmp357.i to i480
  %tmp359.i = shl nuw nsw i480 %tmp358.i, 128
  %tmp351.i = bitcast float %206 to i32
  %tmp352.i = zext i32 %tmp351.i to i480
  %tmp353.i = shl nuw nsw i480 %tmp352.i, 160
  %tmp345.i = bitcast float %211 to i32
  %tmp346.i = zext i32 %tmp345.i to i480
  %tmp347.i = shl nuw nsw i480 %tmp346.i, 192
  %tmp339.i = bitcast float %210 to i32
  %tmp340.i = zext i32 %tmp339.i to i480
  %tmp341.i = shl nuw nsw i480 %tmp340.i, 224
  %tmp333.i = bitcast float %209 to i32
  %tmp334.i = zext i32 %tmp333.i to i480
  %tmp335.i = shl nuw nsw i480 %tmp334.i, 256
  %tmp290.i = zext i32 %213 to i480
  %tmp291.i = shl nuw nsw i480 %tmp290.i, 288
  %214 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %215 = mul nsw i32 %212, 25
  %216 = add nsw i32 %214, %215
  %217 = call float @llvm.trax.loadf(i32 %216, i32 6) nounwind
  %218 = call float @llvm.trax.loadf(i32 %216, i32 5) nounwind
  %219 = call float @llvm.trax.loadf(i32 %216, i32 4) nounwind
  %tmp325.i = bitcast float %219 to i32
  %tmp326.i = zext i32 %tmp325.i to i480
  %tmp327.i = shl nuw nsw i480 %tmp326.i, 320
  %tmp317.i = bitcast float %218 to i32
  %tmp318.i = zext i32 %tmp317.i to i480
  %tmp319.i = shl nuw nsw i480 %tmp318.i, 352
  %tmp309.i = bitcast float %217 to i32
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
  %tmp424 = zext i480 %ins285.i to i512
  %tmp425 = shl nuw i512 %tmp424, 32
  %ins427 = or i512 %tmp425, %tmp430
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i: ; preds = %bb3.i.i.i, %bb2.i.i.i, %bb96.i.i, %bb94.i55.i, %bb73.i.i, %bb5.i17
  %mask469592 = phi i512 [ %ins427, %bb3.i.i.i ], [ %mask469593, %bb2.i.i.i ], [ %mask469593, %bb96.i.i ], [ %mask469593, %bb94.i55.i ], [ %mask469593, %bb73.i.i ], [ %mask469593, %bb5.i17 ]
  %220 = add nsw i32 %storemerge388.i, 1
  %exitcond707 = icmp eq i32 %220, %103
  br i1 %exitcond707, label %bb7.i, label %bb5.i17

bb7.i:                                            ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i, %bb62.i.i, %bb29.i.i, %bb.i
  %mask469597 = phi i512 [ %mask469598, %bb6.preheader.i ], [ %mask469598, %bb.i ], [ %mask469598, %bb29.i.i ], [ %mask469598, %bb62.i.i ], [ %mask469592, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ]
  %221 = icmp slt i32 %sp.0.i, 0
  br i1 %221, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit, label %bb9.i

bb9.i:                                            ; preds = %bb7.i
  %222 = sext i32 %sp.0.i to i64
  %223 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %222
  %224 = load i32* %223, align 4
  %225 = add nsw i32 %sp.0.i, -1
  br label %bb.outer.i

_ZN3BVH9intersectER9HitRecordR3Ray.exit:          ; preds = %bb7.i
  %tmp441 = trunc i512 %mask469597 to i32
  %tmp442 = bitcast i32 %tmp441 to float
  %226 = fcmp olt float %tmp442, 1.000000e+10
  %indvar.next716 = add i32 %indvar715, 1
  br i1 %226, label %invcont60, label %bb68

invcont60:                                        ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %tmp437 = lshr i512 %mask469597, 480
  %tmp438 = trunc i512 %tmp437 to i32
  %tmp439 = bitcast i32 %tmp438 to float
  %227 = fmul float %66, %tmp442
  %228 = fmul float %65, %tmp442
  %229 = fmul float %tmp340, %tmp442
  %230 = fadd float %227, %tmp380
  %231 = fadd float %228, %tmp373
  %232 = fadd float %tmp364, %229
  %tmp17.i.i = bitcast float %230 to i32
  %tmp11.i.i = bitcast float %231 to i32
  %tmp248 = bitcast float %232 to i32
  store float %230, float* %.0295, align 4
  store float %231, float* %.1297, align 4
  store float %232, float* %.2299, align 4
  store float 0.000000e+00, float* %.1.0, align 4
  store float 0.000000e+00, float* %.1.1, align 4
  store float 0.000000e+00, float* %.1.2, align 4
  store float %tmp439, float* %.2.0, align 4
  store float %tmp439, float* %.2.1, align 4
  store float %tmp439, float* %.2.2, align 4
  %indvar.next721 = add i64 %indvar720, 1
  br label %bb67.outer

bb67.outer:                                       ; preds = %bb67.outer.preheader, %invcont60
  %indvar720 = phi i64 [ 0, %bb67.outer.preheader ], [ %indvar.next721, %invcont60 ]
  %mask469594 = phi i512 [ %mask469595659, %bb67.outer.preheader ], [ %mask469597, %invcont60 ]
  %memtmp29.0.ph = phi i128 [ %memtmp29.1660, %bb67.outer.preheader ], [ %ins274, %invcont60 ]
  %ray_origin.0.ph.off0 = phi i32 [ %ray_origin.1.off0661, %bb67.outer.preheader ], [ %tmp17.i.i, %invcont60 ]
  %ray_origin.0.ph.off32 = phi i32 [ %ray_origin.1.off32662, %bb67.outer.preheader ], [ %tmp11.i.i, %invcont60 ]
  %ray_origin.0.ph.off64 = phi i32 [ %ray_origin.1.off64663, %bb67.outer.preheader ], [ %tmp248, %invcont60 ]
  %bounces.0.ph = phi i32 [ 0, %bb67.outer.preheader ], [ %tmp718, %invcont60 ]
  %indvar682 = trunc i64 %indvar720 to i32
  %tmp724 = add i64 %tmp723, %indvar720
  %count.0.ph = trunc i64 %tmp724 to i32
  %tmp727 = add i64 %tmp726, %indvar720
  %.2.2 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %tmp727, i32 2, i64 2
  %.2.1 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %tmp727, i32 2, i64 1
  %.2.0 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %tmp727, i32 2, i64 0
  %.1.2 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %tmp727, i32 1, i32 2
  %.1.1 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %tmp727, i32 1, i32 1
  %.1.0 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %tmp727, i32 1, i32 0
  %.2299 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %tmp727, i32 0, i32 2
  %.1297 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %tmp727, i32 0, i32 1
  %.0295 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %tmp727, i32 0, i32 0
  %tmp380 = bitcast i32 %ray_origin.0.ph.off0 to float
  %tmp373 = bitcast i32 %ray_origin.0.ph.off32 to float
  %tmp364 = bitcast i32 %ray_origin.0.ph.off64 to float
  %tmp717 = add i32 %bounces.0.ph, 1
  br label %bb68

bb68:                                             ; preds = %bb67.outer, %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %indvar715 = phi i32 [ 0, %bb67.outer ], [ %indvar.next716, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %mask469596 = phi i512 [ %mask469594, %bb67.outer ], [ %mask469597, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %memtmp29.0 = phi i128 [ %memtmp29.0.ph, %bb67.outer ], [ %ins274, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %tmp718 = add i32 %tmp717, %indvar715
  %bounces.0 = add i32 %bounces.0.ph, %indvar715
  %233 = icmp slt i32 %bounces.0, 3
  br i1 %233, label %bb.i112, label %bb69

bb69:                                             ; preds = %bb68
  %234 = add nsw i32 %iterator.0665, 1
  %exitcond738 = icmp eq i32 %234, 45000
  br i1 %exitcond738, label %invcont73, label %bb67.outer.preheader

bb67.outer.preheader:                             ; preds = %bb69, %invcont18
  %iterator.0665 = phi i32 [ 0, %invcont18 ], [ %234, %bb69 ]
  %count.1664 = phi i32 [ 0, %invcont18 ], [ %count.0.ph, %bb69 ]
  %ray_origin.1.off64663 = phi i32 [ %tmp372, %invcont18 ], [ %ray_origin.0.ph.off64, %bb69 ]
  %ray_origin.1.off32662 = phi i32 [ %tmp378, %invcont18 ], [ %ray_origin.0.ph.off32, %bb69 ]
  %ray_origin.1.off0661 = phi i32 [ %tmp384, %invcont18 ], [ %ray_origin.0.ph.off0, %bb69 ]
  %memtmp29.1660 = phi i128 [ undef, %invcont18 ], [ %memtmp29.0, %bb69 ]
  %mask469595659 = phi i512 [ undef, %invcont18 ], [ %mask469596, %bb69 ]
  %tmp723 = zext i32 %count.1664 to i64
  %tmp726 = sext i32 %count.1664 to i64
  br label %bb67.outer

invcont73:                                        ; preds = %bb69
  %235 = call i32 @llvm.trax.atominc(i32 0)
  %236 = mul nsw i32 %1, %0
  %237 = sitofp i32 %0 to float
  %238 = fdiv float %237, -2.000000e+00
  %239 = sitofp i32 %1 to float
  %240 = fdiv float %239, -2.000000e+00
  %241 = icmp sgt i32 %236, %235
  br i1 %241, label %invcont82.lr.ph, label %return

invcont82.lr.ph:                                  ; preds = %invcont73
  %242 = icmp sgt i32 %count.0.ph, 0
  %tmp684 = add i32 %count.1664, %indvar682
  %tmp685 = zext i32 %tmp684 to i64
  br label %invcont82

invcont82:                                        ; preds = %invcont95, %invcont82.lr.ph
  %storemerge2636 = phi i32 [ %235, %invcont82.lr.ph ], [ %503, %invcont95 ]
  %memtmp31.i.1635 = phi i128 [ undef, %invcont82.lr.ph ], [ %memtmp31.i.0.lcssa, %invcont95 ]
  %mask309604634 = phi i512 [ undef, %invcont82.lr.ph ], [ %mask309605, %invcont95 ]
  %243 = sdiv i32 %storemerge2636, %0
  %244 = srem i32 %storemerge2636, %0
  %245 = sitofp i32 %244 to float
  %246 = fadd float %245, %238
  %247 = fadd float %246, 5.000000e-01
  %248 = fmul float %247, 2.000000e+00
  %249 = fdiv float %248, %237
  %250 = sitofp i32 %243 to float
  %251 = fadd float %250, %240
  %252 = fadd float %251, 5.000000e-01
  %253 = fmul float %252, 2.000000e+00
  %254 = fdiv float %253, %239
  %255 = fmul float %26, %254
  %256 = fmul float %27, %254
  %257 = fmul float %28, %254
  %258 = fmul float %22, %249
  %259 = fmul float %23, %249
  %260 = fmul float %24, %249
  %261 = fadd float %255, %258
  %262 = fadd float %256, %259
  %263 = fadd float %260, %257
  %264 = fadd float %261, %18
  %265 = fadd float %262, %19
  %266 = fadd float %20, %263
  %267 = fmul float %264, %264
  %268 = fmul float %265, %265
  %269 = fadd float %267, %268
  %270 = fmul float %266, %266
  %271 = fadd float %269, %270
  %272 = call float @llvm.trax.invsqrt(float %271) nounwind
  %273 = fdiv float 1.000000e+00, %272
  %274 = fdiv float %266, %273
  %275 = fdiv float %265, %273
  %276 = fdiv float %264, %273
  %mask232 = and i512 %mask309604634, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins233 = or i512 %mask232, 1343554297
  br label %bb.outer.i53

bb.outer.i53:                                     ; preds = %bb9.i153, %invcont82
  %mask309606 = phi i512 [ %ins233, %invcont82 ], [ %mask309605, %bb9.i153 ]
  %node_id.0.ph.i48 = phi i32 [ 0, %invcont82 ], [ %434, %bb9.i153 ]
  %sp.0.ph.i49 = phi i32 [ -1, %invcont82 ], [ %435, %bb9.i153 ]
  %tmp404.i51 = add i32 %sp.0.ph.i49, 1
  %tmp677 = sext i32 %tmp404.i51 to i64
  %tmp679 = zext i32 %sp.0.ph.i49 to i64
  br label %bb.i65

bb.i65:                                           ; preds = %bb3.i81, %bb.outer.i53
  %indvar.i54 = phi i64 [ %indvar.next.i80, %bb3.i81 ], [ 0, %bb.outer.i53 ]
  %node_id.0.i55 = phi i32 [ %312, %bb3.i81 ], [ %node_id.0.ph.i48, %bb.outer.i53 ]
  %tmp678 = add i64 %tmp677, %indvar.i54
  %scevgep.i59 = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp678
  %tmp680 = add i64 %tmp679, %indvar.i54
  %sp.0.i57 = trunc i64 %tmp680 to i32
  %277 = shl nsw i32 %node_id.0.i55, 3
  %278 = add nsw i32 %277, %38
  %279 = call float @llvm.trax.loadf(i32 %278, i32 2) nounwind
  %280 = call float @llvm.trax.loadf(i32 %278, i32 1) nounwind
  %281 = call float @llvm.trax.loadf(i32 %278, i32 0) nounwind
  %282 = call float @llvm.trax.loadf(i32 %278, i32 5) nounwind
  %283 = call float @llvm.trax.loadf(i32 %278, i32 4) nounwind
  %284 = call float @llvm.trax.loadf(i32 %278, i32 3) nounwind
  %285 = fsub float %281, %10
  %286 = fdiv float %285, %276
  %287 = fsub float %284, %10
  %288 = fdiv float %287, %276
  %289 = fcmp ogt float %286, %288
  %tx1.i.0.i60 = select i1 %289, float %288, float %286
  %tx2.i.0.i61 = select i1 %289, float %286, float %288
  %290 = fcmp ogt float %tx1.i.0.i60, -1.000000e+10
  %tnear.i.0.i62 = select i1 %290, float %tx1.i.0.i60, float -1.000000e+10
  %291 = fcmp olt float %tx2.i.0.i61, 1.000000e+10
  %tfar.i.0.i63 = select i1 %291, float %tx2.i.0.i61, float 1.000000e+10
  %292 = fcmp ogt float %tnear.i.0.i62, %tfar.i.0.i63
  %293 = fcmp olt float %tfar.i.0.i63, 0.000000e+00
  %or.cond.i64 = or i1 %292, %293
  br i1 %or.cond.i64, label %bb7.i152, label %bb29.i.i71

bb29.i.i71:                                       ; preds = %bb.i65
  %294 = fsub float %280, %11
  %295 = fdiv float %294, %275
  %296 = fsub float %283, %11
  %297 = fdiv float %296, %275
  %298 = fcmp ogt float %295, %297
  %ty1.i.0.i66 = select i1 %298, float %297, float %295
  %ty2.i.0.i67 = select i1 %298, float %295, float %297
  %299 = fcmp ogt float %ty1.i.0.i66, %tnear.i.0.i62
  %tnear.i.1.i68 = select i1 %299, float %ty1.i.0.i66, float %tnear.i.0.i62
  %300 = fcmp olt float %ty2.i.0.i67, %tfar.i.0.i63
  %tfar.i.1.i69 = select i1 %300, float %ty2.i.0.i67, float %tfar.i.0.i63
  %301 = fcmp ogt float %tnear.i.1.i68, %tfar.i.1.i69
  %302 = fcmp olt float %tfar.i.1.i69, 0.000000e+00
  %or.cond1395.i70 = or i1 %301, %302
  br i1 %or.cond1395.i70, label %bb7.i152, label %bb62.i.i77

bb62.i.i77:                                       ; preds = %bb29.i.i71
  %303 = fsub float %279, %12
  %304 = fdiv float %303, %274
  %305 = fsub float %282, %12
  %306 = fdiv float %305, %274
  %307 = fcmp ogt float %304, %306
  %tz1.i.0.i72 = select i1 %307, float %306, float %304
  %tz2.i.0.i73 = select i1 %307, float %304, float %306
  %308 = fcmp ogt float %tz1.i.0.i72, %tnear.i.1.i68
  %tnear.i.2.i74 = select i1 %308, float %tz1.i.0.i72, float %tnear.i.1.i68
  %309 = fcmp olt float %tz2.i.0.i73, %tfar.i.1.i69
  %tfar.i.2.i75 = select i1 %309, float %tz2.i.0.i73, float %tfar.i.1.i69
  %310 = fcmp ogt float %tnear.i.2.i74, %tfar.i.2.i75
  %311 = fcmp olt float %tfar.i.2.i75, 0.000000e+00
  %or.cond1396.i76 = or i1 %310, %311
  br i1 %or.cond1396.i76, label %bb7.i152, label %bb1.i78

bb1.i78:                                          ; preds = %bb62.i.i77
  %312 = call i32 @llvm.trax.loadi(i32 %278, i32 7) nounwind
  %313 = call i32 @llvm.trax.loadi(i32 %278, i32 6) nounwind
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %bb3.i81, label %bb6.preheader.i79

bb6.preheader.i79:                                ; preds = %bb1.i78
  %315 = icmp sgt i32 %313, 0
  br i1 %315, label %bb5.i92, label %bb7.i152

bb3.i81:                                          ; preds = %bb1.i78
  %316 = add nsw i32 %312, 1
  store i32 %316, i32* %scevgep.i59, align 4
  %indvar.next.i80 = add i64 %indvar.i54, 1
  br label %bb.i65

bb5.i92:                                          ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i151, %bb6.preheader.i79
  %mask309603 = phi i512 [ %mask309602, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i151 ], [ %mask309606, %bb6.preheader.i79 ]
  %storemerge388.i82 = phi i32 [ %430, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i151 ], [ 0, %bb6.preheader.i79 ]
  %tmp672 = mul i32 %storemerge388.i82, 11
  %tmp396.i84 = add i32 %312, %tmp672
  %317 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 2) nounwind
  %318 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 1) nounwind
  %319 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 0) nounwind
  %320 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 5) nounwind
  %321 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 4) nounwind
  %322 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 3) nounwind
  %323 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 8) nounwind
  %324 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 7) nounwind
  %325 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 6) nounwind
  %326 = call i32 @llvm.trax.loadi(i32 %tmp396.i84, i32 10) nounwind
  %327 = call i32 @llvm.trax.loadi(i32 %tmp396.i84, i32 9) nounwind
  %328 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %329 = mul nsw i32 %326, 25
  %330 = add nsw i32 %328, %329
  %331 = call float @llvm.trax.loadf(i32 %330, i32 6) nounwind
  %332 = call float @llvm.trax.loadf(i32 %330, i32 5) nounwind
  %333 = call float @llvm.trax.loadf(i32 %330, i32 4) nounwind
  %334 = fsub float %319, %325
  %335 = fsub float %318, %324
  %336 = fsub float %317, %323
  %337 = fsub float %322, %325
  %338 = fsub float %321, %324
  %339 = fsub float %320, %323
  %340 = fmul float %335, %339
  %341 = fmul float %338, %336
  %342 = fsub float %340, %341
  %343 = fmul float %337, %336
  %344 = fmul float %334, %339
  %345 = fsub float %343, %344
  %346 = fmul float %338, %334
  %347 = fmul float %337, %335
  %348 = fsub float %346, %347
  %349 = fmul float %342, %342
  %350 = fmul float %345, %345
  %351 = fadd float %349, %350
  %352 = fmul float %348, %348
  %353 = fadd float %351, %352
  %354 = call float @llvm.trax.invsqrt(float %353) nounwind
  %355 = fmul float %275, %339
  %356 = fmul float %338, %274
  %357 = fsub float %355, %356
  %358 = fmul float %337, %274
  %359 = fmul float %276, %339
  %360 = fsub float %358, %359
  %361 = fmul float %338, %276
  %362 = fmul float %337, %275
  %363 = fsub float %361, %362
  %364 = fmul float %357, %334
  %365 = fadd float %364, 0.000000e+00
  %366 = fmul float %360, %335
  %367 = fadd float %366, %365
  %368 = fmul float %363, %336
  %369 = fadd float %368, %367
  %370 = fdiv float 1.000000e+00, %369
  %371 = fsub float %10, %325
  %372 = fsub float %11, %324
  %373 = fsub float %12, %323
  %374 = fmul float %357, %371
  %375 = fadd float %374, 0.000000e+00
  %376 = fmul float %360, %372
  %377 = fadd float %376, %375
  %378 = fmul float %363, %373
  %379 = fadd float %378, %377
  %380 = fmul float %379, %370
  %381 = fcmp olt float %380, 0.000000e+00
  %382 = fcmp ogt float %380, 1.000000e+00
  %or.cond1397.i91 = or i1 %381, %382
  br i1 %or.cond1397.i91, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i151, label %bb73.i.i93

bb73.i.i93:                                       ; preds = %bb5.i92
  %383 = fmul float %372, %336
  %384 = fmul float %335, %373
  %385 = fsub float %383, %384
  %386 = fmul float %334, %373
  %387 = fmul float %371, %336
  %388 = fsub float %386, %387
  %389 = fmul float %335, %371
  %390 = fmul float %334, %372
  %391 = fsub float %389, %390
  %392 = fmul float %385, %276
  %393 = fadd float %392, 0.000000e+00
  %394 = fmul float %388, %275
  %395 = fadd float %394, %393
  %396 = fmul float %391, %274
  %397 = fadd float %396, %395
  %398 = fmul float %397, %370
  %399 = fcmp olt float %398, 0.000000e+00
  br i1 %399, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i151, label %bb94.i55.i94

bb94.i55.i94:                                     ; preds = %bb73.i.i93
  %400 = fadd float %398, %380
  %401 = fcmp ogt float %400, 1.000000e+00
  br i1 %401, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i151, label %bb96.i.i97

bb96.i.i97:                                       ; preds = %bb94.i55.i94
  %402 = fmul float %385, %337
  %403 = fadd float %402, 0.000000e+00
  %404 = fmul float %388, %338
  %405 = fadd float %404, %403
  %406 = fmul float %391, %339
  %407 = fadd float %406, %405
  %408 = fmul float %407, %370
  %409 = fcmp ule float %408, 0.000000e+00
  %410 = fcmp olt float %408, 0x3F50624DE0000000
  %or.cond1398.i95 = or i1 %409, %410
  %411 = fcmp oeq float %408, 1.000000e+10
  %or.cond1399.i96 = or i1 %or.cond1398.i95, %411
  br i1 %or.cond1399.i96, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i151, label %bb2.i.i.i98

bb2.i.i.i98:                                      ; preds = %bb96.i.i97
  %tmp226 = trunc i512 %mask309603 to i32
  %tmp227 = bitcast i32 %tmp226 to float
  %412 = fcmp ogt float %tmp227, %408
  br i1 %412, label %bb3.i.i.i149, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i151

bb3.i.i.i149:                                     ; preds = %bb2.i.i.i98
  %tmp221 = bitcast float %408 to i32
  %tmp222 = zext i32 %tmp221 to i512
  %413 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 2) nounwind
  %414 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 1) nounwind
  %415 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 0) nounwind
  %416 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 5) nounwind
  %417 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 4) nounwind
  %418 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 3) nounwind
  %419 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 8) nounwind
  %420 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 7) nounwind
  %421 = call float @llvm.trax.loadf(i32 %tmp396.i84, i32 6) nounwind
  %422 = call i32 @llvm.trax.loadi(i32 %tmp396.i84, i32 10) nounwind
  %423 = call i32 @llvm.trax.loadi(i32 %tmp396.i84, i32 9) nounwind
  %tmp369.i99 = bitcast float %415 to i32
  %tmp370.i100 = zext i32 %tmp369.i99 to i480
  %tmp301.i101 = bitcast float %414 to i32
  %tmp302.i102 = zext i32 %tmp301.i101 to i480
  %tmp303.i103 = shl nuw nsw i480 %tmp302.i102, 32
  %tmp295.i104 = bitcast float %413 to i32
  %tmp296.i105 = zext i32 %tmp295.i104 to i480
  %tmp297.i106 = shl nuw nsw i480 %tmp296.i105, 64
  %tmp363.i107 = bitcast float %418 to i32
  %tmp364.i108 = zext i32 %tmp363.i107 to i480
  %tmp365.i109 = shl nuw nsw i480 %tmp364.i108, 96
  %tmp357.i110 = bitcast float %417 to i32
  %tmp358.i111 = zext i32 %tmp357.i110 to i480
  %tmp359.i112 = shl nuw nsw i480 %tmp358.i111, 128
  %tmp351.i113 = bitcast float %416 to i32
  %tmp352.i114 = zext i32 %tmp351.i113 to i480
  %tmp353.i115 = shl nuw nsw i480 %tmp352.i114, 160
  %tmp345.i116 = bitcast float %421 to i32
  %tmp346.i117 = zext i32 %tmp345.i116 to i480
  %tmp347.i118 = shl nuw nsw i480 %tmp346.i117, 192
  %tmp339.i119 = bitcast float %420 to i32
  %tmp340.i120 = zext i32 %tmp339.i119 to i480
  %tmp341.i121 = shl nuw nsw i480 %tmp340.i120, 224
  %tmp333.i122 = bitcast float %419 to i32
  %tmp334.i123 = zext i32 %tmp333.i122 to i480
  %tmp335.i124 = shl nuw nsw i480 %tmp334.i123, 256
  %tmp290.i125 = zext i32 %423 to i480
  %tmp291.i126 = shl nuw nsw i480 %tmp290.i125, 288
  %424 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %425 = mul nsw i32 %422, 25
  %426 = add nsw i32 %424, %425
  %427 = call float @llvm.trax.loadf(i32 %426, i32 6) nounwind
  %428 = call float @llvm.trax.loadf(i32 %426, i32 5) nounwind
  %429 = call float @llvm.trax.loadf(i32 %426, i32 4) nounwind
  %tmp325.i127 = bitcast float %429 to i32
  %tmp326.i128 = zext i32 %tmp325.i127 to i480
  %tmp327.i129 = shl nuw nsw i480 %tmp326.i128, 320
  %tmp317.i130 = bitcast float %428 to i32
  %tmp318.i131 = zext i32 %tmp317.i130 to i480
  %tmp319.i132 = shl nuw nsw i480 %tmp318.i131, 352
  %tmp309.i133 = bitcast float %427 to i32
  %tmp310.i134 = zext i32 %tmp309.i133 to i480
  %tmp311.i135 = shl nuw nsw i480 %tmp310.i134, 384
  %mask298.i136 = or i480 %tmp297.i106, %tmp370.i100
  %mask366.i137 = or i480 %mask298.i136, %tmp303.i103
  %mask360.masked.masked.masked.masked.masked.i138 = or i480 %mask366.i137, %tmp353.i115
  %mask354.masked.masked.masked.masked.masked.masked.i139 = or i480 %mask360.masked.masked.masked.masked.masked.i138, %tmp359.i112
  %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i140 = or i480 %mask354.masked.masked.masked.masked.masked.masked.i139, %tmp365.i109
  %mask342.masked.masked.masked.masked.masked.masked.masked.i141 = or i480 %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i140, %tmp335.i124
  %mask336.masked.masked.masked.masked.masked.masked.i142 = or i480 %mask342.masked.masked.masked.masked.masked.masked.masked.i141, %tmp341.i121
  %mask292.masked.masked.masked.masked.masked.i143 = or i480 %mask336.masked.masked.masked.masked.masked.masked.i142, %tmp347.i118
  %mask328.masked.masked.masked.masked.i144 = or i480 %mask292.masked.masked.masked.masked.masked.i143, %tmp291.i126
  %mask320.masked.masked.masked.i145 = or i480 %mask328.masked.masked.masked.masked.i144, %tmp311.i135
  %mask312.masked.masked.i146 = or i480 %mask320.masked.masked.masked.i145, %tmp319.i132
  %ins288.i147 = or i480 %mask312.masked.masked.i146, %tmp327.i129
  %ins285.i148 = or i480 %ins288.i147, 770681673391627619131312691654083964084373995933406099189890146314966155308140517402099473489517307419678932548501811235986099843289400054120448
  %tmp = zext i480 %ins285.i148 to i512
  %tmp219 = shl nuw i512 %tmp, 32
  %ins = or i512 %tmp219, %tmp222
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i151

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i151: ; preds = %bb3.i.i.i149, %bb2.i.i.i98, %bb96.i.i97, %bb94.i55.i94, %bb73.i.i93, %bb5.i92
  %mask309602 = phi i512 [ %ins, %bb3.i.i.i149 ], [ %mask309603, %bb2.i.i.i98 ], [ %mask309603, %bb96.i.i97 ], [ %mask309603, %bb94.i55.i94 ], [ %mask309603, %bb73.i.i93 ], [ %mask309603, %bb5.i92 ]
  %430 = add nsw i32 %storemerge388.i82, 1
  %exitcond = icmp eq i32 %430, %313
  br i1 %exitcond, label %bb7.i152, label %bb5.i92

bb7.i152:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i151, %bb6.preheader.i79, %bb62.i.i77, %bb29.i.i71, %bb.i65
  %mask309605 = phi i512 [ %mask309606, %bb6.preheader.i79 ], [ %mask309602, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i151 ], [ %mask309606, %bb.i65 ], [ %mask309606, %bb29.i.i71 ], [ %mask309606, %bb62.i.i77 ]
  %431 = icmp slt i32 %sp.0.i57, 0
  br i1 %431, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit154, label %bb9.i153

bb9.i153:                                         ; preds = %bb7.i152
  %432 = sext i32 %sp.0.i57 to i64
  %433 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %432
  %434 = load i32* %433, align 4
  %435 = add nsw i32 %sp.0.i57, -1
  br label %bb.outer.i53

_ZN3BVH9intersectER9HitRecordR3Ray.exit154:       ; preds = %bb7.i152
  %tmp229 = trunc i512 %mask309605 to i32
  %tmp230 = bitcast i32 %tmp229 to float
  %tmp305 = lshr i512 %mask309605, 32
  %tmp306 = trunc i512 %tmp305 to i32
  %tmp307 = bitcast i32 %tmp306 to float
  %tmp299 = lshr i512 %mask309605, 64
  %tmp300 = trunc i512 %tmp299 to i32
  %tmp301 = bitcast i32 %tmp300 to float
  %tmp293 = lshr i512 %mask309605, 96
  %tmp294 = trunc i512 %tmp293 to i32
  %tmp295 = bitcast i32 %tmp294 to float
  %tmp287 = lshr i512 %mask309605, 128
  %tmp288 = trunc i512 %tmp287 to i32
  %tmp289 = bitcast i32 %tmp288 to float
  %tmp281 = lshr i512 %mask309605, 160
  %tmp282 = trunc i512 %tmp281 to i32
  %tmp283 = bitcast i32 %tmp282 to float
  %tmp274 = lshr i512 %mask309605, 192
  %tmp275 = trunc i512 %tmp274 to i32
  %tmp276 = bitcast i32 %tmp275 to float
  %tmp267 = lshr i512 %mask309605, 224
  %tmp255 = lshr i512 %mask309605, 288
  %tmp256 = trunc i512 %tmp255 to i32
  %tmp257 = bitcast i32 %tmp256 to float
  %tmp247 = lshr i512 %mask309605, 352
  %tmp249 = trunc i512 %tmp247 to i32
  %tmp250 = bitcast i32 %tmp249 to float
  %tmp241 = lshr i512 %mask309605, 384
  %tmp242 = trunc i512 %tmp241 to i32
  %tmp243 = bitcast i32 %tmp242 to float
  %tmp235 = lshr i512 %mask309605, 416
  %tmp236 = trunc i512 %tmp235 to i32
  %tmp237 = bitcast i32 %tmp236 to float
  %436 = fmul float %276, %tmp230
  %437 = fmul float %275, %tmp230
  %438 = fmul float %274, %tmp230
  %439 = fadd float %436, %10
  %440 = fadd float %437, %11
  %441 = fadd float %12, %438
  %442 = fsub float %tmp307, %tmp289
  %443 = fsub float %tmp301, %tmp283
  %444 = fsub float %tmp295, %tmp276
  %tmp41.i186 = trunc i512 %tmp267 to i32
  %tmp42.i187 = bitcast i32 %tmp41.i186 to float
  %445 = fsub float %tmp289, %tmp42.i187
  %tmp37.i188620 = lshr i512 %mask309605, 256
  %tmp38.i189 = trunc i512 %tmp37.i188620 to i32
  %tmp39.i190 = bitcast i32 %tmp38.i189 to float
  %446 = fsub float %tmp283, %tmp39.i190
  %447 = fsub float %tmp276, %tmp257
  %448 = fmul float %443, %447
  %449 = fmul float %446, %444
  %450 = fsub float %448, %449
  %451 = fmul float %445, %444
  %452 = fmul float %442, %447
  %453 = fsub float %451, %452
  %454 = fmul float %446, %442
  %455 = fmul float %445, %443
  %456 = fsub float %454, %455
  %457 = fmul float %450, %450
  %458 = fmul float %453, %453
  %459 = fadd float %457, %458
  %460 = fmul float %456, %456
  %461 = fadd float %459, %460
  %462 = call float @llvm.trax.invsqrt(float %461) nounwind
  br i1 %242, label %bb.i36, label %invcont83

bb.i36:                                           ; preds = %bb46.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit154
  %indvar = phi i64 [ %indvar.next, %bb46.i ], [ 0, %_ZN3BVH9intersectER9HitRecordR3Ray.exit154 ]
  %memtmp31.i.0629 = phi i128 [ %ins927, %bb46.i ], [ %memtmp31.i.1635, %_ZN3BVH9intersectER9HitRecordR3Ray.exit154 ]
  %power.i.2.1628 = phi float [ %power.i.2.0, %bb46.i ], [ 0.000000e+00, %_ZN3BVH9intersectER9HitRecordR3Ray.exit154 ]
  %power.i.1.1627 = phi float [ %power.i.1.0, %bb46.i ], [ 0.000000e+00, %_ZN3BVH9intersectER9HitRecordR3Ray.exit154 ]
  %power.i.0.1626 = phi float [ %power.i.0.0, %bb46.i ], [ 0.000000e+00, %_ZN3BVH9intersectER9HitRecordR3Ray.exit154 ]
  %scevgep689 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %indvar, i32 0, i32 2
  %scevgep690 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %indvar, i32 0, i32 1
  %scevgep691692 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %indvar, i32 0, i32 0
  %463 = load float* %scevgep691692, align 4
  %464 = load float* %scevgep690, align 4
  %465 = load float* %scevgep689, align 4
  %tmp1392 = bitcast float %463 to i32
  %tmp1393 = zext i32 %tmp1392 to i96
  %tmp1386 = bitcast float %464 to i32
  %tmp1387 = zext i32 %tmp1386 to i96
  %tmp1388 = shl nuw nsw i96 %tmp1387, 32
  %ins1390 = or i96 %tmp1388, %tmp1393
  %tmp1380 = bitcast float %465 to i32
  %tmp930 = zext i96 %ins1390 to i128
  %mask931 = and i128 %memtmp31.i.0629, -79228162514264337593543950336
  %tmp924 = zext i32 %tmp1380 to i128
  %tmp925 = shl nuw nsw i128 %tmp924, 64
  %mask926 = or i128 %tmp925, %mask931
  %ins927 = or i128 %mask926, %tmp930
  %ins927.tr = trunc i128 %ins927 to i96
  %466 = fsub float %463, %439
  %467 = fsub float %464, %440
  %tmp1352 = lshr i96 %ins927.tr, 64
  %tmp1353 = trunc i96 %tmp1352 to i32
  %tmp1354 = bitcast i32 %tmp1353 to float
  %468 = fsub float %tmp1354, %441
  %469 = fmul float %466, %466
  %470 = fmul float %467, %467
  %471 = fadd float %469, %470
  %472 = fmul float %468, %468
  %473 = fadd float %471, %472
  %474 = fcmp olt float %473, 0x3FDF5C28E0000000
  br i1 %474, label %bb45.i, label %bb46.i

bb45.i:                                           ; preds = %bb.i36
  %scevgep688 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %indvar, i32 2, i64 0
  %scevgep687 = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %indvar, i32 2, i64 1
  %scevgep = getelementptr [135000 x %struct.Photon]* %39, i64 0, i64 %indvar, i32 2, i64 2
  %475 = load float* %scevgep688, align 4
  %476 = fadd float %power.i.0.1626, %475
  %477 = load float* %scevgep687, align 4
  %478 = fadd float %power.i.1.1627, %477
  %479 = load float* %scevgep, align 4
  %480 = fadd float %power.i.2.1628, %479
  br label %bb46.i

bb46.i:                                           ; preds = %bb45.i, %bb.i36
  %power.i.0.0 = phi float [ %476, %bb45.i ], [ %power.i.0.1626, %bb.i36 ]
  %power.i.1.0 = phi float [ %478, %bb45.i ], [ %power.i.1.1627, %bb.i36 ]
  %power.i.2.0 = phi float [ %480, %bb45.i ], [ %power.i.2.1628, %bb.i36 ]
  %indvar.next = add i64 %indvar, 1
  %exitcond686 = icmp eq i64 %indvar.next, %tmp685
  br i1 %exitcond686, label %invcont83, label %bb.i36

invcont83:                                        ; preds = %bb46.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit154
  %memtmp31.i.0.lcssa = phi i128 [ %memtmp31.i.1635, %_ZN3BVH9intersectER9HitRecordR3Ray.exit154 ], [ %ins927, %bb46.i ]
  %power.i.2.1.lcssa = phi float [ 0.000000e+00, %_ZN3BVH9intersectER9HitRecordR3Ray.exit154 ], [ %power.i.2.0, %bb46.i ]
  %power.i.1.1.lcssa = phi float [ 0.000000e+00, %_ZN3BVH9intersectER9HitRecordR3Ray.exit154 ], [ %power.i.1.0, %bb46.i ]
  %power.i.0.1.lcssa = phi float [ 0.000000e+00, %_ZN3BVH9intersectER9HitRecordR3Ray.exit154 ], [ %power.i.0.0, %bb46.i ]
  %481 = fpext float %power.i.0.1.lcssa to double
  %482 = fdiv double %481, 0x3FF8A14D4D19B8C1
  %483 = fptrunc double %482 to float
  %484 = fpext float %power.i.1.1.lcssa to double
  %485 = fdiv double %484, 0x3FF8A14D4D19B8C1
  %486 = fptrunc double %485 to float
  %487 = fpext float %power.i.2.1.lcssa to double
  %488 = fdiv double %487, 0x3FF8A14D4D19B8C1
  %489 = fptrunc double %488 to float
  %490 = fmul float %483, %tmp250
  %491 = fmul float %486, %tmp243
  %492 = fmul float %489, %tmp237
  %493 = fcmp olt float %490, 0.000000e+00
  br i1 %493, label %bb5.i, label %bb1.i

bb1.i:                                            ; preds = %invcont83
  %494 = fcmp ogt float %490, 1.000000e+00
  br i1 %494, label %bb5.i, label %bb4.i

bb4.i:                                            ; preds = %bb1.i
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb1.i, %invcont83
  %r.i.0 = phi float [ %490, %bb4.i ], [ 0.000000e+00, %invcont83 ], [ 1.000000e+00, %bb1.i ]
  %495 = fcmp olt float %492, 0.000000e+00
  br i1 %495, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i
  %496 = fcmp ogt float %492, 1.000000e+00
  br i1 %496, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i
  %b.i.0 = phi float [ %492, %bb11.i ], [ 0.000000e+00, %bb5.i ], [ 1.000000e+00, %bb8.i ]
  %497 = fcmp olt float %491, 0.000000e+00
  br i1 %497, label %invcont95, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %498 = fcmp ogt float %491, 1.000000e+00
  br i1 %498, label %invcont95, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %invcont95

invcont95:                                        ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.i.0 = phi float [ %491, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %499 = mul nsw i32 %243, %0
  %500 = add nsw i32 %499, %244
  %501 = mul nsw i32 %500, 3
  %502 = add nsw i32 %501, %2
  call void @llvm.trax.storef(float %r.i.0, i32 %502, i32 0) nounwind
  call void @llvm.trax.storef(float %g.i.0, i32 %502, i32 1) nounwind
  call void @llvm.trax.storef(float %b.i.0, i32 %502, i32 2) nounwind
  %503 = call i32 @llvm.trax.atominc(i32 0)
  %504 = icmp sgt i32 %236, %503
  br i1 %504, label %invcont82, label %return

return:                                           ; preds = %invcont95, %invcont73
  ret i32 0
}

declare i32 @llvm.trax.atominc(i32) nounwind

declare float @llvm.trax.invsqrt(float) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind
