; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

%struct.Color = type { float, float, float }
%struct.Photon = type { %struct.Color, [3 x float], i8, float }
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
  br label %bb.i38

bb.i38:                                           ; preds = %bb.i38, %invcont8
  %indvar1360 = phi i64 [ 0, %invcont8 ], [ %indvar.next1361, %bb.i38 ]
  %scevgep1363 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1360, i32 2
  %scevgep1364 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1360, i32 1, i64 2
  %scevgep1365 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1360, i32 1, i64 1
  %scevgep1366 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1360, i32 1, i64 0
  %scevgep1367 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1360, i32 0, i32 2
  %scevgep1368 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1360, i32 0, i32 1
  %scevgep13691370 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1360, i32 0, i32 0
  store float 0.000000e+00, float* %scevgep13691370, align 8
  store float 0.000000e+00, float* %scevgep1368, align 4
  store float 0.000000e+00, float* %scevgep1367, align 8
  store float 1.000000e+00, float* %scevgep1366, align 4
  store float 1.000000e+00, float* %scevgep1365, align 4
  store float 1.000000e+00, float* %scevgep1364, align 4
  store i8 0, i8* %scevgep1363, align 8
  %indvar.next1361 = add i64 %indvar1360, 1
  %exitcond1362 = icmp eq i64 %indvar.next1361, 5000
  br i1 %exitcond1362, label %invcont11, label %bb.i38

invcont11:                                        ; preds = %bb.i38
  %29 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 2
  store float 1.000000e+07, float* %29, align 8
  %30 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 1
  store float 1.000000e+07, float* %30, align 4
  %31 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 0
  store float 1.000000e+07, float* %31, align 8
  %32 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 2
  store float -1.000000e+07, float* %32, align 4
  %33 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 1
  store float -1.000000e+07, float* %33, align 4
  %34 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 0
  store float -1.000000e+07, float* %34, align 4
  %35 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %36 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %37 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %38 = alloca [200000 x %struct.Photon], align 1
  br label %bb

bb:                                               ; preds = %bb, %invcont11
  %indvar1349 = phi i64 [ 0, %invcont11 ], [ %indvar.next1350, %bb ]
  %scevgep1352 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %indvar1349, i32 2
  %scevgep1353 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %indvar1349, i32 1, i64 2
  %scevgep1354 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %indvar1349, i32 1, i64 1
  %scevgep1355 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %indvar1349, i32 1, i64 0
  %scevgep1356 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %indvar1349, i32 0, i32 2
  %scevgep1357 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %indvar1349, i32 0, i32 1
  %scevgep13581359 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %indvar1349, i32 0, i32 0
  store float 0.000000e+00, float* %scevgep13581359, align 4
  store float 0.000000e+00, float* %scevgep1357, align 4
  store float 0.000000e+00, float* %scevgep1356, align 4
  store float 1.000000e+00, float* %scevgep1355, align 4
  store float 1.000000e+00, float* %scevgep1354, align 4
  store float 1.000000e+00, float* %scevgep1353, align 4
  store i8 0, i8* %scevgep1352, align 4
  %indvar.next1350 = add i64 %indvar1349, 1
  %exitcond1351 = icmp eq i64 %indvar.next1350, 200000
  br i1 %exitcond1351, label %bb13, label %bb

bb13:                                             ; preds = %bb
  %39 = alloca [100000 x %struct.Photon], align 1
  br label %bb14

bb14:                                             ; preds = %bb14, %bb13
  %indvar1338 = phi i64 [ 0, %bb13 ], [ %indvar.next1339, %bb14 ]
  %scevgep1341 = getelementptr [100000 x %struct.Photon]* %39, i64 0, i64 %indvar1338, i32 2
  %scevgep1342 = getelementptr [100000 x %struct.Photon]* %39, i64 0, i64 %indvar1338, i32 1, i64 2
  %scevgep1343 = getelementptr [100000 x %struct.Photon]* %39, i64 0, i64 %indvar1338, i32 1, i64 1
  %scevgep1344 = getelementptr [100000 x %struct.Photon]* %39, i64 0, i64 %indvar1338, i32 1, i64 0
  %scevgep1345 = getelementptr [100000 x %struct.Photon]* %39, i64 0, i64 %indvar1338, i32 0, i32 2
  %scevgep1346 = getelementptr [100000 x %struct.Photon]* %39, i64 0, i64 %indvar1338, i32 0, i32 1
  %scevgep13471348 = getelementptr [100000 x %struct.Photon]* %39, i64 0, i64 %indvar1338, i32 0, i32 0
  store float 0.000000e+00, float* %scevgep13471348, align 4
  store float 0.000000e+00, float* %scevgep1346, align 4
  store float 0.000000e+00, float* %scevgep1345, align 4
  store float 1.000000e+00, float* %scevgep1344, align 4
  store float 1.000000e+00, float* %scevgep1343, align 4
  store float 1.000000e+00, float* %scevgep1342, align 4
  store i8 0, i8* %scevgep1341, align 4
  %indvar.next1339 = add i64 %indvar1338, 1
  %exitcond1340 = icmp eq i64 %indvar.next1339, 100000
  br i1 %exitcond1340, label %invcont18, label %bb14

invcont18:                                        ; preds = %bb14
  %40 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %41 = call float @llvm.trax.loadf(i32 %40, i32 0) nounwind
  %42 = call float @llvm.trax.loadf(i32 %40, i32 1) nounwind
  %43 = call float @llvm.trax.loadf(i32 %40, i32 2) nounwind
  %tmp671 = bitcast float %41 to i32
  %tmp665 = bitcast float %42 to i32
  %tmp659 = bitcast float %43 to i32
  br label %bb100.preheader

bb.i55:                                           ; preds = %bb100, %bb.i55
  %44 = call float @llvm.trax.rand() nounwind
  %45 = fadd float %44, -5.000000e-01
  %46 = fmul float %45, 2.000000e+00
  %47 = call float @llvm.trax.rand() nounwind
  %48 = fadd float %47, -5.000000e-01
  %49 = fmul float %48, 2.000000e+00
  %50 = call float @llvm.trax.rand() nounwind
  %51 = fadd float %50, -5.000000e-01
  %52 = fmul float %51, 2.000000e+00
  %53 = fmul float %46, %46
  %54 = fmul float %49, %49
  %55 = fadd float %53, %54
  %56 = fmul float %52, %52
  %57 = fadd float %55, %56
  %58 = fcmp ogt float %57, 1.000000e+00
  br i1 %58, label %bb.i55, label %invcont46

invcont46:                                        ; preds = %bb.i55
  %59 = call float @llvm.trax.invsqrt(float %57) nounwind
  %60 = fdiv float 1.000000e+00, %59
  %61 = fdiv float %52, %60
  %62 = fdiv float %49, %60
  %63 = fdiv float %46, %60
  %tmp18.i = bitcast float %63 to i32
  %tmp12.i = bitcast float %62 to i32
  %tmp1463 = bitcast float %61 to i32
  %tmp1493 = zext i32 %tmp18.i to i96
  %tmp1487 = zext i32 %tmp12.i to i96
  %tmp1488 = shl nuw nsw i96 %tmp1487, 32
  %ins1490 = or i96 %tmp1493, %tmp1488
  %tmp580 = zext i96 %ins1490 to i128
  %mask581 = and i128 %memtmp34.0, -79228162514264337593543950336
  %tmp574 = zext i32 %tmp1463 to i128
  %tmp575 = shl nuw nsw i128 %tmp574, 64
  %mask576 = or i128 %tmp575, %mask581
  %ins577 = or i128 %mask576, %tmp580
  %ins577.tr = trunc i128 %ins577 to i96
  %mask642 = and i512 %mask680982, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins643 = or i512 %mask642, 1343554297
  %tmp1497 = lshr i96 %ins577.tr, 64
  %tmp541 = trunc i96 %tmp1497 to i32
  %tmp542 = bitcast i32 %tmp541 to float
  br label %bb.outer.i

bb.outer.i:                                       ; preds = %bb9.i, %invcont46
  %mask680984 = phi i512 [ %ins643, %invcont46 ], [ %mask680983, %bb9.i ]
  %node_id.0.ph.i = phi i32 [ 0, %invcont46 ], [ %221, %bb9.i ]
  %sp.0.ph.i = phi i32 [ -1, %invcont46 ], [ %222, %bb9.i ]
  %tmp404.i = add i32 %sp.0.ph.i, 1
  %tmp1291 = sext i32 %tmp404.i to i64
  %tmp1294 = zext i32 %sp.0.ph.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb3.i, %bb.outer.i
  %indvar.i = phi i64 [ %indvar.next.i, %bb3.i ], [ 0, %bb.outer.i ]
  %node_id.0.i = phi i32 [ %99, %bb3.i ], [ %node_id.0.ph.i, %bb.outer.i ]
  %tmp1292 = add i64 %tmp1291, %indvar.i
  %scevgep.i = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp1292
  %tmp1295 = add i64 %tmp1294, %indvar.i
  %sp.0.i = trunc i64 %tmp1295 to i32
  %64 = shl nsw i32 %node_id.0.i, 3
  %65 = add nsw i32 %64, %37
  %66 = call float @llvm.trax.loadf(i32 %65, i32 2) nounwind
  %67 = call float @llvm.trax.loadf(i32 %65, i32 1) nounwind
  %68 = call float @llvm.trax.loadf(i32 %65, i32 0) nounwind
  %69 = call float @llvm.trax.loadf(i32 %65, i32 5) nounwind
  %70 = call float @llvm.trax.loadf(i32 %65, i32 4) nounwind
  %71 = call float @llvm.trax.loadf(i32 %65, i32 3) nounwind
  %72 = fsub float %68, %tmp583
  %73 = fdiv float %72, %63
  %74 = fsub float %71, %tmp583
  %75 = fdiv float %74, %63
  %76 = fcmp ogt float %73, %75
  %tx1.i.0.i = select i1 %76, float %75, float %73
  %tx2.i.0.i = select i1 %76, float %73, float %75
  %77 = fcmp ogt float %tx1.i.0.i, -1.000000e+10
  %tnear.i.0.i = select i1 %77, float %tx1.i.0.i, float -1.000000e+10
  %78 = fcmp olt float %tx2.i.0.i, 1.000000e+10
  %tfar.i.0.i = select i1 %78, float %tx2.i.0.i, float 1.000000e+10
  %79 = fcmp ogt float %tnear.i.0.i, %tfar.i.0.i
  %80 = fcmp olt float %tfar.i.0.i, 0.000000e+00
  %or.cond.i = or i1 %79, %80
  br i1 %or.cond.i, label %bb7.i, label %bb29.i.i

bb29.i.i:                                         ; preds = %bb.i
  %81 = fsub float %67, %tmp576
  %82 = fdiv float %81, %62
  %83 = fsub float %70, %tmp576
  %84 = fdiv float %83, %62
  %85 = fcmp ogt float %82, %84
  %ty1.i.0.i = select i1 %85, float %84, float %82
  %ty2.i.0.i = select i1 %85, float %82, float %84
  %86 = fcmp ogt float %ty1.i.0.i, %tnear.i.0.i
  %tnear.i.1.i = select i1 %86, float %ty1.i.0.i, float %tnear.i.0.i
  %87 = fcmp olt float %ty2.i.0.i, %tfar.i.0.i
  %tfar.i.1.i = select i1 %87, float %ty2.i.0.i, float %tfar.i.0.i
  %88 = fcmp ogt float %tnear.i.1.i, %tfar.i.1.i
  %89 = fcmp olt float %tfar.i.1.i, 0.000000e+00
  %or.cond1395.i = or i1 %88, %89
  br i1 %or.cond1395.i, label %bb7.i, label %bb62.i.i

