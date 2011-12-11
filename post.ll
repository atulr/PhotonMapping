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
  br label %bb.i37

bb.i37:                                           ; preds = %bb.i37, %invcont8
  %indvar1565 = phi i64 [ 0, %invcont8 ], [ %indvar.next1566, %bb.i37 ]
  %scevgep1568 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1565, i32 2
  %scevgep1569 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1565, i32 1, i64 2
  %scevgep1570 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1565, i32 1, i64 1
  %scevgep1571 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1565, i32 1, i64 0
  %scevgep1572 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1565, i32 0, i32 2
  %scevgep1573 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1565, i32 0, i32 1
  %scevgep15741575 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1565, i32 0, i32 0
  store float 0.000000e+00, float* %scevgep15741575, align 8
  store float 0.000000e+00, float* %scevgep1573, align 4
  store float 0.000000e+00, float* %scevgep1572, align 8
  store float 1.000000e+00, float* %scevgep1571, align 4
  store float 1.000000e+00, float* %scevgep1570, align 4
  store float 1.000000e+00, float* %scevgep1569, align 4
  store i8 0, i8* %scevgep1568, align 8
  %indvar.next1566 = add i64 %indvar1565, 1
  %exitcond1567 = icmp eq i64 %indvar.next1566, 5000
  br i1 %exitcond1567, label %invcont11, label %bb.i37

invcont11:                                        ; preds = %bb.i37
  %tmp874 = bitcast float %12 to i32
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
  %38 = alloca [250000 x %struct.Photon], align 1
  br label %bb

bb:                                               ; preds = %bb, %invcont11
  %indvar1554 = phi i64 [ 0, %invcont11 ], [ %indvar.next1555, %bb ]
  %scevgep1557 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %indvar1554, i32 2
  %scevgep1558 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %indvar1554, i32 1, i64 2
  %scevgep1559 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %indvar1554, i32 1, i64 1
  %scevgep1560 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %indvar1554, i32 1, i64 0
  %scevgep1561 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %indvar1554, i32 0, i32 2
  %scevgep1562 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %indvar1554, i32 0, i32 1
  %scevgep15631564 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %indvar1554, i32 0, i32 0
  store float 0.000000e+00, float* %scevgep15631564, align 4
  store float 0.000000e+00, float* %scevgep1562, align 4
  store float 0.000000e+00, float* %scevgep1561, align 4
  store float 1.000000e+00, float* %scevgep1560, align 4
  store float 1.000000e+00, float* %scevgep1559, align 4
  store float 1.000000e+00, float* %scevgep1558, align 4
  store i8 0, i8* %scevgep1557, align 4
  %indvar.next1555 = add i64 %indvar1554, 1
  %exitcond1556 = icmp eq i64 %indvar.next1555, 250000
  br i1 %exitcond1556, label %invcont15, label %bb

invcont15:                                        ; preds = %bb
  %39 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %40 = call float @llvm.trax.loadf(i32 %39, i32 0) nounwind
  %41 = call float @llvm.trax.loadf(i32 %39, i32 1) nounwind
  %42 = call float @llvm.trax.loadf(i32 %39, i32 2) nounwind
  %tmp705 = bitcast float %40 to i32
  %tmp706 = zext i32 %tmp705 to i64
  %tmp699 = bitcast float %41 to i32
  %tmp700 = zext i32 %tmp699 to i64
  %tmp701 = shl nuw i64 %tmp700, 32
  %ins703 = or i64 %tmp701, %tmp706
  %tmp693 = bitcast float %42 to i32
  br label %bb103.preheader

bb.i52:                                           ; preds = %bb103, %bb.i52
  %43 = call float @llvm.trax.rand() nounwind
  %44 = fadd float %43, -5.000000e-01
  %45 = fmul float %44, 2.000000e+00
  %46 = call float @llvm.trax.rand() nounwind
  %47 = fadd float %46, -5.000000e-01
  %48 = fmul float %47, 2.000000e+00
  %49 = call float @llvm.trax.rand() nounwind
  %50 = fadd float %49, -5.000000e-01
  %51 = fmul float %50, 2.000000e+00
  %52 = fmul float %45, %45
  %53 = fmul float %48, %48
  %54 = fadd float %52, %53
  %55 = fmul float %51, %51
  %56 = fadd float %54, %55
  %57 = fcmp ogt float %56, 1.000000e+00
  br i1 %57, label %bb.i52, label %invcont30

invcont30:                                        ; preds = %bb.i52
  %58 = call float @llvm.trax.invsqrt(float %56) nounwind
  %59 = fdiv float 1.000000e+00, %58
  %60 = fdiv float %51, %59
  %61 = fdiv float %48, %59
  %62 = fdiv float %45, %59
  %tmp18.i = bitcast float %62 to i32
  %tmp12.i = bitcast float %61 to i32
  %tmp1329 = bitcast float %60 to i32
  %tmp1359 = zext i32 %tmp18.i to i96
  %tmp1353 = zext i32 %tmp12.i to i96
  %tmp1354 = shl nuw nsw i96 %tmp1353, 32
  %ins1356 = or i96 %tmp1359, %tmp1354
  %tmp614 = zext i96 %ins1356 to i128
  %mask615 = and i128 %memtmp31.0, -79228162514264337593543950336
  %tmp608 = zext i32 %tmp1329 to i128
  %tmp609 = shl nuw nsw i128 %tmp608, 64
  %mask610 = or i128 %tmp609, %mask615
  %ins611 = or i128 %mask610, %tmp614
  %ins611.tr = trunc i128 %ins611 to i96
  %mask682 = and i512 %mask7231196, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins683 = or i512 %mask682, 1343554297
  %tmp1363 = lshr i96 %ins611.tr, 64
  %63 = icmp sgt i32 %bounces.0, 0
  br i1 %63, label %bb43, label %invcont48

bb43:                                             ; preds = %invcont30
  %mask1478 = and i128 %memtmp.i78.1, -79228162514264337593543950336
  %tmp1471 = zext i96 %tmp1363 to i128
  %tmp1472 = shl nuw nsw i128 %tmp1471, 64
  %mask1473 = or i128 %tmp614, %mask1478
  %ins1474 = or i128 %mask1473, %tmp1472
  %ins1474.tr = trunc i128 %ins1474 to i96
  %tmp1481 = lshr i96 %ins1474.tr, 64
  %tmp1482 = trunc i96 %tmp1481 to i32
  %tmp1483 = bitcast i32 %tmp1482 to float
  %64 = fadd float %62, %tmp1442
  %65 = fadd float %61, %tmp1446
  %66 = fadd float %tmp1387, %tmp1483
  %67 = fcmp ule float %64, 9.000000e+01
  %68 = fcmp uge float %64, 3.000000e+02
  %or.cond = or i1 %67, %68
  %69 = fcmp ule float %65, 8.000000e+01
  %or.cond3653 = or i1 %or.cond, %69
  %70 = fcmp uge float %65, 3.000000e+02
  %or.cond3654 = or i1 %or.cond3653, %70
  %71 = fcmp ule float %66, 3.000000e+02
  %or.cond3655 = or i1 %or.cond3654, %71
  %72 = fcmp uge float %66, 3.500000e+02
  %or.cond3656 = or i1 %or.cond3655, %72
  br i1 %or.cond3656, label %invcont48, label %invcont46

invcont46:                                        ; preds = %bb43
  %73 = sitofp i32 %bar.1 to float
  %74 = add nsw i32 %bar.1, 1
  call void @llvm.trax.printf(float %73)
  br label %invcont48

invcont48:                                        ; preds = %invcont46, %bb43, %invcont30
  %memtmp.i78.0 = phi i128 [ %ins1474, %bb43 ], [ %ins1474, %invcont46 ], [ %memtmp.i78.1, %invcont30 ]
  %bar.0 = phi i32 [ %bar.1, %bb43 ], [ %74, %invcont46 ], [ %bar.1, %invcont30 ]
  %tmp581 = trunc i96 %tmp1363 to i32
  %tmp582 = bitcast i32 %tmp581 to float
  br label %bb.outer.i

bb.outer.i:                                       ; preds = %bb9.i, %invcont48
  %mask7231198 = phi i512 [ %ins683, %invcont48 ], [ %mask7231197, %bb9.i ]
  %node_id.0.ph.i = phi i32 [ 0, %invcont48 ], [ %232, %bb9.i ]
  %sp.0.ph.i = phi i32 [ -1, %invcont48 ], [ %233, %bb9.i ]
  %tmp404.i = add i32 %sp.0.ph.i, 1
  %tmp1504 = sext i32 %tmp404.i to i64
  %tmp1507 = zext i32 %sp.0.ph.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb3.i, %bb.outer.i
  %indvar.i = phi i64 [ %indvar.next.i, %bb3.i ], [ 0, %bb.outer.i ]
  %node_id.0.i = phi i32 [ %110, %bb3.i ], [ %node_id.0.ph.i, %bb.outer.i ]
  %tmp1505 = add i64 %tmp1504, %indvar.i
  %scevgep.i = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp1505
  %tmp1508 = add i64 %tmp1507, %indvar.i
  %sp.0.i = trunc i64 %tmp1508 to i32
  %75 = shl nsw i32 %node_id.0.i, 3
  %76 = add nsw i32 %75, %37
  %77 = call float @llvm.trax.loadf(i32 %76, i32 2) nounwind
  %78 = call float @llvm.trax.loadf(i32 %76, i32 1) nounwind
  %79 = call float @llvm.trax.loadf(i32 %76, i32 0) nounwind
  %80 = call float @llvm.trax.loadf(i32 %76, i32 5) nounwind
  %81 = call float @llvm.trax.loadf(i32 %76, i32 4) nounwind
  %82 = call float @llvm.trax.loadf(i32 %76, i32 3) nounwind
  %83 = fsub float %79, %tmp623
  %84 = fdiv float %83, %62
  %85 = fsub float %82, %tmp623
  %86 = fdiv float %85, %62
  %87 = fcmp ogt float %84, %86
  %tx1.i.0.i = select i1 %87, float %86, float %84
  %tx2.i.0.i = select i1 %87, float %84, float %86
  %88 = fcmp ogt float %tx1.i.0.i, -1.000000e+10
  %tnear.i.0.i = select i1 %88, float %tx1.i.0.i, float -1.000000e+10
  %89 = fcmp olt float %tx2.i.0.i, 1.000000e+10
  %tfar.i.0.i = select i1 %89, float %tx2.i.0.i, float 1.000000e+10
  %90 = fcmp ogt float %tnear.i.0.i, %tfar.i.0.i
  %91 = fcmp olt float %tfar.i.0.i, 0.000000e+00
  %or.cond.i = or i1 %90, %91
  br i1 %or.cond.i, label %bb7.i, label %bb29.i.i

bb29.i.i:                                         ; preds = %bb.i
  %92 = fsub float %78, %tmp617
  %93 = fdiv float %92, %61
  %94 = fsub float %81, %tmp617
  %95 = fdiv float %94, %61
  %96 = fcmp ogt float %93, %95
  %ty1.i.0.i = select i1 %96, float %95, float %93
  %ty2.i.0.i = select i1 %96, float %93, float %95
  %97 = fcmp ogt float %ty1.i.0.i, %tnear.i.0.i
  %tnear.i.1.i = select i1 %97, float %ty1.i.0.i, float %tnear.i.0.i
  %98 = fcmp olt float %ty2.i.0.i, %tfar.i.0.i
  %tfar.i.1.i = select i1 %98, float %ty2.i.0.i, float %tfar.i.0.i
  %99 = fcmp ogt float %tnear.i.1.i, %tfar.i.1.i
  %100 = fcmp olt float %tfar.i.1.i, 0.000000e+00
  %or.cond1395.i = or i1 %99, %100
  br i1 %or.cond1395.i, label %bb7.i, label %bb62.i.i

