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
  %volume_photons = alloca [20000 x %struct.Photon], align 8
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
  br label %bb.i58

bb.i58:                                           ; preds = %bb.i58, %invcont8
  %indvar1688 = phi i64 [ 0, %invcont8 ], [ %indvar.next1689, %bb.i58 ]
  %scevgep1691 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1688, i32 2
  %scevgep1692 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1688, i32 1, i64 2
  %scevgep1693 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1688, i32 1, i64 1
  %scevgep1694 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1688, i32 1, i64 0
  %scevgep1695 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1688, i32 0, i32 2
  %scevgep1696 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1688, i32 0, i32 1
  %scevgep16971698 = getelementptr %struct.PhotonMap* %map, i64 0, i32 0, i64 %indvar1688, i32 0, i32 0
  store float 0.000000e+00, float* %scevgep16971698, align 8
  store float 0.000000e+00, float* %scevgep1696, align 4
  store float 0.000000e+00, float* %scevgep1695, align 8
  store float 1.000000e+00, float* %scevgep1694, align 4
  store float 1.000000e+00, float* %scevgep1693, align 4
  store float 1.000000e+00, float* %scevgep1692, align 4
  store i8 0, i8* %scevgep1691, align 8
  %indvar.next1689 = add i64 %indvar1688, 1
  %exitcond1690 = icmp eq i64 %indvar.next1689, 5000
  br i1 %exitcond1690, label %invcont11, label %bb.i58

invcont11:                                        ; preds = %bb.i58
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
  %38 = alloca [220000 x %struct.Photon], align 1
  br label %bb

bb:                                               ; preds = %bb, %invcont11
  %indvar1677 = phi i64 [ 0, %invcont11 ], [ %indvar.next1678, %bb ]
  %scevgep1680 = getelementptr [220000 x %struct.Photon]* %38, i64 0, i64 %indvar1677, i32 2
  %scevgep1681 = getelementptr [220000 x %struct.Photon]* %38, i64 0, i64 %indvar1677, i32 1, i64 2
  %scevgep1682 = getelementptr [220000 x %struct.Photon]* %38, i64 0, i64 %indvar1677, i32 1, i64 1
  %scevgep1683 = getelementptr [220000 x %struct.Photon]* %38, i64 0, i64 %indvar1677, i32 1, i64 0
  %scevgep1684 = getelementptr [220000 x %struct.Photon]* %38, i64 0, i64 %indvar1677, i32 0, i32 2
  %scevgep1685 = getelementptr [220000 x %struct.Photon]* %38, i64 0, i64 %indvar1677, i32 0, i32 1
  %scevgep16861687 = getelementptr [220000 x %struct.Photon]* %38, i64 0, i64 %indvar1677, i32 0, i32 0
  store float 0.000000e+00, float* %scevgep16861687, align 4
  store float 0.000000e+00, float* %scevgep1685, align 4
  store float 0.000000e+00, float* %scevgep1684, align 4
  store float 1.000000e+00, float* %scevgep1683, align 4
  store float 1.000000e+00, float* %scevgep1682, align 4
  store float 1.000000e+00, float* %scevgep1681, align 4
  store i8 0, i8* %scevgep1680, align 4
  %indvar.next1678 = add i64 %indvar1677, 1
  %exitcond1679 = icmp eq i64 %indvar.next1678, 220000
  br i1 %exitcond1679, label %bb20, label %bb

bb20:                                             ; preds = %bb20, %bb
  %indvar1666 = phi i64 [ %indvar.next1667, %bb20 ], [ 0, %bb ]
  %scevgep1669 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %indvar1666, i32 2
  %scevgep1670 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %indvar1666, i32 1, i64 2
  %scevgep1671 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %indvar1666, i32 1, i64 1
  %scevgep1672 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %indvar1666, i32 1, i64 0
  %scevgep1673 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %indvar1666, i32 0, i32 2
  %scevgep1674 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %indvar1666, i32 0, i32 1
  %scevgep16751676 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %indvar1666, i32 0, i32 0
  store float 0.000000e+00, float* %scevgep16751676, align 8
  store float 0.000000e+00, float* %scevgep1674, align 4
  store float 0.000000e+00, float* %scevgep1673, align 8
  store float 1.000000e+00, float* %scevgep1672, align 4
  store float 1.000000e+00, float* %scevgep1671, align 4
  store float 1.000000e+00, float* %scevgep1670, align 4
  store i8 0, i8* %scevgep1669, align 8
  %indvar.next1667 = add i64 %indvar1666, 1
  %exitcond1668 = icmp eq i64 %indvar.next1667, 20000
  br i1 %exitcond1668, label %invcont24, label %bb20

invcont24:                                        ; preds = %bb20
  %39 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %40 = call float @llvm.trax.loadf(i32 %39, i32 0) nounwind
  %41 = call float @llvm.trax.loadf(i32 %39, i32 1) nounwind
  %42 = call float @llvm.trax.loadf(i32 %39, i32 2) nounwind
  %tmp1104 = bitcast float %40 to i32
  %tmp1098 = bitcast float %41 to i32
  %tmp1092 = bitcast float %42 to i32
  br label %bb113.preheader

bb.i86:                                           ; preds = %bb113, %bb.i86
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
  br i1 %57, label %bb.i86, label %invcont54

invcont54:                                        ; preds = %bb.i86
  %58 = call float @llvm.trax.invsqrt(float %56) nounwind
  %59 = fdiv float 1.000000e+00, %58
  %60 = fdiv float %51, %59
  %61 = fdiv float %48, %59
  %62 = fdiv float %45, %59
  %tmp18.i = bitcast float %62 to i32
  %tmp12.i = bitcast float %61 to i32
  %tmp2346 = bitcast float %60 to i32
  %tmp2376 = zext i32 %tmp18.i to i96
  %tmp2370 = zext i32 %tmp12.i to i96
  %tmp2371 = shl nuw nsw i96 %tmp2370, 32
  %ins2373 = or i96 %tmp2376, %tmp2371
  %tmp1011 = zext i96 %ins2373 to i128
  %mask1012 = and i128 %memtmp40.0, -79228162514264337593543950336
  %tmp1005 = zext i32 %tmp2346 to i128
  %tmp1006 = shl nuw nsw i128 %tmp1005, 64
  %mask1007 = or i128 %tmp1006, %mask1012
  %ins1008 = or i128 %mask1007, %tmp1011
  %ins1008.tr = trunc i128 %ins1008 to i96
  %mask713 = and i512 %mask7501136, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins714 = or i512 %mask713, 1343554297
  %tmp2380 = lshr i96 %ins1008.tr, 64
  %tmp591 = trunc i96 %tmp2380 to i32
  %tmp592 = bitcast i32 %tmp591 to float
  br label %bb.outer.i

bb.outer.i:                                       ; preds = %bb9.i, %invcont54
  %mask7501138 = phi i512 [ %ins714, %invcont54 ], [ %mask7501137, %bb9.i ]
  %node_id.0.ph.i = phi i32 [ 0, %invcont54 ], [ %220, %bb9.i ]
  %sp.0.ph.i = phi i32 [ -1, %invcont54 ], [ %221, %bb9.i ]
  %tmp404.i = add i32 %sp.0.ph.i, 1
  %tmp1563 = sext i32 %tmp404.i to i64
  %tmp1566 = zext i32 %sp.0.ph.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb3.i, %bb.outer.i
  %indvar.i = phi i64 [ %indvar.next.i, %bb3.i ], [ 0, %bb.outer.i ]
  %node_id.0.i = phi i32 [ %98, %bb3.i ], [ %node_id.0.ph.i, %bb.outer.i ]
  %tmp1564 = add i64 %tmp1563, %indvar.i
  %scevgep.i = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp1564
  %tmp1567 = add i64 %tmp1566, %indvar.i
  %sp.0.i = trunc i64 %tmp1567 to i32
  %63 = shl nsw i32 %node_id.0.i, 3
  %64 = add nsw i32 %63, %37
  %65 = call float @llvm.trax.loadf(i32 %64, i32 2) nounwind
  %66 = call float @llvm.trax.loadf(i32 %64, i32 1) nounwind
  %67 = call float @llvm.trax.loadf(i32 %64, i32 0) nounwind
  %68 = call float @llvm.trax.loadf(i32 %64, i32 5) nounwind
  %69 = call float @llvm.trax.loadf(i32 %64, i32 4) nounwind
  %70 = call float @llvm.trax.loadf(i32 %64, i32 3) nounwind
  %71 = fsub float %67, %tmp631
  %72 = fdiv float %71, %62
  %73 = fsub float %70, %tmp631
  %74 = fdiv float %73, %62
  %75 = fcmp ogt float %72, %74
  %tx1.i.0.i = select i1 %75, float %74, float %72
  %tx2.i.0.i = select i1 %75, float %72, float %74
  %76 = fcmp ogt float %tx1.i.0.i, -1.000000e+10
  %tnear.i.0.i = select i1 %76, float %tx1.i.0.i, float -1.000000e+10
  %77 = fcmp olt float %tx2.i.0.i, 1.000000e+10
  %tfar.i.0.i = select i1 %77, float %tx2.i.0.i, float 1.000000e+10
  %78 = fcmp ogt float %tnear.i.0.i, %tfar.i.0.i
  %79 = fcmp olt float %tfar.i.0.i, 0.000000e+00
  %or.cond.i = or i1 %78, %79
  br i1 %or.cond.i, label %bb7.i, label %bb29.i.i

bb29.i.i:                                         ; preds = %bb.i
  %80 = fsub float %66, %tmp625
  %81 = fdiv float %80, %61
  %82 = fsub float %69, %tmp625
  %83 = fdiv float %82, %61
  %84 = fcmp ogt float %81, %83
  %ty1.i.0.i = select i1 %84, float %83, float %81
  %ty2.i.0.i = select i1 %84, float %81, float %83
  %85 = fcmp ogt float %ty1.i.0.i, %tnear.i.0.i
  %tnear.i.1.i = select i1 %85, float %ty1.i.0.i, float %tnear.i.0.i
  %86 = fcmp olt float %ty2.i.0.i, %tfar.i.0.i
  %tfar.i.1.i = select i1 %86, float %ty2.i.0.i, float %tfar.i.0.i
  %87 = fcmp ogt float %tnear.i.1.i, %tfar.i.1.i
  %88 = fcmp olt float %tfar.i.1.i, 0.000000e+00
  %or.cond1395.i = or i1 %87, %88
  br i1 %or.cond1395.i, label %bb7.i, label %bb62.i.i

bb62.i.i:                                         ; preds = %bb29.i.i
  %89 = fsub float %65, %tmp617
  %90 = fdiv float %89, %tmp592
  %91 = fsub float %68, %tmp617
  %92 = fdiv float %91, %tmp592
  %93 = fcmp ogt float %90, %92
  %tz1.i.0.i = select i1 %93, float %92, float %90
  %tz2.i.0.i = select i1 %93, float %90, float %92
  %94 = fcmp ogt float %tz1.i.0.i, %tnear.i.1.i
  %tnear.i.2.i = select i1 %94, float %tz1.i.0.i, float %tnear.i.1.i
  %95 = fcmp olt float %tz2.i.0.i, %tfar.i.1.i
  %tfar.i.2.i = select i1 %95, float %tz2.i.0.i, float %tfar.i.1.i
  %96 = fcmp ogt float %tnear.i.2.i, %tfar.i.2.i
  %97 = fcmp olt float %tfar.i.2.i, 0.000000e+00
  %or.cond1396.i = or i1 %96, %97
  br i1 %or.cond1396.i, label %bb7.i, label %bb1.i29

bb1.i29:                                          ; preds = %bb62.i.i
  %98 = call i32 @llvm.trax.loadi(i32 %64, i32 7) nounwind
  %99 = call i32 @llvm.trax.loadi(i32 %64, i32 6) nounwind
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %bb3.i, label %bb6.preheader.i

bb6.preheader.i:                                  ; preds = %bb1.i29
  %101 = icmp sgt i32 %99, 0
  br i1 %101, label %bb5.i, label %bb7.i

bb3.i:                                            ; preds = %bb1.i29
  %102 = add nsw i32 %98, 1
  store i32 %102, i32* %scevgep.i, align 4
  %indvar.next.i = add i64 %indvar.i, 1
  br label %bb.i

bb5.i:                                            ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i
  %mask7501134 = phi i512 [ %mask7501133, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %mask7501138, %bb6.preheader.i ]
  %storemerge388.i = phi i32 [ %216, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ 0, %bb6.preheader.i ]
  %tmp1557 = mul i32 %storemerge388.i, 11
  %tmp396.i = add i32 %98, %tmp1557
  %103 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %104 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %105 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %106 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %107 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %108 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %109 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %110 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %111 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %112 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %113 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %114 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %115 = mul nsw i32 %112, 25
  %116 = add nsw i32 %114, %115
  %117 = call float @llvm.trax.loadf(i32 %116, i32 6) nounwind
  %118 = call float @llvm.trax.loadf(i32 %116, i32 5) nounwind
  %119 = call float @llvm.trax.loadf(i32 %116, i32 4) nounwind
  %120 = fsub float %105, %111
  %121 = fsub float %104, %110
  %122 = fsub float %103, %109
  %123 = fsub float %108, %111
  %124 = fsub float %107, %110
  %125 = fsub float %106, %109
  %126 = fmul float %121, %125
  %127 = fmul float %124, %122
  %128 = fsub float %126, %127
  %129 = fmul float %123, %122
  %130 = fmul float %120, %125
  %131 = fsub float %129, %130
  %132 = fmul float %124, %120
  %133 = fmul float %123, %121
  %134 = fsub float %132, %133
  %135 = fmul float %128, %128
  %136 = fmul float %131, %131
  %137 = fadd float %135, %136
  %138 = fmul float %134, %134
  %139 = fadd float %137, %138
  %140 = call float @llvm.trax.invsqrt(float %139) nounwind
  %141 = fmul float %61, %125
  %142 = fmul float %124, %tmp592
  %143 = fsub float %141, %142
  %144 = fmul float %123, %tmp592
  %145 = fmul float %62, %125
  %146 = fsub float %144, %145
  %147 = fmul float %124, %62
  %148 = fmul float %123, %61
  %149 = fsub float %147, %148
  %150 = fmul float %143, %120
  %151 = fadd float %150, 0.000000e+00
  %152 = fmul float %146, %121
  %153 = fadd float %152, %151
  %154 = fmul float %149, %122
  %155 = fadd float %154, %153
  %156 = fdiv float 1.000000e+00, %155
  %157 = fsub float %tmp631, %111
  %158 = fsub float %tmp625, %110
  %159 = fsub float %tmp617, %109
  %160 = fmul float %143, %157
  %161 = fadd float %160, 0.000000e+00
  %162 = fmul float %146, %158
  %163 = fadd float %162, %161
  %164 = fmul float %149, %159
  %165 = fadd float %164, %163
  %166 = fmul float %165, %156
  %167 = fcmp olt float %166, 0.000000e+00
  %168 = fcmp ogt float %166, 1.000000e+00
  %or.cond1397.i = or i1 %167, %168
  br i1 %or.cond1397.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb73.i.i

bb73.i.i:                                         ; preds = %bb5.i
  %169 = fmul float %158, %122
  %170 = fmul float %121, %159
  %171 = fsub float %169, %170
  %172 = fmul float %120, %159
  %173 = fmul float %157, %122
  %174 = fsub float %172, %173
  %175 = fmul float %121, %157
  %176 = fmul float %120, %158
  %177 = fsub float %175, %176
  %178 = fmul float %171, %62
  %179 = fadd float %178, 0.000000e+00
  %180 = fmul float %174, %61
  %181 = fadd float %180, %179
  %182 = fmul float %177, %tmp592
  %183 = fadd float %182, %181
  %184 = fmul float %183, %156
  %185 = fcmp olt float %184, 0.000000e+00
  br i1 %185, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb94.i55.i