bb62.i.i:                                         ; preds = %bb29.i.i
  %90 = fsub float %66, %tmp566
  %91 = fdiv float %90, %tmp542
  %92 = fsub float %69, %tmp566
  %93 = fdiv float %92, %tmp542
  %94 = fcmp ogt float %91, %93
  %tz1.i.0.i = select i1 %94, float %93, float %91
  %tz2.i.0.i = select i1 %94, float %91, float %93
  %95 = fcmp ogt float %tz1.i.0.i, %tnear.i.1.i
  %tnear.i.2.i = select i1 %95, float %tz1.i.0.i, float %tnear.i.1.i
  %96 = fcmp olt float %tz2.i.0.i, %tfar.i.1.i
  %tfar.i.2.i = select i1 %96, float %tz2.i.0.i, float %tfar.i.1.i
  %97 = fcmp ogt float %tnear.i.2.i, %tfar.i.2.i
  %98 = fcmp olt float %tfar.i.2.i, 0.000000e+00
  %or.cond1396.i = or i1 %97, %98
  br i1 %or.cond1396.i, label %bb7.i, label %bb1.i23

bb1.i23:                                          ; preds = %bb62.i.i
  %99 = call i32 @llvm.trax.loadi(i32 %65, i32 7) nounwind
  %100 = call i32 @llvm.trax.loadi(i32 %65, i32 6) nounwind
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %bb3.i, label %bb6.preheader.i

bb6.preheader.i:                                  ; preds = %bb1.i23
  %102 = icmp sgt i32 %100, 0
  br i1 %102, label %bb5.i24, label %bb7.i

bb3.i:                                            ; preds = %bb1.i23
  %103 = add nsw i32 %99, 1
  store i32 %103, i32* %scevgep.i, align 4
  %indvar.next.i = add i64 %indvar.i, 1
  br label %bb.i

bb5.i24:                                          ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i
  %mask680980 = phi i512 [ %mask680979, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %mask680984, %bb6.preheader.i ]
  %storemerge388.i = phi i32 [ %217, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ 0, %bb6.preheader.i ]
  %tmp1285 = mul i32 %storemerge388.i, 11
  %tmp396.i = add i32 %99, %tmp1285
  %104 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %105 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %106 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %107 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %108 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %109 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %110 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %111 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %112 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %113 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %114 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %115 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %116 = mul nsw i32 %113, 25
  %117 = add nsw i32 %115, %116
  %118 = call float @llvm.trax.loadf(i32 %117, i32 6) nounwind
  %119 = call float @llvm.trax.loadf(i32 %117, i32 5) nounwind
  %120 = call float @llvm.trax.loadf(i32 %117, i32 4) nounwind
  %121 = fsub float %106, %112
  %122 = fsub float %105, %111
  %123 = fsub float %104, %110
  %124 = fsub float %109, %112
  %125 = fsub float %108, %111
  %126 = fsub float %107, %110
  %127 = fmul float %122, %126
  %128 = fmul float %125, %123
  %129 = fsub float %127, %128
  %130 = fmul float %124, %123
  %131 = fmul float %121, %126
  %132 = fsub float %130, %131
  %133 = fmul float %125, %121
  %134 = fmul float %124, %122
  %135 = fsub float %133, %134
  %136 = fmul float %129, %129
  %137 = fmul float %132, %132
  %138 = fadd float %136, %137
  %139 = fmul float %135, %135
  %140 = fadd float %138, %139
  %141 = call float @llvm.trax.invsqrt(float %140) nounwind
  %142 = fmul float %62, %126
  %143 = fmul float %125, %tmp542
  %144 = fsub float %142, %143
  %145 = fmul float %124, %tmp542
  %146 = fmul float %63, %126
  %147 = fsub float %145, %146
  %148 = fmul float %125, %63
  %149 = fmul float %124, %62
  %150 = fsub float %148, %149
  %151 = fmul float %144, %121
  %152 = fadd float %151, 0.000000e+00
  %153 = fmul float %147, %122
  %154 = fadd float %153, %152
  %155 = fmul float %150, %123
  %156 = fadd float %155, %154
  %157 = fdiv float 1.000000e+00, %156
  %158 = fsub float %tmp583, %112
  %159 = fsub float %tmp576, %111
  %160 = fsub float %tmp566, %110
  %161 = fmul float %144, %158
  %162 = fadd float %161, 0.000000e+00
  %163 = fmul float %147, %159
  %164 = fadd float %163, %162
  %165 = fmul float %150, %160
  %166 = fadd float %165, %164
  %167 = fmul float %166, %157
  %168 = fcmp olt float %167, 0.000000e+00
  %169 = fcmp ogt float %167, 1.000000e+00
  %or.cond1397.i = or i1 %168, %169
  br i1 %or.cond1397.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb73.i.i

bb73.i.i:                                         ; preds = %bb5.i24
  %170 = fmul float %159, %123
  %171 = fmul float %122, %160
  %172 = fsub float %170, %171
  %173 = fmul float %121, %160
  %174 = fmul float %158, %123
  %175 = fsub float %173, %174
  %176 = fmul float %122, %158
  %177 = fmul float %121, %159
  %178 = fsub float %176, %177
  %179 = fmul float %172, %63
  %180 = fadd float %179, 0.000000e+00
  %181 = fmul float %175, %62
  %182 = fadd float %181, %180
  %183 = fmul float %178, %tmp542
  %184 = fadd float %183, %182
  %185 = fmul float %184, %157
  %186 = fcmp olt float %185, 0.000000e+00
  br i1 %186, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb94.i55.i

bb94.i55.i:                                       ; preds = %bb73.i.i
  %187 = fadd float %185, %167
  %188 = fcmp ogt float %187, 1.000000e+00
  br i1 %188, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb96.i.i

bb96.i.i:                                         ; preds = %bb94.i55.i
  %189 = fmul float %172, %124
  %190 = fadd float %189, 0.000000e+00
  %191 = fmul float %175, %125
  %192 = fadd float %191, %190
  %193 = fmul float %178, %126
  %194 = fadd float %193, %192
  %195 = fmul float %194, %157
  %196 = fcmp ule float %195, 0.000000e+00
  %197 = fcmp olt float %195, 0x3F50624DE0000000
  %or.cond1398.i = or i1 %196, %197
  %198 = fcmp oeq float %195, 1.000000e+10
  %or.cond1399.i = or i1 %or.cond1398.i, %198
  br i1 %or.cond1399.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb96.i.i
  %tmp636 = trunc i512 %mask680980 to i32
  %tmp637 = bitcast i32 %tmp636 to float
  %199 = fcmp ogt float %tmp637, %195
  br i1 %199, label %bb3.i.i.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

bb3.i.i.i:                                        ; preds = %bb2.i.i.i
  %tmp631 = bitcast float %195 to i32
  %tmp632 = zext i32 %tmp631 to i512
  %200 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %201 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %202 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %203 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %204 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %205 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %206 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %207 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %208 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %209 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %210 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %tmp369.i = bitcast float %202 to i32
  %tmp370.i = zext i32 %tmp369.i to i480
  %tmp301.i = bitcast float %201 to i32
  %tmp302.i = zext i32 %tmp301.i to i480
  %tmp303.i = shl nuw nsw i480 %tmp302.i, 32
  %tmp295.i = bitcast float %200 to i32
  %tmp296.i = zext i32 %tmp295.i to i480
  %tmp297.i = shl nuw nsw i480 %tmp296.i, 64
  %tmp363.i = bitcast float %205 to i32
  %tmp364.i = zext i32 %tmp363.i to i480
  %tmp365.i = shl nuw nsw i480 %tmp364.i, 96
  %tmp357.i = bitcast float %204 to i32
  %tmp358.i = zext i32 %tmp357.i to i480
  %tmp359.i = shl nuw nsw i480 %tmp358.i, 128
  %tmp351.i = bitcast float %203 to i32
  %tmp352.i = zext i32 %tmp351.i to i480
  %tmp353.i = shl nuw nsw i480 %tmp352.i, 160
  %tmp345.i = bitcast float %208 to i32
  %tmp346.i = zext i32 %tmp345.i to i480
  %tmp347.i = shl nuw nsw i480 %tmp346.i, 192
  %tmp339.i = bitcast float %207 to i32
  %tmp340.i = zext i32 %tmp339.i to i480
  %tmp341.i = shl nuw nsw i480 %tmp340.i, 224
  %tmp333.i = bitcast float %206 to i32
  %tmp334.i = zext i32 %tmp333.i to i480
  %tmp335.i = shl nuw nsw i480 %tmp334.i, 256
  %tmp290.i = zext i32 %210 to i480
  %tmp291.i = shl nuw nsw i480 %tmp290.i, 288
  %211 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %212 = mul nsw i32 %209, 25
  %213 = add nsw i32 %211, %212
  %214 = call float @llvm.trax.loadf(i32 %213, i32 6) nounwind
  %215 = call float @llvm.trax.loadf(i32 %213, i32 5) nounwind
  %216 = call float @llvm.trax.loadf(i32 %213, i32 4) nounwind
  %tmp325.i = bitcast float %216 to i32
  %tmp326.i = zext i32 %tmp325.i to i480
  %tmp327.i = shl nuw nsw i480 %tmp326.i, 320
  %tmp317.i = bitcast float %215 to i32
  %tmp318.i = zext i32 %tmp317.i to i480
  %tmp319.i = shl nuw nsw i480 %tmp318.i, 352
  %tmp309.i = bitcast float %214 to i32
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
  %tmp626 = zext i480 %ins285.i to i512
  %tmp627 = shl nuw i512 %tmp626, 32
  %ins629 = or i512 %tmp627, %tmp632
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i: ; preds = %bb3.i.i.i, %bb2.i.i.i, %bb96.i.i, %bb94.i55.i, %bb73.i.i, %bb5.i24
  %mask680979 = phi i512 [ %ins629, %bb3.i.i.i ], [ %mask680980, %bb2.i.i.i ], [ %mask680980, %bb96.i.i ], [ %mask680980, %bb94.i55.i ], [ %mask680980, %bb73.i.i ], [ %mask680980, %bb5.i24 ]
  %217 = add nsw i32 %storemerge388.i, 1
  %exitcond1284 = icmp eq i32 %217, %100
  br i1 %exitcond1284, label %bb7.i, label %bb5.i24

bb7.i:                                            ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i, %bb62.i.i, %bb29.i.i, %bb.i
  %mask680983 = phi i512 [ %mask680984, %bb6.preheader.i ], [ %mask680979, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %mask680984, %bb.i ], [ %mask680984, %bb29.i.i ], [ %mask680984, %bb62.i.i ]
  %218 = icmp slt i32 %sp.0.i, 0
  br i1 %218, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit, label %bb9.i

bb9.i:                                            ; preds = %bb7.i
  %219 = sext i32 %sp.0.i to i64
  %220 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %219
  %221 = load i32* %220, align 4
  %222 = add nsw i32 %sp.0.i, -1
  br label %bb.outer.i

_ZN3BVH9intersectER9HitRecordR3Ray.exit:          ; preds = %bb7.i
  %tmp639 = trunc i512 %mask680983 to i32
  %tmp640 = bitcast i32 %tmp639 to float
  %223 = fcmp olt float %tmp640, 1.000000e+10
  %indvar.next1304 = add i32 %indvar1303, 1
  br i1 %223, label %invcont75, label %bb100