bb62.i.i:                                         ; preds = %bb29.i.i
  %101 = fsub float %77, %tmp1387
  %102 = fdiv float %101, %tmp582
  %103 = fsub float %80, %tmp1387
  %104 = fdiv float %103, %tmp582
  %105 = fcmp ogt float %102, %104
  %tz1.i.0.i = select i1 %105, float %104, float %102
  %tz2.i.0.i = select i1 %105, float %102, float %104
  %106 = fcmp ogt float %tz1.i.0.i, %tnear.i.1.i
  %tnear.i.2.i = select i1 %106, float %tz1.i.0.i, float %tnear.i.1.i
  %107 = fcmp olt float %tz2.i.0.i, %tfar.i.1.i
  %tfar.i.2.i = select i1 %107, float %tz2.i.0.i, float %tfar.i.1.i
  %108 = fcmp ogt float %tnear.i.2.i, %tfar.i.2.i
  %109 = fcmp olt float %tfar.i.2.i, 0.000000e+00
  %or.cond1396.i = or i1 %108, %109
  br i1 %or.cond1396.i, label %bb7.i, label %bb1.i69

bb1.i69:                                          ; preds = %bb62.i.i
  %110 = call i32 @llvm.trax.loadi(i32 %76, i32 7) nounwind
  %111 = call i32 @llvm.trax.loadi(i32 %76, i32 6) nounwind
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %bb3.i, label %bb6.preheader.i

bb6.preheader.i:                                  ; preds = %bb1.i69
  %113 = icmp sgt i32 %111, 0
  br i1 %113, label %bb5.i70, label %bb7.i

bb3.i:                                            ; preds = %bb1.i69
  %114 = add nsw i32 %110, 1
  store i32 %114, i32* %scevgep.i, align 4
  %indvar.next.i = add i64 %indvar.i, 1
  br label %bb.i

bb5.i70:                                          ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i
  %mask7231194 = phi i512 [ %mask7231193, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %mask7231198, %bb6.preheader.i ]
  %storemerge388.i = phi i32 [ %228, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ 0, %bb6.preheader.i ]
  %tmp1498 = mul i32 %storemerge388.i, 11
  %tmp396.i = add i32 %110, %tmp1498
  %115 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %116 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %117 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %118 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %119 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %120 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %121 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %122 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %123 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %124 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %125 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %126 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %127 = mul nsw i32 %124, 25
  %128 = add nsw i32 %126, %127
  %129 = call float @llvm.trax.loadf(i32 %128, i32 6) nounwind
  %130 = call float @llvm.trax.loadf(i32 %128, i32 5) nounwind
  %131 = call float @llvm.trax.loadf(i32 %128, i32 4) nounwind
  %132 = fsub float %117, %123
  %133 = fsub float %116, %122
  %134 = fsub float %115, %121
  %135 = fsub float %120, %123
  %136 = fsub float %119, %122
  %137 = fsub float %118, %121
  %138 = fmul float %133, %137
  %139 = fmul float %136, %134
  %140 = fsub float %138, %139
  %141 = fmul float %135, %134
  %142 = fmul float %132, %137
  %143 = fsub float %141, %142
  %144 = fmul float %136, %132
  %145 = fmul float %135, %133
  %146 = fsub float %144, %145
  %147 = fmul float %140, %140
  %148 = fmul float %143, %143
  %149 = fadd float %147, %148
  %150 = fmul float %146, %146
  %151 = fadd float %149, %150
  %152 = call float @llvm.trax.invsqrt(float %151) nounwind
  %153 = fmul float %61, %137
  %154 = fmul float %136, %tmp582
  %155 = fsub float %153, %154
  %156 = fmul float %135, %tmp582
  %157 = fmul float %62, %137
  %158 = fsub float %156, %157
  %159 = fmul float %136, %62
  %160 = fmul float %135, %61
  %161 = fsub float %159, %160
  %162 = fmul float %155, %132
  %163 = fadd float %162, 0.000000e+00
  %164 = fmul float %158, %133
  %165 = fadd float %164, %163
  %166 = fmul float %161, %134
  %167 = fadd float %166, %165
  %168 = fdiv float 1.000000e+00, %167
  %169 = fsub float %tmp623, %123
  %170 = fsub float %tmp617, %122
  %171 = fsub float %tmp1387, %121
  %172 = fmul float %155, %169
  %173 = fadd float %172, 0.000000e+00
  %174 = fmul float %158, %170
  %175 = fadd float %174, %173
  %176 = fmul float %161, %171
  %177 = fadd float %176, %175
  %178 = fmul float %177, %168
  %179 = fcmp olt float %178, 0.000000e+00
  %180 = fcmp ogt float %178, 1.000000e+00
  %or.cond1397.i = or i1 %179, %180
  br i1 %or.cond1397.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb73.i.i

bb73.i.i:                                         ; preds = %bb5.i70
  %181 = fmul float %170, %134
  %182 = fmul float %133, %171
  %183 = fsub float %181, %182
  %184 = fmul float %132, %171
  %185 = fmul float %169, %134
  %186 = fsub float %184, %185
  %187 = fmul float %133, %169
  %188 = fmul float %132, %170
  %189 = fsub float %187, %188
  %190 = fmul float %183, %62
  %191 = fadd float %190, 0.000000e+00
  %192 = fmul float %186, %61
  %193 = fadd float %192, %191
  %194 = fmul float %189, %tmp582
  %195 = fadd float %194, %193
  %196 = fmul float %195, %168
  %197 = fcmp olt float %196, 0.000000e+00
  br i1 %197, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb94.i55.i

bb94.i55.i:                                       ; preds = %bb73.i.i
  %198 = fadd float %196, %178
  %199 = fcmp ogt float %198, 1.000000e+00
  br i1 %199, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb96.i.i

bb96.i.i:                                         ; preds = %bb94.i55.i
  %200 = fmul float %183, %135
  %201 = fadd float %200, 0.000000e+00
  %202 = fmul float %186, %136
  %203 = fadd float %202, %201
  %204 = fmul float %189, %137
  %205 = fadd float %204, %203
  %206 = fmul float %205, %168
  %207 = fcmp ule float %206, 0.000000e+00
  %208 = fcmp olt float %206, 0x3F50624DE0000000
  %or.cond1398.i = or i1 %207, %208
  %209 = fcmp oeq float %206, 1.000000e+10
  %or.cond1399.i = or i1 %or.cond1398.i, %209
  br i1 %or.cond1399.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb96.i.i
  %tmp676 = trunc i512 %mask7231194 to i32
  %tmp677 = bitcast i32 %tmp676 to float
  %210 = fcmp ogt float %tmp677, %206
  br i1 %210, label %bb3.i.i.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

bb3.i.i.i:                                        ; preds = %bb2.i.i.i
  %tmp671 = bitcast float %206 to i32
  %tmp672 = zext i32 %tmp671 to i512
  %211 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %212 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %213 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %214 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %215 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %216 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %217 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %218 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %219 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %220 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %221 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %tmp369.i = bitcast float %213 to i32
  %tmp370.i = zext i32 %tmp369.i to i480
  %tmp301.i = bitcast float %212 to i32
  %tmp302.i = zext i32 %tmp301.i to i480
  %tmp303.i = shl nuw nsw i480 %tmp302.i, 32
  %tmp295.i = bitcast float %211 to i32
  %tmp296.i = zext i32 %tmp295.i to i480
  %tmp297.i = shl nuw nsw i480 %tmp296.i, 64
  %tmp363.i = bitcast float %216 to i32
  %tmp364.i = zext i32 %tmp363.i to i480
  %tmp365.i = shl nuw nsw i480 %tmp364.i, 96
  %tmp357.i = bitcast float %215 to i32
  %tmp358.i = zext i32 %tmp357.i to i480
  %tmp359.i = shl nuw nsw i480 %tmp358.i, 128
  %tmp351.i = bitcast float %214 to i32
  %tmp352.i = zext i32 %tmp351.i to i480
  %tmp353.i = shl nuw nsw i480 %tmp352.i, 160
  %tmp345.i = bitcast float %219 to i32
  %tmp346.i = zext i32 %tmp345.i to i480
  %tmp347.i = shl nuw nsw i480 %tmp346.i, 192
  %tmp339.i = bitcast float %218 to i32
  %tmp340.i = zext i32 %tmp339.i to i480
  %tmp341.i = shl nuw nsw i480 %tmp340.i, 224
  %tmp333.i = bitcast float %217 to i32
  %tmp334.i = zext i32 %tmp333.i to i480
  %tmp335.i = shl nuw nsw i480 %tmp334.i, 256
  %tmp290.i = zext i32 %221 to i480
  %tmp291.i = shl nuw nsw i480 %tmp290.i, 288
  %222 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %223 = mul nsw i32 %220, 25
  %224 = add nsw i32 %222, %223
  %225 = call float @llvm.trax.loadf(i32 %224, i32 6) nounwind
  %226 = call float @llvm.trax.loadf(i32 %224, i32 5) nounwind
  %227 = call float @llvm.trax.loadf(i32 %224, i32 4) nounwind
  %tmp325.i = bitcast float %227 to i32
  %tmp326.i = zext i32 %tmp325.i to i480
  %tmp327.i = shl nuw nsw i480 %tmp326.i, 320
  %tmp317.i = bitcast float %226 to i32
  %tmp318.i = zext i32 %tmp317.i to i480
  %tmp319.i = shl nuw nsw i480 %tmp318.i, 352
  %tmp309.i = bitcast float %225 to i32
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
  %tmp666 = zext i480 %ins285.i to i512
  %tmp667 = shl nuw i512 %tmp666, 32
  %ins669 = or i512 %tmp667, %tmp672
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i: ; preds = %bb3.i.i.i, %bb2.i.i.i, %bb96.i.i, %bb94.i55.i, %bb73.i.i, %bb5.i70
  %mask7231193 = phi i512 [ %ins669, %bb3.i.i.i ], [ %mask7231194, %bb2.i.i.i ], [ %mask7231194, %bb96.i.i ], [ %mask7231194, %bb94.i55.i ], [ %mask7231194, %bb73.i.i ], [ %mask7231194, %bb5.i70 ]
  %228 = add nsw i32 %storemerge388.i, 1
  %exitcond1497 = icmp eq i32 %228, %111
  br i1 %exitcond1497, label %bb7.i, label %bb5.i70

bb7.i:                                            ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i, %bb62.i.i, %bb29.i.i, %bb.i
  %mask7231197 = phi i512 [ %mask7231198, %bb6.preheader.i ], [ %mask7231193, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %mask7231198, %bb.i ], [ %mask7231198, %bb29.i.i ], [ %mask7231198, %bb62.i.i ]
  %229 = icmp slt i32 %sp.0.i, 0
  br i1 %229, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit, label %bb9.i

bb9.i:                                            ; preds = %bb7.i
  %230 = sext i32 %sp.0.i to i64
  %231 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %230
  %232 = load i32* %231, align 4
  %233 = add nsw i32 %sp.0.i, -1
  br label %bb.outer.i

_ZN3BVH9intersectER9HitRecordR3Ray.exit:          ; preds = %bb7.i
  %tmp679 = trunc i512 %mask7231197 to i32
  %tmp680 = bitcast i32 %tmp679 to float
  %234 = fcmp olt float %tmp680, 1.000000e+10
  %indvar.next1519 = add i32 %indvar1518, 1
  br i1 %234, label %invcont78, label %bb103

invcont78:                                        ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %tmp698 = lshr i512 %mask7231197, 352
  %tmp702 = trunc i512 %tmp698 to i32
  %tmp703 = bitcast i32 %tmp702 to float
  %tmp691 = lshr i512 %mask7231197, 384
  %tmp692 = trunc i512 %tmp691 to i32
  %tmp694 = bitcast i32 %tmp692 to float
  %tmp1563 = trunc i512 %tmp698 to i128
  %tmp1564 = and i128 %tmp1563, 79228162495817593519834398720
  %tmp530 = lshr exact i128 %tmp1564, 64
  %tmp531 = trunc i128 %tmp530 to i32
  %tmp532 = bitcast i32 %tmp531 to float
  %235 = fadd float %tmp703, %tmp694
  %236 = fadd float %235, %tmp532
  %237 = fcmp ogt float %236, 3.000000e+00
  br i1 %237, label %bb79, label %invcont92