bb94.i55.i:                                       ; preds = %bb73.i.i
  %186 = fadd float %184, %166
  %187 = fcmp ogt float %186, 1.000000e+00
  br i1 %187, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb96.i.i

bb96.i.i:                                         ; preds = %bb94.i55.i
  %188 = fmul float %171, %123
  %189 = fadd float %188, 0.000000e+00
  %190 = fmul float %174, %124
  %191 = fadd float %190, %189
  %192 = fmul float %177, %125
  %193 = fadd float %192, %191
  %194 = fmul float %193, %156
  %195 = fcmp ule float %194, 0.000000e+00
  %196 = fcmp olt float %194, 0x3F50624DE0000000
  %or.cond1398.i = or i1 %195, %196
  %197 = fcmp oeq float %194, 1.000000e+10
  %or.cond1399.i = or i1 %or.cond1398.i, %197
  br i1 %or.cond1399.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb96.i.i
  %tmp707 = trunc i512 %mask7501134 to i32
  %tmp708 = bitcast i32 %tmp707 to float
  %198 = fcmp ogt float %tmp708, %194
  br i1 %198, label %bb3.i.i.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

bb3.i.i.i:                                        ; preds = %bb2.i.i.i
  %tmp702 = bitcast float %194 to i32
  %tmp703 = zext i32 %tmp702 to i512
  %199 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %200 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %201 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %202 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %203 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %204 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %205 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %206 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %207 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %208 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %209 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %tmp369.i = bitcast float %201 to i32
  %tmp370.i = zext i32 %tmp369.i to i480
  %tmp301.i = bitcast float %200 to i32
  %tmp302.i = zext i32 %tmp301.i to i480
  %tmp303.i = shl nuw nsw i480 %tmp302.i, 32
  %tmp295.i = bitcast float %199 to i32
  %tmp296.i = zext i32 %tmp295.i to i480
  %tmp297.i = shl nuw nsw i480 %tmp296.i, 64
  %tmp363.i = bitcast float %204 to i32
  %tmp364.i = zext i32 %tmp363.i to i480
  %tmp365.i = shl nuw nsw i480 %tmp364.i, 96
  %tmp357.i = bitcast float %203 to i32
  %tmp358.i = zext i32 %tmp357.i to i480
  %tmp359.i = shl nuw nsw i480 %tmp358.i, 128
  %tmp351.i = bitcast float %202 to i32
  %tmp352.i = zext i32 %tmp351.i to i480
  %tmp353.i = shl nuw nsw i480 %tmp352.i, 160
  %tmp345.i = bitcast float %207 to i32
  %tmp346.i = zext i32 %tmp345.i to i480
  %tmp347.i = shl nuw nsw i480 %tmp346.i, 192
  %tmp339.i = bitcast float %206 to i32
  %tmp340.i = zext i32 %tmp339.i to i480
  %tmp341.i = shl nuw nsw i480 %tmp340.i, 224
  %tmp333.i = bitcast float %205 to i32
  %tmp334.i = zext i32 %tmp333.i to i480
  %tmp335.i = shl nuw nsw i480 %tmp334.i, 256
  %tmp290.i = zext i32 %209 to i480
  %tmp291.i = shl nuw nsw i480 %tmp290.i, 288
  %210 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %211 = mul nsw i32 %208, 25
  %212 = add nsw i32 %210, %211
  %213 = call float @llvm.trax.loadf(i32 %212, i32 6) nounwind
  %214 = call float @llvm.trax.loadf(i32 %212, i32 5) nounwind
  %215 = call float @llvm.trax.loadf(i32 %212, i32 4) nounwind
  %tmp325.i = bitcast float %215 to i32
  %tmp326.i = zext i32 %tmp325.i to i480
  %tmp327.i = shl nuw nsw i480 %tmp326.i, 320
  %tmp317.i = bitcast float %214 to i32
  %tmp318.i = zext i32 %tmp317.i to i480
  %tmp319.i = shl nuw nsw i480 %tmp318.i, 352
  %tmp309.i = bitcast float %213 to i32
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
  %tmp697 = zext i480 %ins285.i to i512
  %tmp698 = shl nuw i512 %tmp697, 32
  %ins700 = or i512 %tmp698, %tmp703
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i: ; preds = %bb3.i.i.i, %bb2.i.i.i, %bb96.i.i, %bb94.i55.i, %bb73.i.i, %bb5.i
  %mask7501133 = phi i512 [ %ins700, %bb3.i.i.i ], [ %mask7501134, %bb2.i.i.i ], [ %mask7501134, %bb96.i.i ], [ %mask7501134, %bb94.i55.i ], [ %mask7501134, %bb73.i.i ], [ %mask7501134, %bb5.i ]
  %216 = add nsw i32 %storemerge388.i, 1
  %exitcond1556 = icmp eq i32 %216, %99
  br i1 %exitcond1556, label %bb7.i, label %bb5.i

bb7.i:                                            ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i, %bb62.i.i, %bb29.i.i, %bb.i
  %mask7501137 = phi i512 [ %mask7501138, %bb6.preheader.i ], [ %mask7501133, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %mask7501138, %bb.i ], [ %mask7501138, %bb29.i.i ], [ %mask7501138, %bb62.i.i ]
  %217 = icmp slt i32 %sp.0.i, 0
  br i1 %217, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit, label %bb9.i

bb9.i:                                            ; preds = %bb7.i
  %218 = sext i32 %sp.0.i to i64
  %219 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %218
  %220 = load i32* %219, align 4
  %221 = add nsw i32 %sp.0.i, -1
  br label %bb.outer.i

_ZN3BVH9intersectER9HitRecordR3Ray.exit:          ; preds = %bb7.i
  %tmp710 = trunc i512 %mask7501137 to i32
  %tmp711 = bitcast i32 %tmp710 to float
  %222 = fcmp olt float %tmp711, 1.000000e+10
  br i1 %222, label %invcont83, label %invcont54.bb107_crit_edge

invcont54.bb107_crit_edge:                        ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %.pre = icmp sgt i32 %bounces.0, 0
  %indvar.next1594 = add i32 %indvar1593, 1
  br i1 %.pre, label %bb108, label %bb113

invcont83:                                        ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %tmp728 = lshr i512 %mask7501137, 352
  %tmp729 = trunc i512 %tmp728 to i32
  %tmp730 = bitcast i32 %tmp729 to float
  %tmp722 = lshr i512 %mask7501137, 384
  %tmp723 = trunc i512 %tmp722 to i32
  %tmp724 = bitcast i32 %tmp723 to float
  %tmp2436 = trunc i512 %tmp728 to i128
  %tmp2437 = and i128 %tmp2436, 79228162495817593519834398720
  %tmp927 = lshr exact i128 %tmp2437, 64
  %tmp928 = trunc i128 %tmp927 to i32
  %tmp929 = bitcast i32 %tmp928 to float
  %223 = fadd float %tmp730, %tmp724
  %224 = fadd float %223, %tmp929
  %225 = fcmp ogt float %224, 3.000000e+00
  br i1 %225, label %bb84, label %invcont97

bb84:                                             ; preds = %invcont83
  %226 = fmul float %tmp730, 0x3F50624DE0000000
  %227 = fmul float %tmp724, 0x3F50624DE0000000
  %228 = fmul float %tmp929, 0x3F50624DE0000000
  br label %invcont97

invcont97:                                        ; preds = %bb84, %invcont83
  %surface_color.0.0 = phi float [ %226, %bb84 ], [ %tmp730, %invcont83 ]
  %surface_color.1.0 = phi float [ %227, %bb84 ], [ %tmp724, %invcont83 ]
  %surface_color.2.0 = phi float [ %228, %bb84 ], [ %tmp929, %invcont83 ]
  %229 = fmul float %62, %tmp711
  %230 = fmul float %61, %tmp711
  %231 = fmul float %tmp592, %tmp711
  %232 = fadd float %229, %tmp631
  %233 = fadd float %230, %tmp625
  %234 = fadd float %tmp617, %231
  %tmp17.i.i = bitcast float %232 to i32
  %tmp11.i.i = bitcast float %233 to i32
  %tmp916 = bitcast float %234 to i32
  %235 = icmp sgt i32 %bounces.0, 0
  br i1 %235, label %bb107.thread, label %bb113.outer

bb107.thread:                                     ; preds = %invcont97
  %236 = sext i32 %count.2.ph.ph1451 to i64
  %237 = getelementptr inbounds [220000 x %struct.Photon]* %38, i64 0, i64 %236, i32 0, i32 0
  store float %232, float* %237, align 4
  %238 = getelementptr inbounds [220000 x %struct.Photon]* %38, i64 0, i64 %236, i32 0, i32 1
  store float %233, float* %238, align 4
  %239 = getelementptr inbounds [220000 x %struct.Photon]* %38, i64 0, i64 %236, i32 0, i32 2
  store float %234, float* %239, align 4
  %240 = getelementptr inbounds [220000 x %struct.Photon]* %38, i64 0, i64 %236, i32 1, i64 0
  store float %272, float* %240, align 4
  %241 = getelementptr inbounds [220000 x %struct.Photon]* %38, i64 0, i64 %236, i32 1, i64 1
  store float %273, float* %241, align 4
  %242 = getelementptr inbounds [220000 x %struct.Photon]* %38, i64 0, i64 %236, i32 1, i64 2
  store float %274, float* %242, align 4
  %243 = getelementptr inbounds [220000 x %struct.Photon]* %38, i64 0, i64 %236, i32 2
  store i8 0, i8* %243, align 4
  %244 = add nsw i32 %count.2.ph.ph1451, 1
  br label %bb108

bb108:                                            ; preds = %bb107.thread, %invcont54.bb107_crit_edge
  %count.15792 = phi i32 [ %244, %bb107.thread ], [ %count.2.ph.ph1451, %invcont54.bb107_crit_edge ]
  %ray_origin.0.off645784 = phi i32 [ %tmp916, %bb107.thread ], [ %ray_origin.1.off64.ph, %invcont54.bb107_crit_edge ]
  %ray_origin.0.off325782 = phi i32 [ %tmp11.i.i, %bb107.thread ], [ %ray_origin.1.off32.ph, %invcont54.bb107_crit_edge ]
  %ray_origin.0.off05780 = phi i32 [ %tmp17.i.i, %bb107.thread ], [ %ray_origin.1.off0.ph, %invcont54.bb107_crit_edge ]
  %photon.0.2.05768 = phi float [ %234, %bb107.thread ], [ 0.000000e+00, %invcont54.bb107_crit_edge ]
  %photon.0.1.05767 = phi float [ %233, %bb107.thread ], [ 0.000000e+00, %invcont54.bb107_crit_edge ]
  %photon.0.0.05766 = phi float [ %232, %bb107.thread ], [ 0.000000e+00, %invcont54.bb107_crit_edge ]
  %surface_color.2.15765 = phi float [ %surface_color.2.0, %bb107.thread ], [ %surface_color.2.2.ph, %invcont54.bb107_crit_edge ]
  %surface_color.1.15763 = phi float [ %surface_color.1.0, %bb107.thread ], [ %surface_color.1.2.ph, %invcont54.bb107_crit_edge ]
  %surface_color.0.15761 = phi float [ %surface_color.0.0, %bb107.thread ], [ %surface_color.0.2.ph, %invcont54.bb107_crit_edge ]
  %245 = fsub float 2.650000e+02, %tmp631
  %246 = fdiv float %245, %62
  %247 = fsub float 0x4073A00420000000, %tmp631
  %248 = fdiv float %247, %62
  %249 = fcmp ogt float %246, %248
  %tx1.i267.0 = select i1 %249, float %248, float %246
  %tx2.i268.0 = select i1 %249, float %246, float %248
  %250 = fcmp ogt float %tx1.i267.0, -1.000000e+10
  %tnear.i273.0 = select i1 %250, float %tx1.i267.0, float -1.000000e+10
  %251 = fcmp olt float %tx2.i268.0, 1.000000e+10
  %tfar.i274.0 = select i1 %251, float %tx2.i268.0, float 1.000000e+10
  %252 = fcmp ogt float %tnear.i273.0, %tfar.i274.0
  %253 = fcmp olt float %tfar.i274.0, 0.000000e+00
  %or.cond = or i1 %252, %253
  br i1 %or.cond, label %bb113.outer.outer1439, label %bb29.i387

bb29.i387:                                        ; preds = %bb108
  %tmp3458 = zext i96 %tmp2380 to i128
  %tmp3459 = shl nuw nsw i128 %tmp3458, 64
  %254 = fsub float 2.960000e+02, %tmp625
  %255 = fdiv float %254, %61
  %256 = fsub float 0x407C800420000000, %tmp625
  %257 = fdiv float %256, %61
  %258 = fcmp ogt float %255, %257
  %ty1.i269.0 = select i1 %258, float %257, float %255
  %ty2.i270.0 = select i1 %258, float %255, float %257
  %259 = fcmp ogt float %ty1.i269.0, %tnear.i273.0
  %tnear.i273.1 = select i1 %259, float %ty1.i269.0, float %tnear.i273.0
  %260 = fcmp olt float %ty2.i270.0, %tfar.i274.0
  %tfar.i274.1 = select i1 %260, float %ty2.i270.0, float %tfar.i274.0
  %261 = fcmp ogt float %tnear.i273.1, %tfar.i274.1
  %262 = fcmp olt float %tfar.i274.1, 0.000000e+00
  %or.cond5819 = or i1 %261, %262
  br i1 %or.cond5819, label %bb113.outer.outer1439, label %bb62.i442

bb62.i442:                                        ; preds = %bb29.i387
  %263 = fsub float 0.000000e+00, %tmp617
  %mask3289 = and i128 %memtmp69.i284.2.ph.ph, -79228162514264337593543950336
  %mask3284 = or i128 %tmp1011, %mask3289
  %ins3285 = or i128 %mask3284, %tmp3459
  %tmp3270 = lshr i128 %ins3285, 64
  %tmp3271 = trunc i128 %tmp3270 to i32
  %tmp3272 = bitcast i32 %tmp3271 to float
  %264 = fdiv float %263, %tmp3272
  %265 = fsub float 0x4074A00420000000, %tmp617
  %mask3245 = and i128 %memtmp81.i286.2.ph.ph, -79228162514264337593543950336
  %mask3240 = or i128 %tmp1011, %mask3245
  %ins3241 = or i128 %mask3240, %tmp3459
  %tmp3226 = lshr i128 %ins3241, 64
  %tmp3227 = trunc i128 %tmp3226 to i32
  %tmp3228 = bitcast i32 %tmp3227 to float
  %266 = fdiv float %265, %tmp3228
  %267 = fcmp ogt float %264, %266
  %tz1.i271.0 = select i1 %267, float %266, float %264
  %tz2.i272.0 = select i1 %267, float %264, float %266
  %268 = fcmp ogt float %tz1.i271.0, %tnear.i273.1
  %tnear.i273.2 = select i1 %268, float %tz1.i271.0, float %tnear.i273.1
  %269 = fcmp olt float %tz2.i272.0, %tfar.i274.1
  %tfar.i274.2 = select i1 %269, float %tz2.i272.0, float %tfar.i274.1
  %270 = fcmp ogt float %tnear.i273.2, %tfar.i274.2
  %271 = fcmp olt float %tfar.i274.2, 0.000000e+00
  %or.cond5820 = or i1 %270, %271
  br i1 %or.cond5820, label %bb113.outer.outer, label %bb111

bb111:                                            ; preds = %bb62.i442
  store float %photon.0.0.05766, float* %scevgep16631664, align 8
  store float %photon.0.1.05767, float* %scevgep1662, align 4
  store float %photon.0.2.05768, float* %scevgep1661, align 8
  store float %272, float* %scevgep1660, align 4
  store float %273, float* %scevgep1659, align 4
  store float %274, float* %scevgep1658, align 4
  store i8 0, i8* %scevgep1657, align 8
  %indvar.next1650 = add i64 %indvar1649, 1
  br label %bb113.outer.outer.outer