invcont75:                                        ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %tmp657 = lshr i512 %mask680983, 352
  %tmp658 = trunc i512 %tmp657 to i32
  %tmp660 = bitcast i32 %tmp658 to float
  %tmp651 = lshr i512 %mask680983, 384
  %tmp652 = trunc i512 %tmp651 to i32
  %tmp653 = bitcast i32 %tmp652 to float
  %tmp1553 = trunc i512 %tmp657 to i128
  %tmp1554 = and i128 %tmp1553, 79228162495817593519834398720
  %tmp496 = lshr exact i128 %tmp1554, 64
  %tmp497 = trunc i128 %tmp496 to i32
  %tmp498 = bitcast i32 %tmp497 to float
  %224 = fadd float %tmp660, %tmp653
  %225 = fadd float %224, %tmp498
  %226 = fcmp ogt float %225, 3.000000e+00
  br i1 %226, label %bb76, label %invcont89

bb76:                                             ; preds = %invcont75
  %227 = fmul float %tmp660, 0x3F50624DE0000000
  %228 = fmul float %tmp653, 0x3F50624DE0000000
  %229 = fmul float %tmp498, 0x3F50624DE0000000
  br label %invcont89

invcont89:                                        ; preds = %bb76, %invcont75
  %surface_color.0.0 = phi float [ %227, %bb76 ], [ %tmp660, %invcont75 ]
  %surface_color.1.0 = phi float [ %228, %bb76 ], [ %tmp653, %invcont75 ]
  %surface_color.2.0 = phi float [ %229, %bb76 ], [ %tmp498, %invcont75 ]
  %230 = fmul float %63, %tmp640
  %231 = fmul float %62, %tmp640
  %232 = fmul float %tmp542, %tmp640
  %233 = fadd float %230, %tmp583
  %234 = fadd float %231, %tmp576
  %235 = fadd float %tmp566, %232
  %tmp17.i.i = bitcast float %233 to i32
  %tmp11.i.i = bitcast float %234 to i32
  %tmp485 = bitcast float %235 to i32
  %236 = icmp sgt i32 %bounces.0, 0
  br i1 %236, label %bb90, label %bb100.outer

bb90:                                             ; preds = %invcont89
  store float %233, float* %scevgep13351336, align 4
  store float %234, float* %scevgep1334, align 4
  store float %235, float* %scevgep1333, align 4
  store float %237, float* %scevgep1332, align 4
  store float %238, float* %scevgep1331, align 4
  store float %239, float* %scevgep1330, align 4
  store i8 0, i8* %scevgep1329, align 4
  %indvar.next1323 = add i64 %indvar1322, 1
  br label %bb100.outer.outer

bb100.outer.outer:                                ; preds = %bb100.preheader, %bb90
  %indvar1322 = phi i64 [ 0, %bb100.preheader ], [ %indvar.next1323, %bb90 ]
  %mask680982.ph.ph = phi i512 [ %mask6809811227, %bb100.preheader ], [ %mask680983, %bb90 ]
  %surface_color.0.2.ph.ph = phi float [ 0.000000e+00, %bb100.preheader ], [ %surface_color.0.0, %bb90 ]
  %surface_color.1.2.ph.ph = phi float [ 0.000000e+00, %bb100.preheader ], [ %surface_color.1.0, %bb90 ]
  %surface_color.2.2.ph.ph = phi float [ 0.000000e+00, %bb100.preheader ], [ %surface_color.2.0, %bb90 ]
  %memtmp34.0.ph.ph = phi i128 [ %memtmp34.11229, %bb100.preheader ], [ %ins577, %bb90 ]
  %ray_origin.1.off0.ph.ph = phi i32 [ %ray_origin.2.off01230, %bb100.preheader ], [ %tmp17.i.i, %bb90 ]
  %ray_origin.1.off32.ph.ph = phi i32 [ %ray_origin.2.off321231, %bb100.preheader ], [ %tmp11.i.i, %bb90 ]
  %ray_origin.1.off64.ph.ph = phi i32 [ %ray_origin.2.off641232, %bb100.preheader ], [ %tmp485, %bb90 ]
  %bounces.0.ph.ph = phi i32 [ 0, %bb100.preheader ], [ %tmp1307, %bb90 ]
  %tmp1325 = add i64 %tmp1324, %indvar1322
  %count.2.ph.ph = trunc i64 %tmp1325 to i32
  %tmp1328 = add i64 %tmp1327, %indvar1322
  %scevgep1329 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %tmp1328, i32 2
  %scevgep1330 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %tmp1328, i32 1, i64 2
  %scevgep1331 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %tmp1328, i32 1, i64 1
  %scevgep1332 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %tmp1328, i32 1, i64 0
  %scevgep1333 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %tmp1328, i32 0, i32 2
  %scevgep1334 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %tmp1328, i32 0, i32 1
  %scevgep13351336 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %tmp1328, i32 0, i32 0
  br label %bb100.outer

bb100.outer:                                      ; preds = %bb100.outer.outer, %invcont89
  %mask680982.ph = phi i512 [ %mask680983, %invcont89 ], [ %mask680982.ph.ph, %bb100.outer.outer ]
  %surface_color.0.2.ph = phi float [ %surface_color.0.0, %invcont89 ], [ %surface_color.0.2.ph.ph, %bb100.outer.outer ]
  %surface_color.1.2.ph = phi float [ %surface_color.1.0, %invcont89 ], [ %surface_color.1.2.ph.ph, %bb100.outer.outer ]
  %surface_color.2.2.ph = phi float [ %surface_color.2.0, %invcont89 ], [ %surface_color.2.2.ph.ph, %bb100.outer.outer ]
  %memtmp34.0.ph = phi i128 [ %ins577, %invcont89 ], [ %memtmp34.0.ph.ph, %bb100.outer.outer ]
  %ray_origin.1.off0.ph = phi i32 [ %tmp17.i.i, %invcont89 ], [ %ray_origin.1.off0.ph.ph, %bb100.outer.outer ]
  %ray_origin.1.off32.ph = phi i32 [ %tmp11.i.i, %invcont89 ], [ %ray_origin.1.off32.ph.ph, %bb100.outer.outer ]
  %ray_origin.1.off64.ph = phi i32 [ %tmp485, %invcont89 ], [ %ray_origin.1.off64.ph.ph, %bb100.outer.outer ]
  %bounces.0.ph = phi i32 [ %tmp1307, %invcont89 ], [ %bounces.0.ph.ph, %bb100.outer.outer ]
  %237 = fmul float %surface_color.0.2.ph, 0x3FE6666660000000
  %238 = fmul float %surface_color.1.2.ph, 0x3FE6666660000000
  %239 = fmul float %surface_color.2.2.ph, 0x3FE6666660000000
  %tmp583 = bitcast i32 %ray_origin.1.off0.ph to float
  %tmp576 = bitcast i32 %ray_origin.1.off32.ph to float
  %tmp566 = bitcast i32 %ray_origin.1.off64.ph to float
  %tmp1306 = add i32 %bounces.0.ph, 1
  br label %bb100