bb79:                                             ; preds = %invcont78
  %238 = fmul float %tmp703, 0x3F50624DE0000000
  %239 = fmul float %tmp694, 0x3F50624DE0000000
  %240 = fmul float %tmp532, 0x3F50624DE0000000
  br label %invcont92

invcont92:                                        ; preds = %bb79, %invcont78
  %surface_color.0.0 = phi float [ %238, %bb79 ], [ %tmp703, %invcont78 ]
  %surface_color.1.0 = phi float [ %239, %bb79 ], [ %tmp694, %invcont78 ]
  %surface_color.2.0 = phi float [ %240, %bb79 ], [ %tmp532, %invcont78 ]
  %241 = fmul float %62, %tmp680
  %242 = fmul float %61, %tmp680
  %243 = fmul float %tmp582, %tmp680
  %244 = fadd float %241, %tmp623
  %245 = fadd float %242, %tmp617
  %246 = fadd float %tmp1387, %243
  %tmp17.i.i = bitcast float %244 to i32
  %tmp18.i.i = zext i32 %tmp17.i.i to i64
  %tmp11.i.i = bitcast float %245 to i32
  %tmp12.i.i = zext i32 %tmp11.i.i to i64
  %tmp13.i.i = shl nuw i64 %tmp12.i.i, 32
  %ins15.i.i = or i64 %tmp13.i.i, %tmp18.i.i
  %tmp519 = bitcast float %246 to i32
  br i1 %63, label %bb93, label %bb103.outer

bb93:                                             ; preds = %invcont92
  store float %244, float* %scevgep15511552, align 4
  store float %245, float* %scevgep1550, align 4
  store float %246, float* %scevgep1549, align 4
  store float %247, float* %scevgep1548, align 4
  store float %248, float* %scevgep1547, align 4
  store float %249, float* %scevgep1546, align 4
  store i8 0, i8* %scevgep1545, align 4
  %indvar.next1539 = add i64 %indvar1538, 1
  br label %bb103.outer.outer

bb103.outer.outer:                                ; preds = %bb103.preheader, %bb93
  %indvar1538 = phi i64 [ 0, %bb103.preheader ], [ %indvar.next1539, %bb93 ]
  %mask7231196.ph.ph = phi i512 [ %mask72311951438, %bb103.preheader ], [ %mask7231197, %bb93 ]
  %surface_color.0.2.ph.ph = phi float [ 0.000000e+00, %bb103.preheader ], [ %surface_color.0.0, %bb93 ]
  %surface_color.1.2.ph.ph = phi float [ 0.000000e+00, %bb103.preheader ], [ %surface_color.1.0, %bb93 ]
  %surface_color.2.2.ph.ph = phi float [ 0.000000e+00, %bb103.preheader ], [ %surface_color.2.0, %bb93 ]
  %memtmp31.0.ph.ph = phi i128 [ %memtmp31.11440, %bb103.preheader ], [ %ins611, %bb93 ]
  %ray_origin.1.off0.ph.ph = phi i32 [ %ray_origin.2.off01441, %bb103.preheader ], [ %tmp17.i.i, %bb93 ]
  %ray_origin.1.off03611.ph.ph = phi i64 [ %ray_origin.2.off036251442, %bb103.preheader ], [ %ins15.i.i, %bb93 ]
  %ray_origin.1.off32.ph.ph = phi i32 [ %ray_origin.2.off321443, %bb103.preheader ], [ %tmp11.i.i, %bb93 ]
  %ray_origin.1.off64.ph.ph = phi i32 [ %ray_origin.2.off641444, %bb103.preheader ], [ %tmp519, %bb93 ]
  %memtmp.i78.1.ph.ph = phi i128 [ %memtmp.i78.21445, %bb103.preheader ], [ %memtmp.i78.0, %bb93 ]
  %bar.1.ph.ph = phi i32 [ %bar.21447, %bb103.preheader ], [ %bar.0, %bb93 ]
  %bounces.0.ph.ph = phi i32 [ 0, %bb103.preheader ], [ %tmp1521, %bb93 ]
  %tmp1541 = add i64 %tmp1540, %indvar1538
  %count.2.ph.ph = trunc i64 %tmp1541 to i32
  %tmp1544 = add i64 %tmp1543, %indvar1538
  %scevgep1545 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %tmp1544, i32 2
  %scevgep1546 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %tmp1544, i32 1, i64 2
  %scevgep1547 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %tmp1544, i32 1, i64 1
  %scevgep1548 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %tmp1544, i32 1, i64 0
  %scevgep1549 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %tmp1544, i32 0, i32 2
  %scevgep1550 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %tmp1544, i32 0, i32 1
  %scevgep15511552 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %tmp1544, i32 0, i32 0
  br label %bb103.outer

bb103.outer:                                      ; preds = %bb103.outer.outer, %invcont92
  %mask7231196.ph = phi i512 [ %mask7231197, %invcont92 ], [ %mask7231196.ph.ph, %bb103.outer.outer ]
  %surface_color.0.2.ph = phi float [ %surface_color.0.0, %invcont92 ], [ %surface_color.0.2.ph.ph, %bb103.outer.outer ]
  %surface_color.1.2.ph = phi float [ %surface_color.1.0, %invcont92 ], [ %surface_color.1.2.ph.ph, %bb103.outer.outer ]
  %surface_color.2.2.ph = phi float [ %surface_color.2.0, %invcont92 ], [ %surface_color.2.2.ph.ph, %bb103.outer.outer ]
  %memtmp31.0.ph = phi i128 [ %ins611, %invcont92 ], [ %memtmp31.0.ph.ph, %bb103.outer.outer ]
  %ray_origin.1.off0.ph = phi i32 [ %tmp17.i.i, %invcont92 ], [ %ray_origin.1.off0.ph.ph, %bb103.outer.outer ]
  %ray_origin.1.off03611.ph = phi i64 [ %ins15.i.i, %invcont92 ], [ %ray_origin.1.off03611.ph.ph, %bb103.outer.outer ]
  %ray_origin.1.off32.ph = phi i32 [ %tmp11.i.i, %invcont92 ], [ %ray_origin.1.off32.ph.ph, %bb103.outer.outer ]
  %ray_origin.1.off64.ph = phi i32 [ %tmp519, %invcont92 ], [ %ray_origin.1.off64.ph.ph, %bb103.outer.outer ]
  %memtmp.i78.1.ph = phi i128 [ %memtmp.i78.0, %invcont92 ], [ %memtmp.i78.1.ph.ph, %bb103.outer.outer ]
  %bar.1.ph = phi i32 [ %bar.0, %invcont92 ], [ %bar.1.ph.ph, %bb103.outer.outer ]
  %bounces.0.ph = phi i32 [ %tmp1521, %invcont92 ], [ %bounces.0.ph.ph, %bb103.outer.outer ]
  %247 = fmul float %surface_color.0.2.ph, 0x3FE6666660000000
  %248 = fmul float %surface_color.1.2.ph, 0x3FE6666660000000
  %249 = fmul float %surface_color.2.2.ph, 0x3FE6666660000000
  %tmp1387 = bitcast i32 %ray_origin.1.off64.ph to float
  %tmp1441 = trunc i64 %ray_origin.1.off03611.ph to i32
  %tmp1442 = bitcast i32 %tmp1441 to float
  %tmp1444 = lshr i64 %ray_origin.1.off03611.ph, 32
  %tmp1445 = trunc i64 %tmp1444 to i32
  %tmp1446 = bitcast i32 %tmp1445 to float
  %tmp623 = bitcast i32 %ray_origin.1.off0.ph to float
  %tmp617 = bitcast i32 %ray_origin.1.off32.ph to float
  %tmp1520 = add i32 %bounces.0.ph, 1
  br label %bb103