bb113.outer.outer.outer:                          ; preds = %bb113.preheader, %bb111
  %indvar1649 = phi i64 [ 0, %bb113.preheader ], [ %indvar.next1650, %bb111 ]
  %mask7501136.ph.ph.ph = phi i512 [ %mask75011351482, %bb113.preheader ], [ %mask7501137, %bb111 ]
  %surface_color.0.2.ph.ph.ph = phi float [ 0.000000e+00, %bb113.preheader ], [ %surface_color.0.15761, %bb111 ]
  %surface_color.1.2.ph.ph.ph = phi float [ 0.000000e+00, %bb113.preheader ], [ %surface_color.1.15763, %bb111 ]
  %surface_color.2.2.ph.ph.ph = phi float [ 0.000000e+00, %bb113.preheader ], [ %surface_color.2.15765, %bb111 ]
  %memtmp40.0.ph.ph.ph = phi i128 [ %memtmp40.11484, %bb113.preheader ], [ %ins1008, %bb111 ]
  %ray_origin.1.off0.ph.ph.ph = phi i32 [ %ray_origin.2.off01485, %bb113.preheader ], [ %ray_origin.0.off05780, %bb111 ]
  %ray_origin.1.off32.ph.ph.ph = phi i32 [ %ray_origin.2.off321486, %bb113.preheader ], [ %ray_origin.0.off325782, %bb111 ]
  %ray_origin.1.off64.ph.ph.ph = phi i32 [ %ray_origin.2.off641487, %bb113.preheader ], [ %ray_origin.0.off645784, %bb111 ]
  %memtmp81.i286.2.ph.ph.ph = phi i128 [ %memtmp81.i286.31489, %bb113.preheader ], [ %ins3241, %bb111 ]
  %memtmp69.i284.2.ph.ph.ph = phi i128 [ %memtmp69.i284.31491, %bb113.preheader ], [ %ins3285, %bb111 ]
  %bounces.0.ph.ph.ph = phi i32 [ 0, %bb113.preheader ], [ %tmp1597, %bb111 ]
  %count.2.ph.ph.ph = phi i32 [ %count.31493, %bb113.preheader ], [ %count.15792, %bb111 ]
  %tmp1653 = add i64 %tmp1651, %indvar1649
  %v_p_count.1.ph.ph.ph = trunc i64 %tmp1653 to i32
  %tmp1656 = add i64 %tmp1655, %indvar1649
  %scevgep1657 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %tmp1656, i32 2
  %scevgep1658 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %tmp1656, i32 1, i64 2
  %scevgep1659 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %tmp1656, i32 1, i64 1
  %scevgep1660 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %tmp1656, i32 1, i64 0
  %scevgep1661 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %tmp1656, i32 0, i32 2
  %scevgep1662 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %tmp1656, i32 0, i32 1
  %scevgep16631664 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %tmp1656, i32 0, i32 0
  br label %bb113.outer.outer

bb113.outer.outer:                                ; preds = %bb113.outer.outer.outer, %bb62.i442
  %mask7501136.ph.ph = phi i512 [ %mask7501137, %bb62.i442 ], [ %mask7501136.ph.ph.ph, %bb113.outer.outer.outer ]
  %surface_color.0.2.ph.ph = phi float [ %surface_color.0.15761, %bb62.i442 ], [ %surface_color.0.2.ph.ph.ph, %bb113.outer.outer.outer ]
  %surface_color.1.2.ph.ph = phi float [ %surface_color.1.15763, %bb62.i442 ], [ %surface_color.1.2.ph.ph.ph, %bb113.outer.outer.outer ]
  %surface_color.2.2.ph.ph = phi float [ %surface_color.2.15765, %bb62.i442 ], [ %surface_color.2.2.ph.ph.ph, %bb113.outer.outer.outer ]
  %memtmp40.0.ph.ph = phi i128 [ %ins1008, %bb62.i442 ], [ %memtmp40.0.ph.ph.ph, %bb113.outer.outer.outer ]
  %ray_origin.1.off0.ph.ph = phi i32 [ %ray_origin.0.off05780, %bb62.i442 ], [ %ray_origin.1.off0.ph.ph.ph, %bb113.outer.outer.outer ]
  %ray_origin.1.off32.ph.ph = phi i32 [ %ray_origin.0.off325782, %bb62.i442 ], [ %ray_origin.1.off32.ph.ph.ph, %bb113.outer.outer.outer ]
  %ray_origin.1.off64.ph.ph = phi i32 [ %ray_origin.0.off645784, %bb62.i442 ], [ %ray_origin.1.off64.ph.ph.ph, %bb113.outer.outer.outer ]
  %memtmp81.i286.2.ph.ph = phi i128 [ %ins3241, %bb62.i442 ], [ %memtmp81.i286.2.ph.ph.ph, %bb113.outer.outer.outer ]
  %memtmp69.i284.2.ph.ph = phi i128 [ %ins3285, %bb62.i442 ], [ %memtmp69.i284.2.ph.ph.ph, %bb113.outer.outer.outer ]
  %bounces.0.ph.ph = phi i32 [ %tmp1597, %bb62.i442 ], [ %bounces.0.ph.ph.ph, %bb113.outer.outer.outer ]
  %count.2.ph.ph = phi i32 [ %count.15792, %bb62.i442 ], [ %count.2.ph.ph.ph, %bb113.outer.outer.outer ]
  br label %bb113.outer.outer1439

bb113.outer.outer1439:                            ; preds = %bb113.outer.outer, %bb29.i387, %bb108
  %mask7501136.ph.ph1440 = phi i512 [ %mask7501136.ph.ph, %bb113.outer.outer ], [ %mask7501137, %bb108 ], [ %mask7501137, %bb29.i387 ]
  %surface_color.0.2.ph.ph1441 = phi float [ %surface_color.0.2.ph.ph, %bb113.outer.outer ], [ %surface_color.0.15761, %bb108 ], [ %surface_color.0.15761, %bb29.i387 ]
  %surface_color.1.2.ph.ph1442 = phi float [ %surface_color.1.2.ph.ph, %bb113.outer.outer ], [ %surface_color.1.15763, %bb108 ], [ %surface_color.1.15763, %bb29.i387 ]
  %surface_color.2.2.ph.ph1443 = phi float [ %surface_color.2.2.ph.ph, %bb113.outer.outer ], [ %surface_color.2.15765, %bb108 ], [ %surface_color.2.15765, %bb29.i387 ]
  %memtmp40.0.ph.ph1445 = phi i128 [ %memtmp40.0.ph.ph, %bb113.outer.outer ], [ %ins1008, %bb108 ], [ %ins1008, %bb29.i387 ]
  %ray_origin.1.off0.ph.ph1446 = phi i32 [ %ray_origin.1.off0.ph.ph, %bb113.outer.outer ], [ %ray_origin.0.off05780, %bb108 ], [ %ray_origin.0.off05780, %bb29.i387 ]
  %ray_origin.1.off32.ph.ph1447 = phi i32 [ %ray_origin.1.off32.ph.ph, %bb113.outer.outer ], [ %ray_origin.0.off325782, %bb108 ], [ %ray_origin.0.off325782, %bb29.i387 ]
  %ray_origin.1.off64.ph.ph1448 = phi i32 [ %ray_origin.1.off64.ph.ph, %bb113.outer.outer ], [ %ray_origin.0.off645784, %bb108 ], [ %ray_origin.0.off645784, %bb29.i387 ]
  %bounces.0.ph.ph1450 = phi i32 [ %bounces.0.ph.ph, %bb113.outer.outer ], [ %tmp1597, %bb108 ], [ %tmp1597, %bb29.i387 ]
  %count.2.ph.ph1451 = phi i32 [ %count.2.ph.ph, %bb113.outer.outer ], [ %count.15792, %bb108 ], [ %count.15792, %bb29.i387 ]
  br label %bb113.outer

bb113.outer:                                      ; preds = %bb113.outer.outer1439, %invcont97
  %mask7501136.ph = phi i512 [ %mask7501137, %invcont97 ], [ %mask7501136.ph.ph1440, %bb113.outer.outer1439 ]
  %surface_color.0.2.ph = phi float [ %surface_color.0.0, %invcont97 ], [ %surface_color.0.2.ph.ph1441, %bb113.outer.outer1439 ]
  %surface_color.1.2.ph = phi float [ %surface_color.1.0, %invcont97 ], [ %surface_color.1.2.ph.ph1442, %bb113.outer.outer1439 ]
  %surface_color.2.2.ph = phi float [ %surface_color.2.0, %invcont97 ], [ %surface_color.2.2.ph.ph1443, %bb113.outer.outer1439 ]
  %memtmp40.0.ph = phi i128 [ %ins1008, %invcont97 ], [ %memtmp40.0.ph.ph1445, %bb113.outer.outer1439 ]
  %ray_origin.1.off0.ph = phi i32 [ %tmp17.i.i, %invcont97 ], [ %ray_origin.1.off0.ph.ph1446, %bb113.outer.outer1439 ]
  %ray_origin.1.off32.ph = phi i32 [ %tmp11.i.i, %invcont97 ], [ %ray_origin.1.off32.ph.ph1447, %bb113.outer.outer1439 ]
  %ray_origin.1.off64.ph = phi i32 [ %tmp916, %invcont97 ], [ %ray_origin.1.off64.ph.ph1448, %bb113.outer.outer1439 ]
  %bounces.0.ph = phi i32 [ %tmp1597, %invcont97 ], [ %bounces.0.ph.ph1450, %bb113.outer.outer1439 ]
  %272 = fmul float %surface_color.0.2.ph, 0x3FE6666660000000
  %273 = fmul float %surface_color.1.2.ph, 0x3FE6666660000000
  %274 = fmul float %surface_color.2.2.ph, 0x3FE6666660000000
  %tmp631 = bitcast i32 %ray_origin.1.off0.ph to float
  %tmp625 = bitcast i32 %ray_origin.1.off32.ph to float
  %tmp617 = bitcast i32 %ray_origin.1.off64.ph to float
  %tmp1596 = add i32 %bounces.0.ph, 1
  br label %bb113

bb113:                                            ; preds = %bb113.outer, %invcont54.bb107_crit_edge
  %indvar1593 = phi i32 [ 0, %bb113.outer ], [ %indvar.next1594, %invcont54.bb107_crit_edge ]
  %mask7501136 = phi i512 [ %mask7501136.ph, %bb113.outer ], [ %mask7501137, %invcont54.bb107_crit_edge ]
  %memtmp40.0 = phi i128 [ %memtmp40.0.ph, %bb113.outer ], [ %ins1008, %invcont54.bb107_crit_edge ]
  %bounces.0 = add i32 %bounces.0.ph, %indvar1593
  %tmp1597 = add i32 %tmp1596, %indvar1593
  %275 = icmp slt i32 %bounces.0, 3
  br i1 %275, label %bb.i86, label %bb115

bb115:                                            ; preds = %bb113
  %276 = add nsw i32 %iterator.01494, 1
  %exitcond1665 = icmp eq i32 %276, 110000
  br i1 %exitcond1665, label %invcont120, label %bb113.preheader

bb113.preheader:                                  ; preds = %bb115, %invcont24
  %v_p_count.21495 = phi i32 [ 0, %invcont24 ], [ %v_p_count.1.ph.ph.ph, %bb115 ]
  %iterator.01494 = phi i32 [ 0, %invcont24 ], [ %276, %bb115 ]
  %count.31493 = phi i32 [ 0, %invcont24 ], [ %count.2.ph.ph1451, %bb115 ]
  %memtmp69.i284.31491 = phi i128 [ undef, %invcont24 ], [ %memtmp69.i284.2.ph.ph, %bb115 ]
  %memtmp81.i286.31489 = phi i128 [ undef, %invcont24 ], [ %memtmp81.i286.2.ph.ph, %bb115 ]
  %ray_origin.2.off641487 = phi i32 [ %tmp1092, %invcont24 ], [ %ray_origin.1.off64.ph, %bb115 ]
  %ray_origin.2.off321486 = phi i32 [ %tmp1098, %invcont24 ], [ %ray_origin.1.off32.ph, %bb115 ]
  %ray_origin.2.off01485 = phi i32 [ %tmp1104, %invcont24 ], [ %ray_origin.1.off0.ph, %bb115 ]
  %memtmp40.11484 = phi i128 [ undef, %invcont24 ], [ %memtmp40.0, %bb115 ]
  %mask75011351482 = phi i512 [ undef, %invcont24 ], [ %mask7501136, %bb115 ]
  %tmp1651 = zext i32 %v_p_count.21495 to i64
  %tmp1655 = sext i32 %v_p_count.21495 to i64
  br label %bb113.outer.outer.outer

invcont120:                                       ; preds = %bb115
  call void @llvm.trax.printf(float 0.000000e+00)
  %277 = call i32 @llvm.trax.atominc(i32 0)
  %278 = mul nsw i32 %1, %0
  %279 = sitofp i32 %0 to float
  %280 = fdiv float %279, -2.000000e+00
  %281 = sitofp i32 %1 to float
  %282 = fdiv float %281, -2.000000e+00
  %283 = icmp sgt i32 %278, %277
  br i1 %283, label %invcont129.lr.ph, label %return

invcont129.lr.ph:                                 ; preds = %invcont120
  %tmp923 = bitcast float %10 to i32
  %tmp924 = zext i32 %tmp923 to i192
  %tmp846 = bitcast float %11 to i32
  %tmp847 = zext i32 %tmp846 to i192
  %tmp848 = shl nuw nsw i192 %tmp847, 32
  %tmp828 = bitcast float %12 to i32
  %tmp829 = zext i32 %tmp828 to i192
  %tmp830 = shl nuw nsw i192 %tmp829, 64
  %mask831.masked.masked = or i192 %tmp848, %tmp924
  %mask909.masked = or i192 %mask831.masked.masked, %tmp830
  %tmp5535 = zext i32 %tmp923 to i96
  %tmp3217 = trunc i192 %tmp848 to i96
  %tmp2905 = trunc i192 %tmp830 to i128
  %284 = fsub float 2.650000e+02, %10
  %285 = fsub float 0x4073A00420000000, %10
  %286 = fsub float 2.960000e+02, %11
  %287 = fsub float 0x407C800420000000, %11
  %ins3035 = or i96 %tmp3217, %tmp5535
  %tmp2734 = zext i96 %ins3035 to i128
  %mask2730 = or i128 %tmp2734, %tmp2905
  br label %invcont129