bb100:                                            ; preds = %bb100.outer, %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %indvar1303 = phi i32 [ 0, %bb100.outer ], [ %indvar.next1304, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %mask680982 = phi i512 [ %mask680982.ph, %bb100.outer ], [ %mask680983, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %memtmp34.0 = phi i128 [ %memtmp34.0.ph, %bb100.outer ], [ %ins577, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %bounces.0 = add i32 %bounces.0.ph, %indvar1303
  %tmp1307 = add i32 %tmp1306, %indvar1303
  %240 = icmp slt i32 %bounces.0, 3
  br i1 %240, label %bb.i55, label %bb102

bb102:                                            ; preds = %bb100
  %241 = add nsw i32 %iterator.01235, 1
  %exitcond1337 = icmp eq i32 %241, 100000
  br i1 %exitcond1337, label %invcont106, label %bb100.preheader

bb100.preheader:                                  ; preds = %bb102, %invcont18
  %iterator.01235 = phi i32 [ 0, %invcont18 ], [ %241, %bb102 ]
  %count.31234 = phi i32 [ 0, %invcont18 ], [ %count.2.ph.ph, %bb102 ]
  %ray_origin.2.off641232 = phi i32 [ %tmp659, %invcont18 ], [ %ray_origin.1.off64.ph, %bb102 ]
  %ray_origin.2.off321231 = phi i32 [ %tmp665, %invcont18 ], [ %ray_origin.1.off32.ph, %bb102 ]
  %ray_origin.2.off01230 = phi i32 [ %tmp671, %invcont18 ], [ %ray_origin.1.off0.ph, %bb102 ]
  %memtmp34.11229 = phi i128 [ undef, %invcont18 ], [ %memtmp34.0, %bb102 ]
  %mask6809811227 = phi i512 [ undef, %invcont18 ], [ %mask680982, %bb102 ]
  %tmp1324 = zext i32 %count.31234 to i64
  %tmp1327 = sext i32 %count.31234 to i64
  br label %bb100.outer.outer

invcont106:                                       ; preds = %bb102
  %242 = call i32 @llvm.trax.atominc(i32 0)
  %243 = mul nsw i32 %1, %0
  %244 = sitofp i32 %0 to float
  %245 = fdiv float %244, -2.000000e+00
  %246 = sitofp i32 %1 to float
  %247 = fdiv float %246, -2.000000e+00
  %248 = icmp sgt i32 %243, %242
  br i1 %248, label %invcont116.lr.ph, label %return

invcont116.lr.ph:                                 ; preds = %invcont106
  %tmp812 = bitcast float %10 to i32
  %tmp813 = zext i32 %tmp812 to i192
  %tmp752 = bitcast float %11 to i32
  %tmp753 = zext i32 %tmp752 to i192
  %tmp754 = shl nuw nsw i192 %tmp753, 32
  %tmp738 = bitcast float %12 to i32
  %tmp739 = zext i32 %tmp738 to i192
  %tmp740 = shl nuw nsw i192 %tmp739, 64
  %mask741.masked.masked = or i192 %tmp754, %tmp813
  %mask803.masked = or i192 %mask741.masked.masked, %tmp740
  %tmp2937 = zext i32 %tmp812 to i96
  %tmp2932 = trunc i192 %tmp754 to i96
  %ins2934 = or i96 %tmp2932, %tmp2937
  %tmp2360 = zext i96 %ins2934 to i128
  %tmp2355 = trunc i192 %tmp740 to i128
  %mask2356 = or i128 %tmp2360, %tmp2355
  br label %invcont116

invcont116:                                       ; preds = %invcont158, %invcont116.lr.ph
  %storemerge21192 = phi i32 [ %242, %invcont116.lr.ph ], [ %732, %invcont158 ]
  %249 = phi i32 [ 0, %invcont116.lr.ph ], [ %444, %invcont158 ]
  %memtmp31.i.31189 = phi i128 [ undef, %invcont116.lr.ph ], [ %memtmp31.i.2, %invcont158 ]
  %memtmp4.i208.11185 = phi i128 [ undef, %invcont116.lr.ph ], [ %memtmp4.i208.0, %invcont158 ]
  %mask5119891178 = phi i512 [ undef, %invcont116.lr.ph ], [ %mask511990, %invcont158 ]
  %250 = sdiv i32 %storemerge21192, %0
  %251 = srem i32 %storemerge21192, %0
  %252 = sitofp i32 %251 to float
  %253 = fadd float %252, %245
  %254 = fadd float %253, 5.000000e-01
  %255 = fmul float %254, 2.000000e+00
  %256 = fdiv float %255, %244
  %257 = sitofp i32 %250 to float
  %258 = fadd float %257, %247
  %259 = fadd float %258, 5.000000e-01
  %260 = fmul float %259, 2.000000e+00
  %261 = fdiv float %260, %246
  %262 = fmul float %26, %261
  %263 = fmul float %27, %261
  %264 = fmul float %28, %261
  %265 = fmul float %22, %256
  %266 = fmul float %23, %256
  %267 = fmul float %24, %256
  %268 = fadd float %262, %265
  %269 = fadd float %263, %266
  %270 = fadd float %267, %264
  %271 = fadd float %268, %18
  %272 = fadd float %269, %19
  %273 = fadd float %20, %270
  %274 = fmul float %271, %271
  %275 = fmul float %272, %272
  %276 = fadd float %274, %275
  %277 = fmul float %273, %273
  %278 = fadd float %276, %277
  %279 = call float @llvm.trax.invsqrt(float %278) nounwind
  %280 = fdiv float 1.000000e+00, %279
  %281 = fdiv float %273, %280
  %282 = fdiv float %272, %280
  %283 = fdiv float %271, %280
  %tmp800 = bitcast float %283 to i32
  %tmp801 = zext i32 %tmp800 to i192
  %tmp802 = shl nuw nsw i192 %tmp801, 96
  %tmp784 = bitcast float %282 to i32
  %tmp785 = zext i32 %tmp784 to i192
  %tmp786 = shl nuw nsw i192 %tmp785, 128
  %tmp766 = bitcast float %281 to i32
  %tmp767 = zext i32 %tmp766 to i192
  %tmp768 = shl nuw i192 %tmp767, 160
  %mask787.masked = or i192 %mask803.masked, %tmp786
  %mask769 = or i192 %mask787.masked, %tmp802
  %ins770 = or i192 %mask769, %tmp768
  %mask433 = and i512 %mask5119891178, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins434 = or i512 %mask433, 1343554297
  %tmp688 = lshr i192 %ins770, 160
  %tmp689 = trunc i192 %tmp688 to i32
  %tmp690 = bitcast i32 %tmp689 to float
  br label %bb.outer.i60

bb.outer.i60:                                     ; preds = %bb9.i160, %invcont116
  %mask511991 = phi i512 [ %ins434, %invcont116 ], [ %mask511990, %bb9.i160 ]
  %node_id.0.ph.i55 = phi i32 [ 0, %invcont116 ], [ %441, %bb9.i160 ]
  %sp.0.ph.i56 = phi i32 [ -1, %invcont116 ], [ %442, %bb9.i160 ]
  %tmp404.i58 = add i32 %sp.0.ph.i56, 1
  %tmp1259 = sext i32 %tmp404.i58 to i64
  %tmp1261 = zext i32 %sp.0.ph.i56 to i64
  br label %bb.i72

bb.i72:                                           ; preds = %bb3.i88, %bb.outer.i60
  %indvar.i61 = phi i64 [ %indvar.next.i87, %bb3.i88 ], [ 0, %bb.outer.i60 ]
  %node_id.0.i62 = phi i32 [ %319, %bb3.i88 ], [ %node_id.0.ph.i55, %bb.outer.i60 ]
  %tmp1260 = add i64 %tmp1259, %indvar.i61
  %scevgep.i66 = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp1260
  %tmp1262 = add i64 %tmp1261, %indvar.i61
  %sp.0.i64 = trunc i64 %tmp1262 to i32
  %284 = shl nsw i32 %node_id.0.i62, 3
  %285 = add nsw i32 %284, %37
  %286 = call float @llvm.trax.loadf(i32 %285, i32 2) nounwind
  %287 = call float @llvm.trax.loadf(i32 %285, i32 1) nounwind
  %288 = call float @llvm.trax.loadf(i32 %285, i32 0) nounwind
  %289 = call float @llvm.trax.loadf(i32 %285, i32 5) nounwind
  %290 = call float @llvm.trax.loadf(i32 %285, i32 4) nounwind
  %291 = call float @llvm.trax.loadf(i32 %285, i32 3) nounwind
  %292 = fsub float %288, %10
  %293 = fdiv float %292, %283
  %294 = fsub float %291, %10
  %295 = fdiv float %294, %283
  %296 = fcmp ogt float %293, %295
  %tx1.i.0.i67 = select i1 %296, float %295, float %293
  %tx2.i.0.i68 = select i1 %296, float %293, float %295
  %297 = fcmp ogt float %tx1.i.0.i67, -1.000000e+10
  %tnear.i.0.i69 = select i1 %297, float %tx1.i.0.i67, float -1.000000e+10
  %298 = fcmp olt float %tx2.i.0.i68, 1.000000e+10
  %tfar.i.0.i70 = select i1 %298, float %tx2.i.0.i68, float 1.000000e+10
  %299 = fcmp ogt float %tnear.i.0.i69, %tfar.i.0.i70
  %300 = fcmp olt float %tfar.i.0.i70, 0.000000e+00
  %or.cond.i71 = or i1 %299, %300
  br i1 %or.cond.i71, label %bb7.i159, label %bb29.i.i78

bb29.i.i78:                                       ; preds = %bb.i72
  %301 = fsub float %287, %11
  %302 = fdiv float %301, %282
  %303 = fsub float %290, %11
  %304 = fdiv float %303, %282
  %305 = fcmp ogt float %302, %304
  %ty1.i.0.i73 = select i1 %305, float %304, float %302
  %ty2.i.0.i74 = select i1 %305, float %302, float %304
  %306 = fcmp ogt float %ty1.i.0.i73, %tnear.i.0.i69
  %tnear.i.1.i75 = select i1 %306, float %ty1.i.0.i73, float %tnear.i.0.i69
  %307 = fcmp olt float %ty2.i.0.i74, %tfar.i.0.i70
  %tfar.i.1.i76 = select i1 %307, float %ty2.i.0.i74, float %tfar.i.0.i70
  %308 = fcmp ogt float %tnear.i.1.i75, %tfar.i.1.i76
  %309 = fcmp olt float %tfar.i.1.i76, 0.000000e+00
  %or.cond1395.i77 = or i1 %308, %309
  br i1 %or.cond1395.i77, label %bb7.i159, label %bb62.i.i84

bb62.i.i84:                                       ; preds = %bb29.i.i78
  %310 = fsub float %286, %12
  %311 = fdiv float %310, %tmp690
  %312 = fsub float %289, %12
  %313 = fdiv float %312, %tmp690
  %314 = fcmp ogt float %311, %313
  %tz1.i.0.i79 = select i1 %314, float %313, float %311
  %tz2.i.0.i80 = select i1 %314, float %311, float %313
  %315 = fcmp ogt float %tz1.i.0.i79, %tnear.i.1.i75
  %tnear.i.2.i81 = select i1 %315, float %tz1.i.0.i79, float %tnear.i.1.i75
  %316 = fcmp olt float %tz2.i.0.i80, %tfar.i.1.i76
  %tfar.i.2.i82 = select i1 %316, float %tz2.i.0.i80, float %tfar.i.1.i76
  %317 = fcmp ogt float %tnear.i.2.i81, %tfar.i.2.i82
  %318 = fcmp olt float %tfar.i.2.i82, 0.000000e+00
  %or.cond1396.i83 = or i1 %317, %318
  br i1 %or.cond1396.i83, label %bb7.i159, label %bb1.i85

bb1.i85:                                          ; preds = %bb62.i.i84
  %319 = call i32 @llvm.trax.loadi(i32 %285, i32 7) nounwind
  %320 = call i32 @llvm.trax.loadi(i32 %285, i32 6) nounwind
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %bb3.i88, label %bb6.preheader.i86

bb6.preheader.i86:                                ; preds = %bb1.i85
  %322 = icmp sgt i32 %320, 0
  br i1 %322, label %bb5.i99, label %bb7.i159

bb3.i88:                                          ; preds = %bb1.i85
  %323 = add nsw i32 %319, 1
  store i32 %323, i32* %scevgep.i66, align 4
  %indvar.next.i87 = add i64 %indvar.i61, 1
  br label %bb.i72

bb5.i99:                                          ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i158, %bb6.preheader.i86
  %mask511988 = phi i512 [ %mask511987, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i158 ], [ %mask511991, %bb6.preheader.i86 ]
  %storemerge388.i89 = phi i32 [ %437, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i158 ], [ 0, %bb6.preheader.i86 ]
  %tmp1253 = mul i32 %storemerge388.i89, 11
  %tmp396.i91 = add i32 %319, %tmp1253
  %324 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 2) nounwind
  %325 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 1) nounwind
  %326 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 0) nounwind
  %327 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 5) nounwind
  %328 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 4) nounwind
  %329 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 3) nounwind
  %330 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 8) nounwind
  %331 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 7) nounwind
  %332 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 6) nounwind
  %333 = call i32 @llvm.trax.loadi(i32 %tmp396.i91, i32 10) nounwind
  %334 = call i32 @llvm.trax.loadi(i32 %tmp396.i91, i32 9) nounwind
  %335 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %336 = mul nsw i32 %333, 25
  %337 = add nsw i32 %335, %336
  %338 = call float @llvm.trax.loadf(i32 %337, i32 6) nounwind
  %339 = call float @llvm.trax.loadf(i32 %337, i32 5) nounwind
  %340 = call float @llvm.trax.loadf(i32 %337, i32 4) nounwind
  %341 = fsub float %326, %332
  %342 = fsub float %325, %331
  %343 = fsub float %324, %330
  %344 = fsub float %329, %332
  %345 = fsub float %328, %331
  %346 = fsub float %327, %330
  %347 = fmul float %342, %346
  %348 = fmul float %345, %343
  %349 = fsub float %347, %348
  %350 = fmul float %344, %343
  %351 = fmul float %341, %346
  %352 = fsub float %350, %351
  %353 = fmul float %345, %341
  %354 = fmul float %344, %342
  %355 = fsub float %353, %354
  %356 = fmul float %349, %349
  %357 = fmul float %352, %352
  %358 = fadd float %356, %357
  %359 = fmul float %355, %355
  %360 = fadd float %358, %359
  %361 = call float @llvm.trax.invsqrt(float %360) nounwind
  %362 = fmul float %282, %346
  %363 = fmul float %345, %tmp690
  %364 = fsub float %362, %363
  %365 = fmul float %344, %tmp690
  %366 = fmul float %283, %346
  %367 = fsub float %365, %366
  %368 = fmul float %345, %283
  %369 = fmul float %344, %282
  %370 = fsub float %368, %369
  %371 = fmul float %364, %341
  %372 = fadd float %371, 0.000000e+00
  %373 = fmul float %367, %342
  %374 = fadd float %373, %372
  %375 = fmul float %370, %343
  %376 = fadd float %375, %374
  %377 = fdiv float 1.000000e+00, %376
  %378 = fsub float %10, %332
  %379 = fsub float %11, %331
  %380 = fsub float %12, %330
  %381 = fmul float %364, %378
  %382 = fadd float %381, 0.000000e+00
  %383 = fmul float %367, %379
  %384 = fadd float %383, %382
  %385 = fmul float %370, %380
  %386 = fadd float %385, %384
  %387 = fmul float %386, %377
  %388 = fcmp olt float %387, 0.000000e+00
  %389 = fcmp ogt float %387, 1.000000e+00
  %or.cond1397.i98 = or i1 %388, %389
  br i1 %or.cond1397.i98, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i158, label %bb73.i.i100

bb73.i.i100:                                      ; preds = %bb5.i99
  %390 = fmul float %379, %343
  %391 = fmul float %342, %380
  %392 = fsub float %390, %391
  %393 = fmul float %341, %380
  %394 = fmul float %378, %343
  %395 = fsub float %393, %394
  %396 = fmul float %342, %378
  %397 = fmul float %341, %379
  %398 = fsub float %396, %397
  %399 = fmul float %392, %283
  %400 = fadd float %399, 0.000000e+00
  %401 = fmul float %395, %282
  %402 = fadd float %401, %400
  %403 = fmul float %398, %tmp690
  %404 = fadd float %403, %402
  %405 = fmul float %404, %377
  %406 = fcmp olt float %405, 0.000000e+00
  br i1 %406, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i158, label %bb94.i55.i101