bb103:                                            ; preds = %bb103.outer, %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %indvar1518 = phi i32 [ 0, %bb103.outer ], [ %indvar.next1519, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %mask7231196 = phi i512 [ %mask7231196.ph, %bb103.outer ], [ %mask7231197, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %memtmp31.0 = phi i128 [ %memtmp31.0.ph, %bb103.outer ], [ %ins611, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %memtmp.i78.1 = phi i128 [ %memtmp.i78.1.ph, %bb103.outer ], [ %memtmp.i78.0, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %bar.1 = phi i32 [ %bar.1.ph, %bb103.outer ], [ %bar.0, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %tmp1521 = add i32 %tmp1520, %indvar1518
  %bounces.0 = add i32 %bounces.0.ph, %indvar1518
  %250 = icmp slt i32 %bounces.0, 3
  br i1 %250, label %bb.i52, label %bb105

bb105:                                            ; preds = %bb103
  %251 = add nsw i32 %iterator.01449, 1
  %exitcond1553 = icmp eq i32 %251, 125000
  br i1 %exitcond1553, label %invcont109, label %bb103.preheader

bb103.preheader:                                  ; preds = %bb105, %invcont15
  %iterator.01449 = phi i32 [ 0, %invcont15 ], [ %251, %bb105 ]
  %count.31448 = phi i32 [ 0, %invcont15 ], [ %count.2.ph.ph, %bb105 ]
  %bar.21447 = phi i32 [ 0, %invcont15 ], [ %bar.1, %bb105 ]
  %memtmp.i78.21445 = phi i128 [ undef, %invcont15 ], [ %memtmp.i78.1, %bb105 ]
  %ray_origin.2.off641444 = phi i32 [ %tmp693, %invcont15 ], [ %ray_origin.1.off64.ph, %bb105 ]
  %ray_origin.2.off321443 = phi i32 [ %tmp699, %invcont15 ], [ %ray_origin.1.off32.ph, %bb105 ]
  %ray_origin.2.off036251442 = phi i64 [ %ins703, %invcont15 ], [ %ray_origin.1.off03611.ph, %bb105 ]
  %ray_origin.2.off01441 = phi i32 [ %tmp705, %invcont15 ], [ %ray_origin.1.off0.ph, %bb105 ]
  %memtmp31.11440 = phi i128 [ undef, %invcont15 ], [ %memtmp31.0, %bb105 ]
  %mask72311951438 = phi i512 [ undef, %invcont15 ], [ %mask7231196, %bb105 ]
  %tmp1540 = zext i32 %count.31448 to i64
  %tmp1543 = sext i32 %count.31448 to i64
  br label %bb103.outer.outer

invcont109:                                       ; preds = %bb105
  %252 = call i32 @llvm.trax.atominc(i32 0)
  %253 = mul nsw i32 %1, %0
  %254 = sitofp i32 %0 to float
  %255 = fdiv float %254, -2.000000e+00
  %256 = sitofp i32 %1 to float
  %257 = fdiv float %256, -2.000000e+00
  %258 = icmp sgt i32 %253, %252
  br i1 %258, label %invcont118.lr.ph, label %return

invcont118.lr.ph:                                 ; preds = %invcont109
  %tmp855 = bitcast float %10 to i32
  %tmp856 = zext i32 %tmp855 to i192
  %tmp795 = bitcast float %11 to i32
  %tmp796 = zext i32 %tmp795 to i192
  %tmp797 = shl nuw nsw i192 %tmp796, 32
  %tmp1289 = zext i32 %tmp874 to i192
  %tmp783 = shl nuw nsw i192 %tmp1289, 64
  %mask784.masked.masked = or i192 %tmp797, %tmp856
  %mask846.masked = or i192 %mask784.masked.masked, %tmp783
  %tmp2901 = zext i32 %tmp855 to i96
  %tmp2896 = trunc i192 %tmp797 to i96
  %ins2898 = or i96 %tmp2896, %tmp2901
  %tmp2324 = zext i96 %ins2898 to i128
  %tmp2319 = trunc i192 %tmp783 to i128
  %mask2320 = or i128 %tmp2324, %tmp2319
  br label %invcont118

invcont118:                                       ; preds = %invcont160, %invcont118.lr.ph
  %storemerge11400 = phi i32 [ %252, %invcont118.lr.ph ], [ %739, %invcont160 ]
  %memtmp31.i.31398 = phi i128 [ undef, %invcont118.lr.ph ], [ %memtmp31.i.2, %invcont160 ]
  %memtmp4.i238.11394 = phi i128 [ undef, %invcont118.lr.ph ], [ %memtmp4.i238.0, %invcont160 ]
  %mask55112031387 = phi i512 [ undef, %invcont118.lr.ph ], [ %mask5511204, %invcont160 ]
  %259 = sdiv i32 %storemerge11400, %0
  %260 = srem i32 %storemerge11400, %0
  %261 = sitofp i32 %260 to float
  %262 = fadd float %261, %255
  %263 = fadd float %262, 5.000000e-01
  %264 = fmul float %263, 2.000000e+00
  %265 = fdiv float %264, %254
  %266 = sitofp i32 %259 to float
  %267 = fadd float %266, %257
  %268 = fadd float %267, 5.000000e-01
  %269 = fmul float %268, 2.000000e+00
  %270 = fdiv float %269, %256
  %271 = fmul float %26, %270
  %272 = fmul float %27, %270
  %273 = fmul float %28, %270
  %274 = fmul float %22, %265
  %275 = fmul float %23, %265
  %276 = fmul float %24, %265
  %277 = fadd float %271, %274
  %278 = fadd float %272, %275
  %279 = fadd float %276, %273
  %280 = fadd float %277, %18
  %281 = fadd float %278, %19
  %282 = fadd float %20, %279
  %283 = fmul float %280, %280
  %284 = fmul float %281, %281
  %285 = fadd float %283, %284
  %286 = fmul float %282, %282
  %287 = fadd float %285, %286
  %288 = call float @llvm.trax.invsqrt(float %287) nounwind
  %289 = fdiv float 1.000000e+00, %288
  %290 = fdiv float %282, %289
  %291 = fdiv float %281, %289
  %292 = fdiv float %280, %289
  %tmp843 = bitcast float %292 to i32
  %tmp844 = zext i32 %tmp843 to i192
  %tmp845 = shl nuw nsw i192 %tmp844, 96
  %tmp827 = bitcast float %291 to i32
  %tmp828 = zext i32 %tmp827 to i192
  %tmp829 = shl nuw nsw i192 %tmp828, 128
  %tmp809 = bitcast float %290 to i32
  %tmp810 = zext i32 %tmp809 to i192
  %tmp811 = shl nuw i192 %tmp810, 160
  %mask830.masked = or i192 %mask846.masked, %tmp829
  %mask812 = or i192 %mask830.masked, %tmp845
  %ins813 = or i192 %mask812, %tmp811
  %mask474 = and i512 %mask55112031387, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins475 = or i512 %mask474, 1343554297
  %tmp731 = lshr i192 %ins813, 160
  %tmp732 = trunc i192 %tmp731 to i32
  %tmp733 = bitcast i32 %tmp732 to float
  br label %bb.outer.i134

bb.outer.i134:                                    ; preds = %bb9.i234, %invcont118
  %mask5511205 = phi i512 [ %ins475, %invcont118 ], [ %mask5511204, %bb9.i234 ]
  %node_id.0.ph.i129 = phi i32 [ 0, %invcont118 ], [ %450, %bb9.i234 ]
  %sp.0.ph.i130 = phi i32 [ -1, %invcont118 ], [ %451, %bb9.i234 ]
  %tmp404.i132 = add i32 %sp.0.ph.i130, 1
  %tmp1470 = sext i32 %tmp404.i132 to i64
  %tmp1474 = zext i32 %sp.0.ph.i130 to i64
  br label %bb.i146

bb.i146:                                          ; preds = %bb3.i162, %bb.outer.i134
  %indvar.i135 = phi i64 [ %indvar.next.i161, %bb3.i162 ], [ 0, %bb.outer.i134 ]
  %node_id.0.i136 = phi i32 [ %328, %bb3.i162 ], [ %node_id.0.ph.i129, %bb.outer.i134 ]
  %tmp1473 = add i64 %tmp1470, %indvar.i135
  %scevgep.i140 = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp1473
  %tmp1475 = add i64 %tmp1474, %indvar.i135
  %sp.0.i138 = trunc i64 %tmp1475 to i32
  %293 = shl nsw i32 %node_id.0.i136, 3
  %294 = add nsw i32 %293, %37
  %295 = call float @llvm.trax.loadf(i32 %294, i32 2) nounwind
  %296 = call float @llvm.trax.loadf(i32 %294, i32 1) nounwind
  %297 = call float @llvm.trax.loadf(i32 %294, i32 0) nounwind
  %298 = call float @llvm.trax.loadf(i32 %294, i32 5) nounwind
  %299 = call float @llvm.trax.loadf(i32 %294, i32 4) nounwind
  %300 = call float @llvm.trax.loadf(i32 %294, i32 3) nounwind
  %301 = fsub float %297, %10
  %302 = fdiv float %301, %292
  %303 = fsub float %300, %10
  %304 = fdiv float %303, %292
  %305 = fcmp ogt float %302, %304
  %tx1.i.0.i141 = select i1 %305, float %304, float %302
  %tx2.i.0.i142 = select i1 %305, float %302, float %304
  %306 = fcmp ogt float %tx1.i.0.i141, -1.000000e+10
  %tnear.i.0.i143 = select i1 %306, float %tx1.i.0.i141, float -1.000000e+10
  %307 = fcmp olt float %tx2.i.0.i142, 1.000000e+10
  %tfar.i.0.i144 = select i1 %307, float %tx2.i.0.i142, float 1.000000e+10
  %308 = fcmp ogt float %tnear.i.0.i143, %tfar.i.0.i144
  %309 = fcmp olt float %tfar.i.0.i144, 0.000000e+00
  %or.cond.i145 = or i1 %308, %309
  br i1 %or.cond.i145, label %bb7.i233, label %bb29.i.i152

bb29.i.i152:                                      ; preds = %bb.i146
  %310 = fsub float %296, %11
  %311 = fdiv float %310, %291
  %312 = fsub float %299, %11
  %313 = fdiv float %312, %291
  %314 = fcmp ogt float %311, %313
  %ty1.i.0.i147 = select i1 %314, float %313, float %311
  %ty2.i.0.i148 = select i1 %314, float %311, float %313
  %315 = fcmp ogt float %ty1.i.0.i147, %tnear.i.0.i143
  %tnear.i.1.i149 = select i1 %315, float %ty1.i.0.i147, float %tnear.i.0.i143
  %316 = fcmp olt float %ty2.i.0.i148, %tfar.i.0.i144
  %tfar.i.1.i150 = select i1 %316, float %ty2.i.0.i148, float %tfar.i.0.i144
  %317 = fcmp ogt float %tnear.i.1.i149, %tfar.i.1.i150
  %318 = fcmp olt float %tfar.i.1.i150, 0.000000e+00
  %or.cond1395.i151 = or i1 %317, %318
  br i1 %or.cond1395.i151, label %bb7.i233, label %bb62.i.i158

bb62.i.i158:                                      ; preds = %bb29.i.i152
  %319 = fsub float %295, %12
  %320 = fdiv float %319, %tmp733
  %321 = fsub float %298, %12
  %322 = fdiv float %321, %tmp733
  %323 = fcmp ogt float %320, %322
  %tz1.i.0.i153 = select i1 %323, float %322, float %320
  %tz2.i.0.i154 = select i1 %323, float %320, float %322
  %324 = fcmp ogt float %tz1.i.0.i153, %tnear.i.1.i149
  %tnear.i.2.i155 = select i1 %324, float %tz1.i.0.i153, float %tnear.i.1.i149
  %325 = fcmp olt float %tz2.i.0.i154, %tfar.i.1.i150
  %tfar.i.2.i156 = select i1 %325, float %tz2.i.0.i154, float %tfar.i.1.i150
  %326 = fcmp ogt float %tnear.i.2.i155, %tfar.i.2.i156
  %327 = fcmp olt float %tfar.i.2.i156, 0.000000e+00
  %or.cond1396.i157 = or i1 %326, %327
  br i1 %or.cond1396.i157, label %bb7.i233, label %bb1.i159

bb1.i159:                                         ; preds = %bb62.i.i158
  %328 = call i32 @llvm.trax.loadi(i32 %294, i32 7) nounwind
  %329 = call i32 @llvm.trax.loadi(i32 %294, i32 6) nounwind
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %bb3.i162, label %bb6.preheader.i160

bb6.preheader.i160:                               ; preds = %bb1.i159
  %331 = icmp sgt i32 %329, 0
  br i1 %331, label %bb5.i173, label %bb7.i233

bb3.i162:                                         ; preds = %bb1.i159
  %332 = add nsw i32 %328, 1
  store i32 %332, i32* %scevgep.i140, align 4
  %indvar.next.i161 = add i64 %indvar.i135, 1
  br label %bb.i146

bb5.i173:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i232, %bb6.preheader.i160
  %mask5511202 = phi i512 [ %mask5511201, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i232 ], [ %mask5511205, %bb6.preheader.i160 ]
  %storemerge388.i163 = phi i32 [ %446, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i232 ], [ 0, %bb6.preheader.i160 ]
  %tmp1464 = mul i32 %storemerge388.i163, 11
  %tmp396.i165 = add i32 %328, %tmp1464
  %333 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 2) nounwind
  %334 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 1) nounwind
  %335 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 0) nounwind
  %336 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 5) nounwind
  %337 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 4) nounwind
  %338 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 3) nounwind
  %339 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 8) nounwind
  %340 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 7) nounwind
  %341 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 6) nounwind
  %342 = call i32 @llvm.trax.loadi(i32 %tmp396.i165, i32 10) nounwind
  %343 = call i32 @llvm.trax.loadi(i32 %tmp396.i165, i32 9) nounwind
  %344 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %345 = mul nsw i32 %342, 25
  %346 = add nsw i32 %344, %345
  %347 = call float @llvm.trax.loadf(i32 %346, i32 6) nounwind
  %348 = call float @llvm.trax.loadf(i32 %346, i32 5) nounwind
  %349 = call float @llvm.trax.loadf(i32 %346, i32 4) nounwind
  %350 = fsub float %335, %341
  %351 = fsub float %334, %340
  %352 = fsub float %333, %339
  %353 = fsub float %338, %341
  %354 = fsub float %337, %340
  %355 = fsub float %336, %339
  %356 = fmul float %351, %355
  %357 = fmul float %354, %352
  %358 = fsub float %356, %357
  %359 = fmul float %353, %352
  %360 = fmul float %350, %355
  %361 = fsub float %359, %360
  %362 = fmul float %354, %350
  %363 = fmul float %353, %351
  %364 = fsub float %362, %363
  %365 = fmul float %358, %358
  %366 = fmul float %361, %361
  %367 = fadd float %365, %366
  %368 = fmul float %364, %364
  %369 = fadd float %367, %368
  %370 = call float @llvm.trax.invsqrt(float %369) nounwind
  %371 = fmul float %291, %355
  %372 = fmul float %354, %tmp733
  %373 = fsub float %371, %372
  %374 = fmul float %353, %tmp733
  %375 = fmul float %292, %355
  %376 = fsub float %374, %375
  %377 = fmul float %354, %292
  %378 = fmul float %353, %291
  %379 = fsub float %377, %378
  %380 = fmul float %373, %350
  %381 = fadd float %380, 0.000000e+00
  %382 = fmul float %376, %351
  %383 = fadd float %382, %381
  %384 = fmul float %379, %352
  %385 = fadd float %384, %383
  %386 = fdiv float 1.000000e+00, %385
  %387 = fsub float %10, %341
  %388 = fsub float %11, %340
  %389 = fsub float %12, %339
  %390 = fmul float %373, %387
  %391 = fadd float %390, 0.000000e+00
  %392 = fmul float %376, %388
  %393 = fadd float %392, %391
  %394 = fmul float %379, %389
  %395 = fadd float %394, %393
  %396 = fmul float %395, %386
  %397 = fcmp olt float %396, 0.000000e+00
  %398 = fcmp ogt float %396, 1.000000e+00
  %or.cond1397.i172 = or i1 %397, %398
  br i1 %or.cond1397.i172, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i232, label %bb73.i.i174