invcont129:                                       ; preds = %_ZN5Image3setEii5Color.exit463, %invcont129.lr.ph
  %storemerge21382 = phi i32 [ %277, %invcont129.lr.ph ], [ %840, %_ZN5Image3setEii5Color.exit463 ]
  %memtmp4.i657.11379 = phi i128 [ undef, %invcont129.lr.ph ], [ %memtmp4.i657.0, %_ZN5Image3setEii5Color.exit463 ]
  %memtmp31.i.31371 = phi i128 [ undef, %invcont129.lr.ph ], [ %memtmp31.i.2, %_ZN5Image3setEii5Color.exit463 ]
  %memtmp5.i.41364 = phi i128 [ undef, %invcont129.lr.ph ], [ %memtmp5.i.3, %_ZN5Image3setEii5Color.exit463 ]
  %memtmp25.i.41362 = phi i128 [ undef, %invcont129.lr.ph ], [ %memtmp25.i.3, %_ZN5Image3setEii5Color.exit463 ]
  %memtmp170.11360 = phi i128 [ undef, %invcont129.lr.ph ], [ %memtmp170.0, %_ZN5Image3setEii5Color.exit463 ]
  %mask56111431359 = phi i512 [ undef, %invcont129.lr.ph ], [ %mask5611144, %_ZN5Image3setEii5Color.exit463 ]
  %288 = sdiv i32 %storemerge21382, %0
  %289 = srem i32 %storemerge21382, %0
  %290 = sitofp i32 %289 to float
  %291 = fadd float %290, %280
  %292 = fadd float %291, 5.000000e-01
  %293 = fmul float %292, 2.000000e+00
  %294 = fdiv float %293, %279
  %295 = sitofp i32 %288 to float
  %296 = fadd float %295, %282
  %297 = fadd float %296, 5.000000e-01
  %298 = fmul float %297, 2.000000e+00
  %299 = fdiv float %298, %281
  %300 = fmul float %26, %299
  %301 = fmul float %27, %299
  %302 = fmul float %28, %299
  %303 = fmul float %22, %294
  %304 = fmul float %23, %294
  %305 = fmul float %24, %294
  %306 = fadd float %300, %303
  %307 = fadd float %301, %304
  %308 = fadd float %305, %302
  %309 = fadd float %306, %18
  %310 = fadd float %307, %19
  %311 = fadd float %20, %308
  %312 = fmul float %309, %309
  %313 = fmul float %310, %310
  %314 = fadd float %312, %313
  %315 = fmul float %311, %311
  %316 = fadd float %314, %315
  %317 = call float @llvm.trax.invsqrt(float %316) nounwind
  %318 = fdiv float 1.000000e+00, %317
  %319 = fdiv float %311, %318
  %320 = fdiv float %310, %318
  %321 = fdiv float %309, %318
  %tmp906 = bitcast float %321 to i32
  %tmp907 = zext i32 %tmp906 to i192
  %tmp908 = shl nuw nsw i192 %tmp907, 96
  %tmp882 = bitcast float %320 to i32
  %tmp883 = zext i32 %tmp882 to i192
  %tmp884 = shl nuw nsw i192 %tmp883, 128
  %tmp860 = bitcast float %319 to i32
  %tmp861 = zext i32 %tmp860 to i192
  %tmp862 = shl nuw i192 %tmp861, 160
  %mask885.masked = or i192 %mask909.masked, %tmp884
  %mask863 = or i192 %mask885.masked, %tmp908
  %ins864 = or i192 %mask863, %tmp862
  %mask488 = and i512 %mask56111431359, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins489 = or i512 %mask488, 1343554297
  %tmp760 = lshr i192 %ins864, 160
  %tmp764 = trunc i192 %tmp760 to i32
  %tmp765 = bitcast i32 %tmp764 to float
  br label %bb.outer.i65

bb.outer.i65:                                     ; preds = %bb9.i165, %invcont129
  %mask5611145 = phi i512 [ %ins489, %invcont129 ], [ %mask5611144, %bb9.i165 ]
  %node_id.0.ph.i60 = phi i32 [ 0, %invcont129 ], [ %479, %bb9.i165 ]
  %sp.0.ph.i61 = phi i32 [ -1, %invcont129 ], [ %480, %bb9.i165 ]
  %tmp404.i63 = add i32 %sp.0.ph.i61, 1
  %tmp1520 = sext i32 %tmp404.i63 to i64
  %tmp1522 = zext i32 %sp.0.ph.i61 to i64
  br label %bb.i77

bb.i77:                                           ; preds = %bb3.i93, %bb.outer.i65
  %indvar.i66 = phi i64 [ %indvar.next.i92, %bb3.i93 ], [ 0, %bb.outer.i65 ]
  %node_id.0.i67 = phi i32 [ %357, %bb3.i93 ], [ %node_id.0.ph.i60, %bb.outer.i65 ]
  %tmp1521 = add i64 %tmp1520, %indvar.i66
  %scevgep.i71 = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp1521
  %tmp1523 = add i64 %tmp1522, %indvar.i66
  %sp.0.i69 = trunc i64 %tmp1523 to i32
  %322 = shl nsw i32 %node_id.0.i67, 3
  %323 = add nsw i32 %322, %37
  %324 = call float @llvm.trax.loadf(i32 %323, i32 2) nounwind
  %325 = call float @llvm.trax.loadf(i32 %323, i32 1) nounwind
  %326 = call float @llvm.trax.loadf(i32 %323, i32 0) nounwind
  %327 = call float @llvm.trax.loadf(i32 %323, i32 5) nounwind
  %328 = call float @llvm.trax.loadf(i32 %323, i32 4) nounwind
  %329 = call float @llvm.trax.loadf(i32 %323, i32 3) nounwind
  %330 = fsub float %326, %10
  %331 = fdiv float %330, %321
  %332 = fsub float %329, %10
  %333 = fdiv float %332, %321
  %334 = fcmp ogt float %331, %333
  %tx1.i.0.i72 = select i1 %334, float %333, float %331
  %tx2.i.0.i73 = select i1 %334, float %331, float %333
  %335 = fcmp ogt float %tx1.i.0.i72, -1.000000e+10
  %tnear.i.0.i74 = select i1 %335, float %tx1.i.0.i72, float -1.000000e+10
  %336 = fcmp olt float %tx2.i.0.i73, 1.000000e+10
  %tfar.i.0.i75 = select i1 %336, float %tx2.i.0.i73, float 1.000000e+10
  %337 = fcmp ogt float %tnear.i.0.i74, %tfar.i.0.i75
  %338 = fcmp olt float %tfar.i.0.i75, 0.000000e+00
  %or.cond.i76 = or i1 %337, %338
  br i1 %or.cond.i76, label %bb7.i164, label %bb29.i.i83

bb29.i.i83:                                       ; preds = %bb.i77
  %339 = fsub float %325, %11
  %340 = fdiv float %339, %320
  %341 = fsub float %328, %11
  %342 = fdiv float %341, %320
  %343 = fcmp ogt float %340, %342
  %ty1.i.0.i78 = select i1 %343, float %342, float %340
  %ty2.i.0.i79 = select i1 %343, float %340, float %342
  %344 = fcmp ogt float %ty1.i.0.i78, %tnear.i.0.i74
  %tnear.i.1.i80 = select i1 %344, float %ty1.i.0.i78, float %tnear.i.0.i74
  %345 = fcmp olt float %ty2.i.0.i79, %tfar.i.0.i75
  %tfar.i.1.i81 = select i1 %345, float %ty2.i.0.i79, float %tfar.i.0.i75
  %346 = fcmp ogt float %tnear.i.1.i80, %tfar.i.1.i81
  %347 = fcmp olt float %tfar.i.1.i81, 0.000000e+00
  %or.cond1395.i82 = or i1 %346, %347
  br i1 %or.cond1395.i82, label %bb7.i164, label %bb62.i.i89

bb62.i.i89:                                       ; preds = %bb29.i.i83
  %348 = fsub float %324, %12
  %349 = fdiv float %348, %tmp765
  %350 = fsub float %327, %12
  %351 = fdiv float %350, %tmp765
  %352 = fcmp ogt float %349, %351
  %tz1.i.0.i84 = select i1 %352, float %351, float %349
  %tz2.i.0.i85 = select i1 %352, float %349, float %351
  %353 = fcmp ogt float %tz1.i.0.i84, %tnear.i.1.i80
  %tnear.i.2.i86 = select i1 %353, float %tz1.i.0.i84, float %tnear.i.1.i80
  %354 = fcmp olt float %tz2.i.0.i85, %tfar.i.1.i81
  %tfar.i.2.i87 = select i1 %354, float %tz2.i.0.i85, float %tfar.i.1.i81
  %355 = fcmp ogt float %tnear.i.2.i86, %tfar.i.2.i87
  %356 = fcmp olt float %tfar.i.2.i87, 0.000000e+00
  %or.cond1396.i88 = or i1 %355, %356
  br i1 %or.cond1396.i88, label %bb7.i164, label %bb1.i90

bb1.i90:                                          ; preds = %bb62.i.i89
  %357 = call i32 @llvm.trax.loadi(i32 %323, i32 7) nounwind
  %358 = call i32 @llvm.trax.loadi(i32 %323, i32 6) nounwind
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %bb3.i93, label %bb6.preheader.i91

bb6.preheader.i91:                                ; preds = %bb1.i90
  %360 = icmp sgt i32 %358, 0
  br i1 %360, label %bb5.i104, label %bb7.i164

bb3.i93:                                          ; preds = %bb1.i90
  %361 = add nsw i32 %357, 1
  store i32 %361, i32* %scevgep.i71, align 4
  %indvar.next.i92 = add i64 %indvar.i66, 1
  br label %bb.i77

bb5.i104:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i163, %bb6.preheader.i91
  %mask5611142 = phi i512 [ %mask5611141, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i163 ], [ %mask5611145, %bb6.preheader.i91 ]
  %storemerge388.i94 = phi i32 [ %475, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i163 ], [ 0, %bb6.preheader.i91 ]
  %tmp1514 = mul i32 %storemerge388.i94, 11
  %tmp396.i96 = add i32 %357, %tmp1514
  %362 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 2) nounwind
  %363 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 1) nounwind
  %364 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 0) nounwind
  %365 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 5) nounwind
  %366 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 4) nounwind
  %367 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 3) nounwind
  %368 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 8) nounwind
  %369 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 7) nounwind
  %370 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 6) nounwind
  %371 = call i32 @llvm.trax.loadi(i32 %tmp396.i96, i32 10) nounwind
  %372 = call i32 @llvm.trax.loadi(i32 %tmp396.i96, i32 9) nounwind
  %373 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %374 = mul nsw i32 %371, 25
  %375 = add nsw i32 %373, %374
  %376 = call float @llvm.trax.loadf(i32 %375, i32 6) nounwind
  %377 = call float @llvm.trax.loadf(i32 %375, i32 5) nounwind
  %378 = call float @llvm.trax.loadf(i32 %375, i32 4) nounwind
  %379 = fsub float %364, %370
  %380 = fsub float %363, %369
  %381 = fsub float %362, %368
  %382 = fsub float %367, %370
  %383 = fsub float %366, %369
  %384 = fsub float %365, %368
  %385 = fmul float %380, %384
  %386 = fmul float %383, %381
  %387 = fsub float %385, %386
  %388 = fmul float %382, %381
  %389 = fmul float %379, %384
  %390 = fsub float %388, %389
  %391 = fmul float %383, %379
  %392 = fmul float %382, %380
  %393 = fsub float %391, %392
  %394 = fmul float %387, %387
  %395 = fmul float %390, %390
  %396 = fadd float %394, %395
  %397 = fmul float %393, %393
  %398 = fadd float %396, %397
  %399 = call float @llvm.trax.invsqrt(float %398) nounwind
  %400 = fmul float %320, %384
  %401 = fmul float %383, %tmp765
  %402 = fsub float %400, %401
  %403 = fmul float %382, %tmp765
  %404 = fmul float %321, %384
  %405 = fsub float %403, %404
  %406 = fmul float %383, %321
  %407 = fmul float %382, %320
  %408 = fsub float %406, %407
  %409 = fmul float %402, %379
  %410 = fadd float %409, 0.000000e+00
  %411 = fmul float %405, %380
  %412 = fadd float %411, %410
  %413 = fmul float %408, %381
  %414 = fadd float %413, %412
  %415 = fdiv float 1.000000e+00, %414
  %416 = fsub float %10, %370
  %417 = fsub float %11, %369
  %418 = fsub float %12, %368
  %419 = fmul float %402, %416
  %420 = fadd float %419, 0.000000e+00
  %421 = fmul float %405, %417
  %422 = fadd float %421, %420
  %423 = fmul float %408, %418
  %424 = fadd float %423, %422
  %425 = fmul float %424, %415
  %426 = fcmp olt float %425, 0.000000e+00
  %427 = fcmp ogt float %425, 1.000000e+00
  %or.cond1397.i103 = or i1 %426, %427
  br i1 %or.cond1397.i103, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i163, label %bb73.i.i105

bb73.i.i105:                                      ; preds = %bb5.i104
  %428 = fmul float %417, %381
  %429 = fmul float %380, %418
  %430 = fsub float %428, %429
  %431 = fmul float %379, %418
  %432 = fmul float %416, %381
  %433 = fsub float %431, %432
  %434 = fmul float %380, %416
  %435 = fmul float %379, %417
  %436 = fsub float %434, %435
  %437 = fmul float %430, %321
  %438 = fadd float %437, 0.000000e+00
  %439 = fmul float %433, %320
  %440 = fadd float %439, %438
  %441 = fmul float %436, %tmp765
  %442 = fadd float %441, %440
  %443 = fmul float %442, %415
  %444 = fcmp olt float %443, 0.000000e+00
  br i1 %444, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i163, label %bb94.i55.i106

bb94.i55.i106:                                    ; preds = %bb73.i.i105
  %445 = fadd float %443, %425
  %446 = fcmp ogt float %445, 1.000000e+00
  br i1 %446, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i163, label %bb96.i.i109

bb96.i.i109:                                      ; preds = %bb94.i55.i106
  %447 = fmul float %430, %382
  %448 = fadd float %447, 0.000000e+00
  %449 = fmul float %433, %383
  %450 = fadd float %449, %448
  %451 = fmul float %436, %384
  %452 = fadd float %451, %450
  %453 = fmul float %452, %415
  %454 = fcmp ule float %453, 0.000000e+00
  %455 = fcmp olt float %453, 0x3F50624DE0000000
  %or.cond1398.i107 = or i1 %454, %455
  %456 = fcmp oeq float %453, 1.000000e+10
  %or.cond1399.i108 = or i1 %or.cond1398.i107, %456
  br i1 %or.cond1399.i108, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i163, label %bb2.i.i.i110

bb2.i.i.i110:                                     ; preds = %bb96.i.i109
  %tmp472 = trunc i512 %mask5611142 to i32
  %tmp473 = bitcast i32 %tmp472 to float
  %457 = fcmp ogt float %tmp473, %453
  br i1 %457, label %bb3.i.i.i161, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i163