bb94.i55.i101:                                    ; preds = %bb73.i.i100
  %407 = fadd float %405, %387
  %408 = fcmp ogt float %407, 1.000000e+00
  br i1 %408, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i158, label %bb96.i.i104

bb96.i.i104:                                      ; preds = %bb94.i55.i101
  %409 = fmul float %392, %344
  %410 = fadd float %409, 0.000000e+00
  %411 = fmul float %395, %345
  %412 = fadd float %411, %410
  %413 = fmul float %398, %346
  %414 = fadd float %413, %412
  %415 = fmul float %414, %377
  %416 = fcmp ule float %415, 0.000000e+00
  %417 = fcmp olt float %415, 0x3F50624DE0000000
  %or.cond1398.i102 = or i1 %416, %417
  %418 = fcmp oeq float %415, 1.000000e+10
  %or.cond1399.i103 = or i1 %or.cond1398.i102, %418
  br i1 %or.cond1399.i103, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i158, label %bb2.i.i.i105

bb2.i.i.i105:                                     ; preds = %bb96.i.i104
  %tmp416 = trunc i512 %mask511988 to i32
  %tmp417 = bitcast i32 %tmp416 to float
  %419 = fcmp ogt float %tmp417, %415
  br i1 %419, label %bb3.i.i.i156, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i158

bb3.i.i.i156:                                     ; preds = %bb2.i.i.i105
  %tmp411 = bitcast float %415 to i32
  %tmp412 = zext i32 %tmp411 to i512
  %420 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 2) nounwind
  %421 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 1) nounwind
  %422 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 0) nounwind
  %423 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 5) nounwind
  %424 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 4) nounwind
  %425 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 3) nounwind
  %426 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 8) nounwind
  %427 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 7) nounwind
  %428 = call float @llvm.trax.loadf(i32 %tmp396.i91, i32 6) nounwind
  %429 = call i32 @llvm.trax.loadi(i32 %tmp396.i91, i32 10) nounwind
  %430 = call i32 @llvm.trax.loadi(i32 %tmp396.i91, i32 9) nounwind
  %tmp369.i106 = bitcast float %422 to i32
  %tmp370.i107 = zext i32 %tmp369.i106 to i480
  %tmp301.i108 = bitcast float %421 to i32
  %tmp302.i109 = zext i32 %tmp301.i108 to i480
  %tmp303.i110 = shl nuw nsw i480 %tmp302.i109, 32
  %tmp295.i111 = bitcast float %420 to i32
  %tmp296.i112 = zext i32 %tmp295.i111 to i480
  %tmp297.i113 = shl nuw nsw i480 %tmp296.i112, 64
  %tmp363.i114 = bitcast float %425 to i32
  %tmp364.i115 = zext i32 %tmp363.i114 to i480
  %tmp365.i116 = shl nuw nsw i480 %tmp364.i115, 96
  %tmp357.i117 = bitcast float %424 to i32
  %tmp358.i118 = zext i32 %tmp357.i117 to i480
  %tmp359.i119 = shl nuw nsw i480 %tmp358.i118, 128
  %tmp351.i120 = bitcast float %423 to i32
  %tmp352.i121 = zext i32 %tmp351.i120 to i480
  %tmp353.i122 = shl nuw nsw i480 %tmp352.i121, 160
  %tmp345.i123 = bitcast float %428 to i32
  %tmp346.i124 = zext i32 %tmp345.i123 to i480
  %tmp347.i125 = shl nuw nsw i480 %tmp346.i124, 192
  %tmp339.i126 = bitcast float %427 to i32
  %tmp340.i127 = zext i32 %tmp339.i126 to i480
  %tmp341.i128 = shl nuw nsw i480 %tmp340.i127, 224
  %tmp333.i129 = bitcast float %426 to i32
  %tmp334.i130 = zext i32 %tmp333.i129 to i480
  %tmp335.i131 = shl nuw nsw i480 %tmp334.i130, 256
  %tmp290.i132 = zext i32 %430 to i480
  %tmp291.i133 = shl nuw nsw i480 %tmp290.i132, 288
  %431 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %432 = mul nsw i32 %429, 25
  %433 = add nsw i32 %431, %432
  %434 = call float @llvm.trax.loadf(i32 %433, i32 6) nounwind
  %435 = call float @llvm.trax.loadf(i32 %433, i32 5) nounwind
  %436 = call float @llvm.trax.loadf(i32 %433, i32 4) nounwind
  %tmp325.i134 = bitcast float %436 to i32
  %tmp326.i135 = zext i32 %tmp325.i134 to i480
  %tmp327.i136 = shl nuw nsw i480 %tmp326.i135, 320
  %tmp317.i137 = bitcast float %435 to i32
  %tmp318.i138 = zext i32 %tmp317.i137 to i480
  %tmp319.i139 = shl nuw nsw i480 %tmp318.i138, 352
  %tmp309.i140 = bitcast float %434 to i32
  %tmp310.i141 = zext i32 %tmp309.i140 to i480
  %tmp311.i142 = shl nuw nsw i480 %tmp310.i141, 384
  %mask298.i143 = or i480 %tmp297.i113, %tmp370.i107
  %mask366.i144 = or i480 %mask298.i143, %tmp303.i110
  %mask360.masked.masked.masked.masked.masked.i145 = or i480 %mask366.i144, %tmp353.i122
  %mask354.masked.masked.masked.masked.masked.masked.i146 = or i480 %mask360.masked.masked.masked.masked.masked.i145, %tmp359.i119
  %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i147 = or i480 %mask354.masked.masked.masked.masked.masked.masked.i146, %tmp365.i116
  %mask342.masked.masked.masked.masked.masked.masked.masked.i148 = or i480 %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i147, %tmp335.i131
  %mask336.masked.masked.masked.masked.masked.masked.i149 = or i480 %mask342.masked.masked.masked.masked.masked.masked.masked.i148, %tmp341.i128
  %mask292.masked.masked.masked.masked.masked.i150 = or i480 %mask336.masked.masked.masked.masked.masked.masked.i149, %tmp347.i125
  %mask328.masked.masked.masked.masked.i151 = or i480 %mask292.masked.masked.masked.masked.masked.i150, %tmp291.i133
  %mask320.masked.masked.masked.i152 = or i480 %mask328.masked.masked.masked.masked.i151, %tmp311.i142
  %mask312.masked.masked.i153 = or i480 %mask320.masked.masked.masked.i152, %tmp319.i139
  %ins288.i154 = or i480 %mask312.masked.masked.i153, %tmp327.i136
  %ins285.i155 = or i480 %ins288.i154, 770681673391627619131312691654083964084373995933406099189890146314966155308140517402099473489517307419678932548501811235986099843289400054120448
  %tmp408 = zext i480 %ins285.i155 to i512
  %tmp409 = shl nuw i512 %tmp408, 32
  %ins = or i512 %tmp409, %tmp412
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i158

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i158: ; preds = %bb3.i.i.i156, %bb2.i.i.i105, %bb96.i.i104, %bb94.i55.i101, %bb73.i.i100, %bb5.i99
  %mask511987 = phi i512 [ %ins, %bb3.i.i.i156 ], [ %mask511988, %bb2.i.i.i105 ], [ %mask511988, %bb96.i.i104 ], [ %mask511988, %bb94.i55.i101 ], [ %mask511988, %bb73.i.i100 ], [ %mask511988, %bb5.i99 ]
  %437 = add nsw i32 %storemerge388.i89, 1
  %exitcond1252 = icmp eq i32 %437, %320
  br i1 %exitcond1252, label %bb7.i159, label %bb5.i99

bb7.i159:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i158, %bb6.preheader.i86, %bb62.i.i84, %bb29.i.i78, %bb.i72
  %mask511990 = phi i512 [ %mask511991, %bb6.preheader.i86 ], [ %mask511987, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i158 ], [ %mask511991, %bb.i72 ], [ %mask511991, %bb29.i.i78 ], [ %mask511991, %bb62.i.i84 ]
  %438 = icmp slt i32 %sp.0.i64, 0
  br i1 %438, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit161, label %bb9.i160

bb9.i160:                                         ; preds = %bb7.i159
  %439 = sext i32 %sp.0.i64 to i64
  %440 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %439
  %441 = load i32* %440, align 4
  %442 = add nsw i32 %sp.0.i64, -1
  br label %bb.outer.i60

_ZN3BVH9intersectER9HitRecordR3Ray.exit161:       ; preds = %bb7.i159
  %443 = sitofp i32 %249 to float
  %444 = add nsw i32 %249, 1
  call void @llvm.trax.printf(float %443)
  %tmp1074 = trunc i512 %mask511990 to i32
  %tmp1075 = bitcast i32 %tmp1074 to float
  %445 = fcmp olt float %tmp1075, 1.000000e+10
  %tmp1014 = lshr i512 %mask511990, 32
  %tmp1015 = trunc i512 %tmp1014 to i32
  %tmp1016 = bitcast i32 %tmp1015 to float
  %tmp1010 = lshr i512 %mask511990, 64
  %tmp1011 = trunc i512 %tmp1010 to i32
  %tmp1012 = bitcast i32 %tmp1011 to float
  %tmp1006 = lshr i512 %mask511990, 96
  %tmp1007 = trunc i512 %tmp1006 to i32
  %tmp1008 = bitcast i32 %tmp1007 to float
  %tmp1067 = lshr i512 %mask511990, 128
  %tmp1068 = trunc i512 %tmp1067 to i32
  %tmp1069 = bitcast i32 %tmp1068 to float
  %tmp1063 = lshr i512 %mask511990, 160
  %tmp1064 = trunc i512 %tmp1063 to i32
  %tmp1065 = bitcast i32 %tmp1064 to float
  %tmp1059 = lshr i512 %mask511990, 192
  %tmp1060 = trunc i512 %tmp1059 to i32
  %tmp1061 = bitcast i32 %tmp1060 to float
  %tmp1055 = lshr i512 %mask511990, 224
  %tmp1056 = trunc i512 %tmp1055 to i32
  %tmp1057 = bitcast i32 %tmp1056 to float
  %tmp1050 = lshr i512 %mask511990, 256
  %tmp1051 = trunc i512 %tmp1050 to i32
  %tmp1052 = bitcast i32 %tmp1051 to float
  %tmp1046 = lshr i512 %mask511990, 288
  %tmp1047 = trunc i512 %tmp1046 to i32
  %tmp1048 = bitcast i32 %tmp1047 to float
  %tmp1029 = lshr i512 %mask511990, 352
  br i1 %445, label %bb.i233, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit161.invcont121_crit_edge