bb73.i.i174:                                      ; preds = %bb5.i173
  %399 = fmul float %388, %352
  %400 = fmul float %351, %389
  %401 = fsub float %399, %400
  %402 = fmul float %350, %389
  %403 = fmul float %387, %352
  %404 = fsub float %402, %403
  %405 = fmul float %351, %387
  %406 = fmul float %350, %388
  %407 = fsub float %405, %406
  %408 = fmul float %401, %292
  %409 = fadd float %408, 0.000000e+00
  %410 = fmul float %404, %291
  %411 = fadd float %410, %409
  %412 = fmul float %407, %tmp733
  %413 = fadd float %412, %411
  %414 = fmul float %413, %386
  %415 = fcmp olt float %414, 0.000000e+00
  br i1 %415, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i232, label %bb94.i55.i175

bb94.i55.i175:                                    ; preds = %bb73.i.i174
  %416 = fadd float %414, %396
  %417 = fcmp ogt float %416, 1.000000e+00
  br i1 %417, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i232, label %bb96.i.i178

bb96.i.i178:                                      ; preds = %bb94.i55.i175
  %418 = fmul float %401, %353
  %419 = fadd float %418, 0.000000e+00
  %420 = fmul float %404, %354
  %421 = fadd float %420, %419
  %422 = fmul float %407, %355
  %423 = fadd float %422, %421
  %424 = fmul float %423, %386
  %425 = fcmp ule float %424, 0.000000e+00
  %426 = fcmp olt float %424, 0x3F50624DE0000000
  %or.cond1398.i176 = or i1 %425, %426
  %427 = fcmp oeq float %424, 1.000000e+10
  %or.cond1399.i177 = or i1 %or.cond1398.i176, %427
  br i1 %or.cond1399.i177, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i232, label %bb2.i.i.i179

bb2.i.i.i179:                                     ; preds = %bb96.i.i178
  %tmp457 = trunc i512 %mask5511202 to i32
  %tmp458 = bitcast i32 %tmp457 to float
  %428 = fcmp ogt float %tmp458, %424
  br i1 %428, label %bb3.i.i.i230, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i232

bb3.i.i.i230:                                     ; preds = %bb2.i.i.i179
  %tmp452 = bitcast float %424 to i32
  %tmp453 = zext i32 %tmp452 to i512
  %429 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 2) nounwind
  %430 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 1) nounwind
  %431 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 0) nounwind
  %432 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 5) nounwind
  %433 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 4) nounwind
  %434 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 3) nounwind
  %435 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 8) nounwind
  %436 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 7) nounwind
  %437 = call float @llvm.trax.loadf(i32 %tmp396.i165, i32 6) nounwind
  %438 = call i32 @llvm.trax.loadi(i32 %tmp396.i165, i32 10) nounwind
  %439 = call i32 @llvm.trax.loadi(i32 %tmp396.i165, i32 9) nounwind
  %tmp369.i180 = bitcast float %431 to i32
  %tmp370.i181 = zext i32 %tmp369.i180 to i480
  %tmp301.i182 = bitcast float %430 to i32
  %tmp302.i183 = zext i32 %tmp301.i182 to i480
  %tmp303.i184 = shl nuw nsw i480 %tmp302.i183, 32
  %tmp295.i185 = bitcast float %429 to i32
  %tmp296.i186 = zext i32 %tmp295.i185 to i480
  %tmp297.i187 = shl nuw nsw i480 %tmp296.i186, 64
  %tmp363.i188 = bitcast float %434 to i32
  %tmp364.i189 = zext i32 %tmp363.i188 to i480
  %tmp365.i190 = shl nuw nsw i480 %tmp364.i189, 96
  %tmp357.i191 = bitcast float %433 to i32
  %tmp358.i192 = zext i32 %tmp357.i191 to i480
  %tmp359.i193 = shl nuw nsw i480 %tmp358.i192, 128
  %tmp351.i194 = bitcast float %432 to i32
  %tmp352.i195 = zext i32 %tmp351.i194 to i480
  %tmp353.i196 = shl nuw nsw i480 %tmp352.i195, 160
  %tmp345.i197 = bitcast float %437 to i32
  %tmp346.i198 = zext i32 %tmp345.i197 to i480
  %tmp347.i199 = shl nuw nsw i480 %tmp346.i198, 192
  %tmp339.i200 = bitcast float %436 to i32
  %tmp340.i201 = zext i32 %tmp339.i200 to i480
  %tmp341.i202 = shl nuw nsw i480 %tmp340.i201, 224
  %tmp333.i203 = bitcast float %435 to i32
  %tmp334.i204 = zext i32 %tmp333.i203 to i480
  %tmp335.i205 = shl nuw nsw i480 %tmp334.i204, 256
  %tmp290.i206 = zext i32 %439 to i480
  %tmp291.i207 = shl nuw nsw i480 %tmp290.i206, 288
  %440 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %441 = mul nsw i32 %438, 25
  %442 = add nsw i32 %440, %441
  %443 = call float @llvm.trax.loadf(i32 %442, i32 6) nounwind
  %444 = call float @llvm.trax.loadf(i32 %442, i32 5) nounwind
  %445 = call float @llvm.trax.loadf(i32 %442, i32 4) nounwind
  %tmp325.i208 = bitcast float %445 to i32
  %tmp326.i209 = zext i32 %tmp325.i208 to i480
  %tmp327.i210 = shl nuw nsw i480 %tmp326.i209, 320
  %tmp317.i211 = bitcast float %444 to i32
  %tmp318.i212 = zext i32 %tmp317.i211 to i480
  %tmp319.i213 = shl nuw nsw i480 %tmp318.i212, 352
  %tmp309.i214 = bitcast float %443 to i32
  %tmp310.i215 = zext i32 %tmp309.i214 to i480
  %tmp311.i216 = shl nuw nsw i480 %tmp310.i215, 384
  %mask298.i217 = or i480 %tmp297.i187, %tmp370.i181
  %mask366.i218 = or i480 %mask298.i217, %tmp303.i184
  %mask360.masked.masked.masked.masked.masked.i219 = or i480 %mask366.i218, %tmp353.i196
  %mask354.masked.masked.masked.masked.masked.masked.i220 = or i480 %mask360.masked.masked.masked.masked.masked.i219, %tmp359.i193
  %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i221 = or i480 %mask354.masked.masked.masked.masked.masked.masked.i220, %tmp365.i190
  %mask342.masked.masked.masked.masked.masked.masked.masked.i222 = or i480 %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i221, %tmp335.i205
  %mask336.masked.masked.masked.masked.masked.masked.i223 = or i480 %mask342.masked.masked.masked.masked.masked.masked.masked.i222, %tmp341.i202
  %mask292.masked.masked.masked.masked.masked.i224 = or i480 %mask336.masked.masked.masked.masked.masked.masked.i223, %tmp347.i199
  %mask328.masked.masked.masked.masked.i225 = or i480 %mask292.masked.masked.masked.masked.masked.i224, %tmp291.i207
  %mask320.masked.masked.masked.i226 = or i480 %mask328.masked.masked.masked.masked.i225, %tmp311.i216
  %mask312.masked.masked.i227 = or i480 %mask320.masked.masked.masked.i226, %tmp319.i213
  %ins288.i228 = or i480 %mask312.masked.masked.i227, %tmp327.i210
  %ins285.i229 = or i480 %ins288.i228, 770681673391627619131312691654083964084373995933406099189890146314966155308140517402099473489517307419678932548501811235986099843289400054120448
  %tmp449 = zext i480 %ins285.i229 to i512
  %tmp450 = shl nuw i512 %tmp449, 32
  %ins = or i512 %tmp450, %tmp453
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i232

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i232: ; preds = %bb3.i.i.i230, %bb2.i.i.i179, %bb96.i.i178, %bb94.i55.i175, %bb73.i.i174, %bb5.i173
  %mask5511201 = phi i512 [ %ins, %bb3.i.i.i230 ], [ %mask5511202, %bb2.i.i.i179 ], [ %mask5511202, %bb96.i.i178 ], [ %mask5511202, %bb94.i55.i175 ], [ %mask5511202, %bb73.i.i174 ], [ %mask5511202, %bb5.i173 ]
  %446 = add nsw i32 %storemerge388.i163, 1
  %exitcond1463 = icmp eq i32 %446, %329
  br i1 %exitcond1463, label %bb7.i233, label %bb5.i173

bb7.i233:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i232, %bb6.preheader.i160, %bb62.i.i158, %bb29.i.i152, %bb.i146
  %mask5511204 = phi i512 [ %mask5511205, %bb6.preheader.i160 ], [ %mask5511201, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i232 ], [ %mask5511205, %bb.i146 ], [ %mask5511205, %bb29.i.i152 ], [ %mask5511205, %bb62.i.i158 ]
  %447 = icmp slt i32 %sp.0.i138, 0
  br i1 %447, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit235, label %bb9.i234

bb9.i234:                                         ; preds = %bb7.i233
  %448 = sext i32 %sp.0.i138 to i64
  %449 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %448
  %450 = load i32* %449, align 4
  %451 = add nsw i32 %sp.0.i138, -1
  br label %bb.outer.i134

_ZN3BVH9intersectER9HitRecordR3Ray.exit235:       ; preds = %bb7.i233
  %tmp1280 = trunc i512 %mask5511204 to i32
  %tmp1281 = bitcast i32 %tmp1280 to float
  %452 = fcmp olt float %tmp1281, 1.000000e+10
  %tmp1226 = lshr i512 %mask5511204, 32
  %tmp1227 = trunc i512 %tmp1226 to i32
  %tmp1228 = bitcast i32 %tmp1227 to float
  %tmp1222 = lshr i512 %mask5511204, 64
  %tmp1223 = trunc i512 %tmp1222 to i32
  %tmp1224 = bitcast i32 %tmp1223 to float
  %tmp1218 = lshr i512 %mask5511204, 96
  %tmp1219 = trunc i512 %tmp1218 to i32
  %tmp1220 = bitcast i32 %tmp1219 to float
  %tmp1273 = lshr i512 %mask5511204, 128
  %tmp1274 = trunc i512 %tmp1273 to i32
  %tmp1275 = bitcast i32 %tmp1274 to float
  %tmp1269 = lshr i512 %mask5511204, 160
  %tmp1270 = trunc i512 %tmp1269 to i32
  %tmp1271 = bitcast i32 %tmp1270 to float
  %tmp1265 = lshr i512 %mask5511204, 192
  %tmp1266 = trunc i512 %tmp1265 to i32
  %tmp1267 = bitcast i32 %tmp1266 to float
  %tmp1261 = lshr i512 %mask5511204, 224
  %tmp1262 = trunc i512 %tmp1261 to i32
  %tmp1263 = bitcast i32 %tmp1262 to float
  %tmp1257 = lshr i512 %mask5511204, 256
  %tmp1258 = trunc i512 %tmp1257 to i32
  %tmp1259 = bitcast i32 %tmp1258 to float
  %tmp1253 = lshr i512 %mask5511204, 288
  %tmp1254 = trunc i512 %tmp1253 to i32
  %tmp1255 = bitcast i32 %tmp1254 to float
  %tmp1238 = lshr i512 %mask5511204, 352
  br i1 %452, label %bb.i263, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit235.invcont123_crit_edge