bb3.i.i.i161:                                     ; preds = %bb2.i.i.i110
  %tmp467 = bitcast float %453 to i32
  %tmp468 = zext i32 %tmp467 to i512
  %458 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 2) nounwind
  %459 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 1) nounwind
  %460 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 0) nounwind
  %461 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 5) nounwind
  %462 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 4) nounwind
  %463 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 3) nounwind
  %464 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 8) nounwind
  %465 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 7) nounwind
  %466 = call float @llvm.trax.loadf(i32 %tmp396.i96, i32 6) nounwind
  %467 = call i32 @llvm.trax.loadi(i32 %tmp396.i96, i32 10) nounwind
  %468 = call i32 @llvm.trax.loadi(i32 %tmp396.i96, i32 9) nounwind
  %tmp369.i111 = bitcast float %460 to i32
  %tmp370.i112 = zext i32 %tmp369.i111 to i480
  %tmp301.i113 = bitcast float %459 to i32
  %tmp302.i114 = zext i32 %tmp301.i113 to i480
  %tmp303.i115 = shl nuw nsw i480 %tmp302.i114, 32
  %tmp295.i116 = bitcast float %458 to i32
  %tmp296.i117 = zext i32 %tmp295.i116 to i480
  %tmp297.i118 = shl nuw nsw i480 %tmp296.i117, 64
  %tmp363.i119 = bitcast float %463 to i32
  %tmp364.i120 = zext i32 %tmp363.i119 to i480
  %tmp365.i121 = shl nuw nsw i480 %tmp364.i120, 96
  %tmp357.i122 = bitcast float %462 to i32
  %tmp358.i123 = zext i32 %tmp357.i122 to i480
  %tmp359.i124 = shl nuw nsw i480 %tmp358.i123, 128
  %tmp351.i125 = bitcast float %461 to i32
  %tmp352.i126 = zext i32 %tmp351.i125 to i480
  %tmp353.i127 = shl nuw nsw i480 %tmp352.i126, 160
  %tmp345.i128 = bitcast float %466 to i32
  %tmp346.i129 = zext i32 %tmp345.i128 to i480
  %tmp347.i130 = shl nuw nsw i480 %tmp346.i129, 192
  %tmp339.i131 = bitcast float %465 to i32
  %tmp340.i132 = zext i32 %tmp339.i131 to i480
  %tmp341.i133 = shl nuw nsw i480 %tmp340.i132, 224
  %tmp333.i134 = bitcast float %464 to i32
  %tmp334.i135 = zext i32 %tmp333.i134 to i480
  %tmp335.i136 = shl nuw nsw i480 %tmp334.i135, 256
  %tmp290.i137 = zext i32 %468 to i480
  %tmp291.i138 = shl nuw nsw i480 %tmp290.i137, 288
  %469 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %470 = mul nsw i32 %467, 25
  %471 = add nsw i32 %469, %470
  %472 = call float @llvm.trax.loadf(i32 %471, i32 6) nounwind
  %473 = call float @llvm.trax.loadf(i32 %471, i32 5) nounwind
  %474 = call float @llvm.trax.loadf(i32 %471, i32 4) nounwind
  %tmp325.i139 = bitcast float %474 to i32
  %tmp326.i140 = zext i32 %tmp325.i139 to i480
  %tmp327.i141 = shl nuw nsw i480 %tmp326.i140, 320
  %tmp317.i142 = bitcast float %473 to i32
  %tmp318.i143 = zext i32 %tmp317.i142 to i480
  %tmp319.i144 = shl nuw nsw i480 %tmp318.i143, 352
  %tmp309.i145 = bitcast float %472 to i32
  %tmp310.i146 = zext i32 %tmp309.i145 to i480
  %tmp311.i147 = shl nuw nsw i480 %tmp310.i146, 384
  %mask298.i148 = or i480 %tmp297.i118, %tmp370.i112
  %mask366.i149 = or i480 %mask298.i148, %tmp303.i115
  %mask360.masked.masked.masked.masked.masked.i150 = or i480 %mask366.i149, %tmp353.i127
  %mask354.masked.masked.masked.masked.masked.masked.i151 = or i480 %mask360.masked.masked.masked.masked.masked.i150, %tmp359.i124
  %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i152 = or i480 %mask354.masked.masked.masked.masked.masked.masked.i151, %tmp365.i121
  %mask342.masked.masked.masked.masked.masked.masked.masked.i153 = or i480 %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i152, %tmp335.i136
  %mask336.masked.masked.masked.masked.masked.masked.i154 = or i480 %mask342.masked.masked.masked.masked.masked.masked.masked.i153, %tmp341.i133
  %mask292.masked.masked.masked.masked.masked.i155 = or i480 %mask336.masked.masked.masked.masked.masked.masked.i154, %tmp347.i130
  %mask328.masked.masked.masked.masked.i156 = or i480 %mask292.masked.masked.masked.masked.masked.i155, %tmp291.i138
  %mask320.masked.masked.masked.i157 = or i480 %mask328.masked.masked.masked.masked.i156, %tmp311.i147
  %mask312.masked.masked.i158 = or i480 %mask320.masked.masked.masked.i157, %tmp319.i144
  %ins288.i159 = or i480 %mask312.masked.masked.i158, %tmp327.i141
  %ins285.i160 = or i480 %ins288.i159, 770681673391627619131312691654083964084373995933406099189890146314966155308140517402099473489517307419678932548501811235986099843289400054120448
  %tmp464 = zext i480 %ins285.i160 to i512
  %tmp465 = shl nuw i512 %tmp464, 32
  %ins = or i512 %tmp465, %tmp468
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i163

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i163: ; preds = %bb3.i.i.i161, %bb2.i.i.i110, %bb96.i.i109, %bb94.i55.i106, %bb73.i.i105, %bb5.i104
  %mask5611141 = phi i512 [ %ins, %bb3.i.i.i161 ], [ %mask5611142, %bb2.i.i.i110 ], [ %mask5611142, %bb96.i.i109 ], [ %mask5611142, %bb94.i55.i106 ], [ %mask5611142, %bb73.i.i105 ], [ %mask5611142, %bb5.i104 ]
  %475 = add nsw i32 %storemerge388.i94, 1
  %exitcond1513 = icmp eq i32 %475, %358
  br i1 %exitcond1513, label %bb7.i164, label %bb5.i104

bb7.i164:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i163, %bb6.preheader.i91, %bb62.i.i89, %bb29.i.i83, %bb.i77
  %mask5611144 = phi i512 [ %mask5611145, %bb6.preheader.i91 ], [ %mask5611141, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i163 ], [ %mask5611145, %bb.i77 ], [ %mask5611145, %bb29.i.i83 ], [ %mask5611145, %bb62.i.i89 ]
  %476 = icmp slt i32 %sp.0.i69, 0
  br i1 %476, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit166, label %bb9.i165

bb9.i165:                                         ; preds = %bb7.i164
  %477 = sext i32 %sp.0.i69 to i64
  %478 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %477
  %479 = load i32* %478, align 4
  %480 = add nsw i32 %sp.0.i69, -1
  br label %bb.outer.i65

_ZN3BVH9intersectER9HitRecordR3Ray.exit166:       ; preds = %bb7.i164
  %tmp1220 = trunc i512 %mask5611144 to i32
  %tmp1221 = bitcast i32 %tmp1220 to float
  %481 = fcmp olt float %tmp1221, 1.000000e+10
  %tmp1166 = lshr i512 %mask5611144, 32
  %tmp1167 = trunc i512 %tmp1166 to i32
  %tmp1168 = bitcast i32 %tmp1167 to float
  %tmp1162 = lshr i512 %mask5611144, 64
  %tmp1163 = trunc i512 %tmp1162 to i32
  %tmp1164 = bitcast i32 %tmp1163 to float
  %tmp1158 = lshr i512 %mask5611144, 96
  %tmp1159 = trunc i512 %tmp1158 to i32
  %tmp1160 = bitcast i32 %tmp1159 to float
  %tmp1213 = lshr i512 %mask5611144, 128
  %tmp1214 = trunc i512 %tmp1213 to i32
  %tmp1215 = bitcast i32 %tmp1214 to float
  %tmp1209 = lshr i512 %mask5611144, 160
  %tmp1210 = trunc i512 %tmp1209 to i32
  %tmp1211 = bitcast i32 %tmp1210 to float
  %tmp1205 = lshr i512 %mask5611144, 192
  %tmp1206 = trunc i512 %tmp1205 to i32
  %tmp1207 = bitcast i32 %tmp1206 to float
  %tmp1201 = lshr i512 %mask5611144, 224
  %tmp1202 = trunc i512 %tmp1201 to i32
  %tmp1203 = bitcast i32 %tmp1202 to float
  %tmp1197 = lshr i512 %mask5611144, 256
  %tmp1198 = trunc i512 %tmp1197 to i32
  %tmp1199 = bitcast i32 %tmp1198 to float
  %tmp1193 = lshr i512 %mask5611144, 288
  %tmp1194 = trunc i512 %tmp1193 to i32
  %tmp1195 = bitcast i32 %tmp1194 to float
  %tmp1178 = lshr i512 %mask5611144, 352
  br i1 %481, label %bb.i705, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit166.invcont134_crit_edge

_ZN3BVH9intersectER9HitRecordR3Ray.exit166.invcont134_crit_edge: ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit166
  %.pre1699 = fmul float %321, %tmp1221
  %.pre1700 = fmul float %320, %tmp1221
  %.pre1702 = fadd float %.pre1699, %10
  %.pre1704 = fadd float %.pre1700, %11
  %.pre1706 = fsub float %tmp1168, %tmp1215
  %.pre1708 = fsub float %tmp1164, %tmp1211
  %.pre1710 = fsub float %tmp1160, %tmp1207
  %.pre1712 = fsub float %tmp1215, %tmp1203
  %.pre1714 = fsub float %tmp1211, %tmp1199
  %.pre1716 = fsub float %tmp1207, %tmp1195
  %.pre1718 = fmul float %.pre1708, %.pre1716
  %.pre1720 = fmul float %.pre1714, %.pre1710
  %.pre1722 = fsub float %.pre1718, %.pre1720
  %.pre1724 = fmul float %.pre1712, %.pre1710
  %.pre1726 = fmul float %.pre1706, %.pre1716
  %.pre1728 = fsub float %.pre1724, %.pre1726
  %.pre1730 = fmul float %.pre1714, %.pre1706
  %.pre1732 = fmul float %.pre1712, %.pre1708
  %.pre1734 = fsub float %.pre1730, %.pre1732
  %.pre1736 = fmul float %.pre1722, %.pre1722
  %.pre1738 = fmul float %.pre1728, %.pre1728
  %.pre1740 = fadd float %.pre1736, %.pre1738
  %.pre1742 = fmul float %.pre1734, %.pre1734
  %.pre1744 = fadd float %.pre1740, %.pre1742
  %extract.t = trunc i512 %tmp1178 to i32
  %extract.t1751 = trunc i512 %tmp1178 to i128
  br label %invcont134

bb.i705:                                          ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit166
  %tmp1182 = lshr i512 %mask5611144, 480
  %tmp1183 = trunc i512 %tmp1182 to i32
  %tmp1184 = bitcast i32 %tmp1183 to float
  %482 = lshr i192 %ins864, 96
  %.tr1272 = trunc i192 %482 to i128
  %tmp4997 = and i128 %.tr1272, 79228162495817593519834398720
  %tmp4984 = lshr exact i128 %tmp4997, 64
  %tmp4985 = trunc i128 %tmp4984 to i32
  %tmp4986 = bitcast i32 %tmp4985 to float
  %483 = fmul float %321, %tmp1221
  %484 = fmul float %320, %tmp1221
  %485 = fmul float %tmp4986, %tmp1221
  %tmp5488 = bitcast float %483 to i32
  %tmp5489 = zext i32 %tmp5488 to i96
  %tmp5482 = bitcast float %484 to i32
  %tmp5483 = zext i32 %tmp5482 to i96
  %tmp5484 = shl nuw nsw i96 %tmp5483, 32
  %ins5486 = or i96 %tmp5484, %tmp5489
  %tmp5476 = bitcast float %485 to i32
  %tmp4980 = zext i96 %ins5486 to i128
  %mask4981 = and i128 %memtmp4.i657.11379, -79228162514264337593543950336
  %tmp4974 = zext i32 %tmp5476 to i128
  %tmp4975 = shl nuw nsw i128 %tmp4974, 64
  %mask4976 = or i128 %tmp4975, %mask4981
  %ins4977 = or i128 %mask4976, %tmp4980
  %ins4977.tr = trunc i128 %ins4977 to i96
  %tmp5075 = lshr i96 %ins4977.tr, 64
  %tmp5076 = trunc i96 %tmp5075 to i32
  %tmp5077 = bitcast i32 %tmp5076 to float
  %486 = fadd float %483, %10
  %487 = fadd float %484, %11
  %488 = fadd float %12, %tmp5077
  %489 = fsub float %tmp1168, %tmp1215
  %490 = fsub float %tmp1164, %tmp1211
  %491 = fsub float %tmp1160, %tmp1207
  %492 = fsub float %tmp1215, %tmp1203
  %493 = fsub float %tmp1211, %tmp1199
  %494 = fsub float %tmp1207, %tmp1195
  %495 = fmul float %490, %494
  %496 = fmul float %493, %491
  %497 = fsub float %495, %496
  %498 = fmul float %492, %491
  %499 = fmul float %489, %494
  %500 = fsub float %498, %499
  %501 = fmul float %493, %489
  %502 = fmul float %492, %490
  %503 = fsub float %501, %502
  %504 = fmul float %497, %497
  %505 = fmul float %500, %500
  %506 = fadd float %504, %505
  %507 = fmul float %503, %503
  %508 = fadd float %506, %507
  %509 = call float @llvm.trax.invsqrt(float %508) nounwind
  %510 = fdiv float 1.000000e+00, %509
  %511 = fdiv float %503, %510
  %512 = fdiv float %500, %510
  %513 = fdiv float %497, %510
  %514 = fmul float %321, %321
  %515 = fmul float %320, %320
  %516 = fadd float %514, %515
  %517 = fmul float %tmp4986, %tmp4986
  %518 = fadd float %516, %517
  %519 = call float @llvm.trax.invsqrt(float %518) nounwind
  %520 = fdiv float 1.000000e+00, %519
  %521 = fdiv float %tmp4986, %520
  %522 = fdiv float %320, %520
  %523 = fdiv float %321, %520
  %524 = fmul float %523, %513
  %525 = fadd float %524, 0.000000e+00
  %526 = fmul float %522, %512
  %527 = fadd float %526, %525
  %528 = fmul float %521, %511
  %529 = fadd float %528, %527
  %530 = fcmp ogt float %529, 0.000000e+00
  br i1 %530, label %bb46.i711, label %bb53.i

bb46.i711:                                        ; preds = %bb.i705
  %531 = fmul float %513, -1.000000e+00
  %532 = fmul float %512, -1.000000e+00
  %533 = fmul float %511, -1.000000e+00
  br label %bb53.i

bb53.i:                                           ; preds = %bb46.i711, %bb.i705
  %N.i655.0.0 = phi float [ %531, %bb46.i711 ], [ %513, %bb.i705 ]
  %N.i655.1.0 = phi float [ %532, %bb46.i711 ], [ %512, %bb.i705 ]
  %N.i655.2.0 = phi float [ %533, %bb46.i711 ], [ %511, %bb.i705 ]
  %534 = fsub float %6, %486
  %535 = fsub float %7, %487
  %536 = fsub float %8, %488
  %537 = fmul float %534, %534
  %538 = fmul float %535, %535
  %539 = fadd float %537, %538
  %540 = fmul float %536, %536
  %541 = fadd float %539, %540
  %542 = call float @llvm.trax.invsqrt(float %541) nounwind
  %543 = fdiv float 1.000000e+00, %542
  %544 = fdiv float %536, %543
  %545 = fdiv float %535, %543
  %546 = fdiv float %534, %543
  %547 = fmul float %546, %N.i655.0.0
  %548 = fadd float %547, 0.000000e+00
  %549 = fmul float %545, %N.i655.1.0
  %550 = fadd float %549, %548
  %551 = fmul float %544, %N.i655.2.0
  %552 = fadd float %551, %550
  %553 = fcmp ogt float %552, 0.000000e+00
  br i1 %553, label %bb88.i713, label %bb115.i

bb88.i713:                                        ; preds = %bb53.i
  %554 = call float @llvm.trax.invsqrt(float %541) nounwind
  br label %bb.outer.i224

bb.outer.i224:                                    ; preds = %bb9.i324, %bb88.i713
  %tmp12191225.off0 = phi i32 [ %tmp1220, %bb88.i713 ], [ %tmp12191224.off0, %bb9.i324 ]
  %node_id.0.ph.i219 = phi i32 [ 0, %bb88.i713 ], [ %712, %bb9.i324 ]
  %sp.0.ph.i220 = phi i32 [ -1, %bb88.i713 ], [ %713, %bb9.i324 ]
  %tmp404.i222 = add i32 %sp.0.ph.i220, 1
  %tmp1508 = sext i32 %tmp404.i222 to i64
  %tmp1510 = zext i32 %sp.0.ph.i220 to i64
  br label %bb.i236