_ZN3BVH9intersectER9HitRecordR3Ray.exit161.invcont121_crit_edge: ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit161
  %.pre = fmul float %283, %tmp1075
  %.pre1371 = fmul float %282, %tmp1075
  %.pre1373 = fadd float %.pre, %10
  %.pre1375 = fadd float %.pre1371, %11
  %.pre1377 = fsub float %tmp1016, %tmp1069
  %.pre1379 = fsub float %tmp1012, %tmp1065
  %.pre1381 = fsub float %tmp1008, %tmp1061
  %.pre1383 = fsub float %tmp1069, %tmp1057
  %.pre1385 = fsub float %tmp1065, %tmp1052
  %.pre1387 = fsub float %tmp1061, %tmp1048
  %.pre1389 = fmul float %.pre1379, %.pre1387
  %.pre1391 = fmul float %.pre1385, %.pre1381
  %.pre1393 = fsub float %.pre1389, %.pre1391
  %.pre1395 = fmul float %.pre1383, %.pre1381
  %.pre1397 = fmul float %.pre1377, %.pre1387
  %.pre1399 = fsub float %.pre1395, %.pre1397
  %.pre1401 = fmul float %.pre1385, %.pre1377
  %.pre1403 = fmul float %.pre1383, %.pre1379
  %.pre1405 = fsub float %.pre1401, %.pre1403
  %.pre1407 = fmul float %.pre1393, %.pre1393
  %.pre1409 = fmul float %.pre1399, %.pre1399
  %.pre1411 = fadd float %.pre1407, %.pre1409
  %.pre1413 = fmul float %.pre1405, %.pre1405
  %.pre1415 = fadd float %.pre1411, %.pre1413
  %extract.t = trunc i512 %tmp1029 to i32
  %extract.t1422 = trunc i512 %tmp1029 to i128
  br label %invcont121

bb.i233:                                          ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit161
  %tmp1033 = lshr i512 %mask511990, 480
  %tmp1034 = trunc i512 %tmp1033 to i32
  %tmp1035 = bitcast i32 %tmp1034 to float
  %446 = lshr i192 %ins770, 96
  %.tr1114 = trunc i192 %446 to i128
  %tmp2399 = and i128 %.tr1114, 79228162495817593519834398720
  %tmp2386 = lshr exact i128 %tmp2399, 64
  %tmp2387 = trunc i128 %tmp2386 to i32
  %tmp2388 = bitcast i32 %tmp2387 to float
  %447 = fmul float %283, %tmp1075
  %448 = fmul float %282, %tmp1075
  %449 = fmul float %tmp2388, %tmp1075
  %tmp2890 = bitcast float %447 to i32
  %tmp2891 = zext i32 %tmp2890 to i96
  %tmp2884 = bitcast float %448 to i32
  %tmp2885 = zext i32 %tmp2884 to i96
  %tmp2886 = shl nuw nsw i96 %tmp2885, 32
  %ins2888 = or i96 %tmp2886, %tmp2891
  %tmp2878 = bitcast float %449 to i32
  %tmp2382 = zext i96 %ins2888 to i128
  %mask2383 = and i128 %memtmp4.i208.11185, -79228162514264337593543950336
  %tmp2376 = zext i32 %tmp2878 to i128
  %tmp2377 = shl nuw nsw i128 %tmp2376, 64
  %mask2378 = or i128 %tmp2377, %mask2383
  %ins2379 = or i128 %mask2378, %tmp2382
  %ins2379.tr = trunc i128 %ins2379 to i96
  %tmp2342 = lshr i128 %mask2356, 64
  %tmp2343 = trunc i128 %tmp2342 to i32
  %tmp2344 = bitcast i32 %tmp2343 to float
  %tmp2477 = lshr i96 %ins2379.tr, 64
  %tmp2478 = trunc i96 %tmp2477 to i32
  %tmp2479 = bitcast i32 %tmp2478 to float
  %450 = fadd float %447, %10
  %451 = fadd float %448, %11
  %452 = fadd float %tmp2344, %tmp2479
  %453 = fsub float %tmp1016, %tmp1069
  %454 = fsub float %tmp1012, %tmp1065
  %455 = fsub float %tmp1008, %tmp1061
  %456 = fsub float %tmp1069, %tmp1057
  %457 = fsub float %tmp1065, %tmp1052
  %458 = fsub float %tmp1061, %tmp1048
  %459 = fmul float %454, %458
  %460 = fmul float %457, %455
  %461 = fsub float %459, %460
  %462 = fmul float %456, %455
  %463 = fmul float %453, %458
  %464 = fsub float %462, %463
  %465 = fmul float %457, %453
  %466 = fmul float %456, %454
  %467 = fsub float %465, %466
  %468 = fmul float %461, %461
  %469 = fmul float %464, %464
  %470 = fadd float %468, %469
  %471 = fmul float %467, %467
  %472 = fadd float %470, %471
  %473 = call float @llvm.trax.invsqrt(float %472) nounwind
  %474 = fdiv float 1.000000e+00, %473
  %475 = fdiv float %467, %474
  %476 = fdiv float %464, %474
  %477 = fdiv float %461, %474
  %478 = fmul float %283, %283
  %479 = fmul float %282, %282
  %480 = fadd float %478, %479
  %481 = fmul float %tmp2388, %tmp2388
  %482 = fadd float %480, %481
  %483 = call float @llvm.trax.invsqrt(float %482) nounwind
  %484 = fdiv float 1.000000e+00, %483
  %485 = fdiv float %tmp2388, %484
  %486 = fdiv float %282, %484
  %487 = fdiv float %283, %484
  %488 = fmul float %487, %477
  %489 = fadd float %488, 0.000000e+00
  %490 = fmul float %486, %476
  %491 = fadd float %490, %489
  %492 = fmul float %485, %475
  %493 = fadd float %492, %491
  %494 = fcmp ogt float %493, 0.000000e+00
  br i1 %494, label %bb46.i, label %bb53.i

bb46.i:                                           ; preds = %bb.i233
  %495 = fmul float %477, -1.000000e+00
  %496 = fmul float %476, -1.000000e+00
  %497 = fmul float %475, -1.000000e+00
  br label %bb53.i

bb53.i:                                           ; preds = %bb46.i, %bb.i233
  %N.i.0.0 = phi float [ %495, %bb46.i ], [ %477, %bb.i233 ]
  %N.i.1.0 = phi float [ %496, %bb46.i ], [ %476, %bb.i233 ]
  %N.i.2.0 = phi float [ %497, %bb46.i ], [ %475, %bb.i233 ]
  %498 = fsub float %6, %450
  %499 = fsub float %7, %451
  %500 = fsub float %8, %452
  %501 = fmul float %498, %498
  %502 = fmul float %499, %499
  %503 = fadd float %501, %502
  %504 = fmul float %500, %500
  %505 = fadd float %503, %504
  %506 = call float @llvm.trax.invsqrt(float %505) nounwind
  %507 = fdiv float 1.000000e+00, %506
  %508 = fdiv float %500, %507
  %509 = fdiv float %499, %507
  %510 = fdiv float %498, %507
  %511 = fmul float %510, %N.i.0.0
  %512 = fadd float %511, 0.000000e+00
  %513 = fmul float %509, %N.i.1.0
  %514 = fadd float %513, %512
  %515 = fmul float %508, %N.i.2.0
  %516 = fadd float %515, %514
  %517 = fcmp ogt float %516, 0.000000e+00
  br i1 %517, label %bb88.i, label %bb115.i

bb88.i:                                           ; preds = %bb53.i
  %518 = call float @llvm.trax.invsqrt(float %505) nounwind
  br label %bb.outer.i219

bb.outer.i219:                                    ; preds = %bb9.i319, %bb88.i
  %tmp10731079.off0 = phi i32 [ %tmp1074, %bb88.i ], [ %tmp10731078.off0, %bb9.i319 ]
  %node_id.0.ph.i214 = phi i32 [ 0, %bb88.i ], [ %676, %bb9.i319 ]
  %sp.0.ph.i215 = phi i32 [ -1, %bb88.i ], [ %677, %bb9.i319 ]
  %tmp404.i217 = add i32 %sp.0.ph.i215, 1
  %tmp1247 = sext i32 %tmp404.i217 to i64
  %tmp1249 = zext i32 %sp.0.ph.i215 to i64
  br label %bb.i231

bb.i231:                                          ; preds = %bb3.i247, %bb.outer.i219
  %indvar.i220 = phi i64 [ %indvar.next.i246, %bb3.i247 ], [ 0, %bb.outer.i219 ]
  %node_id.0.i221 = phi i32 [ %554, %bb3.i247 ], [ %node_id.0.ph.i214, %bb.outer.i219 ]
  %tmp1248 = add i64 %tmp1247, %indvar.i220
  %scevgep.i225 = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp1248
  %tmp1250 = add i64 %tmp1249, %indvar.i220
  %sp.0.i223 = trunc i64 %tmp1250 to i32
  %519 = shl nsw i32 %node_id.0.i221, 3
  %520 = add nsw i32 %519, %37
  %521 = call float @llvm.trax.loadf(i32 %520, i32 2) nounwind
  %522 = call float @llvm.trax.loadf(i32 %520, i32 1) nounwind
  %523 = call float @llvm.trax.loadf(i32 %520, i32 0) nounwind
  %524 = call float @llvm.trax.loadf(i32 %520, i32 5) nounwind
  %525 = call float @llvm.trax.loadf(i32 %520, i32 4) nounwind
  %526 = call float @llvm.trax.loadf(i32 %520, i32 3) nounwind
  %527 = fsub float %523, %450
  %528 = fdiv float %527, %510
  %529 = fsub float %526, %450
  %530 = fdiv float %529, %510
  %531 = fcmp ogt float %528, %530
  %tx1.i.0.i226 = select i1 %531, float %530, float %528
  %tx2.i.0.i227 = select i1 %531, float %528, float %530
  %532 = fcmp ogt float %tx1.i.0.i226, -1.000000e+10
  %tnear.i.0.i228 = select i1 %532, float %tx1.i.0.i226, float -1.000000e+10
  %533 = fcmp olt float %tx2.i.0.i227, 1.000000e+10
  %tfar.i.0.i229 = select i1 %533, float %tx2.i.0.i227, float 1.000000e+10
  %534 = fcmp ogt float %tnear.i.0.i228, %tfar.i.0.i229
  %535 = fcmp olt float %tfar.i.0.i229, 0.000000e+00
  %or.cond.i230 = or i1 %534, %535
  br i1 %or.cond.i230, label %bb7.i318, label %bb29.i.i237

bb29.i.i237:                                      ; preds = %bb.i231
  %536 = fsub float %522, %451
  %537 = fdiv float %536, %509
  %538 = fsub float %525, %451
  %539 = fdiv float %538, %509
  %540 = fcmp ogt float %537, %539
  %ty1.i.0.i232 = select i1 %540, float %539, float %537
  %ty2.i.0.i233 = select i1 %540, float %537, float %539
  %541 = fcmp ogt float %ty1.i.0.i232, %tnear.i.0.i228
  %tnear.i.1.i234 = select i1 %541, float %ty1.i.0.i232, float %tnear.i.0.i228
  %542 = fcmp olt float %ty2.i.0.i233, %tfar.i.0.i229
  %tfar.i.1.i235 = select i1 %542, float %ty2.i.0.i233, float %tfar.i.0.i229
  %543 = fcmp ogt float %tnear.i.1.i234, %tfar.i.1.i235
  %544 = fcmp olt float %tfar.i.1.i235, 0.000000e+00
  %or.cond1395.i236 = or i1 %543, %544
  br i1 %or.cond1395.i236, label %bb7.i318, label %bb62.i.i243

bb62.i.i243:                                      ; preds = %bb29.i.i237
  %545 = fsub float %521, %452
  %546 = fdiv float %545, %508
  %547 = fsub float %524, %452
  %548 = fdiv float %547, %508
  %549 = fcmp ogt float %546, %548
  %tz1.i.0.i238 = select i1 %549, float %548, float %546
  %tz2.i.0.i239 = select i1 %549, float %546, float %548
  %550 = fcmp ogt float %tz1.i.0.i238, %tnear.i.1.i234
  %tnear.i.2.i240 = select i1 %550, float %tz1.i.0.i238, float %tnear.i.1.i234
  %551 = fcmp olt float %tz2.i.0.i239, %tfar.i.1.i235
  %tfar.i.2.i241 = select i1 %551, float %tz2.i.0.i239, float %tfar.i.1.i235
  %552 = fcmp ogt float %tnear.i.2.i240, %tfar.i.2.i241
  %553 = fcmp olt float %tfar.i.2.i241, 0.000000e+00
  %or.cond1396.i242 = or i1 %552, %553
  br i1 %or.cond1396.i242, label %bb7.i318, label %bb1.i244