_ZN3BVH9intersectER9HitRecordR3Ray.exit235.invcont123_crit_edge: ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit235
  %.pre = fmul float %292, %tmp1281
  %.pre1576 = fmul float %291, %tmp1281
  %.pre1578 = fadd float %.pre, %10
  %.pre1580 = fadd float %.pre1576, %11
  %.pre1582 = fsub float %tmp1228, %tmp1275
  %.pre1584 = fsub float %tmp1224, %tmp1271
  %.pre1586 = fsub float %tmp1220, %tmp1267
  %.pre1588 = fsub float %tmp1275, %tmp1263
  %.pre1590 = fsub float %tmp1271, %tmp1259
  %.pre1592 = fsub float %tmp1267, %tmp1255
  %.pre1594 = fmul float %.pre1584, %.pre1592
  %.pre1596 = fmul float %.pre1590, %.pre1586
  %.pre1598 = fsub float %.pre1594, %.pre1596
  %.pre1600 = fmul float %.pre1588, %.pre1586
  %.pre1602 = fmul float %.pre1582, %.pre1592
  %.pre1604 = fsub float %.pre1600, %.pre1602
  %.pre1606 = fmul float %.pre1590, %.pre1582
  %.pre1608 = fmul float %.pre1588, %.pre1584
  %.pre1610 = fsub float %.pre1606, %.pre1608
  %.pre1612 = fmul float %.pre1598, %.pre1598
  %.pre1614 = fmul float %.pre1604, %.pre1604
  %.pre1616 = fadd float %.pre1612, %.pre1614
  %.pre1618 = fmul float %.pre1610, %.pre1610
  %.pre1620 = fadd float %.pre1616, %.pre1618
  %extract.t = trunc i512 %tmp1238 to i32
  %extract.t1627 = trunc i512 %tmp1238 to i128
  br label %invcont123

bb.i263:                                          ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit235
  %tmp1242 = lshr i512 %mask5511204, 480
  %tmp1243 = trunc i512 %tmp1242 to i32
  %tmp1244 = bitcast i32 %tmp1243 to float
  %453 = lshr i192 %ins813, 96
  %.tr1323 = trunc i192 %453 to i128
  %tmp2363 = and i128 %.tr1323, 79228162495817593519834398720
  %tmp2350 = lshr exact i128 %tmp2363, 64
  %tmp2351 = trunc i128 %tmp2350 to i32
  %tmp2352 = bitcast i32 %tmp2351 to float
  %454 = fmul float %292, %tmp1281
  %455 = fmul float %291, %tmp1281
  %456 = fmul float %tmp2352, %tmp1281
  %tmp2854 = bitcast float %454 to i32
  %tmp2855 = zext i32 %tmp2854 to i96
  %tmp2848 = bitcast float %455 to i32
  %tmp2849 = zext i32 %tmp2848 to i96
  %tmp2850 = shl nuw nsw i96 %tmp2849, 32
  %ins2852 = or i96 %tmp2850, %tmp2855
  %tmp2842 = bitcast float %456 to i32
  %tmp2346 = zext i96 %ins2852 to i128
  %mask2347 = and i128 %memtmp4.i238.11394, -79228162514264337593543950336
  %tmp2340 = zext i32 %tmp2842 to i128
  %tmp2341 = shl nuw nsw i128 %tmp2340, 64
  %mask2342 = or i128 %tmp2341, %mask2347
  %ins2343 = or i128 %mask2342, %tmp2346
  %ins2343.tr = trunc i128 %ins2343 to i96
  %tmp2306 = lshr i128 %mask2320, 64
  %tmp2307 = trunc i128 %tmp2306 to i32
  %tmp2308 = bitcast i32 %tmp2307 to float
  %tmp2441 = lshr i96 %ins2343.tr, 64
  %tmp2442 = trunc i96 %tmp2441 to i32
  %tmp2443 = bitcast i32 %tmp2442 to float
  %457 = fadd float %454, %10
  %458 = fadd float %455, %11
  %459 = fadd float %tmp2308, %tmp2443
  %460 = fsub float %tmp1228, %tmp1275
  %461 = fsub float %tmp1224, %tmp1271
  %462 = fsub float %tmp1220, %tmp1267
  %463 = fsub float %tmp1275, %tmp1263
  %464 = fsub float %tmp1271, %tmp1259
  %465 = fsub float %tmp1267, %tmp1255
  %466 = fmul float %461, %465
  %467 = fmul float %464, %462
  %468 = fsub float %466, %467
  %469 = fmul float %463, %462
  %470 = fmul float %460, %465
  %471 = fsub float %469, %470
  %472 = fmul float %464, %460
  %473 = fmul float %463, %461
  %474 = fsub float %472, %473
  %475 = fmul float %468, %468
  %476 = fmul float %471, %471
  %477 = fadd float %475, %476
  %478 = fmul float %474, %474
  %479 = fadd float %477, %478
  %480 = call float @llvm.trax.invsqrt(float %479) nounwind
  %481 = fdiv float 1.000000e+00, %480
  %482 = fdiv float %474, %481
  %483 = fdiv float %471, %481
  %484 = fdiv float %468, %481
  %485 = fmul float %292, %292
  %486 = fmul float %291, %291
  %487 = fadd float %485, %486
  %488 = fmul float %tmp2352, %tmp2352
  %489 = fadd float %487, %488
  %490 = call float @llvm.trax.invsqrt(float %489) nounwind
  %491 = fdiv float 1.000000e+00, %490
  %492 = fdiv float %tmp2352, %491
  %493 = fdiv float %291, %491
  %494 = fdiv float %292, %491
  %495 = fmul float %494, %484
  %496 = fadd float %495, 0.000000e+00
  %497 = fmul float %493, %483
  %498 = fadd float %497, %496
  %499 = fmul float %492, %482
  %500 = fadd float %499, %498
  %501 = fcmp ogt float %500, 0.000000e+00
  br i1 %501, label %bb46.i, label %bb53.i

bb46.i:                                           ; preds = %bb.i263
  %502 = fmul float %484, -1.000000e+00
  %503 = fmul float %483, -1.000000e+00
  %504 = fmul float %482, -1.000000e+00
  br label %bb53.i

bb53.i:                                           ; preds = %bb46.i, %bb.i263
  %N.i.0.0 = phi float [ %502, %bb46.i ], [ %484, %bb.i263 ]
  %N.i.1.0 = phi float [ %503, %bb46.i ], [ %483, %bb.i263 ]
  %N.i.2.0 = phi float [ %504, %bb46.i ], [ %482, %bb.i263 ]
  %505 = fsub float %6, %457
  %506 = fsub float %7, %458
  %507 = fsub float %8, %459
  %508 = fmul float %505, %505
  %509 = fmul float %506, %506
  %510 = fadd float %508, %509
  %511 = fmul float %507, %507
  %512 = fadd float %510, %511
  %513 = call float @llvm.trax.invsqrt(float %512) nounwind
  %514 = fdiv float 1.000000e+00, %513
  %515 = fdiv float %507, %514
  %516 = fdiv float %506, %514
  %517 = fdiv float %505, %514
  %518 = fmul float %517, %N.i.0.0
  %519 = fadd float %518, 0.000000e+00
  %520 = fmul float %516, %N.i.1.0
  %521 = fadd float %520, %519
  %522 = fmul float %515, %N.i.2.0
  %523 = fadd float %522, %521
  %524 = fcmp ogt float %523, 0.000000e+00
  br i1 %524, label %bb88.i, label %bb115.i

bb88.i:                                           ; preds = %bb53.i
  %525 = call float @llvm.trax.invsqrt(float %512) nounwind
  br label %bb.outer.i302

bb.outer.i302:                                    ; preds = %bb9.i402, %bb88.i
  %tmp12791285.off0 = phi i32 [ %tmp1280, %bb88.i ], [ %tmp12791284.off0, %bb9.i402 ]
  %node_id.0.ph.i297 = phi i32 [ 0, %bb88.i ], [ %683, %bb9.i402 ]
  %sp.0.ph.i298 = phi i32 [ -1, %bb88.i ], [ %684, %bb9.i402 ]
  %tmp404.i300 = add i32 %sp.0.ph.i298, 1
  %tmp1458 = sext i32 %tmp404.i300 to i64
  %tmp1460 = zext i32 %sp.0.ph.i298 to i64
  br label %bb.i314

bb.i314:                                          ; preds = %bb3.i330, %bb.outer.i302
  %indvar.i303 = phi i64 [ %indvar.next.i329, %bb3.i330 ], [ 0, %bb.outer.i302 ]
  %node_id.0.i304 = phi i32 [ %561, %bb3.i330 ], [ %node_id.0.ph.i297, %bb.outer.i302 ]
  %tmp1459 = add i64 %tmp1458, %indvar.i303
  %scevgep.i308 = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp1459
  %tmp1461 = add i64 %tmp1460, %indvar.i303
  %sp.0.i306 = trunc i64 %tmp1461 to i32
  %526 = shl nsw i32 %node_id.0.i304, 3
  %527 = add nsw i32 %526, %37
  %528 = call float @llvm.trax.loadf(i32 %527, i32 2) nounwind
  %529 = call float @llvm.trax.loadf(i32 %527, i32 1) nounwind
  %530 = call float @llvm.trax.loadf(i32 %527, i32 0) nounwind
  %531 = call float @llvm.trax.loadf(i32 %527, i32 5) nounwind
  %532 = call float @llvm.trax.loadf(i32 %527, i32 4) nounwind
  %533 = call float @llvm.trax.loadf(i32 %527, i32 3) nounwind
  %534 = fsub float %530, %457
  %535 = fdiv float %534, %517
  %536 = fsub float %533, %457
  %537 = fdiv float %536, %517
  %538 = fcmp ogt float %535, %537
  %tx1.i.0.i309 = select i1 %538, float %537, float %535
  %tx2.i.0.i310 = select i1 %538, float %535, float %537
  %539 = fcmp ogt float %tx1.i.0.i309, -1.000000e+10
  %tnear.i.0.i311 = select i1 %539, float %tx1.i.0.i309, float -1.000000e+10
  %540 = fcmp olt float %tx2.i.0.i310, 1.000000e+10
  %tfar.i.0.i312 = select i1 %540, float %tx2.i.0.i310, float 1.000000e+10
  %541 = fcmp ogt float %tnear.i.0.i311, %tfar.i.0.i312
  %542 = fcmp olt float %tfar.i.0.i312, 0.000000e+00
  %or.cond.i313 = or i1 %541, %542
  br i1 %or.cond.i313, label %bb7.i401, label %bb29.i.i320

bb29.i.i320:                                      ; preds = %bb.i314
  %543 = fsub float %529, %458
  %544 = fdiv float %543, %516
  %545 = fsub float %532, %458
  %546 = fdiv float %545, %516
  %547 = fcmp ogt float %544, %546
  %ty1.i.0.i315 = select i1 %547, float %546, float %544
  %ty2.i.0.i316 = select i1 %547, float %544, float %546
  %548 = fcmp ogt float %ty1.i.0.i315, %tnear.i.0.i311
  %tnear.i.1.i317 = select i1 %548, float %ty1.i.0.i315, float %tnear.i.0.i311
  %549 = fcmp olt float %ty2.i.0.i316, %tfar.i.0.i312
  %tfar.i.1.i318 = select i1 %549, float %ty2.i.0.i316, float %tfar.i.0.i312
  %550 = fcmp ogt float %tnear.i.1.i317, %tfar.i.1.i318
  %551 = fcmp olt float %tfar.i.1.i318, 0.000000e+00
  %or.cond1395.i319 = or i1 %550, %551
  br i1 %or.cond1395.i319, label %bb7.i401, label %bb62.i.i326