bb.i236:                                          ; preds = %bb3.i252, %bb.outer.i224
  %indvar.i225 = phi i64 [ %indvar.next.i251, %bb3.i252 ], [ 0, %bb.outer.i224 ]
  %node_id.0.i226 = phi i32 [ %590, %bb3.i252 ], [ %node_id.0.ph.i219, %bb.outer.i224 ]
  %tmp1509 = add i64 %tmp1508, %indvar.i225
  %scevgep.i230 = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp1509
  %tmp1511 = add i64 %tmp1510, %indvar.i225
  %sp.0.i228 = trunc i64 %tmp1511 to i32
  %555 = shl nsw i32 %node_id.0.i226, 3
  %556 = add nsw i32 %555, %37
  %557 = call float @llvm.trax.loadf(i32 %556, i32 2) nounwind
  %558 = call float @llvm.trax.loadf(i32 %556, i32 1) nounwind
  %559 = call float @llvm.trax.loadf(i32 %556, i32 0) nounwind
  %560 = call float @llvm.trax.loadf(i32 %556, i32 5) nounwind
  %561 = call float @llvm.trax.loadf(i32 %556, i32 4) nounwind
  %562 = call float @llvm.trax.loadf(i32 %556, i32 3) nounwind
  %563 = fsub float %559, %486
  %564 = fdiv float %563, %546
  %565 = fsub float %562, %486
  %566 = fdiv float %565, %546
  %567 = fcmp ogt float %564, %566
  %tx1.i.0.i231 = select i1 %567, float %566, float %564
  %tx2.i.0.i232 = select i1 %567, float %564, float %566
  %568 = fcmp ogt float %tx1.i.0.i231, -1.000000e+10
  %tnear.i.0.i233 = select i1 %568, float %tx1.i.0.i231, float -1.000000e+10
  %569 = fcmp olt float %tx2.i.0.i232, 1.000000e+10
  %tfar.i.0.i234 = select i1 %569, float %tx2.i.0.i232, float 1.000000e+10
  %570 = fcmp ogt float %tnear.i.0.i233, %tfar.i.0.i234
  %571 = fcmp olt float %tfar.i.0.i234, 0.000000e+00
  %or.cond.i235 = or i1 %570, %571
  br i1 %or.cond.i235, label %bb7.i323, label %bb29.i.i242

bb29.i.i242:                                      ; preds = %bb.i236
  %572 = fsub float %558, %487
  %573 = fdiv float %572, %545
  %574 = fsub float %561, %487
  %575 = fdiv float %574, %545
  %576 = fcmp ogt float %573, %575
  %ty1.i.0.i237 = select i1 %576, float %575, float %573
  %ty2.i.0.i238 = select i1 %576, float %573, float %575
  %577 = fcmp ogt float %ty1.i.0.i237, %tnear.i.0.i233
  %tnear.i.1.i239 = select i1 %577, float %ty1.i.0.i237, float %tnear.i.0.i233
  %578 = fcmp olt float %ty2.i.0.i238, %tfar.i.0.i234
  %tfar.i.1.i240 = select i1 %578, float %ty2.i.0.i238, float %tfar.i.0.i234
  %579 = fcmp ogt float %tnear.i.1.i239, %tfar.i.1.i240
  %580 = fcmp olt float %tfar.i.1.i240, 0.000000e+00
  %or.cond1395.i241 = or i1 %579, %580
  br i1 %or.cond1395.i241, label %bb7.i323, label %bb62.i.i248

bb62.i.i248:                                      ; preds = %bb29.i.i242
  %581 = fsub float %557, %488
  %582 = fdiv float %581, %544
  %583 = fsub float %560, %488
  %584 = fdiv float %583, %544
  %585 = fcmp ogt float %582, %584
  %tz1.i.0.i243 = select i1 %585, float %584, float %582
  %tz2.i.0.i244 = select i1 %585, float %582, float %584
  %586 = fcmp ogt float %tz1.i.0.i243, %tnear.i.1.i239
  %tnear.i.2.i245 = select i1 %586, float %tz1.i.0.i243, float %tnear.i.1.i239
  %587 = fcmp olt float %tz2.i.0.i244, %tfar.i.1.i240
  %tfar.i.2.i246 = select i1 %587, float %tz2.i.0.i244, float %tfar.i.1.i240
  %588 = fcmp ogt float %tnear.i.2.i245, %tfar.i.2.i246
  %589 = fcmp olt float %tfar.i.2.i246, 0.000000e+00
  %or.cond1396.i247 = or i1 %588, %589
  br i1 %or.cond1396.i247, label %bb7.i323, label %bb1.i249

bb1.i249:                                         ; preds = %bb62.i.i248
  %590 = call i32 @llvm.trax.loadi(i32 %556, i32 7) nounwind
  %591 = call i32 @llvm.trax.loadi(i32 %556, i32 6) nounwind
  %592 = icmp slt i32 %591, 0
  br i1 %592, label %bb3.i252, label %bb6.preheader.i250

bb6.preheader.i250:                               ; preds = %bb1.i249
  %593 = icmp sgt i32 %591, 0
  br i1 %593, label %bb5.i263, label %bb7.i323

bb3.i252:                                         ; preds = %bb1.i249
  %594 = add nsw i32 %590, 1
  store i32 %594, i32* %scevgep.i230, align 4
  %indvar.next.i251 = add i64 %indvar.i225, 1
  br label %bb.i236

bb5.i263:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i322, %bb6.preheader.i250
  %tmp12191223.off0 = phi i32 [ %tmp12191222.off0, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i322 ], [ %tmp12191225.off0, %bb6.preheader.i250 ]
  %storemerge388.i253 = phi i32 [ %708, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i322 ], [ 0, %bb6.preheader.i250 ]
  %tmp = mul i32 %storemerge388.i253, 11
  %tmp396.i255 = add i32 %590, %tmp
  %595 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 2) nounwind
  %596 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 1) nounwind
  %597 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 0) nounwind
  %598 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 5) nounwind
  %599 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 4) nounwind
  %600 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 3) nounwind
  %601 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 8) nounwind
  %602 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 7) nounwind
  %603 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 6) nounwind
  %604 = call i32 @llvm.trax.loadi(i32 %tmp396.i255, i32 10) nounwind
  %605 = call i32 @llvm.trax.loadi(i32 %tmp396.i255, i32 9) nounwind
  %606 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %607 = mul nsw i32 %604, 25
  %608 = add nsw i32 %606, %607
  %609 = call float @llvm.trax.loadf(i32 %608, i32 6) nounwind
  %610 = call float @llvm.trax.loadf(i32 %608, i32 5) nounwind
  %611 = call float @llvm.trax.loadf(i32 %608, i32 4) nounwind
  %612 = fsub float %597, %603
  %613 = fsub float %596, %602
  %614 = fsub float %595, %601
  %615 = fsub float %600, %603
  %616 = fsub float %599, %602
  %617 = fsub float %598, %601
  %618 = fmul float %613, %617
  %619 = fmul float %616, %614
  %620 = fsub float %618, %619
  %621 = fmul float %615, %614
  %622 = fmul float %612, %617
  %623 = fsub float %621, %622
  %624 = fmul float %616, %612
  %625 = fmul float %615, %613
  %626 = fsub float %624, %625
  %627 = fmul float %620, %620
  %628 = fmul float %623, %623
  %629 = fadd float %627, %628
  %630 = fmul float %626, %626
  %631 = fadd float %629, %630
  %632 = call float @llvm.trax.invsqrt(float %631) nounwind
  %633 = fmul float %545, %617
  %634 = fmul float %616, %544
  %635 = fsub float %633, %634
  %636 = fmul float %615, %544
  %637 = fmul float %546, %617
  %638 = fsub float %636, %637
  %639 = fmul float %616, %546
  %640 = fmul float %615, %545
  %641 = fsub float %639, %640
  %642 = fmul float %635, %612
  %643 = fadd float %642, 0.000000e+00
  %644 = fmul float %638, %613
  %645 = fadd float %644, %643
  %646 = fmul float %641, %614
  %647 = fadd float %646, %645
  %648 = fdiv float 1.000000e+00, %647
  %649 = fsub float %486, %603
  %650 = fsub float %487, %602
  %651 = fsub float %488, %601
  %652 = fmul float %635, %649
  %653 = fadd float %652, 0.000000e+00
  %654 = fmul float %638, %650
  %655 = fadd float %654, %653
  %656 = fmul float %641, %651
  %657 = fadd float %656, %655
  %658 = fmul float %657, %648
  %659 = fcmp olt float %658, 0.000000e+00
  %660 = fcmp ogt float %658, 1.000000e+00
  %or.cond1397.i262 = or i1 %659, %660
  br i1 %or.cond1397.i262, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i322, label %bb73.i.i264

bb73.i.i264:                                      ; preds = %bb5.i263
  %661 = fmul float %650, %614
  %662 = fmul float %613, %651
  %663 = fsub float %661, %662
  %664 = fmul float %612, %651
  %665 = fmul float %649, %614
  %666 = fsub float %664, %665
  %667 = fmul float %613, %649
  %668 = fmul float %612, %650
  %669 = fsub float %667, %668
  %670 = fmul float %663, %546
  %671 = fadd float %670, 0.000000e+00
  %672 = fmul float %666, %545
  %673 = fadd float %672, %671
  %674 = fmul float %669, %544
  %675 = fadd float %674, %673
  %676 = fmul float %675, %648
  %677 = fcmp olt float %676, 0.000000e+00
  br i1 %677, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i322, label %bb94.i55.i265

bb94.i55.i265:                                    ; preds = %bb73.i.i264
  %678 = fadd float %676, %658
  %679 = fcmp ogt float %678, 1.000000e+00
  br i1 %679, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i322, label %bb96.i.i268

bb96.i.i268:                                      ; preds = %bb94.i55.i265
  %680 = fmul float %663, %615
  %681 = fadd float %680, 0.000000e+00
  %682 = fmul float %666, %616
  %683 = fadd float %682, %681
  %684 = fmul float %669, %617
  %685 = fadd float %684, %683
  %686 = fmul float %685, %648
  %687 = fcmp ule float %686, 0.000000e+00
  %688 = fcmp olt float %686, 0x3F50624DE0000000
  %or.cond1398.i266 = or i1 %687, %688
  %689 = fcmp oeq float %686, 1.000000e+10
  %or.cond1399.i267 = or i1 %or.cond1398.i266, %689
  br i1 %or.cond1399.i267, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i322, label %bb2.i.i.i269

bb2.i.i.i269:                                     ; preds = %bb96.i.i268
  %tmp1156 = bitcast i32 %tmp12191223.off0 to float
  %690 = fcmp ogt float %tmp1156, %686
  br i1 %690, label %bb3.i.i.i320, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i322

bb3.i.i.i320:                                     ; preds = %bb2.i.i.i269
  %tmp1150 = bitcast float %686 to i32
  %691 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 2) nounwind
  %692 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 1) nounwind
  %693 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 0) nounwind
  %694 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 5) nounwind
  %695 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 4) nounwind
  %696 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 3) nounwind
  %697 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 8) nounwind
  %698 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 7) nounwind
  %699 = call float @llvm.trax.loadf(i32 %tmp396.i255, i32 6) nounwind
  %700 = call i32 @llvm.trax.loadi(i32 %tmp396.i255, i32 10) nounwind
  %701 = call i32 @llvm.trax.loadi(i32 %tmp396.i255, i32 9) nounwind
  %702 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %703 = mul nsw i32 %700, 25
  %704 = add nsw i32 %702, %703
  %705 = call float @llvm.trax.loadf(i32 %704, i32 6) nounwind
  %706 = call float @llvm.trax.loadf(i32 %704, i32 5) nounwind
  %707 = call float @llvm.trax.loadf(i32 %704, i32 4) nounwind
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i322

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i322: ; preds = %bb3.i.i.i320, %bb2.i.i.i269, %bb96.i.i268, %bb94.i55.i265, %bb73.i.i264, %bb5.i263
  %tmp12191222.off0 = phi i32 [ %tmp1150, %bb3.i.i.i320 ], [ %tmp12191223.off0, %bb2.i.i.i269 ], [ %tmp12191223.off0, %bb96.i.i268 ], [ %tmp12191223.off0, %bb94.i55.i265 ], [ %tmp12191223.off0, %bb73.i.i264 ], [ %tmp12191223.off0, %bb5.i263 ]
  %708 = add nsw i32 %storemerge388.i253, 1
  %exitcond = icmp eq i32 %708, %591
  br i1 %exitcond, label %bb7.i323, label %bb5.i263

bb7.i323:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i322, %bb6.preheader.i250, %bb62.i.i248, %bb29.i.i242, %bb.i236
  %tmp12191224.off0 = phi i32 [ %tmp12191225.off0, %bb6.preheader.i250 ], [ %tmp12191222.off0, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i322 ], [ %tmp12191225.off0, %bb.i236 ], [ %tmp12191225.off0, %bb29.i.i242 ], [ %tmp12191225.off0, %bb62.i.i248 ]
  %709 = icmp slt i32 %sp.0.i228, 0
  br i1 %709, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit325, label %bb9.i324

bb9.i324:                                         ; preds = %bb7.i323
  %710 = sext i32 %sp.0.i228 to i64
  %711 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %710
  %712 = load i32* %711, align 4
  %713 = add nsw i32 %sp.0.i228, -1
  br label %bb.outer.i224

_ZN3BVH9intersectER9HitRecordR3Ray.exit325:       ; preds = %bb7.i323
  %714 = fdiv float 1.000000e+00, %554
  %tmp1218 = bitcast i32 %tmp12191224.off0 to float
  %715 = fcmp uge float %tmp1218, %714
  %716 = fcmp ule float %tmp1218, 0x3F847AE140000000
  %or.cond5821 = or i1 %715, %716
  br i1 %or.cond5821, label %bb92.i722, label %bb115.i

bb92.i722:                                        ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit325
  %717 = fmul float %tmp1184, %552
  %718 = fadd float %717, 0.000000e+00
  br label %bb115.i

bb115.i:                                          ; preds = %bb92.i722, %_ZN3BVH9intersectER9HitRecordR3Ray.exit325, %bb53.i
  %719 = phi float [ %718, %bb92.i722 ], [ 0.000000e+00, %bb53.i ], [ 0.000000e+00, %_ZN3BVH9intersectER9HitRecordR3Ray.exit325 ]
  %tmp5211 = trunc i512 %tmp1178 to i128
  %tmp5212 = and i128 %tmp5211, 79228162495817593519834398720
  %tmp4676 = lshr exact i128 %tmp5212, 64
  %tmp4677 = trunc i128 %tmp4676 to i32
  %tmp4678 = bitcast i32 %tmp4677 to float
  %tmp41.i342 = trunc i512 %tmp1178 to i32
  %tmp42.i343 = bitcast i32 %tmp41.i342 to float
  %720 = fmul float %tmp42.i343, %719
  %tmp37.i3441283 = lshr i512 %mask5611144, 384
  %tmp38.i345 = trunc i512 %tmp37.i3441283 to i32
  %tmp39.i346 = bitcast i32 %tmp38.i345 to float
  %721 = fmul float %tmp39.i346, %719
  %722 = fmul float %719, %tmp4678
  %tmp11.i349 = bitcast float %721 to i32
  %phitmp1233 = zext i32 %tmp11.i349 to i96
  %phitmp1234 = shl nuw nsw i96 %phitmp1233, 32
  %phitmp1236 = bitcast float %722 to i32
  %phitmp1237 = zext i32 %phitmp1236 to i96
  %phitmp1238 = shl nuw i96 %phitmp1237, 64
  %extract.t1746 = trunc i512 %tmp1178 to i32
  %extract.t1752 = trunc i512 %tmp1178 to i128
  br label %invcont134