bb1.i244:                                         ; preds = %bb62.i.i243
  %554 = call i32 @llvm.trax.loadi(i32 %520, i32 7) nounwind
  %555 = call i32 @llvm.trax.loadi(i32 %520, i32 6) nounwind
  %556 = icmp slt i32 %555, 0
  br i1 %556, label %bb3.i247, label %bb6.preheader.i245

bb6.preheader.i245:                               ; preds = %bb1.i244
  %557 = icmp sgt i32 %555, 0
  br i1 %557, label %bb5.i258, label %bb7.i318

bb3.i247:                                         ; preds = %bb1.i244
  %558 = add nsw i32 %554, 1
  store i32 %558, i32* %scevgep.i225, align 4
  %indvar.next.i246 = add i64 %indvar.i220, 1
  br label %bb.i231

bb5.i258:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i317, %bb6.preheader.i245
  %tmp10731077.off0 = phi i32 [ %tmp10731076.off0, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i317 ], [ %tmp10731079.off0, %bb6.preheader.i245 ]
  %storemerge388.i248 = phi i32 [ %672, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i317 ], [ 0, %bb6.preheader.i245 ]
  %tmp1242 = mul i32 %storemerge388.i248, 11
  %tmp396.i250 = add i32 %554, %tmp1242
  %559 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 2) nounwind
  %560 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 1) nounwind
  %561 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 0) nounwind
  %562 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 5) nounwind
  %563 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 4) nounwind
  %564 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 3) nounwind
  %565 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 8) nounwind
  %566 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 7) nounwind
  %567 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 6) nounwind
  %568 = call i32 @llvm.trax.loadi(i32 %tmp396.i250, i32 10) nounwind
  %569 = call i32 @llvm.trax.loadi(i32 %tmp396.i250, i32 9) nounwind
  %570 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %571 = mul nsw i32 %568, 25
  %572 = add nsw i32 %570, %571
  %573 = call float @llvm.trax.loadf(i32 %572, i32 6) nounwind
  %574 = call float @llvm.trax.loadf(i32 %572, i32 5) nounwind
  %575 = call float @llvm.trax.loadf(i32 %572, i32 4) nounwind
  %576 = fsub float %561, %567
  %577 = fsub float %560, %566
  %578 = fsub float %559, %565
  %579 = fsub float %564, %567
  %580 = fsub float %563, %566
  %581 = fsub float %562, %565
  %582 = fmul float %577, %581
  %583 = fmul float %580, %578
  %584 = fsub float %582, %583
  %585 = fmul float %579, %578
  %586 = fmul float %576, %581
  %587 = fsub float %585, %586
  %588 = fmul float %580, %576
  %589 = fmul float %579, %577
  %590 = fsub float %588, %589
  %591 = fmul float %584, %584
  %592 = fmul float %587, %587
  %593 = fadd float %591, %592
  %594 = fmul float %590, %590
  %595 = fadd float %593, %594
  %596 = call float @llvm.trax.invsqrt(float %595) nounwind
  %597 = fmul float %509, %581
  %598 = fmul float %580, %508
  %599 = fsub float %597, %598
  %600 = fmul float %579, %508
  %601 = fmul float %510, %581
  %602 = fsub float %600, %601
  %603 = fmul float %580, %510
  %604 = fmul float %579, %509
  %605 = fsub float %603, %604
  %606 = fmul float %599, %576
  %607 = fadd float %606, 0.000000e+00
  %608 = fmul float %602, %577
  %609 = fadd float %608, %607
  %610 = fmul float %605, %578
  %611 = fadd float %610, %609
  %612 = fdiv float 1.000000e+00, %611
  %613 = fsub float %450, %567
  %614 = fsub float %451, %566
  %615 = fsub float %452, %565
  %616 = fmul float %599, %613
  %617 = fadd float %616, 0.000000e+00
  %618 = fmul float %602, %614
  %619 = fadd float %618, %617
  %620 = fmul float %605, %615
  %621 = fadd float %620, %619
  %622 = fmul float %621, %612
  %623 = fcmp olt float %622, 0.000000e+00
  %624 = fcmp ogt float %622, 1.000000e+00
  %or.cond1397.i257 = or i1 %623, %624
  br i1 %or.cond1397.i257, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i317, label %bb73.i.i259

bb73.i.i259:                                      ; preds = %bb5.i258
  %625 = fmul float %614, %578
  %626 = fmul float %577, %615
  %627 = fsub float %625, %626
  %628 = fmul float %576, %615
  %629 = fmul float %613, %578
  %630 = fsub float %628, %629
  %631 = fmul float %577, %613
  %632 = fmul float %576, %614
  %633 = fsub float %631, %632
  %634 = fmul float %627, %510
  %635 = fadd float %634, 0.000000e+00
  %636 = fmul float %630, %509
  %637 = fadd float %636, %635
  %638 = fmul float %633, %508
  %639 = fadd float %638, %637
  %640 = fmul float %639, %612
  %641 = fcmp olt float %640, 0.000000e+00
  br i1 %641, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i317, label %bb94.i55.i260

bb94.i55.i260:                                    ; preds = %bb73.i.i259
  %642 = fadd float %640, %622
  %643 = fcmp ogt float %642, 1.000000e+00
  br i1 %643, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i317, label %bb96.i.i263

bb96.i.i263:                                      ; preds = %bb94.i55.i260
  %644 = fmul float %627, %579
  %645 = fadd float %644, 0.000000e+00
  %646 = fmul float %630, %580
  %647 = fadd float %646, %645
  %648 = fmul float %633, %581
  %649 = fadd float %648, %647
  %650 = fmul float %649, %612
  %651 = fcmp ule float %650, 0.000000e+00
  %652 = fcmp olt float %650, 0x3F50624DE0000000
  %or.cond1398.i261 = or i1 %651, %652
  %653 = fcmp oeq float %650, 1.000000e+10
  %or.cond1399.i262 = or i1 %or.cond1398.i261, %653
  br i1 %or.cond1399.i262, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i317, label %bb2.i.i.i264

bb2.i.i.i264:                                     ; preds = %bb96.i.i263
  %tmp1004 = bitcast i32 %tmp10731077.off0 to float
  %654 = fcmp ogt float %tmp1004, %650
  br i1 %654, label %bb3.i.i.i315, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i317

bb3.i.i.i315:                                     ; preds = %bb2.i.i.i264
  %tmp998 = bitcast float %650 to i32
  %655 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 2) nounwind
  %656 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 1) nounwind
  %657 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 0) nounwind
  %658 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 5) nounwind
  %659 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 4) nounwind
  %660 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 3) nounwind
  %661 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 8) nounwind
  %662 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 7) nounwind
  %663 = call float @llvm.trax.loadf(i32 %tmp396.i250, i32 6) nounwind
  %664 = call i32 @llvm.trax.loadi(i32 %tmp396.i250, i32 10) nounwind
  %665 = call i32 @llvm.trax.loadi(i32 %tmp396.i250, i32 9) nounwind
  %666 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %667 = mul nsw i32 %664, 25
  %668 = add nsw i32 %666, %667
  %669 = call float @llvm.trax.loadf(i32 %668, i32 6) nounwind
  %670 = call float @llvm.trax.loadf(i32 %668, i32 5) nounwind
  %671 = call float @llvm.trax.loadf(i32 %668, i32 4) nounwind
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i317

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i317: ; preds = %bb3.i.i.i315, %bb2.i.i.i264, %bb96.i.i263, %bb94.i55.i260, %bb73.i.i259, %bb5.i258
  %tmp10731076.off0 = phi i32 [ %tmp998, %bb3.i.i.i315 ], [ %tmp10731077.off0, %bb2.i.i.i264 ], [ %tmp10731077.off0, %bb96.i.i263 ], [ %tmp10731077.off0, %bb94.i55.i260 ], [ %tmp10731077.off0, %bb73.i.i259 ], [ %tmp10731077.off0, %bb5.i258 ]
  %672 = add nsw i32 %storemerge388.i248, 1
  %exitcond = icmp eq i32 %672, %555
  br i1 %exitcond, label %bb7.i318, label %bb5.i258

bb7.i318:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i317, %bb6.preheader.i245, %bb62.i.i243, %bb29.i.i237, %bb.i231
  %tmp10731078.off0 = phi i32 [ %tmp10731079.off0, %bb6.preheader.i245 ], [ %tmp10731076.off0, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i317 ], [ %tmp10731079.off0, %bb.i231 ], [ %tmp10731079.off0, %bb29.i.i237 ], [ %tmp10731079.off0, %bb62.i.i243 ]
  %673 = icmp slt i32 %sp.0.i223, 0
  br i1 %673, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit320, label %bb9.i319

bb9.i319:                                         ; preds = %bb7.i318
  %674 = sext i32 %sp.0.i223 to i64
  %675 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %674
  %676 = load i32* %675, align 4
  %677 = add nsw i32 %sp.0.i223, -1
  br label %bb.outer.i219

_ZN3BVH9intersectER9HitRecordR3Ray.exit320:       ; preds = %bb7.i318
  %678 = fdiv float 1.000000e+00, %518
  %tmp1072 = bitcast i32 %tmp10731078.off0 to float
  %679 = fcmp uge float %tmp1072, %678
  %680 = fcmp ule float %tmp1072, 0x3F847AE140000000
  %or.cond = or i1 %679, %680
  br i1 %or.cond, label %bb92.i, label %bb115.i

bb92.i:                                           ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit320
  %681 = fmul float %tmp1035, %516
  %682 = fadd float %681, 0.000000e+00
  br label %bb115.i

bb115.i:                                          ; preds = %bb92.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit320, %bb53.i
  %683 = phi float [ %682, %bb92.i ], [ 0.000000e+00, %bb53.i ], [ 0.000000e+00, %_ZN3BVH9intersectER9HitRecordR3Ray.exit320 ]
  %tmp2613 = trunc i512 %tmp1029 to i128
  %tmp2614 = and i128 %tmp2613, 79228162495817593519834398720
  %tmp2078 = lshr exact i128 %tmp2614, 64
  %tmp2079 = trunc i128 %tmp2078 to i32
  %tmp2080 = bitcast i32 %tmp2079 to float
  %tmp41.i337 = trunc i512 %tmp1029 to i32
  %tmp42.i338 = bitcast i32 %tmp41.i337 to float
  %684 = fmul float %tmp42.i338, %683
  %tmp37.i3391131 = lshr i512 %mask511990, 384
  %tmp38.i340 = trunc i512 %tmp37.i3391131 to i32
  %tmp39.i341 = bitcast i32 %tmp38.i340 to float
  %685 = fmul float %tmp39.i341, %683
  %686 = fmul float %683, %tmp2080
  %tmp11.i344 = bitcast float %685 to i32
  %phitmp1087 = zext i32 %tmp11.i344 to i96
  %phitmp1088 = shl nuw nsw i96 %phitmp1087, 32
  %phitmp1090 = bitcast float %686 to i32
  %phitmp1091 = zext i32 %phitmp1090 to i96
  %phitmp1092 = shl nuw i96 %phitmp1091, 64
  %extract.t1417 = trunc i512 %tmp1029 to i32
  %extract.t1423 = trunc i512 %tmp1029 to i128
  br label %invcont121