bb62.i.i326:                                      ; preds = %bb29.i.i320
  %552 = fsub float %528, %459
  %553 = fdiv float %552, %515
  %554 = fsub float %531, %459
  %555 = fdiv float %554, %515
  %556 = fcmp ogt float %553, %555
  %tz1.i.0.i321 = select i1 %556, float %555, float %553
  %tz2.i.0.i322 = select i1 %556, float %553, float %555
  %557 = fcmp ogt float %tz1.i.0.i321, %tnear.i.1.i317
  %tnear.i.2.i323 = select i1 %557, float %tz1.i.0.i321, float %tnear.i.1.i317
  %558 = fcmp olt float %tz2.i.0.i322, %tfar.i.1.i318
  %tfar.i.2.i324 = select i1 %558, float %tz2.i.0.i322, float %tfar.i.1.i318
  %559 = fcmp ogt float %tnear.i.2.i323, %tfar.i.2.i324
  %560 = fcmp olt float %tfar.i.2.i324, 0.000000e+00
  %or.cond1396.i325 = or i1 %559, %560
  br i1 %or.cond1396.i325, label %bb7.i401, label %bb1.i327

bb1.i327:                                         ; preds = %bb62.i.i326
  %561 = call i32 @llvm.trax.loadi(i32 %527, i32 7) nounwind
  %562 = call i32 @llvm.trax.loadi(i32 %527, i32 6) nounwind
  %563 = icmp slt i32 %562, 0
  br i1 %563, label %bb3.i330, label %bb6.preheader.i328

bb6.preheader.i328:                               ; preds = %bb1.i327
  %564 = icmp sgt i32 %562, 0
  br i1 %564, label %bb5.i341, label %bb7.i401

bb3.i330:                                         ; preds = %bb1.i327
  %565 = add nsw i32 %561, 1
  store i32 %565, i32* %scevgep.i308, align 4
  %indvar.next.i329 = add i64 %indvar.i303, 1
  br label %bb.i314

bb5.i341:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i400, %bb6.preheader.i328
  %tmp12791283.off0 = phi i32 [ %tmp12791282.off0, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i400 ], [ %tmp12791285.off0, %bb6.preheader.i328 ]
  %storemerge388.i331 = phi i32 [ %679, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i400 ], [ 0, %bb6.preheader.i328 ]
  %tmp = mul i32 %storemerge388.i331, 11
  %tmp396.i333 = add i32 %561, %tmp
  %566 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 2) nounwind
  %567 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 1) nounwind
  %568 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 0) nounwind
  %569 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 5) nounwind
  %570 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 4) nounwind
  %571 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 3) nounwind
  %572 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 8) nounwind
  %573 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 7) nounwind
  %574 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 6) nounwind
  %575 = call i32 @llvm.trax.loadi(i32 %tmp396.i333, i32 10) nounwind
  %576 = call i32 @llvm.trax.loadi(i32 %tmp396.i333, i32 9) nounwind
  %577 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %578 = mul nsw i32 %575, 25
  %579 = add nsw i32 %577, %578
  %580 = call float @llvm.trax.loadf(i32 %579, i32 6) nounwind
  %581 = call float @llvm.trax.loadf(i32 %579, i32 5) nounwind
  %582 = call float @llvm.trax.loadf(i32 %579, i32 4) nounwind
  %583 = fsub float %568, %574
  %584 = fsub float %567, %573
  %585 = fsub float %566, %572
  %586 = fsub float %571, %574
  %587 = fsub float %570, %573
  %588 = fsub float %569, %572
  %589 = fmul float %584, %588
  %590 = fmul float %587, %585
  %591 = fsub float %589, %590
  %592 = fmul float %586, %585
  %593 = fmul float %583, %588
  %594 = fsub float %592, %593
  %595 = fmul float %587, %583
  %596 = fmul float %586, %584
  %597 = fsub float %595, %596
  %598 = fmul float %591, %591
  %599 = fmul float %594, %594
  %600 = fadd float %598, %599
  %601 = fmul float %597, %597
  %602 = fadd float %600, %601
  %603 = call float @llvm.trax.invsqrt(float %602) nounwind
  %604 = fmul float %516, %588
  %605 = fmul float %587, %515
  %606 = fsub float %604, %605
  %607 = fmul float %586, %515
  %608 = fmul float %517, %588
  %609 = fsub float %607, %608
  %610 = fmul float %587, %517
  %611 = fmul float %586, %516
  %612 = fsub float %610, %611
  %613 = fmul float %606, %583
  %614 = fadd float %613, 0.000000e+00
  %615 = fmul float %609, %584
  %616 = fadd float %615, %614
  %617 = fmul float %612, %585
  %618 = fadd float %617, %616
  %619 = fdiv float 1.000000e+00, %618
  %620 = fsub float %457, %574
  %621 = fsub float %458, %573
  %622 = fsub float %459, %572
  %623 = fmul float %606, %620
  %624 = fadd float %623, 0.000000e+00
  %625 = fmul float %609, %621
  %626 = fadd float %625, %624
  %627 = fmul float %612, %622
  %628 = fadd float %627, %626
  %629 = fmul float %628, %619
  %630 = fcmp olt float %629, 0.000000e+00
  %631 = fcmp ogt float %629, 1.000000e+00
  %or.cond1397.i340 = or i1 %630, %631
  br i1 %or.cond1397.i340, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i400, label %bb73.i.i342

bb73.i.i342:                                      ; preds = %bb5.i341
  %632 = fmul float %621, %585
  %633 = fmul float %584, %622
  %634 = fsub float %632, %633
  %635 = fmul float %583, %622
  %636 = fmul float %620, %585
  %637 = fsub float %635, %636
  %638 = fmul float %584, %620
  %639 = fmul float %583, %621
  %640 = fsub float %638, %639
  %641 = fmul float %634, %517
  %642 = fadd float %641, 0.000000e+00
  %643 = fmul float %637, %516
  %644 = fadd float %643, %642
  %645 = fmul float %640, %515
  %646 = fadd float %645, %644
  %647 = fmul float %646, %619
  %648 = fcmp olt float %647, 0.000000e+00
  br i1 %648, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i400, label %bb94.i55.i343

bb94.i55.i343:                                    ; preds = %bb73.i.i342
  %649 = fadd float %647, %629
  %650 = fcmp ogt float %649, 1.000000e+00
  br i1 %650, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i400, label %bb96.i.i346

bb96.i.i346:                                      ; preds = %bb94.i55.i343
  %651 = fmul float %634, %586
  %652 = fadd float %651, 0.000000e+00
  %653 = fmul float %637, %587
  %654 = fadd float %653, %652
  %655 = fmul float %640, %588
  %656 = fadd float %655, %654
  %657 = fmul float %656, %619
  %658 = fcmp ule float %657, 0.000000e+00
  %659 = fcmp olt float %657, 0x3F50624DE0000000
  %or.cond1398.i344 = or i1 %658, %659
  %660 = fcmp oeq float %657, 1.000000e+10
  %or.cond1399.i345 = or i1 %or.cond1398.i344, %660
  br i1 %or.cond1399.i345, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i400, label %bb2.i.i.i347

bb2.i.i.i347:                                     ; preds = %bb96.i.i346
  %tmp1216 = bitcast i32 %tmp12791283.off0 to float
  %661 = fcmp ogt float %tmp1216, %657
  br i1 %661, label %bb3.i.i.i398, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i400

bb3.i.i.i398:                                     ; preds = %bb2.i.i.i347
  %tmp1210 = bitcast float %657 to i32
  %662 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 2) nounwind
  %663 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 1) nounwind
  %664 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 0) nounwind
  %665 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 5) nounwind
  %666 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 4) nounwind
  %667 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 3) nounwind
  %668 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 8) nounwind
  %669 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 7) nounwind
  %670 = call float @llvm.trax.loadf(i32 %tmp396.i333, i32 6) nounwind
  %671 = call i32 @llvm.trax.loadi(i32 %tmp396.i333, i32 10) nounwind
  %672 = call i32 @llvm.trax.loadi(i32 %tmp396.i333, i32 9) nounwind
  %673 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %674 = mul nsw i32 %671, 25
  %675 = add nsw i32 %673, %674
  %676 = call float @llvm.trax.loadf(i32 %675, i32 6) nounwind
  %677 = call float @llvm.trax.loadf(i32 %675, i32 5) nounwind
  %678 = call float @llvm.trax.loadf(i32 %675, i32 4) nounwind
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i400

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i400: ; preds = %bb3.i.i.i398, %bb2.i.i.i347, %bb96.i.i346, %bb94.i55.i343, %bb73.i.i342, %bb5.i341
  %tmp12791282.off0 = phi i32 [ %tmp1210, %bb3.i.i.i398 ], [ %tmp12791283.off0, %bb2.i.i.i347 ], [ %tmp12791283.off0, %bb96.i.i346 ], [ %tmp12791283.off0, %bb94.i55.i343 ], [ %tmp12791283.off0, %bb73.i.i342 ], [ %tmp12791283.off0, %bb5.i341 ]
  %679 = add nsw i32 %storemerge388.i331, 1
  %exitcond = icmp eq i32 %679, %562
  br i1 %exitcond, label %bb7.i401, label %bb5.i341

bb7.i401:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i400, %bb6.preheader.i328, %bb62.i.i326, %bb29.i.i320, %bb.i314
  %tmp12791284.off0 = phi i32 [ %tmp12791285.off0, %bb6.preheader.i328 ], [ %tmp12791282.off0, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i400 ], [ %tmp12791285.off0, %bb.i314 ], [ %tmp12791285.off0, %bb29.i.i320 ], [ %tmp12791285.off0, %bb62.i.i326 ]
  %680 = icmp slt i32 %sp.0.i306, 0
  br i1 %680, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit403, label %bb9.i402

bb9.i402:                                         ; preds = %bb7.i401
  %681 = sext i32 %sp.0.i306 to i64
  %682 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %681
  %683 = load i32* %682, align 4
  %684 = add nsw i32 %sp.0.i306, -1
  br label %bb.outer.i302

_ZN3BVH9intersectER9HitRecordR3Ray.exit403:       ; preds = %bb7.i401
  %685 = fdiv float 1.000000e+00, %525
  %tmp1278 = bitcast i32 %tmp12791284.off0 to float
  %686 = fcmp uge float %tmp1278, %685
  %687 = fcmp ule float %tmp1278, 0x3F847AE140000000
  %or.cond3657 = or i1 %686, %687
  br i1 %or.cond3657, label %bb92.i, label %bb115.i

bb92.i:                                           ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit403
  %688 = fmul float %tmp1244, %523
  %689 = fadd float %688, 0.000000e+00
  br label %bb115.i

bb115.i:                                          ; preds = %bb92.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit403, %bb53.i
  %690 = phi float [ %689, %bb92.i ], [ 0.000000e+00, %bb53.i ], [ 0.000000e+00, %_ZN3BVH9intersectER9HitRecordR3Ray.exit403 ]
  %tmp2577 = trunc i512 %tmp1238 to i128
  %tmp2578 = and i128 %tmp2577, 79228162495817593519834398720
  %tmp2042 = lshr exact i128 %tmp2578, 64
  %tmp2043 = trunc i128 %tmp2042 to i32
  %tmp2044 = bitcast i32 %tmp2043 to float
  %tmp41.i420 = trunc i512 %tmp1238 to i32
  %tmp42.i421 = bitcast i32 %tmp41.i420 to float
  %691 = fmul float %tmp42.i421, %690
  %tmp37.i4221340 = lshr i512 %mask5511204, 384
  %tmp38.i423 = trunc i512 %tmp37.i4221340 to i32
  %tmp39.i424 = bitcast i32 %tmp38.i423 to float
  %692 = fmul float %tmp39.i424, %690
  %693 = fmul float %690, %tmp2044
  %tmp11.i427 = bitcast float %692 to i32
  %phitmp1296 = zext i32 %tmp11.i427 to i96
  %phitmp1297 = shl nuw nsw i96 %phitmp1296, 32
  %phitmp1299 = bitcast float %693 to i32
  %phitmp1300 = zext i32 %phitmp1299 to i96
  %phitmp1301 = shl nuw i96 %phitmp1300, 64
  %extract.t1622 = trunc i512 %tmp1238 to i32
  %extract.t1628 = trunc i512 %tmp1238 to i128
  br label %invcont123