invcont134:                                       ; preds = %bb115.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit166.invcont134_crit_edge
  %.pre-phi1745 = phi float [ %.pre1744, %_ZN3BVH9intersectER9HitRecordR3Ray.exit166.invcont134_crit_edge ], [ %508, %bb115.i ]
  %.pre-phi1705 = phi float [ %.pre1704, %_ZN3BVH9intersectER9HitRecordR3Ray.exit166.invcont134_crit_edge ], [ %487, %bb115.i ]
  %.pre-phi1703 = phi float [ %.pre1702, %_ZN3BVH9intersectER9HitRecordR3Ray.exit166.invcont134_crit_edge ], [ %486, %bb115.i ]
  %tmp503.pre-phi.off0 = phi i32 [ %extract.t, %_ZN3BVH9intersectER9HitRecordR3Ray.exit166.invcont134_crit_edge ], [ %extract.t1746, %bb115.i ]
  %tmp503.pre-phi.off01750 = phi i128 [ %extract.t1751, %_ZN3BVH9intersectER9HitRecordR3Ray.exit166.invcont134_crit_edge ], [ %extract.t1752, %bb115.i ]
  %.05164.0.off0.off0 = phi float [ 0x3FE1F3B640000000, %_ZN3BVH9intersectER9HitRecordR3Ray.exit166.invcont134_crit_edge ], [ %720, %bb115.i ]
  %.15165.0.off32 = phi i96 [ 4556129611431280640, %_ZN3BVH9intersectER9HitRecordR3Ray.exit166.invcont134_crit_edge ], [ %phitmp1234, %bb115.i ]
  %.25166.0 = phi i96 [ 19648584296011284141125402624, %_ZN3BVH9intersectER9HitRecordR3Ray.exit166.invcont134_crit_edge ], [ %phitmp1238, %bb115.i ]
  %memtmp4.i657.0 = phi i128 [ %memtmp4.i657.11379, %_ZN3BVH9intersectER9HitRecordR3Ray.exit166.invcont134_crit_edge ], [ %ins4977, %bb115.i ]
  %ins976 = or i96 %.25166.0, %.15165.0.off32
  %723 = fmul float %tmp765, %tmp1221
  %724 = fadd float %12, %723
  %725 = call float @llvm.trax.invsqrt(float %.pre-phi1745) nounwind
  br label %bb47.i