invcont121:                                       ; preds = %bb115.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit161.invcont121_crit_edge
  %.pre-phi1416 = phi float [ %.pre1415, %_ZN3BVH9intersectER9HitRecordR3Ray.exit161.invcont121_crit_edge ], [ %472, %bb115.i ]
  %.pre-phi1376 = phi float [ %.pre1375, %_ZN3BVH9intersectER9HitRecordR3Ray.exit161.invcont121_crit_edge ], [ %451, %bb115.i ]
  %.pre-phi1374 = phi float [ %.pre1373, %_ZN3BVH9intersectER9HitRecordR3Ray.exit161.invcont121_crit_edge ], [ %450, %bb115.i ]
  %tmp448.pre-phi.off0 = phi i32 [ %extract.t, %_ZN3BVH9intersectER9HitRecordR3Ray.exit161.invcont121_crit_edge ], [ %extract.t1417, %bb115.i ]
  %tmp448.pre-phi.off01421 = phi i128 [ %extract.t1422, %_ZN3BVH9intersectER9HitRecordR3Ray.exit161.invcont121_crit_edge ], [ %extract.t1423, %bb115.i ]
  %.02566.0.off0.off0 = phi float [ 0x3FE1F3B640000000, %_ZN3BVH9intersectER9HitRecordR3Ray.exit161.invcont121_crit_edge ], [ %684, %bb115.i ]
  %.12567.0.off32 = phi i96 [ 4556129611431280640, %_ZN3BVH9intersectER9HitRecordR3Ray.exit161.invcont121_crit_edge ], [ %phitmp1088, %bb115.i ]
  %.22568.0 = phi i96 [ 19648584296011284141125402624, %_ZN3BVH9intersectER9HitRecordR3Ray.exit161.invcont121_crit_edge ], [ %phitmp1092, %bb115.i ]
  %memtmp4.i208.0 = phi i128 [ %memtmp4.i208.11185, %_ZN3BVH9intersectER9HitRecordR3Ray.exit161.invcont121_crit_edge ], [ %ins2379, %bb115.i ]
  %ins841 = or i96 %.22568.0, %.12567.0.off32
  %687 = fmul float %tmp690, %tmp1075
  %688 = fadd float %12, %687
  %689 = call float @llvm.trax.invsqrt(float %.pre-phi1416) nounwind
  br label %bb47.i

bb.i320:                                          ; preds = %bb47.i
  %scevgep12781279 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 0, i32 0
  %scevgep1277 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 0, i32 1
  %scevgep1276 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 0, i32 2
  %690 = load float* %scevgep12781279, align 4
  %691 = load float* %scevgep1277, align 4
  %692 = load float* %scevgep1276, align 4
  %tmp3408 = bitcast float %690 to i32
  %tmp3409 = zext i32 %tmp3408 to i96
  %tmp3402 = bitcast float %691 to i32
  %tmp3403 = zext i32 %tmp3402 to i96
  %tmp3404 = shl nuw nsw i96 %tmp3403, 32
  %ins3406 = or i96 %tmp3404, %tmp3409
  %tmp3396 = bitcast float %692 to i32
  %tmp3048 = zext i96 %ins3406 to i128
  %mask3049 = and i128 %memtmp31.i.0, -79228162514264337593543950336
  %tmp3042 = zext i32 %tmp3396 to i128
  %tmp3043 = shl nuw nsw i128 %tmp3042, 64
  %mask3044 = or i128 %tmp3043, %mask3049
  %ins3045 = or i128 %mask3044, %tmp3048
  %ins3045.tr = trunc i128 %ins3045 to i96
  %693 = fsub float %690, %.pre-phi1374
  %694 = fsub float %691, %.pre-phi1376
  %tmp3368 = lshr i96 %ins3045.tr, 64
  %tmp3369 = trunc i96 %tmp3368 to i32
  %tmp3370 = bitcast i32 %tmp3369 to float
  %695 = fsub float %tmp3370, %688
  %696 = fmul float %693, %693
  %697 = fmul float %694, %694
  %698 = fadd float %696, %697
  %699 = fmul float %695, %695
  %700 = fadd float %698, %699
  %701 = fcmp olt float %700, 2.890000e+02
  br i1 %701, label %bb45.i, label %bb46.i328

bb45.i:                                           ; preds = %bb.i320
  %702 = add nsw i32 %num_of_photons.i.1, 1
  %703 = load float* %scevgep1275, align 4
  %704 = fadd float %power.i.0.1, %703
  %705 = load float* %scevgep1274, align 4
  %706 = fadd float %power.i.1.1, %705
  %707 = load float* %scevgep, align 4
  %708 = fadd float %power.i.2.1, %707
  %709 = icmp sgt i32 %702, 10
  br i1 %709, label %bb49.i, label %bb46.i328

bb46.i328:                                        ; preds = %bb45.i, %bb.i320
  %power.i.0.0 = phi float [ %704, %bb45.i ], [ %power.i.0.1, %bb.i320 ]
  %power.i.1.0 = phi float [ %706, %bb45.i ], [ %power.i.1.1, %bb.i320 ]
  %power.i.2.0 = phi float [ %708, %bb45.i ], [ %power.i.2.1, %bb.i320 ]
  %num_of_photons.i.0 = phi i32 [ %702, %bb45.i ], [ %num_of_photons.i.1, %bb.i320 ]
  %indvar.next = add i64 %indvar, 1
  br label %bb47.i

bb47.i:                                           ; preds = %bb46.i328, %invcont121
  %indvar = phi i64 [ %indvar.next, %bb46.i328 ], [ 0, %invcont121 ]
  %power.i.0.1 = phi float [ %power.i.0.0, %bb46.i328 ], [ 0.000000e+00, %invcont121 ]
  %power.i.1.1 = phi float [ %power.i.1.0, %bb46.i328 ], [ 0.000000e+00, %invcont121 ]
  %power.i.2.1 = phi float [ %power.i.2.0, %bb46.i328 ], [ 0.000000e+00, %invcont121 ]
  %memtmp31.i.0 = phi i128 [ %ins3045, %bb46.i328 ], [ %memtmp31.i.31189, %invcont121 ]
  %num_of_photons.i.1 = phi i32 [ %num_of_photons.i.0, %bb46.i328 ], [ 0, %invcont121 ]
  %storemerge.i329 = trunc i64 %indvar to i32
  %scevgep = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 1, i64 2
  %scevgep1274 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 1, i64 1
  %scevgep1275 = getelementptr [200000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 1, i64 0
  %710 = icmp slt i32 %storemerge.i329, %count.2.ph.ph
  br i1 %710, label %bb.i320, label %bb48.i

bb48.i:                                           ; preds = %bb47.i
  %711 = icmp eq i32 %num_of_photons.i.1, 0
  br i1 %711, label %invcont146, label %bb49.i

bb49.i:                                           ; preds = %bb48.i, %bb45.i
  %power.i.0.2 = phi float [ %power.i.0.1, %bb48.i ], [ %704, %bb45.i ]
  %power.i.1.2 = phi float [ %power.i.1.1, %bb48.i ], [ %706, %bb45.i ]
  %power.i.2.2 = phi float [ %power.i.2.1, %bb48.i ], [ %708, %bb45.i ]
  %memtmp31.i.1 = phi i128 [ %memtmp31.i.0, %bb48.i ], [ %ins3045, %bb45.i ]
  %num_of_photons.i.2 = phi i32 [ %num_of_photons.i.1, %bb48.i ], [ %702, %bb45.i ]
  %712 = sitofp i32 %num_of_photons.i.2 to float
  %713 = fdiv float %power.i.0.2, %712
  %714 = fdiv float %power.i.1.2, %712
  %715 = fdiv float %power.i.2.2, %712
  %tmp3291 = and i128 %tmp448.pre-phi.off01421, 79228162495817593519834398720
  %tmp3008 = lshr exact i128 %tmp3291, 64
  %tmp3009 = trunc i128 %tmp3008 to i32
  %tmp3010 = bitcast i32 %tmp3009 to float
  %tmp42.i380 = bitcast i32 %tmp448.pre-phi.off0 to float
  %716 = fmul float %tmp42.i380, %713
  %tmp37.i3811102 = lshr i512 %mask511990, 384
  %tmp38.i382 = trunc i512 %tmp37.i3811102 to i32
  %tmp39.i383 = bitcast i32 %tmp38.i382 to float
  %717 = fmul float %tmp39.i383, %714
  %718 = fmul float %715, %tmp3010
  br label %invcont146

invcont146:                                       ; preds = %bb49.i, %bb48.i
  %.23256.0 = phi float [ %718, %bb49.i ], [ 0.000000e+00, %bb48.i ]
  %.13255.0 = phi float [ %717, %bb49.i ], [ 0.000000e+00, %bb48.i ]
  %.03254.0 = phi float [ %716, %bb49.i ], [ 0.000000e+00, %bb48.i ]
  %memtmp31.i.2 = phi i128 [ %memtmp31.i.1, %bb49.i ], [ %memtmp31.i.0, %bb48.i ]
  %tmp821 = lshr exact i96 %.12567.0.off32, 32
  %tmp822 = trunc i96 %tmp821 to i32
  %tmp823 = bitcast i32 %tmp822 to float
  %tmp817 = lshr i96 %ins841, 64
  %tmp818 = trunc i96 %tmp817 to i32
  %tmp819 = bitcast i32 %tmp818 to float
  %719 = fadd float %.03254.0, %.02566.0.off0.off0
  %720 = fadd float %.13255.0, %tmp823
  %721 = fadd float %tmp819, %.23256.0
  %722 = fcmp olt float %719, 0.000000e+00
  br i1 %722, label %bb5.i, label %bb1.i

bb1.i:                                            ; preds = %invcont146
  %723 = fcmp ogt float %719, 1.000000e+00
  br i1 %723, label %bb5.i, label %bb4.i

bb4.i:                                            ; preds = %bb1.i
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb1.i, %invcont146
  %r.i.0 = phi float [ %719, %bb4.i ], [ 0.000000e+00, %invcont146 ], [ 1.000000e+00, %bb1.i ]
  %724 = fcmp olt float %721, 0.000000e+00
  br i1 %724, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i
  %725 = fcmp ogt float %721, 1.000000e+00
  br i1 %725, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i
  %b.i.0 = phi float [ %721, %bb11.i ], [ 0.000000e+00, %bb5.i ], [ 1.000000e+00, %bb8.i ]
  %726 = fcmp olt float %720, 0.000000e+00
  br i1 %726, label %invcont158, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %727 = fcmp ogt float %720, 1.000000e+00
  br i1 %727, label %invcont158, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %invcont158

invcont158:                                       ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.i.0 = phi float [ %720, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %728 = mul nsw i32 %250, %0
  %729 = add nsw i32 %728, %251
  %730 = mul nsw i32 %729, 3
  %731 = add nsw i32 %730, %2
  call void @llvm.trax.storef(float %r.i.0, i32 %731, i32 0) nounwind
  call void @llvm.trax.storef(float %g.i.0, i32 %731, i32 1) nounwind
  call void @llvm.trax.storef(float %b.i.0, i32 %731, i32 2) nounwind
  %732 = call i32 @llvm.trax.atominc(i32 0)
  %733 = icmp sgt i32 %243, %732
  br i1 %733, label %invcont116, label %return

return:                                           ; preds = %invcont158, %invcont106
  ret i32 0
}

declare i32 @llvm.trax.atominc(i32) nounwind

declare void @llvm.trax.printf(float) nounwind

declare float @llvm.trax.invsqrt(float) nounwind