invcont123:                                       ; preds = %bb115.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit235.invcont123_crit_edge
  %.pre-phi1621 = phi float [ %.pre1620, %_ZN3BVH9intersectER9HitRecordR3Ray.exit235.invcont123_crit_edge ], [ %479, %bb115.i ]
  %.pre-phi1581 = phi float [ %.pre1580, %_ZN3BVH9intersectER9HitRecordR3Ray.exit235.invcont123_crit_edge ], [ %458, %bb115.i ]
  %.pre-phi1579 = phi float [ %.pre1578, %_ZN3BVH9intersectER9HitRecordR3Ray.exit235.invcont123_crit_edge ], [ %457, %bb115.i ]
  %tmp489.pre-phi.off0 = phi i32 [ %extract.t, %_ZN3BVH9intersectER9HitRecordR3Ray.exit235.invcont123_crit_edge ], [ %extract.t1622, %bb115.i ]
  %tmp489.pre-phi.off01626 = phi i128 [ %extract.t1627, %_ZN3BVH9intersectER9HitRecordR3Ray.exit235.invcont123_crit_edge ], [ %extract.t1628, %bb115.i ]
  %.02530.0.off0.off0 = phi float [ 0x3FE1F3B640000000, %_ZN3BVH9intersectER9HitRecordR3Ray.exit235.invcont123_crit_edge ], [ %691, %bb115.i ]
  %.12531.0.off32 = phi i96 [ 4556129611431280640, %_ZN3BVH9intersectER9HitRecordR3Ray.exit235.invcont123_crit_edge ], [ %phitmp1297, %bb115.i ]
  %.22532.0 = phi i96 [ 19648584296011284141125402624, %_ZN3BVH9intersectER9HitRecordR3Ray.exit235.invcont123_crit_edge ], [ %phitmp1301, %bb115.i ]
  %memtmp4.i238.0 = phi i128 [ %memtmp4.i238.11394, %_ZN3BVH9intersectER9HitRecordR3Ray.exit235.invcont123_crit_edge ], [ %ins2343, %bb115.i ]
  %ins1053 = or i96 %.22532.0, %.12531.0.off32
  %694 = fmul float %tmp733, %tmp1281
  %695 = fadd float %12, %694
  %696 = call float @llvm.trax.invsqrt(float %.pre-phi1621) nounwind
  br label %bb47.i

bb.i351:                                          ; preds = %bb47.i
  %scevgep14911492 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 0, i32 0
  %scevgep1490 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 0, i32 1
  %scevgep1489 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 0, i32 2
  %697 = load float* %scevgep14911492, align 4
  %698 = load float* %scevgep1490, align 4
  %699 = load float* %scevgep1489, align 4
  %tmp3372 = bitcast float %697 to i32
  %tmp3373 = zext i32 %tmp3372 to i96
  %tmp3366 = bitcast float %698 to i32
  %tmp3367 = zext i32 %tmp3366 to i96
  %tmp3368 = shl nuw nsw i96 %tmp3367, 32
  %ins3370 = or i96 %tmp3368, %tmp3373
  %tmp3360 = bitcast float %699 to i32
  %tmp3012 = zext i96 %ins3370 to i128
  %mask3013 = and i128 %memtmp31.i.0, -79228162514264337593543950336
  %tmp3006 = zext i32 %tmp3360 to i128
  %tmp3007 = shl nuw nsw i128 %tmp3006, 64
  %mask3008 = or i128 %tmp3007, %mask3013
  %ins3009 = or i128 %mask3008, %tmp3012
  %ins3009.tr = trunc i128 %ins3009 to i96
  %700 = fsub float %697, %.pre-phi1579
  %701 = fsub float %698, %.pre-phi1581
  %tmp3332 = lshr i96 %ins3009.tr, 64
  %tmp3333 = trunc i96 %tmp3332 to i32
  %tmp3334 = bitcast i32 %tmp3333 to float
  %702 = fsub float %tmp3334, %695
  %703 = fmul float %700, %700
  %704 = fmul float %701, %701
  %705 = fadd float %703, %704
  %706 = fmul float %702, %702
  %707 = fadd float %705, %706
  %708 = fcmp olt float %707, 2.890000e+02
  br i1 %708, label %bb45.i, label %bb46.i359

bb45.i:                                           ; preds = %bb.i351
  %709 = add nsw i32 %num_of_photons.i.1, 1
  %710 = load float* %scevgep1488, align 4
  %711 = fadd float %power.i.0.1, %710
  %712 = load float* %scevgep1487, align 4
  %713 = fadd float %power.i.1.1, %712
  %714 = load float* %scevgep, align 4
  %715 = fadd float %power.i.2.1, %714
  %716 = icmp sgt i32 %709, 10
  br i1 %716, label %bb49.i, label %bb46.i359

bb46.i359:                                        ; preds = %bb45.i, %bb.i351
  %power.i.0.0 = phi float [ %711, %bb45.i ], [ %power.i.0.1, %bb.i351 ]
  %power.i.1.0 = phi float [ %713, %bb45.i ], [ %power.i.1.1, %bb.i351 ]
  %power.i.2.0 = phi float [ %715, %bb45.i ], [ %power.i.2.1, %bb.i351 ]
  %num_of_photons.i.0 = phi i32 [ %709, %bb45.i ], [ %num_of_photons.i.1, %bb.i351 ]
  %indvar.next = add i64 %indvar, 1
  br label %bb47.i

bb47.i:                                           ; preds = %bb46.i359, %invcont123
  %indvar = phi i64 [ %indvar.next, %bb46.i359 ], [ 0, %invcont123 ]
  %power.i.0.1 = phi float [ %power.i.0.0, %bb46.i359 ], [ 0.000000e+00, %invcont123 ]
  %power.i.1.1 = phi float [ %power.i.1.0, %bb46.i359 ], [ 0.000000e+00, %invcont123 ]
  %power.i.2.1 = phi float [ %power.i.2.0, %bb46.i359 ], [ 0.000000e+00, %invcont123 ]
  %memtmp31.i.0 = phi i128 [ %ins3009, %bb46.i359 ], [ %memtmp31.i.31398, %invcont123 ]
  %num_of_photons.i.1 = phi i32 [ %num_of_photons.i.0, %bb46.i359 ], [ 0, %invcont123 ]
  %storemerge.i360 = trunc i64 %indvar to i32
  %scevgep = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 1, i64 2
  %scevgep1487 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 1, i64 1
  %scevgep1488 = getelementptr [250000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 1, i64 0
  %717 = icmp slt i32 %storemerge.i360, %count.2.ph.ph
  br i1 %717, label %bb.i351, label %bb48.i

bb48.i:                                           ; preds = %bb47.i
  %718 = icmp eq i32 %num_of_photons.i.1, 0
  br i1 %718, label %invcont148, label %bb49.i

bb49.i:                                           ; preds = %bb48.i, %bb45.i
  %power.i.0.2 = phi float [ %power.i.0.1, %bb48.i ], [ %711, %bb45.i ]
  %power.i.1.2 = phi float [ %power.i.1.1, %bb48.i ], [ %713, %bb45.i ]
  %power.i.2.2 = phi float [ %power.i.2.1, %bb48.i ], [ %715, %bb45.i ]
  %memtmp31.i.1 = phi i128 [ %memtmp31.i.0, %bb48.i ], [ %ins3009, %bb45.i ]
  %num_of_photons.i.2 = phi i32 [ %num_of_photons.i.1, %bb48.i ], [ %709, %bb45.i ]
  %719 = sitofp i32 %num_of_photons.i.2 to float
  %720 = fdiv float %power.i.0.2, %719
  %721 = fdiv float %power.i.1.2, %719
  %722 = fdiv float %power.i.2.2, %719
  %tmp3255 = and i128 %tmp489.pre-phi.off01626, 79228162495817593519834398720
  %tmp2972 = lshr exact i128 %tmp3255, 64
  %tmp2973 = trunc i128 %tmp2972 to i32
  %tmp2974 = bitcast i32 %tmp2973 to float
  %tmp42.i54 = bitcast i32 %tmp489.pre-phi.off0 to float
  %723 = fmul float %tmp42.i54, %720
  %tmp37.i551312 = lshr i512 %mask5511204, 384
  %tmp38.i56 = trunc i512 %tmp37.i551312 to i32
  %tmp39.i57 = bitcast i32 %tmp38.i56 to float
  %724 = fmul float %tmp39.i57, %721
  %725 = fmul float %722, %tmp2974
  br label %invcont148

invcont148:                                       ; preds = %bb49.i, %bb48.i
  %.23220.0 = phi float [ %725, %bb49.i ], [ 0.000000e+00, %bb48.i ]
  %.13219.0 = phi float [ %724, %bb49.i ], [ 0.000000e+00, %bb48.i ]
  %.03218.0 = phi float [ %723, %bb49.i ], [ 0.000000e+00, %bb48.i ]
  %memtmp31.i.2 = phi i128 [ %memtmp31.i.1, %bb49.i ], [ %memtmp31.i.0, %bb48.i ]
  %tmp1033 = lshr exact i96 %.12531.0.off32, 32
  %tmp1034 = trunc i96 %tmp1033 to i32
  %tmp1035 = bitcast i32 %tmp1034 to float
  %tmp1029 = lshr i96 %ins1053, 64
  %tmp1030 = trunc i96 %tmp1029 to i32
  %tmp1031 = bitcast i32 %tmp1030 to float
  %726 = fadd float %.03218.0, %.02530.0.off0.off0
  %727 = fadd float %.13219.0, %tmp1035
  %728 = fadd float %tmp1031, %.23220.0
  %729 = fcmp olt float %726, 0.000000e+00
  br i1 %729, label %bb5.i, label %bb1.i

bb1.i:                                            ; preds = %invcont148
  %730 = fcmp ogt float %726, 1.000000e+00
  br i1 %730, label %bb5.i, label %bb4.i

bb4.i:                                            ; preds = %bb1.i
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb1.i, %invcont148
  %r.i.0 = phi float [ %726, %bb4.i ], [ 0.000000e+00, %invcont148 ], [ 1.000000e+00, %bb1.i ]
  %731 = fcmp olt float %728, 0.000000e+00
  br i1 %731, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i
  %732 = fcmp ogt float %728, 1.000000e+00
  br i1 %732, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i
  %b.i.0 = phi float [ %728, %bb11.i ], [ 0.000000e+00, %bb5.i ], [ 1.000000e+00, %bb8.i ]
  %733 = fcmp olt float %727, 0.000000e+00
  br i1 %733, label %invcont160, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %734 = fcmp ogt float %727, 1.000000e+00
  br i1 %734, label %invcont160, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %invcont160

invcont160:                                       ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.i.0 = phi float [ %727, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %735 = mul nsw i32 %259, %0
  %736 = add nsw i32 %735, %260
  %737 = mul nsw i32 %736, 3
  %738 = add nsw i32 %737, %2
  call void @llvm.trax.storef(float %r.i.0, i32 %738, i32 0) nounwind
  call void @llvm.trax.storef(float %g.i.0, i32 %738, i32 1) nounwind
  call void @llvm.trax.storef(float %b.i.0, i32 %738, i32 2) nounwind
  %739 = call i32 @llvm.trax.atominc(i32 0)
  %740 = icmp sgt i32 %253, %739
  br i1 %740, label %invcont118, label %return

return:                                           ; preds = %invcont160, %invcont109
  ret i32 0
}

declare void @llvm.trax.printf(float) nounwind

declare i32 @llvm.trax.atominc(i32) nounwind

declare float @llvm.trax.invsqrt(float) nounwind