bb.i540:                                          ; preds = %bb47.i
  %scevgep15391540 = getelementptr [220000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 0, i32 0
  %scevgep1538 = getelementptr [220000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 0, i32 1
  %scevgep1537 = getelementptr [220000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 0, i32 2
  %726 = load float* %scevgep15391540, align 4
  %727 = load float* %scevgep1538, align 4
  %728 = load float* %scevgep1537, align 4
  %tmp4290 = bitcast float %726 to i32
  %tmp4291 = zext i32 %tmp4290 to i96
  %tmp4284 = bitcast float %727 to i32
  %tmp4285 = zext i32 %tmp4284 to i96
  %tmp4286 = shl nuw nsw i96 %tmp4285, 32
  %ins4288 = or i96 %tmp4286, %tmp4291
  %tmp4278 = bitcast float %728 to i32
  %tmp3930 = zext i96 %ins4288 to i128
  %mask3931 = and i128 %memtmp31.i.0, -79228162514264337593543950336
  %tmp3924 = zext i32 %tmp4278 to i128
  %tmp3925 = shl nuw nsw i128 %tmp3924, 64
  %mask3926 = or i128 %tmp3925, %mask3931
  %ins3927 = or i128 %mask3926, %tmp3930
  %ins3927.tr = trunc i128 %ins3927 to i96
  %729 = fsub float %726, %.pre-phi1703
  %730 = fsub float %727, %.pre-phi1705
  %tmp4250 = lshr i96 %ins3927.tr, 64
  %tmp4251 = trunc i96 %tmp4250 to i32
  %tmp4252 = bitcast i32 %tmp4251 to float
  %731 = fsub float %tmp4252, %724
  %732 = fmul float %729, %729
  %733 = fmul float %730, %730
  %734 = fadd float %732, %733
  %735 = fmul float %731, %731
  %736 = fadd float %734, %735
  %737 = fcmp olt float %736, 2.890000e+02
  br i1 %737, label %bb45.i549, label %bb46.i550

bb45.i549:                                        ; preds = %bb.i540
  %738 = add nsw i32 %num_of_photons.i499.1, 1
  %739 = load float* %scevgep1536, align 4
  %740 = fadd float %power.i.0.1, %739
  %741 = load float* %scevgep1535, align 4
  %742 = fadd float %power.i.1.1, %741
  %743 = load float* %scevgep, align 4
  %744 = fadd float %power.i.2.1, %743
  %745 = icmp sgt i32 %738, 10
  br i1 %745, label %bb49.i, label %bb46.i550

bb46.i550:                                        ; preds = %bb45.i549, %bb.i540
  %power.i.0.0 = phi float [ %740, %bb45.i549 ], [ %power.i.0.1, %bb.i540 ]
  %power.i.1.0 = phi float [ %742, %bb45.i549 ], [ %power.i.1.1, %bb.i540 ]
  %power.i.2.0 = phi float [ %744, %bb45.i549 ], [ %power.i.2.1, %bb.i540 ]
  %num_of_photons.i499.0 = phi i32 [ %738, %bb45.i549 ], [ %num_of_photons.i499.1, %bb.i540 ]
  %indvar.next = add i64 %indvar, 1
  br label %bb47.i

bb47.i:                                           ; preds = %bb46.i550, %invcont134
  %indvar = phi i64 [ %indvar.next, %bb46.i550 ], [ 0, %invcont134 ]
  %power.i.0.1 = phi float [ %power.i.0.0, %bb46.i550 ], [ 0.000000e+00, %invcont134 ]
  %power.i.1.1 = phi float [ %power.i.1.0, %bb46.i550 ], [ 0.000000e+00, %invcont134 ]
  %power.i.2.1 = phi float [ %power.i.2.0, %bb46.i550 ], [ 0.000000e+00, %invcont134 ]
  %memtmp31.i.0 = phi i128 [ %ins3927, %bb46.i550 ], [ %memtmp31.i.31371, %invcont134 ]
  %num_of_photons.i499.1 = phi i32 [ %num_of_photons.i499.0, %bb46.i550 ], [ 0, %invcont134 ]
  %storemerge.i551 = trunc i64 %indvar to i32
  %scevgep = getelementptr [220000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 1, i64 2
  %scevgep1535 = getelementptr [220000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 1, i64 1
  %scevgep1536 = getelementptr [220000 x %struct.Photon]* %38, i64 0, i64 %indvar, i32 1, i64 0
  %746 = icmp slt i32 %storemerge.i551, %count.2.ph.ph1451
  br i1 %746, label %bb.i540, label %bb48.i

bb48.i:                                           ; preds = %bb47.i
  %747 = icmp eq i32 %num_of_photons.i499.1, 0
  br i1 %747, label %invcont159, label %bb49.i

bb49.i:                                           ; preds = %bb48.i, %bb45.i549
  %power.i.0.2 = phi float [ %power.i.0.1, %bb48.i ], [ %740, %bb45.i549 ]
  %power.i.1.2 = phi float [ %power.i.1.1, %bb48.i ], [ %742, %bb45.i549 ]
  %power.i.2.2 = phi float [ %power.i.2.1, %bb48.i ], [ %744, %bb45.i549 ]
  %memtmp31.i.1 = phi i128 [ %memtmp31.i.0, %bb48.i ], [ %ins3927, %bb45.i549 ]
  %num_of_photons.i499.2 = phi i32 [ %num_of_photons.i499.1, %bb48.i ], [ %738, %bb45.i549 ]
  %748 = sitofp i32 %num_of_photons.i499.2 to float
  %749 = fdiv float %power.i.0.2, %748
  %750 = fdiv float %power.i.1.2, %748
  %751 = fdiv float %power.i.2.2, %748
  %tmp4173 = and i128 %tmp503.pre-phi.off01750, 79228162495817593519834398720
  %tmp3890 = lshr exact i128 %tmp4173, 64
  %tmp3891 = trunc i128 %tmp3890 to i32
  %tmp3892 = bitcast i32 %tmp3891 to float
  %tmp42.i385 = bitcast i32 %tmp503.pre-phi.off0 to float
  %752 = fmul float %tmp42.i385, %749
  %tmp37.i3861249 = lshr i512 %mask5611144, 384
  %tmp38.i387 = trunc i512 %tmp37.i3861249 to i32
  %tmp39.i388 = bitcast i32 %tmp38.i387 to float
  %753 = fmul float %tmp39.i388, %750
  %754 = fmul float %751, %tmp3892
  br label %invcont159

invcont159:                                       ; preds = %bb49.i, %bb48.i
  %.04136.0 = phi float [ %752, %bb49.i ], [ 0.000000e+00, %bb48.i ]
  %.14137.0 = phi float [ %753, %bb49.i ], [ 0.000000e+00, %bb48.i ]
  %.24138.0 = phi float [ %754, %bb49.i ], [ 0.000000e+00, %bb48.i ]
  %memtmp31.i.2 = phi i128 [ %memtmp31.i.1, %bb49.i ], [ %memtmp31.i.0, %bb48.i ]
  %tmp935 = lshr exact i96 %.15165.0.off32, 32
  %tmp936 = trunc i96 %tmp935 to i32
  %tmp937 = bitcast i32 %tmp936 to float
  %tmp931 = lshr i96 %ins976, 64
  %tmp932 = trunc i96 %tmp931 to i32
  %tmp933 = bitcast i32 %tmp932 to float
  %755 = fadd float %.04136.0, %.05164.0.off0.off0
  %756 = fadd float %.14137.0, %tmp937
  %757 = fadd float %tmp933, %.24138.0
  %tmp1012 = bitcast float %755 to i32
  %tmp1013 = zext i32 %tmp1012 to i64
  %tmp988 = bitcast float %756 to i32
  %tmp989 = zext i32 %tmp988 to i64
  %tmp990 = shl nuw i64 %tmp989, 32
  %ins992 = or i64 %tmp990, %tmp1013
  %758 = lshr i192 %ins864, 96
  %.tr1264 = trunc i192 %758 to i128
  %tmp2883 = and i128 %.tr1264, 79228162495817593519834398720
  %759 = fdiv float %284, %321
  %760 = fdiv float %285, %321
  %761 = fcmp ogt float %759, %760
  %tx1.i.0 = select i1 %761, float %760, float %759
  %tx2.i.0 = select i1 %761, float %759, float %760
  %762 = fcmp ogt float %tx1.i.0, -1.000000e+10
  %tnear.i.0 = select i1 %762, float %tx1.i.0, float -1.000000e+10
  %763 = fcmp olt float %tx2.i.0, 1.000000e+10
  %tfar.i.0 = select i1 %763, float %tx2.i.0, float 1.000000e+10
  %764 = fcmp ogt float %tnear.i.0, %tfar.i.0
  %765 = fcmp olt float %tfar.i.0, 0.000000e+00
  %or.cond5822 = or i1 %764, %765
  br i1 %or.cond5822, label %invcont198, label %bb29.i

bb29.i:                                           ; preds = %invcont159
  %766 = fdiv float %286, %320
  %767 = fdiv float %287, %320
  %768 = fcmp ogt float %766, %767
  %ty1.i.0 = select i1 %768, float %767, float %766
  %ty2.i.0 = select i1 %768, float %766, float %767
  %769 = fcmp ogt float %ty1.i.0, %tnear.i.0
  %tnear.i.1 = select i1 %769, float %ty1.i.0, float %tnear.i.0
  %770 = fcmp olt float %ty2.i.0, %tfar.i.0
  %tfar.i.1 = select i1 %770, float %ty2.i.0, float %tfar.i.0
  %771 = fcmp ogt float %tnear.i.1, %tfar.i.1
  %772 = fcmp olt float %tfar.i.1, 0.000000e+00
  %or.cond5823 = or i1 %771, %772
  br i1 %or.cond5823, label %invcont198, label %bb62.i

bb62.i:                                           ; preds = %bb29.i
  %tmp2716 = lshr i128 %mask2730, 64
  %tmp2717 = trunc i128 %tmp2716 to i32
  %tmp2718 = bitcast i32 %tmp2717 to float
  %773 = fsub float 0.000000e+00, %tmp2718
  %tmp2694 = lshr exact i128 %tmp2883, 64
  %tmp2695 = trunc i128 %tmp2694 to i32
  %tmp2696 = bitcast i32 %tmp2695 to float
  %774 = fdiv float %773, %tmp2696
  %775 = fsub float 0x4074A00420000000, %tmp2718
  %776 = fdiv float %775, %tmp2696
  %777 = fcmp ogt float %774, %776
  %tz1.i.0 = select i1 %777, float %776, float %774
  %tz2.i.0 = select i1 %777, float %774, float %776
  %778 = fcmp ogt float %tz1.i.0, %tnear.i.1
  %tnear.i.2 = select i1 %778, float %tz1.i.0, float %tnear.i.1
  %779 = fcmp olt float %tz2.i.0, %tfar.i.1
  %tfar.i.2 = select i1 %779, float %tz2.i.0, float %tfar.i.1
  %780 = fcmp ogt float %tnear.i.2, %tfar.i.2
  %781 = fcmp olt float %tfar.i.2, 0.000000e+00
  %or.cond5824 = or i1 %780, %781
  br i1 %or.cond5824, label %invcont198, label %bb46.i.preheader

bb46.i.preheader:                                 ; preds = %bb62.i
  %782 = fcmp olt float %tnear.i.2, %tfar.i.2
  br i1 %782, label %bb44.i.preheader, label %invcont191

bb1.i:                                            ; preds = %bb44.i
  %scevgep15491550 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %indvar1541, i32 0, i32 0
  %scevgep1548 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %indvar1541, i32 0, i32 1
  %scevgep1547 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %indvar1541, i32 0, i32 2
  %783 = fmul float %tmp765, %step.i.01351
  %tmp1985 = bitcast float %783 to i32
  %mask1741 = and i128 %memtmp5.i.0, -79228162514264337593543950336
  %tmp1734 = zext i32 %tmp1985 to i128
  %tmp1735 = shl nuw nsw i128 %tmp1734, 64
  %mask1736 = or i128 %mask1741, %tmp1740
  %ins1737 = or i128 %mask1736, %tmp1735
  %ins1737.tr = trunc i128 %ins1737 to i96
  %tmp1796 = lshr i96 %ins1737.tr, 64
  %tmp1797 = trunc i96 %tmp1796 to i32
  %tmp1798 = bitcast i32 %tmp1797 to float
  %784 = fadd float %tmp2718, %tmp1798
  %785 = load float* %scevgep15491550, align 8
  %786 = load float* %scevgep1548, align 4
  %787 = load float* %scevgep1547, align 8
  %tmp1951 = bitcast float %785 to i32
  %tmp1952 = zext i32 %tmp1951 to i96
  %tmp1945 = bitcast float %786 to i32
  %tmp1946 = zext i32 %tmp1945 to i96
  %tmp1947 = shl nuw nsw i96 %tmp1946, 32
  %ins1949 = or i96 %tmp1947, %tmp1952
  %tmp1939 = bitcast float %787 to i32
  %tmp1674 = zext i96 %ins1949 to i128
  %mask1675 = and i128 %memtmp25.i.0, -79228162514264337593543950336
  %tmp1668 = zext i32 %tmp1939 to i128
  %tmp1669 = shl nuw nsw i128 %tmp1668, 64
  %mask1670 = or i128 %tmp1669, %mask1675
  %ins1671 = or i128 %mask1670, %tmp1674
  %ins1671.tr = trunc i128 %ins1671 to i96
  %788 = fsub float %785, %811
  %789 = fsub float %786, %812
  %tmp1911 = lshr i96 %ins1671.tr, 64
  %tmp1912 = trunc i96 %tmp1911 to i32
  %tmp1913 = bitcast i32 %tmp1912 to float
  %790 = fsub float %tmp1913, %784
  %791 = fmul float %788, %788
  %792 = fmul float %789, %789
  %793 = fadd float %791, %792
  %794 = fmul float %790, %790
  %795 = fadd float %793, %794
  %796 = fcmp olt float %795, 1.000000e+04
  br i1 %796, label %bb39.i, label %bb40.i

bb39.i:                                           ; preds = %bb1.i
  %797 = add nsw i32 %num_of_photons.i.1, 1
  %798 = load float* %scevgep1546, align 4
  %799 = fadd float %power.i.0.4, %798
  %800 = load float* %scevgep1545, align 4
  %801 = fadd float %power.i.1.4, %800
  %802 = load float* %scevgep1544, align 4
  %803 = fadd float %power.i.2.4, %802
  %804 = icmp sgt i32 %797, 20
  br i1 %804, label %bb45.i, label %bb40.i

bb40.i:                                           ; preds = %bb39.i, %bb1.i
  %power.i.0.3 = phi float [ %799, %bb39.i ], [ %power.i.0.4, %bb1.i ]
  %power.i.1.3 = phi float [ %801, %bb39.i ], [ %power.i.1.4, %bb1.i ]
  %power.i.2.3 = phi float [ %803, %bb39.i ], [ %power.i.2.4, %bb1.i ]
  %num_of_photons.i.0 = phi i32 [ %797, %bb39.i ], [ %num_of_photons.i.1, %bb1.i ]
  %805 = icmp eq i32 %num_of_photons.i.0, 0
  %volume_radiance.i.0.0 = select i1 %805, float %volume_radiance.i.0.1, float %power.i.0.3
  %volume_radiance.i.1.0 = select i1 %805, float %volume_radiance.i.1.1, float %power.i.1.3
  %volume_radiance.i.2.0 = select i1 %805, float %volume_radiance.i.2.1, float %power.i.2.3
  %indvar.next1542 = add i64 %indvar1541, 1
  br label %bb44.i

bb44.i:                                           ; preds = %bb44.i.preheader, %bb40.i
  %indvar1541 = phi i64 [ 0, %bb44.i.preheader ], [ %indvar.next1542, %bb40.i ]
  %power.i.0.4 = phi float [ %power.i.0.61340, %bb44.i.preheader ], [ %power.i.0.3, %bb40.i ]
  %power.i.1.4 = phi float [ %power.i.1.61341, %bb44.i.preheader ], [ %power.i.1.3, %bb40.i ]
  %power.i.2.4 = phi float [ %power.i.2.61342, %bb44.i.preheader ], [ %power.i.2.3, %bb40.i ]
  %volume_radiance.i.0.1 = phi float [ %volume_radiance.i.0.21343, %bb44.i.preheader ], [ %volume_radiance.i.0.0, %bb40.i ]
  %volume_radiance.i.1.1 = phi float [ %volume_radiance.i.1.21344, %bb44.i.preheader ], [ %volume_radiance.i.1.0, %bb40.i ]
  %volume_radiance.i.2.1 = phi float [ %volume_radiance.i.2.21345, %bb44.i.preheader ], [ %volume_radiance.i.2.0, %bb40.i ]
  %memtmp25.i.0 = phi i128 [ %memtmp25.i.21346, %bb44.i.preheader ], [ %ins1671, %bb40.i ]
  %memtmp5.i.0 = phi i128 [ %memtmp5.i.21348, %bb44.i.preheader ], [ %ins1737, %bb40.i ]
  %num_of_photons.i.1 = phi i32 [ %num_of_photons.i.31350, %bb44.i.preheader ], [ %num_of_photons.i.0, %bb40.i ]
  %storemerge.i = trunc i64 %indvar1541 to i32
  %scevgep1544 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %indvar1541, i32 1, i64 2
  %scevgep1545 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %indvar1541, i32 1, i64 1
  %scevgep1546 = getelementptr [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %indvar1541, i32 1, i64 0
  %806 = icmp slt i32 %storemerge.i, %v_p_count.1.ph.ph.ph
  br i1 %806, label %bb1.i, label %bb45.i

bb45.i:                                           ; preds = %bb44.i, %bb39.i
  %power.i.0.5 = phi float [ %799, %bb39.i ], [ %power.i.0.4, %bb44.i ]
  %power.i.1.5 = phi float [ %801, %bb39.i ], [ %power.i.1.4, %bb44.i ]
  %power.i.2.5 = phi float [ %803, %bb39.i ], [ %power.i.2.4, %bb44.i ]
  %memtmp25.i.1 = phi i128 [ %ins1671, %bb39.i ], [ %memtmp25.i.0, %bb44.i ]
  %memtmp5.i.1 = phi i128 [ %ins1737, %bb39.i ], [ %memtmp5.i.0, %bb44.i ]
  %num_of_photons.i.2 = phi i32 [ %797, %bb39.i ], [ %num_of_photons.i.1, %bb44.i ]
  %807 = fadd float %step.i.01351, 1.000000e+00
  %808 = fcmp olt float %807, %tfar.i.2
  br i1 %808, label %bb44.i.preheader, label %invcont191

bb44.i.preheader:                                 ; preds = %bb45.i, %bb46.i.preheader
  %step.i.01351 = phi float [ %807, %bb45.i ], [ %tnear.i.2, %bb46.i.preheader ]
  %num_of_photons.i.31350 = phi i32 [ %num_of_photons.i.2, %bb45.i ], [ 0, %bb46.i.preheader ]
  %memtmp5.i.21348 = phi i128 [ %memtmp5.i.1, %bb45.i ], [ %memtmp5.i.41364, %bb46.i.preheader ]
  %memtmp25.i.21346 = phi i128 [ %memtmp25.i.1, %bb45.i ], [ %memtmp25.i.41362, %bb46.i.preheader ]
  %volume_radiance.i.2.21345 = phi float [ %volume_radiance.i.2.1, %bb45.i ], [ 0.000000e+00, %bb46.i.preheader ]
  %volume_radiance.i.1.21344 = phi float [ %volume_radiance.i.1.1, %bb45.i ], [ 0.000000e+00, %bb46.i.preheader ]
  %volume_radiance.i.0.21343 = phi float [ %volume_radiance.i.0.1, %bb45.i ], [ 0.000000e+00, %bb46.i.preheader ]
  %power.i.2.61342 = phi float [ %power.i.2.5, %bb45.i ], [ 0.000000e+00, %bb46.i.preheader ]
  %power.i.1.61341 = phi float [ %power.i.1.5, %bb45.i ], [ 0.000000e+00, %bb46.i.preheader ]
  %power.i.0.61340 = phi float [ %power.i.0.5, %bb45.i ], [ 0.000000e+00, %bb46.i.preheader ]
  %809 = fmul float %321, %step.i.01351
  %810 = fmul float %320, %step.i.01351
  %tmp1997 = bitcast float %809 to i32
  %tmp1998 = zext i32 %tmp1997 to i96
  %tmp1991 = bitcast float %810 to i32
  %tmp1992 = zext i32 %tmp1991 to i96
  %tmp1993 = shl nuw nsw i96 %tmp1992, 32
  %ins1995 = or i96 %tmp1993, %tmp1998
  %tmp1740 = zext i96 %ins1995 to i128
  %811 = fadd float %809, %10
  %812 = fadd float %810, %11
  br label %bb44.i

invcont191:                                       ; preds = %bb45.i, %bb46.i.preheader
  %step.i.0.lcssa = phi float [ %tnear.i.2, %bb46.i.preheader ], [ %807, %bb45.i ]
  %memtmp5.i.2.lcssa = phi i128 [ %memtmp5.i.41364, %bb46.i.preheader ], [ %memtmp5.i.1, %bb45.i ]
  %memtmp25.i.2.lcssa = phi i128 [ %memtmp25.i.41362, %bb46.i.preheader ], [ %memtmp25.i.1, %bb45.i ]
  %volume_radiance.i.2.2.lcssa = phi float [ 0.000000e+00, %bb46.i.preheader ], [ %volume_radiance.i.2.1, %bb45.i ]
  %volume_radiance.i.1.2.lcssa = phi float [ 0.000000e+00, %bb46.i.preheader ], [ %volume_radiance.i.1.1, %bb45.i ]
  %volume_radiance.i.0.2.lcssa = phi float [ 0.000000e+00, %bb46.i.preheader ], [ %volume_radiance.i.0.1, %bb45.i ]
  %813 = fdiv float 1.000000e+00, %step.i.0.lcssa
  %814 = fmul float %volume_radiance.i.0.2.lcssa, %813
  %815 = fmul float %volume_radiance.i.1.2.lcssa, %813
  %816 = fmul float %volume_radiance.i.2.2.lcssa, %813
  %tmp1884 = bitcast float %814 to i32
  %tmp1885 = zext i32 %tmp1884 to i96
  %tmp1878 = bitcast float %815 to i32
  %tmp1879 = zext i32 %tmp1878 to i96
  %tmp1880 = shl nuw nsw i96 %tmp1879, 32
  %ins1882 = or i96 %tmp1880, %tmp1885
  %tmp1872 = bitcast float %816 to i32
  %tmp1652 = zext i96 %ins1882 to i128
  %tmp1646 = zext i32 %tmp1872 to i128
  %tmp1647 = shl nuw nsw i128 %tmp1646, 64
  %mask792 = and i128 %memtmp170.11360, -79228162514264337593543950336
  %mask787 = or i128 %tmp1652, %mask792
  %ins788 = or i128 %mask787, %tmp1647
  %tmp773 = lshr i128 %ins788, 64
  %tmp774 = trunc i128 %tmp773 to i32
  %tmp775 = bitcast i32 %tmp774 to float
  %817 = fadd float %814, %755
  %818 = fadd float %815, %756
  %819 = fadd float %757, %tmp775
  %tmp1004 = bitcast float %817 to i32
  %tmp1007 = zext i32 %tmp1004 to i64
  %tmp982 = bitcast float %818 to i32
  %tmp983 = zext i32 %tmp982 to i64
  %tmp984 = shl nuw i64 %tmp983, 32
  %ins986 = or i64 %tmp984, %tmp1007
  %820 = fcmp olt float %817, 0.000000e+00
  br i1 %820, label %bb5.i444, label %bb1.i443

bb1.i443:                                         ; preds = %invcont191
  %821 = fcmp ogt float %817, 1.000000e+00
  br i1 %821, label %bb5.i444, label %bb4.i

bb4.i:                                            ; preds = %bb1.i443
  br label %bb5.i444

bb5.i444:                                         ; preds = %bb4.i, %bb1.i443, %invcont191
  %r.0.i = phi float [ %817, %bb4.i ], [ 0.000000e+00, %invcont191 ], [ 1.000000e+00, %bb1.i443 ]
  %822 = fcmp olt float %819, 0.000000e+00
  br i1 %822, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i444
  %823 = fcmp ogt float %819, 1.000000e+00
  br i1 %823, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i444
  %b.0.i = phi float [ %819, %bb11.i ], [ 0.000000e+00, %bb5.i444 ], [ 1.000000e+00, %bb8.i ]
  %824 = fcmp olt float %818, 0.000000e+00
  br i1 %824, label %_ZN5Image3setEii5Color.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %825 = fcmp ogt float %818, 1.000000e+00
  br i1 %825, label %_ZN5Image3setEii5Color.exit, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %_ZN5Image3setEii5Color.exit

_ZN5Image3setEii5Color.exit:                      ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.0.i = phi float [ %818, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %826 = mul nsw i32 %288, %0
  %827 = add nsw i32 %826, %289
  %828 = mul nsw i32 %827, 3
  %829 = add nsw i32 %828, %2
  call void @llvm.trax.storef(float %r.0.i, i32 %829, i32 0) nounwind
  call void @llvm.trax.storef(float %g.0.i, i32 %829, i32 1) nounwind
  call void @llvm.trax.storef(float %b.0.i, i32 %829, i32 2) nounwind
  br label %invcont198

invcont198:                                       ; preds = %_ZN5Image3setEii5Color.exit, %bb62.i, %bb29.i, %invcont159
  %val194.in = phi i64 [ %ins986, %_ZN5Image3setEii5Color.exit ], [ %ins992, %invcont159 ], [ %ins992, %bb29.i ], [ %ins992, %bb62.i ]
  %val196 = phi float [ %819, %_ZN5Image3setEii5Color.exit ], [ %757, %invcont159 ], [ %757, %bb29.i ], [ %757, %bb62.i ]
  %memtmp170.0 = phi i128 [ %ins788, %_ZN5Image3setEii5Color.exit ], [ %memtmp170.11360, %invcont159 ], [ %memtmp170.11360, %bb29.i ], [ %memtmp170.11360, %bb62.i ]
  %memtmp25.i.3 = phi i128 [ %memtmp25.i.2.lcssa, %_ZN5Image3setEii5Color.exit ], [ %memtmp25.i.41362, %invcont159 ], [ %memtmp25.i.41362, %bb29.i ], [ %memtmp25.i.41362, %bb62.i ]
  %memtmp5.i.3 = phi i128 [ %memtmp5.i.2.lcssa, %_ZN5Image3setEii5Color.exit ], [ %memtmp5.i.41364, %invcont159 ], [ %memtmp5.i.41364, %bb29.i ], [ %memtmp5.i.41364, %bb62.i ]
  %tmp47.i447 = trunc i64 %val194.in to i32
  %tmp48.i448 = bitcast i32 %tmp47.i447 to float
  %830 = fcmp olt float %tmp48.i448, 0.000000e+00
  br i1 %830, label %bb5.i452, label %bb1.i449

bb1.i449:                                         ; preds = %invcont198
  %831 = fcmp ogt float %tmp48.i448, 1.000000e+00
  br i1 %831, label %bb5.i452, label %bb4.i450

bb4.i450:                                         ; preds = %bb1.i449
  br label %bb5.i452

bb5.i452:                                         ; preds = %bb4.i450, %bb1.i449, %invcont198
  %r.0.i451 = phi float [ %tmp48.i448, %bb4.i450 ], [ 0.000000e+00, %invcont198 ], [ 1.000000e+00, %bb1.i449 ]
  %832 = fcmp olt float %val196, 0.000000e+00
  br i1 %832, label %bb12.i459, label %bb8.i453

bb8.i453:                                         ; preds = %bb5.i452
  %833 = fcmp ogt float %val196, 1.000000e+00
  br i1 %833, label %bb12.i459, label %bb11.i454

bb11.i454:                                        ; preds = %bb8.i453
  br label %bb12.i459

bb12.i459:                                        ; preds = %bb11.i454, %bb8.i453, %bb5.i452
  %b.0.i455 = phi float [ %val196, %bb11.i454 ], [ 0.000000e+00, %bb5.i452 ], [ 1.000000e+00, %bb8.i453 ]
  %tmp35.i456 = lshr i64 %val194.in, 32
  %tmp36.i457 = trunc i64 %tmp35.i456 to i32
  %tmp37.i458 = bitcast i32 %tmp36.i457 to float
  %834 = fcmp olt float %tmp37.i458, 0.000000e+00
  br i1 %834, label %_ZN5Image3setEii5Color.exit463, label %bb15.i460

bb15.i460:                                        ; preds = %bb12.i459
  %835 = fcmp ogt float %tmp37.i458, 1.000000e+00
  br i1 %835, label %_ZN5Image3setEii5Color.exit463, label %bb18.i461

bb18.i461:                                        ; preds = %bb15.i460
  br label %_ZN5Image3setEii5Color.exit463

_ZN5Image3setEii5Color.exit463:                   ; preds = %bb18.i461, %bb15.i460, %bb12.i459
  %g.0.i462 = phi float [ %tmp37.i458, %bb18.i461 ], [ 0.000000e+00, %bb12.i459 ], [ 1.000000e+00, %bb15.i460 ]
  %836 = mul nsw i32 %288, %0
  %837 = add nsw i32 %836, %289
  %838 = mul nsw i32 %837, 3
  %839 = add nsw i32 %838, %2
  call void @llvm.trax.storef(float %r.0.i451, i32 %839, i32 0) nounwind
  call void @llvm.trax.storef(float %g.0.i462, i32 %839, i32 1) nounwind
  call void @llvm.trax.storef(float %b.0.i455, i32 %839, i32 2) nounwind
  %840 = call i32 @llvm.trax.atominc(i32 0)
  %841 = icmp sgt i32 %278, %840
  br i1 %841, label %invcont129, label %return

return:                                           ; preds = %_ZN5Image3setEii5Color.exit463, %invcont120
  ret i32 0
}

declare void @llvm.trax.printf(float) nounwind

declare i32 @llvm.trax.atominc(i32) nounwind

declare float @llvm.trax.invsqrt(float) nounwind
