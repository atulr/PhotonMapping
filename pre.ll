; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

%0 = type { double, float }
%struct.BVH = type { i32 }
%struct.Box = type { %struct.Color, %struct.Color }
%struct.Color = type { float, float, float }
%struct.HitRecord = type { float, %struct.Trigonum }
%struct.Image = type { i32, i32, i32 }
%struct.Mat = type { %struct.Color, float, float }
%struct.NearestPhoton = type { i32, i32, i32, %struct.Color, [1000 x float], [1000 x %struct.Photon] }
%struct.ParticipatingVolume = type { %struct.Color, %struct.Color }
%struct.Photon = type { %struct.Color, [3 x float], i8, float }
%struct.PhotonMap = type { [5000 x %struct.Photon], i32, i32, [3 x float], [3 x float] }
%struct.PinHoleCamera = type { %struct.Color, %struct.Color, %struct.Color, %struct.Color, %struct.Color, float, float }
%struct.PointLight = type { %struct.Color, %struct.Color }
%struct.Ray = type { %struct.Color, %struct.Color }
%struct.Shader = type <{ i8 }>
%struct.Trigonum = type { %struct.Color, %struct.Color, %struct.Color, i32, %struct.Mat }
%struct.Vector = type { float, float, float }

declare float @llvm.trax.loadf(i32, i32) nounwind

define internal fastcc void @_ZN8TrigonumC1E6VectorS0_S0_ii(%struct.Trigonum* %this, double %point1.0, float %point1.1, double %point2.0, float %point2.1, double %point3.0, float %point3.1, i32 %i, i32 %mat_id) nounwind ssp align 2 {
return:
  %tmp80 = bitcast double %point1.0 to i64
  %tmp58 = bitcast double %point2.0 to i64
  %tmp36 = bitcast double %point3.0 to i64
  %0 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 0, i32 0
  %1 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 0
  %2 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 1
  %3 = bitcast %struct.Trigonum* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %2, align 4
  %4 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %4, align 4
  %5 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 0
  %6 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 1
  store float 0.000000e+00, float* %6, align 4
  %7 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 2
  store float 0.000000e+00, float* %7, align 4
  %8 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 0
  store float 0.000000e+00, float* %8, align 4
  %9 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 1
  store float 0.000000e+00, float* %9, align 4
  %10 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 2
  store float 0.000000e+00, float* %10, align 4
  %tmp93 = trunc i64 %tmp80 to i32
  %tmp94 = bitcast i32 %tmp93 to float
  store float %tmp94, float* %0, align 4
  %11 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 0, i32 1
  %tmp89 = lshr i64 %tmp80, 32
  %tmp90 = trunc i64 %tmp89 to i32
  %tmp91 = bitcast i32 %tmp90 to float
  store float %tmp91, float* %11, align 4
  %12 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 0, i32 2
  store float %point1.1, float* %12, align 4
  %tmp71 = trunc i64 %tmp58 to i32
  %tmp72 = bitcast i32 %tmp71 to float
  store float %tmp72, float* %1, align 4
  %13 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 1
  %tmp67 = lshr i64 %tmp58, 32
  %tmp68 = trunc i64 %tmp67 to i32
  %tmp69 = bitcast i32 %tmp68 to float
  store float %tmp69, float* %13, align 4
  %14 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 1, i32 2
  store float %point2.1, float* %14, align 4
  %tmp49 = trunc i64 %tmp36 to i32
  %tmp50 = bitcast i32 %tmp49 to float
  store float %tmp50, float* %5, align 4
  %15 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 1
  %tmp45 = lshr i64 %tmp36, 32
  %tmp46 = trunc i64 %tmp45 to i32
  %tmp47 = bitcast i32 %tmp46 to float
  store float %tmp47, float* %15, align 4
  %16 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 2, i32 2
  store float %point3.1, float* %16, align 4
  %17 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 3
  store i32 %i, i32* %17, align 4
  %18 = call i32 @llvm.trax.loadi(i32 0, i32 9)
  %19 = mul nsw i32 %mat_id, 25
  %20 = add nsw i32 %19, %18
  %21 = call float @llvm.trax.loadf(i32 %20, i32 6)
  %22 = call float @llvm.trax.loadf(i32 %20, i32 5)
  %23 = call float @llvm.trax.loadf(i32 %20, i32 4)
  store float %23, float* %8, align 4
  %24 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 1
  store float %22, float* %24, align 4
  %25 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 0, i32 2
  store float %21, float* %25, align 4
  %26 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 1
  store float 0x3FD3333340000000, float* %26, align 4
  %27 = getelementptr inbounds %struct.Trigonum* %this, i64 0, i32 4, i32 2
  store float 0x3FE6666660000000, float* %27, align 4
  ret void
}

declare i32 @llvm.trax.loadi(i32, i32) nounwind

define internal fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* nocapture %this, %struct.HitRecord* nocapture %hit_record, %struct.Box* %ray) nounwind ssp align 2 {
entry:
  %memtmp.i.i = alloca %struct.Trigonum, align 8
  %0 = alloca %struct.Color, align 8
  %1 = alloca %struct.Color, align 8
  %edge1.i = alloca %struct.Color, align 8
  %normal.i = alloca %struct.Color, align 8
  %s.i = alloca %struct.Color, align 8
  %stack = alloca [32 x i32], align 4
  %tri = alloca %struct.Trigonum, align 8
  %2 = getelementptr inbounds %struct.BVH* %this, i64 0, i32 0
  %3 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %4 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %7 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %8 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %ray819.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray819.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray819.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.1.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.1.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.1.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %9 = getelementptr inbounds %struct.Trigonum* %tri, i64 0, i32 0
  %10 = getelementptr inbounds %struct.Trigonum* %tri, i64 0, i32 2
  %elt.i30 = bitcast %struct.Color* %10 to double*
  %11 = getelementptr inbounds %struct.Trigonum* %tri, i64 0, i32 2, i32 2
  %12 = getelementptr inbounds %struct.Color* %edge1.i, i64 0, i32 0
  %13 = getelementptr inbounds %struct.Color* %edge1.i, i64 0, i32 1
  %14 = getelementptr inbounds %struct.Color* %edge1.i, i64 0, i32 2
  %15 = getelementptr inbounds %struct.Trigonum* %tri, i64 0, i32 1
  %16 = getelementptr inbounds %struct.Color* %normal.i, i64 0, i32 0
  %17 = getelementptr inbounds %struct.Color* %normal.i, i64 0, i32 1
  %18 = getelementptr inbounds %struct.Color* %normal.i, i64 0, i32 2
  %19 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %20 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %21 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %22 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %23 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %25 = getelementptr inbounds %struct.Color* %s.i, i64 0, i32 0
  %26 = getelementptr inbounds %struct.Color* %s.i, i64 0, i32 1
  %27 = getelementptr inbounds %struct.Color* %s.i, i64 0, i32 2
  %elt74.i = bitcast %struct.Color* %edge1.i to double*
  %28 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %29 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1
  %30 = bitcast %struct.Trigonum* %29 to i8*
  %memtmp4.i.i = bitcast %struct.Trigonum* %memtmp.i.i to i8*
  br label %bb.outer

bb.outer:                                         ; preds = %bb9, %entry
  %memtmp81.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp81.i.11379, %bb9 ]
  %memtmp75.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp75.i.11381, %bb9 ]
  %memtmp69.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp69.i.11383, %bb9 ]
  %memtmp63.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp63.i.11385, %bb9 ]
  %memtmp84.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp84.i.3, %bb9 ]
  %memtmp52.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp52.i.2, %bb9 ]
  %memtmp32.i.0.ph = phi i128 [ undef, %entry ], [ %memtmp32.i.2, %bb9 ]
  %node_id.0.ph = phi i32 [ 0, %entry ], [ %154, %bb9 ]
  %sp.0.ph = phi i32 [ -1, %entry ], [ %155, %bb9 ]
  br label %bb

bb:                                               ; preds = %bb3, %bb.outer
  %memtmp81.i.0 = phi i128 [ %ins182, %bb3 ], [ %memtmp81.i.0.ph, %bb.outer ]
  %memtmp75.i.0 = phi i128 [ %ins204, %bb3 ], [ %memtmp75.i.0.ph, %bb.outer ]
  %memtmp69.i.0 = phi i128 [ %ins226, %bb3 ], [ %memtmp69.i.0.ph, %bb.outer ]
  %memtmp63.i.0 = phi i128 [ %ins248, %bb3 ], [ %memtmp63.i.0.ph, %bb.outer ]
  %node_id.0 = phi i32 [ %73, %bb3 ], [ %node_id.0.ph, %bb.outer ]
  %sp.0 = phi i32 [ %76, %bb3 ], [ %sp.0.ph, %bb.outer ]
  %31 = load i32* %2, align 4
  %32 = shl nsw i32 %node_id.0, 3
  %33 = add nsw i32 %31, %32
  %34 = call float @llvm.trax.loadf(i32 %33, i32 2) nounwind
  %35 = call float @llvm.trax.loadf(i32 %33, i32 1) nounwind
  %36 = call float @llvm.trax.loadf(i32 %33, i32 0) nounwind
  %37 = call float @llvm.trax.loadf(i32 %33, i32 5) nounwind
  %38 = call float @llvm.trax.loadf(i32 %33, i32 4) nounwind
  %39 = call float @llvm.trax.loadf(i32 %33, i32 3) nounwind
  %40 = load float* %3, align 4
  %41 = load float* %4, align 4
  %42 = load float* %5, align 4
  %tmp736 = bitcast float %40 to i32
  %tmp737 = zext i32 %tmp736 to i96
  %tmp730 = bitcast float %41 to i32
  %tmp731 = zext i32 %tmp730 to i96
  %tmp732 = shl nuw nsw i96 %tmp731, 32
  %tmp724 = bitcast float %42 to i32
  %tmp421 = zext i32 %tmp724 to i128
  %tmp422 = shl nuw nsw i128 %tmp421, 64
  %43 = fsub float %36, %40
  %44 = load float* %6, align 4
  %45 = load float* %7, align 4
  %46 = load float* %8, align 4
  %tmp713 = bitcast float %44 to i32
  %tmp714 = zext i32 %tmp713 to i96
  %tmp707 = bitcast float %45 to i32
  %tmp708 = zext i32 %tmp707 to i96
  %tmp709 = shl nuw nsw i96 %tmp708, 32
  %tmp701 = bitcast float %46 to i32
  %tmp399 = zext i32 %tmp701 to i128
  %tmp400 = shl nuw nsw i128 %tmp399, 64
  %47 = fdiv float %43, %44
  %48 = fsub float %39, %40
  %49 = fdiv float %48, %44
  %50 = fcmp ogt float %47, %49
  %tx1.i.0 = select i1 %50, float %49, float %47
  %tx2.i.0 = select i1 %50, float %47, float %49
  %51 = fcmp ogt float %tx1.i.0, -1.000000e+10
  %tnear.i.0 = select i1 %51, float %tx1.i.0, float -1.000000e+10
  %52 = fcmp olt float %tx2.i.0, 1.000000e+10
  %tfar.i.0 = select i1 %52, float %tx2.i.0, float 1.000000e+10
  %53 = fcmp ogt float %tnear.i.0, %tfar.i.0
  %54 = fcmp olt float %tfar.i.0, 0.000000e+00
  %or.cond = or i1 %53, %54
  br i1 %or.cond, label %bb7, label %bb29.i

bb29.i:                                           ; preds = %bb
  %55 = fsub float %35, %41
  %56 = fdiv float %55, %45
  %57 = fsub float %38, %41
  %58 = fdiv float %57, %45
  %59 = fcmp ogt float %56, %58
  %ty1.i.0 = select i1 %59, float %58, float %56
  %ty2.i.0 = select i1 %59, float %56, float %58
  %60 = fcmp ogt float %ty1.i.0, %tnear.i.0
  %tnear.i.1 = select i1 %60, float %ty1.i.0, float %tnear.i.0
  %61 = fcmp olt float %ty2.i.0, %tfar.i.0
  %tfar.i.1 = select i1 %61, float %ty2.i.0, float %tfar.i.0
  %62 = fcmp ogt float %tnear.i.1, %tfar.i.1
  %63 = fcmp olt float %tfar.i.1, 0.000000e+00
  %or.cond1395 = or i1 %62, %63
  br i1 %or.cond1395, label %bb7, label %bb62.i

bb62.i:                                           ; preds = %bb29.i
  %ins550 = or i96 %tmp737, %tmp732
  %tmp251 = zext i96 %ins550 to i128
  %mask252 = and i128 %memtmp63.i.0, -79228162514264337593543950336
  %mask247 = or i128 %mask252, %tmp251
  %ins248 = or i128 %mask247, %tmp422
  %tmp233 = lshr i128 %ins248, 64
  %tmp234 = trunc i128 %tmp233 to i32
  %tmp235 = bitcast i32 %tmp234 to float
  %64 = fsub float %34, %tmp235
  %ins527 = or i96 %tmp714, %tmp709
  %tmp229 = zext i96 %ins527 to i128
  %mask230 = and i128 %memtmp69.i.0, -79228162514264337593543950336
  %mask225 = or i128 %mask230, %tmp229
  %ins226 = or i128 %mask225, %tmp400
  %tmp211 = lshr i128 %ins226, 64
  %tmp212 = trunc i128 %tmp211 to i32
  %tmp213 = bitcast i32 %tmp212 to float
  %65 = fdiv float %64, %tmp213
  %ins504 = or i96 %tmp737, %tmp732
  %tmp207 = zext i96 %ins504 to i128
  %mask208 = and i128 %memtmp75.i.0, -79228162514264337593543950336
  %mask203 = or i128 %mask208, %tmp207
  %ins204 = or i128 %mask203, %tmp422
  %tmp189 = lshr i128 %ins204, 64
  %tmp190 = trunc i128 %tmp189 to i32
  %tmp191 = bitcast i32 %tmp190 to float
  %66 = fsub float %37, %tmp191
  %ins481 = or i96 %tmp714, %tmp709
  %tmp185 = zext i96 %ins481 to i128
  %mask186 = and i128 %memtmp81.i.0, -79228162514264337593543950336
  %mask181 = or i128 %mask186, %tmp185
  %ins182 = or i128 %mask181, %tmp400
  %tmp167 = lshr i128 %ins182, 64
  %tmp168 = trunc i128 %tmp167 to i32
  %tmp169 = bitcast i32 %tmp168 to float
  %67 = fdiv float %66, %tmp169
  %68 = fcmp ogt float %65, %67
  %tz1.i.0 = select i1 %68, float %67, float %65
  %tz2.i.0 = select i1 %68, float %65, float %67
  %69 = fcmp ogt float %tz1.i.0, %tnear.i.1
  %tnear.i.2 = select i1 %69, float %tz1.i.0, float %tnear.i.1
  %70 = fcmp olt float %tz2.i.0, %tfar.i.1
  %tfar.i.2 = select i1 %70, float %tz2.i.0, float %tfar.i.1
  %71 = fcmp ogt float %tnear.i.2, %tfar.i.2
  %72 = fcmp olt float %tfar.i.2, 0.000000e+00
  %or.cond1396 = or i1 %71, %72
  br i1 %or.cond1396, label %bb7, label %bb1

bb1:                                              ; preds = %bb62.i
  %73 = call i32 @llvm.trax.loadi(i32 %33, i32 7)
  %74 = call i32 @llvm.trax.loadi(i32 %33, i32 6)
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %bb3, label %bb6

bb3:                                              ; preds = %bb1
  %76 = add nsw i32 %sp.0, 1
  %77 = add nsw i32 %73, 1
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds [32 x i32]* %stack, i64 0, i64 %78
  store i32 %77, i32* %79, align 4
  br label %bb

bb5:                                              ; preds = %bb6
  %80 = mul nsw i32 %storemerge, 11
  %81 = add nsw i32 %80, %73
  %82 = call float @llvm.trax.loadf(i32 %81, i32 2) nounwind
  %83 = call float @llvm.trax.loadf(i32 %81, i32 1) nounwind
  %84 = call float @llvm.trax.loadf(i32 %81, i32 0) nounwind
  %tmp808 = bitcast float %84 to i32
  %tmp809 = zext i32 %tmp808 to i64
  %tmp789 = bitcast float %83 to i32
  %tmp790 = zext i32 %tmp789 to i64
  %tmp791 = shl nuw i64 %tmp790, 32
  %ins793 = or i64 %tmp809, %tmp791
  %85 = call float @llvm.trax.loadf(i32 %81, i32 5) nounwind
  %86 = call float @llvm.trax.loadf(i32 %81, i32 4) nounwind
  %87 = call float @llvm.trax.loadf(i32 %81, i32 3) nounwind
  %tmp784 = bitcast float %87 to i32
  %tmp785 = zext i32 %tmp784 to i64
  %tmp765 = bitcast float %86 to i32
  %tmp766 = zext i32 %tmp765 to i64
  %tmp767 = shl nuw i64 %tmp766, 32
  %ins769 = or i64 %tmp785, %tmp767
  %88 = call float @llvm.trax.loadf(i32 %81, i32 8) nounwind
  %89 = call float @llvm.trax.loadf(i32 %81, i32 7) nounwind
  %90 = call float @llvm.trax.loadf(i32 %81, i32 6) nounwind
  %tmp760 = bitcast float %90 to i32
  %tmp761 = zext i32 %tmp760 to i64
  %tmp741 = bitcast float %89 to i32
  %tmp742 = zext i32 %tmp741 to i64
  %tmp743 = shl nuw i64 %tmp742, 32
  %ins745 = or i64 %tmp761, %tmp743
  %91 = call i32 @llvm.trax.loadi(i32 %81, i32 10) nounwind
  %92 = call i32 @llvm.trax.loadi(i32 %81, i32 9) nounwind
  %tmp806 = bitcast i64 %ins793 to double
  %tmp782 = bitcast i64 %ins769 to double
  %tmp758 = bitcast i64 %ins745 to double
  call fastcc void @_ZN8TrigonumC1E6VectorS0_S0_ii(%struct.Trigonum* %tri, double %tmp806, float %82, double %tmp782, float %85, double %tmp758, float %88, i32 %92, i32 %91) nounwind ssp
  %tmp820 = load float* %ray819.0, align 1
  %tmp821 = load float* %ray819.1, align 1
  %tmp822 = load float* %ray819.2, align 1
  %tmp = load float* %ray.1.0, align 1
  %tmp817 = load float* %ray.1.1, align 1
  %tmp818 = load float* %ray.1.2, align 1
  %val.i31 = load double* %elt.i30, align 8
  %val2.i32 = load float* %11, align 8
  %93 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %9, double %val.i31, float %val2.i32) nounwind
  %mrv_gr.i34 = extractvalue %0 %93, 0
  %tmp1039 = bitcast double %mrv_gr.i34 to i64
  %mrv_gr4.i = extractvalue %0 %93, 1
  %tmp1026 = trunc i64 %tmp1039 to i32
  %tmp1027 = bitcast i32 %tmp1026 to float
  store float %tmp1027, float* %12, align 8
  %tmp1029 = lshr i64 %tmp1039, 32
  %tmp1030 = trunc i64 %tmp1029 to i32
  %tmp1031 = bitcast i32 %tmp1030 to float
  store float %tmp1031, float* %13, align 4
  store float %mrv_gr4.i, float* %14, align 8
  %94 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %15, double %val.i31, float %val2.i32) nounwind
  %mrv_gr12.i36 = extractvalue %0 %94, 0
  %tmp1017 = bitcast double %mrv_gr12.i36 to i64
  %mrv_gr14.i38 = extractvalue %0 %94, 1
  %tmp1007 = lshr i64 %tmp1017, 32
  %95 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %edge1.i, double %mrv_gr12.i36, float %mrv_gr14.i38) nounwind
  %mrv_gr22.i = extractvalue %0 %95, 0
  %tmp995 = bitcast double %mrv_gr22.i to i64
  %mrv_gr24.i = extractvalue %0 %95, 1
  %tmp982 = trunc i64 %tmp995 to i32
  %tmp983 = bitcast i32 %tmp982 to float
  store float %tmp983, float* %16, align 8
  %tmp985 = lshr i64 %tmp995, 32
  %tmp986 = trunc i64 %tmp985 to i32
  %tmp987 = bitcast i32 %tmp986 to float
  store float %tmp987, float* %17, align 4
  store float %mrv_gr24.i, float* %18, align 8
  %96 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %normal.i) nounwind
  %mrv_gr28.i = extractvalue %0 %96, 0
  %tmp973 = bitcast double %mrv_gr28.i to i64
  %mrv_gr30.i = extractvalue %0 %96, 1
  %tmp960 = trunc i64 %tmp973 to i32
  %tmp961 = bitcast i32 %tmp960 to float
  store float %tmp961, float* %16, align 8
  %tmp963 = lshr i64 %tmp973, 32
  %tmp964 = trunc i64 %tmp963 to i32
  %tmp965 = bitcast i32 %tmp964 to float
  store float %tmp965, float* %17, align 4
  store float %mrv_gr30.i, float* %18, align 8
  %tmp1161 = bitcast float %tmp to i32
  %tmp1162 = zext i32 %tmp1161 to i96
  %tmp1155 = bitcast float %tmp817 to i32
  %tmp1156 = zext i32 %tmp1155 to i96
  %tmp1157 = shl nuw nsw i96 %tmp1156, 32
  %ins1159 = or i96 %tmp1162, %tmp1157
  %tmp1149 = bitcast float %tmp818 to i32
  %tmp952 = zext i96 %ins1159 to i128
  %mask953 = and i128 %memtmp32.i.1, -79228162514264337593543950336
  %tmp946 = zext i32 %tmp1149 to i128
  %tmp947 = shl nuw nsw i128 %tmp946, 64
  %mask948 = or i128 %mask953, %tmp952
  %ins949 = or i128 %mask948, %tmp947
  store float %tmp, float* %19, align 8
  store float %tmp817, float* %20, align 4
  %tmp934 = lshr i128 %ins949, 64
  %tmp935 = trunc i128 %tmp934 to i32
  %tmp936 = bitcast i32 %tmp935 to float
  store float %tmp936, float* %21, align 8
  %97 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %1, double %mrv_gr12.i36, float %mrv_gr14.i38) nounwind
  %mrv_gr44.i48 = extractvalue %0 %97, 0
  %tmp929 = bitcast double %mrv_gr44.i48 to i64
  %mrv_gr46.i50 = extractvalue %0 %97, 1
  %tmp919 = lshr i64 %tmp929, 32
  %tmp1246 = trunc i64 %tmp929 to i32
  %tmp1247 = bitcast i32 %tmp1246 to float
  %98 = fmul float %tmp1247, %tmp1027
  %99 = fadd float %98, 0.000000e+00
  %tmp1243 = trunc i64 %tmp919 to i32
  %tmp1244 = bitcast i32 %tmp1243 to float
  %100 = fmul float %tmp1244, %tmp1031
  %101 = fadd float %100, %99
  %102 = fmul float %mrv_gr46.i50, %mrv_gr4.i
  %103 = fadd float %102, %101
  %104 = fdiv float 1.000000e+00, %103
  %tmp1278 = bitcast float %tmp820 to i32
  %tmp1279 = zext i32 %tmp1278 to i96
  %tmp1272 = bitcast float %tmp821 to i32
  %tmp1273 = zext i32 %tmp1272 to i96
  %tmp1274 = shl nuw nsw i96 %tmp1273, 32
  %ins1276 = or i96 %tmp1279, %tmp1274
  %tmp1266 = bitcast float %tmp822 to i32
  %tmp908 = zext i96 %ins1276 to i128
  %mask909 = and i128 %memtmp52.i.1, -79228162514264337593543950336
  %tmp902 = zext i32 %tmp1266 to i128
  %tmp903 = shl nuw nsw i128 %tmp902, 64
  %mask904 = or i128 %mask909, %tmp908
  %ins905 = or i128 %mask904, %tmp903
  store float %tmp820, float* %22, align 8
  store float %tmp821, float* %23, align 4
  %tmp890 = lshr i128 %ins905, 64
  %tmp891 = trunc i128 %tmp890 to i32
  %tmp892 = bitcast i32 %tmp891 to float
  store float %tmp892, float* %24, align 8
  %val59.i = load double* %elt.i30, align 8
  %val61.i = load float* %11, align 8
  %105 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %0, double %val59.i, float %val61.i) nounwind
  %mrv_gr64.i = extractvalue %0 %105, 0
  %tmp885 = bitcast double %mrv_gr64.i to i64
  %mrv_gr66.i = extractvalue %0 %105, 1
  %tmp872 = trunc i64 %tmp885 to i32
  %tmp873 = bitcast i32 %tmp872 to float
  store float %tmp873, float* %25, align 8
  %tmp875 = lshr i64 %tmp885, 32
  %tmp876 = trunc i64 %tmp875 to i32
  %tmp877 = bitcast i32 %tmp876 to float
  store float %tmp877, float* %26, align 4
  store float %mrv_gr66.i, float* %27, align 8
  %tmp1291 = trunc i64 %tmp929 to i32
  %tmp1292 = bitcast i32 %tmp1291 to float
  %106 = fmul float %tmp1292, %tmp873
  %107 = fadd float %106, 0.000000e+00
  %tmp1288 = trunc i64 %tmp919 to i32
  %tmp1289 = bitcast i32 %tmp1288 to float
  %108 = fmul float %tmp1289, %tmp877
  %109 = fadd float %108, %107
  %110 = fmul float %mrv_gr46.i50, %mrv_gr66.i
  %111 = fadd float %110, %109
  %112 = fmul float %111, %104
  %113 = fcmp olt float %112, 0.000000e+00
  %114 = fcmp ogt float %112, 1.000000e+00
  %or.cond1397 = or i1 %113, %114
  br i1 %or.cond1397, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, label %bb73.i

bb73.i:                                           ; preds = %bb5
  %val75.i = load double* %elt74.i, align 8
  %115 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %s.i, double %val75.i, float %mrv_gr4.i) nounwind
  %mrv_gr80.i = extractvalue %0 %115, 0
  %tmp863 = bitcast double %mrv_gr80.i to i64
  %mrv_gr82.i = extractvalue %0 %115, 1
  %tmp853 = lshr i64 %tmp863, 32
  %ins1321 = or i96 %tmp1162, %tmp1157
  %tmp842 = zext i96 %ins1321 to i128
  %mask843 = and i128 %memtmp84.i.2, -79228162514264337593543950336
  %mask838 = or i128 %mask843, %tmp842
  %ins839 = or i128 %mask838, %tmp947
  %tmp824 = lshr i128 %ins839, 64
  %tmp825 = trunc i128 %tmp824 to i32
  %tmp826 = bitcast i32 %tmp825 to float
  %tmp1336 = trunc i64 %tmp863 to i32
  %tmp1337 = bitcast i32 %tmp1336 to float
  %116 = fmul float %tmp1337, %tmp
  %117 = fadd float %116, 0.000000e+00
  %tmp1333 = trunc i64 %tmp853 to i32
  %tmp1334 = bitcast i32 %tmp1333 to float
  %118 = fmul float %tmp1334, %tmp817
  %119 = fadd float %118, %117
  %120 = fmul float %mrv_gr82.i, %tmp826
  %121 = fadd float %120, %119
  %122 = fmul float %121, %104
  %123 = fcmp olt float %122, 0.000000e+00
  br i1 %123, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, label %bb94.i55

bb94.i55:                                         ; preds = %bb73.i
  %124 = fadd float %122, %112
  %125 = fcmp ogt float %124, 1.000000e+00
  br i1 %125, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, label %bb96.i

bb96.i:                                           ; preds = %bb94.i55
  %tmp1358 = trunc i64 %tmp863 to i32
  %tmp1359 = bitcast i32 %tmp1358 to float
  %tmp1102 = trunc i64 %tmp1017 to i32
  %tmp1103 = bitcast i32 %tmp1102 to float
  %126 = fmul float %tmp1359, %tmp1103
  %127 = fadd float %126, 0.000000e+00
  %tmp1355 = trunc i64 %tmp853 to i32
  %tmp1356 = bitcast i32 %tmp1355 to float
  %tmp1106 = trunc i64 %tmp1007 to i32
  %tmp1107 = bitcast i32 %tmp1106 to float
  %128 = fmul float %tmp1356, %tmp1107
  %129 = fadd float %128, %127
  %130 = fmul float %mrv_gr82.i, %mrv_gr14.i38
  %131 = fadd float %130, %129
  %132 = fmul float %131, %104
  %133 = fcmp ule float %132, 0.000000e+00
  %134 = fcmp olt float %132, 0x3F50624DE0000000
  %or.cond1398 = or i1 %133, %134
  %135 = fcmp oeq float %132, 1.000000e+10
  %or.cond1399 = or i1 %or.cond1398, %135
  br i1 %or.cond1399, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb96.i
  %136 = load float* %28, align 4
  %137 = fcmp ogt float %136, %132
  br i1 %137, label %bb3.i.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit

bb3.i.i:                                          ; preds = %bb2.i.i
  store float %132, float* %28, align 4
  %138 = call float @llvm.trax.loadf(i32 %81, i32 2) nounwind
  %139 = call float @llvm.trax.loadf(i32 %81, i32 1) nounwind
  %140 = call float @llvm.trax.loadf(i32 %81, i32 0) nounwind
  %tmp1233 = bitcast float %140 to i32
  %tmp1234 = zext i32 %tmp1233 to i64
  %tmp1214 = bitcast float %139 to i32
  %tmp1215 = zext i32 %tmp1214 to i64
  %tmp1216 = shl nuw i64 %tmp1215, 32
  %ins1218 = or i64 %tmp1234, %tmp1216
  %141 = call float @llvm.trax.loadf(i32 %81, i32 5) nounwind
  %142 = call float @llvm.trax.loadf(i32 %81, i32 4) nounwind
  %143 = call float @llvm.trax.loadf(i32 %81, i32 3) nounwind
  %tmp1209 = bitcast float %143 to i32
  %tmp1210 = zext i32 %tmp1209 to i64
  %tmp1190 = bitcast float %142 to i32
  %tmp1191 = zext i32 %tmp1190 to i64
  %tmp1192 = shl nuw i64 %tmp1191, 32
  %ins1194 = or i64 %tmp1210, %tmp1192
  %144 = call float @llvm.trax.loadf(i32 %81, i32 8) nounwind
  %145 = call float @llvm.trax.loadf(i32 %81, i32 7) nounwind
  %146 = call float @llvm.trax.loadf(i32 %81, i32 6) nounwind
  %tmp1185 = bitcast float %146 to i32
  %tmp1186 = zext i32 %tmp1185 to i64
  %tmp1166 = bitcast float %145 to i32
  %tmp1167 = zext i32 %tmp1166 to i64
  %tmp1168 = shl nuw i64 %tmp1167, 32
  %ins1170 = or i64 %tmp1186, %tmp1168
  %147 = call i32 @llvm.trax.loadi(i32 %81, i32 10) nounwind
  %148 = call i32 @llvm.trax.loadi(i32 %81, i32 9) nounwind
  %tmp1231 = bitcast i64 %ins1218 to double
  %tmp1207 = bitcast i64 %ins1194 to double
  %tmp1183 = bitcast i64 %ins1170 to double
  call fastcc void @_ZN8TrigonumC1E6VectorS0_S0_ii(%struct.Trigonum* %memtmp.i.i, double %tmp1231, float %138, double %tmp1207, float %141, double %tmp1183, float %144, i32 %148, i32 %147) nounwind ssp
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %memtmp4.i.i, i64 60, i32 4, i1 false) nounwind
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit: ; preds = %bb3.i.i, %bb2.i.i, %bb96.i, %bb94.i55, %bb73.i, %bb5
  %memtmp84.i.1 = phi i128 [ %memtmp84.i.2, %bb5 ], [ %ins839, %bb73.i ], [ %ins839, %bb94.i55 ], [ %ins839, %bb3.i.i ], [ %ins839, %bb96.i ], [ %ins839, %bb2.i.i ]
  %149 = add nsw i32 %storemerge, 1
  br label %bb6

bb6:                                              ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit, %bb1
  %memtmp84.i.2 = phi i128 [ %memtmp84.i.1, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit ], [ %memtmp84.i.0.ph, %bb1 ]
  %memtmp52.i.1 = phi i128 [ %ins905, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit ], [ %memtmp52.i.0.ph, %bb1 ]
  %memtmp32.i.1 = phi i128 [ %ins949, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit ], [ %memtmp32.i.0.ph, %bb1 ]
  %storemerge = phi i32 [ %149, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit ], [ 0, %bb1 ]
  %150 = icmp slt i32 %storemerge, %74
  br i1 %150, label %bb5, label %bb7

bb7:                                              ; preds = %bb6, %bb62.i, %bb29.i, %bb
  %memtmp63.i.11385 = phi i128 [ %ins248, %bb6 ], [ %memtmp63.i.0, %bb ], [ %memtmp63.i.0, %bb29.i ], [ %ins248, %bb62.i ]
  %memtmp69.i.11383 = phi i128 [ %ins226, %bb6 ], [ %memtmp69.i.0, %bb ], [ %memtmp69.i.0, %bb29.i ], [ %ins226, %bb62.i ]
  %memtmp75.i.11381 = phi i128 [ %ins204, %bb6 ], [ %memtmp75.i.0, %bb ], [ %memtmp75.i.0, %bb29.i ], [ %ins204, %bb62.i ]
  %memtmp81.i.11379 = phi i128 [ %ins182, %bb6 ], [ %memtmp81.i.0, %bb ], [ %memtmp81.i.0, %bb29.i ], [ %ins182, %bb62.i ]
  %memtmp84.i.3 = phi i128 [ %memtmp84.i.2, %bb6 ], [ %memtmp84.i.0.ph, %bb ], [ %memtmp84.i.0.ph, %bb29.i ], [ %memtmp84.i.0.ph, %bb62.i ]
  %memtmp52.i.2 = phi i128 [ %memtmp52.i.1, %bb6 ], [ %memtmp52.i.0.ph, %bb ], [ %memtmp52.i.0.ph, %bb29.i ], [ %memtmp52.i.0.ph, %bb62.i ]
  %memtmp32.i.2 = phi i128 [ %memtmp32.i.1, %bb6 ], [ %memtmp32.i.0.ph, %bb ], [ %memtmp32.i.0.ph, %bb29.i ], [ %memtmp32.i.0.ph, %bb62.i ]
  %151 = icmp slt i32 %sp.0, 0
  br i1 %151, label %return, label %bb9

bb9:                                              ; preds = %bb7
  %152 = sext i32 %sp.0 to i64
  %153 = getelementptr inbounds [32 x i32]* %stack, i64 0, i64 %152
  %154 = load i32* %153, align 4
  %155 = add nsw i32 %sp.0, -1
  br label %bb.outer

return:                                           ; preds = %bb7
  ret void
}

define internal fastcc %0 @_ZN5Color5timesES_(%struct.Color* nocapture %this, double %color.0, float %color.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %color.0 to i64
  %tmp41 = trunc i64 %tmp28 to i32
  %tmp42 = bitcast i32 %tmp41 to float
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %2 = fmul float %tmp42, %1
  %tmp37 = lshr i64 %tmp28, 32
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = bitcast i32 %tmp38 to float
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %5 = fmul float %tmp39, %4
  %6 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %7 = load float* %6, align 4
  %8 = fmul float %7, %color.1
  %tmp17 = bitcast float %2 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %5 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %8, 1
  ret %0 %mrv5
}

define internal fastcc %0 @_ZN5Color3addES_(%struct.Color* nocapture %this, double %color.0, float %color.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %color.0 to i64
  %tmp41 = trunc i64 %tmp28 to i32
  %tmp42 = bitcast i32 %tmp41 to float
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %2 = fadd float %tmp42, %1
  %tmp37 = lshr i64 %tmp28, 32
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = bitcast i32 %tmp38 to float
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %5 = fadd float %tmp39, %4
  %6 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %7 = load float* %6, align 4
  %8 = fadd float %7, %color.1
  %tmp17 = bitcast float %2 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %5 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %8, 1
  ret %0 %mrv5
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define internal fastcc %0 @_ZN9HitRecord12hit_positionE3Ray(float %this.0.0.val, %struct.Box* nocapture byval %ray) nounwind readonly ssp align 2 {
return:
  %0 = alloca %struct.Color, align 8
  %1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %2 = load float* %1, align 4
  %3 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %4 = load float* %3, align 4
  %5 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %6 = load float* %5, align 4
  %7 = fmul float %2, %this.0.0.val
  %8 = fmul float %4, %this.0.0.val
  %9 = fmul float %6, %this.0.0.val
  %tmp105 = bitcast float %7 to i32
  %tmp106 = zext i32 %tmp105 to i64
  %tmp99 = bitcast float %8 to i32
  %tmp100 = zext i32 %tmp99 to i64
  %tmp101 = shl nuw i64 %tmp100, 32
  %ins103 = or i64 %tmp106, %tmp101
  %10 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %11 = load float* %10, align 4
  %12 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %13 = load float* %12, align 4
  %14 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %15 = load float* %14, align 4
  %16 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  store float %11, float* %16, align 8
  %17 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  store float %13, float* %17, align 4
  %18 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  store float %15, float* %18, align 8
  %tmp91 = bitcast i64 %ins103 to double
  %19 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %0, double %tmp91, float %9)
  %mrv_gr20 = extractvalue %0 %19, 0
  %mrv_gr22 = extractvalue %0 %19, 1
  %mrv28 = insertvalue %0 undef, double %mrv_gr20, 0
  %mrv29 = insertvalue %0 %mrv28, float %mrv_gr22, 1
  ret %0 %mrv29
}

define internal fastcc void @_ZN5Image3setEii5Color(%struct.Image* nocapture %this, i32 %i, i32 %j, double %result.0, float %result.1) nounwind ssp align 2 {
entry:
  %tmp53 = bitcast double %result.0 to i64
  %tmp47 = trunc i64 %tmp53 to i32
  %tmp48 = bitcast i32 %tmp47 to float
  %0 = fcmp olt float %tmp48, 0.000000e+00
  br i1 %0, label %bb5, label %bb1

bb1:                                              ; preds = %entry
  %1 = fcmp ogt float %tmp48, 1.000000e+00
  br i1 %1, label %bb5, label %bb4

bb4:                                              ; preds = %bb1
  br label %bb5

bb5:                                              ; preds = %bb4, %bb1, %entry
  %r.0 = phi float [ %tmp48, %bb4 ], [ 0.000000e+00, %entry ], [ 1.000000e+00, %bb1 ]
  %2 = fcmp olt float %result.1, 0.000000e+00
  br i1 %2, label %bb12, label %bb8

bb8:                                              ; preds = %bb5
  %3 = fcmp ogt float %result.1, 1.000000e+00
  br i1 %3, label %bb12, label %bb11

bb11:                                             ; preds = %bb8
  br label %bb12

bb12:                                             ; preds = %bb11, %bb8, %bb5
  %b.0 = phi float [ %result.1, %bb11 ], [ 0.000000e+00, %bb5 ], [ 1.000000e+00, %bb8 ]
  %tmp35 = lshr i64 %tmp53, 32
  %tmp36 = trunc i64 %tmp35 to i32
  %tmp37 = bitcast i32 %tmp36 to float
  %4 = fcmp olt float %tmp37, 0.000000e+00
  br i1 %4, label %return, label %bb15

bb15:                                             ; preds = %bb12
  %5 = fcmp ogt float %tmp37, 1.000000e+00
  br i1 %5, label %return, label %bb18

bb18:                                             ; preds = %bb15
  br label %return

return:                                           ; preds = %bb18, %bb15, %bb12
  %g.0 = phi float [ %tmp37, %bb18 ], [ 0.000000e+00, %bb12 ], [ 1.000000e+00, %bb15 ]
  %6 = getelementptr inbounds %struct.Image* %this, i64 0, i32 2
  %7 = load i32* %6, align 4
  %8 = getelementptr inbounds %struct.Image* %this, i64 0, i32 0
  %9 = load i32* %8, align 4
  %10 = mul nsw i32 %9, %i
  %11 = add nsw i32 %10, %j
  %12 = mul nsw i32 %11, 3
  %13 = add nsw i32 %7, %12
  call void @llvm.trax.storef(float %r.0, i32 %13, i32 0)
  %14 = load i32* %6, align 4
  %15 = load i32* %8, align 4
  %16 = mul nsw i32 %15, %i
  %17 = add nsw i32 %16, %j
  %18 = mul nsw i32 %17, 3
  %19 = add nsw i32 %14, %18
  call void @llvm.trax.storef(float %g.0, i32 %19, i32 1)
  %20 = load i32* %6, align 4
  %21 = load i32* %8, align 4
  %22 = mul nsw i32 %21, %i
  %23 = add nsw i32 %22, %j
  %24 = mul nsw i32 %23, 3
  %25 = add nsw i32 %20, %24
  call void @llvm.trax.storef(float %b.0, i32 %25, i32 2)
  ret void
}

declare void @llvm.trax.storef(float, i32, i32) nounwind

declare float @llvm.trax.rand() nounwind

define i32 @main() ssp {
invcont8:
  %ray_to_light_source15.i = alloca %struct.Box, align 8
  %0 = alloca %struct.Color, align 8
  %1 = alloca %struct.Color, align 8
  %2 = alloca %struct.Color, align 8
  %light.i650 = alloca %struct.Color, align 8
  %tri.i653 = alloca %struct.Trigonum, align 8
  %L.i = alloca %struct.Color, align 8
  %hit_record127614 = alloca %struct.HitRecord, align 8
  %3 = alloca %struct.Color, align 8
  %V.i = alloca %struct.Color, align 8
  %ln.i = alloca %struct.Color, align 8
  %4 = alloca %struct.Color, align 8
  %tri.i = alloca %struct.Trigonum, align 8
  %light.i503 = alloca %struct.Color, align 8
  %direction.i = alloca %struct.Color, align 8
  %5 = alloca %struct.Color, align 8
  %result = alloca %struct.Color, align 8
  %image = alloca %struct.Image, align 8
  %ray = alloca %struct.Box, align 8
  %map = alloca %struct.PhotonMap, align 8
  %bvh = alloca %struct.BVH, align 8
  %volume_photons = alloca [20000 x %struct.Photon], align 8
  %hit_record = alloca %struct.HitRecord, align 8
  %random_ray = alloca %struct.Box, align 8
  %hit_record127 = alloca %struct.HitRecord, align 8
  %6 = call i32 @llvm.trax.loadi(i32 0, i32 1)
  %7 = call i32 @llvm.trax.loadi(i32 0, i32 4)
  %8 = call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %9 = call float @llvm.trax.loadf(i32 0, i32 2)
  %10 = call float @llvm.trax.loadf(i32 0, i32 5)
  %11 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %12 = call float @llvm.trax.loadf(i32 %11, i32 0) nounwind
  %13 = call float @llvm.trax.loadf(i32 %11, i32 1) nounwind
  %14 = call float @llvm.trax.loadf(i32 %11, i32 2) nounwind
  %tmp1553 = bitcast float %13 to i32
  %tmp1554 = zext i32 %tmp1553 to i96
  %15 = getelementptr inbounds %struct.Color* %result, i64 0, i32 0
  store float 0.000000e+00, float* %15, align 8
  %16 = getelementptr inbounds %struct.Color* %result, i64 0, i32 1
  store float 0.000000e+00, float* %16, align 4
  %17 = getelementptr inbounds %struct.Color* %result, i64 0, i32 2
  store float 0.000000e+00, float* %17, align 8
  %18 = getelementptr inbounds %struct.Image* %image, i64 0, i32 0
  store i32 %6, i32* %18, align 8
  %19 = getelementptr inbounds %struct.Image* %image, i64 0, i32 1
  store i32 %7, i32* %19, align 4
  %20 = getelementptr inbounds %struct.Image* %image, i64 0, i32 2
  store i32 %8, i32* %20, align 8
  %21 = call i32 @llvm.trax.loadi(i32 0, i32 10)
  %22 = call float @llvm.trax.loadf(i32 %21, i32 0) nounwind
  %23 = call float @llvm.trax.loadf(i32 %21, i32 1) nounwind
  %24 = call float @llvm.trax.loadf(i32 %21, i32 2) nounwind
  %25 = add nsw i32 %21, 9
  %26 = call float @llvm.trax.loadf(i32 %25, i32 0) nounwind
  %27 = call float @llvm.trax.loadf(i32 %25, i32 1) nounwind
  %28 = call float @llvm.trax.loadf(i32 %25, i32 2) nounwind
  %29 = add nsw i32 %21, 12
  %30 = call float @llvm.trax.loadf(i32 %29, i32 0) nounwind
  %31 = call float @llvm.trax.loadf(i32 %29, i32 1) nounwind
  %32 = call float @llvm.trax.loadf(i32 %29, i32 2) nounwind
  %33 = add nsw i32 %21, 15
  %34 = call float @llvm.trax.loadf(i32 %33, i32 0) nounwind
  %35 = call float @llvm.trax.loadf(i32 %33, i32 1) nounwind
  %36 = call float @llvm.trax.loadf(i32 %33, i32 2) nounwind
  %37 = add nsw i32 %21, 18
  %38 = call float @llvm.trax.loadf(i32 %37, i32 0) nounwind
  %39 = call float @llvm.trax.loadf(i32 %37, i32 1) nounwind
  %40 = call float @llvm.trax.loadf(i32 %37, i32 2) nounwind
  %41 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %42 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %43 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %44 = bitcast %struct.Box* %ray to i8*
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %43, align 4
  %45 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %45, align 4
  %46 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 0, i64 0
  br label %bb1.i60

bb.i58:                                           ; preds = %bb1.i60
  %47 = getelementptr inbounds %struct.Photon* %.0750, i64 0, i32 0, i32 0
  store float 0.000000e+00, float* %47, align 4
  %48 = getelementptr inbounds %struct.Photon* %.0750, i64 0, i32 0, i32 1
  store float 0.000000e+00, float* %48, align 4
  %49 = getelementptr inbounds %struct.Photon* %.0750, i64 0, i32 0, i32 2
  store float 0.000000e+00, float* %49, align 4
  %50 = getelementptr inbounds %struct.Photon* %.0750, i64 0, i32 1, i64 0
  store float 1.000000e+00, float* %50, align 4
  %51 = getelementptr inbounds %struct.Photon* %.0750, i64 0, i32 1, i64 1
  store float 1.000000e+00, float* %51, align 4
  %52 = getelementptr inbounds %struct.Photon* %.0750, i64 0, i32 1, i64 2
  store float 1.000000e+00, float* %52, align 4
  %53 = getelementptr inbounds %struct.Photon* %.0750, i64 0, i32 2
  store i8 0, i8* %53, align 4
  %54 = getelementptr inbounds %struct.Photon* %.0750, i64 1
  %55 = add nsw i64 %storemerge.i59, -1
  br label %bb1.i60

bb1.i60:                                          ; preds = %bb.i58, %invcont8
  %.0750 = phi %struct.Photon* [ %46, %invcont8 ], [ %54, %bb.i58 ]
  %storemerge.i59 = phi i64 [ 4999, %invcont8 ], [ %55, %bb.i58 ]
  %56 = icmp eq i64 %storemerge.i59, -1
  br i1 %56, label %invcont11, label %bb.i58

invcont11:                                        ; preds = %bb1.i60
  %57 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 2
  store float 1.000000e+07, float* %57, align 8
  %58 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 1
  store float 1.000000e+07, float* %58, align 4
  %59 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 0
  store float 1.000000e+07, float* %59, align 8
  %60 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 2
  store float -1.000000e+07, float* %60, align 4
  %61 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 1
  store float -1.000000e+07, float* %61, align 4
  %62 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 0
  store float -1.000000e+07, float* %62, align 4
  %63 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %64 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %65 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %66 = getelementptr inbounds %struct.BVH* %bvh, i64 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = alloca [220000 x %struct.Photon], align 1
  %.sub5580 = getelementptr inbounds [220000 x %struct.Photon]* %67, i64 0, i64 0
  br label %bb18

bb:                                               ; preds = %bb18
  %68 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 0, i32 0
  store float 0.000000e+00, float* %68, align 4
  %69 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 0, i32 1
  store float 0.000000e+00, float* %69, align 4
  %70 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 0, i32 2
  store float 0.000000e+00, float* %70, align 4
  %71 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i64 0
  store float 1.000000e+00, float* %71, align 4
  %72 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i64 1
  store float 1.000000e+00, float* %72, align 4
  %73 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i64 2
  store float 1.000000e+00, float* %73, align 4
  %74 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2
  store i8 0, i8* %74, align 4
  %75 = getelementptr inbounds %struct.Photon* %.0, i64 1
  %76 = add nsw i64 %storemerge, -1
  br label %bb18

bb18:                                             ; preds = %bb, %invcont11
  %.0 = phi %struct.Photon* [ %.sub5580, %invcont11 ], [ %75, %bb ]
  %storemerge = phi i64 [ 219999, %invcont11 ], [ %76, %bb ]
  %77 = icmp eq i64 %storemerge, -1
  br i1 %77, label %bb19, label %bb

bb19:                                             ; preds = %bb18
  %78 = getelementptr inbounds [20000 x %struct.Photon]* %volume_photons, i64 0, i64 0
  br label %bb21

bb20:                                             ; preds = %bb21
  %79 = getelementptr inbounds %struct.Photon* %.0749, i64 0, i32 0, i32 0
  store float 0.000000e+00, float* %79, align 4
  %80 = getelementptr inbounds %struct.Photon* %.0749, i64 0, i32 0, i32 1
  store float 0.000000e+00, float* %80, align 4
  %81 = getelementptr inbounds %struct.Photon* %.0749, i64 0, i32 0, i32 2
  store float 0.000000e+00, float* %81, align 4
  %82 = getelementptr inbounds %struct.Photon* %.0749, i64 0, i32 1, i64 0
  store float 1.000000e+00, float* %82, align 4
  %83 = getelementptr inbounds %struct.Photon* %.0749, i64 0, i32 1, i64 1
  store float 1.000000e+00, float* %83, align 4
  %84 = getelementptr inbounds %struct.Photon* %.0749, i64 0, i32 1, i64 2
  store float 1.000000e+00, float* %84, align 4
  %85 = getelementptr inbounds %struct.Photon* %.0749, i64 0, i32 2
  store i8 0, i8* %85, align 4
  %86 = getelementptr inbounds %struct.Photon* %.0749, i64 1
  %87 = add nsw i64 %storemerge1, -1
  br label %bb21

bb21:                                             ; preds = %bb20, %bb19
  %.0749 = phi %struct.Photon* [ %78, %bb19 ], [ %86, %bb20 ]
  %storemerge1 = phi i64 [ 19999, %bb19 ], [ %87, %bb20 ]
  %88 = icmp eq i64 %storemerge1, -1
  br i1 %88, label %invcont24, label %bb20

invcont24:                                        ; preds = %bb21
  %89 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %90 = call float @llvm.trax.loadf(i32 %89, i32 0) nounwind
  %91 = call float @llvm.trax.loadf(i32 %89, i32 1) nounwind
  %92 = call float @llvm.trax.loadf(i32 %89, i32 2) nounwind
  %tmp1104 = bitcast float %90 to i32
  %tmp1098 = bitcast float %91 to i32
  %tmp1092 = bitcast float %92 to i32
  %93 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 0
  %94 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 1
  %95 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 2
  %96 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 0
  %97 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 1
  %98 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 2
  %99 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 0
  %100 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 1
  %101 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 2
  %102 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 0
  %103 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 1
  %104 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 2
  %105 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %106 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %107 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  %108 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %109 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 0, i32 0
  %110 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 0
  %111 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 1
  %112 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 2
  %113 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 0, i32 1
  %114 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 0, i32 2
  %115 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 1
  %116 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 2
  %.413491352.0 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %.413491352.1 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %.413491352.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  br label %bb116

bb32:                                             ; preds = %bb113
  %117 = add nsw i32 %bounces.0, 1
  br label %bb.i86

bb.i86:                                           ; preds = %bb.i86, %bb32
  %118 = call float @llvm.trax.rand() nounwind
  %119 = fadd float %118, -5.000000e-01
  %120 = fmul float %119, 2.000000e+00
  %121 = call float @llvm.trax.rand() nounwind
  %122 = fadd float %121, -5.000000e-01
  %123 = fmul float %122, 2.000000e+00
  %124 = call float @llvm.trax.rand() nounwind
  %125 = fadd float %124, -5.000000e-01
  %126 = fmul float %125, 2.000000e+00
  %127 = fmul float %120, %120
  %128 = fmul float %123, %123
  %129 = fadd float %127, %128
  %130 = fmul float %126, %126
  %131 = fadd float %129, %130
  %132 = fcmp ogt float %131, 1.000000e+00
  br i1 %132, label %bb.i86, label %invcont54

invcont54:                                        ; preds = %bb.i86
  store float %120, float* %93, align 8
  store float %123, float* %94, align 4
  store float %126, float* %95, align 8
  %133 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %direction.i) nounwind
  %mrv_gr.i88 = extractvalue %0 %133, 0
  %tmp2352 = bitcast double %mrv_gr.i88 to i64
  %mrv_gr3.i90 = extractvalue %0 %133, 1
  %tmp2346 = bitcast float %mrv_gr3.i90 to i32
  %tmp2342 = lshr i64 %tmp2352, 32
  %tmp2376 = zext i64 %tmp2352 to i96
  %tmp2370 = zext i64 %tmp2342 to i96
  %tmp2371 = shl nuw nsw i96 %tmp2370, 32
  %tmp2376.masked = and i96 %tmp2376, 4294967295
  %ins2373 = or i96 %tmp2376.masked, %tmp2371
  %tmp1011 = zext i96 %ins2373 to i128
  %mask1012 = and i128 %memtmp40.0, -79228162514264337593543950336
  %tmp1005 = zext i32 %tmp2346 to i128
  %tmp1006 = shl nuw nsw i128 %tmp1005, 64
  %mask1007 = or i128 %mask1012, %tmp1011
  %ins1008 = or i128 %mask1007, %tmp1006
  %ins1008.tr = trunc i128 %ins1008 to i96
  %134 = fmul float %surface_color.0.2, 0x3FE6666660000000
  %135 = fmul float %surface_color.1.2, 0x3FE6666660000000
  %136 = fmul float %surface_color.2.2, 0x3FE6666660000000
  store float 0.000000e+00, float* %96, align 4
  store float 0.000000e+00, float* %97, align 4
  store float 0.000000e+00, float* %98, align 4
  store float 0.000000e+00, float* %99, align 4
  store float 0.000000e+00, float* %100, align 4
  store float 0.000000e+00, float* %101, align 4
  store float 0.000000e+00, float* %102, align 4
  store float 0.000000e+00, float* %103, align 4
  store float 0.000000e+00, float* %104, align 4
  store float 0.000000e+00, float* %105, align 4
  store float 0.000000e+00, float* %106, align 4
  store float 0.000000e+00, float* %107, align 4
  store float 1.000000e+10, float* %108, align 8
  %137 = bitcast %struct.Box* %random_ray to i8*
  call void @llvm.memset.p0i8.i64(i8* %137, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %111, align 4
  store float 0.000000e+00, float* %112, align 4
  %tmp2411 = bitcast i32 %ray_origin.1.off0 to float
  store float %tmp2411, float* %109, align 8
  %tmp2408 = bitcast i32 %ray_origin.1.off32 to float
  store float %tmp2408, float* %113, align 4
  %tmp2404 = bitcast i32 %ray_origin.1.off64 to float
  store float %tmp2404, float* %114, align 8
  %tmp2388 = trunc i64 %tmp2352 to i32
  %tmp2389 = bitcast i32 %tmp2388 to float
  store float %tmp2389, float* %110, align 4
  %tmp2385 = trunc i64 %tmp2342 to i32
  %tmp2386 = bitcast i32 %tmp2385 to float
  store float %tmp2386, float* %115, align 4
  %tmp2380 = lshr i96 %ins1008.tr, 64
  %tmp2381 = trunc i96 %tmp2380 to i32
  %tmp2382 = bitcast i32 %tmp2381 to float
  store float %tmp2382, float* %116, align 4
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record, %struct.Box* %random_ray)
  %138 = load float* %108, align 8
  %139 = fcmp olt float %138, 1.000000e+10
  br i1 %139, label %invcont83, label %invcont54.bb107_crit_edge

invcont54.bb107_crit_edge:                        ; preds = %invcont54
  %.pre = icmp sgt i32 %bounces.0, 0
  br i1 %.pre, label %bb108, label %bb113

invcont83:                                        ; preds = %invcont54
  %tmp1353 = load float* %.413491352.0, align 4
  %tmp1354 = load float* %.413491352.1, align 4
  %tmp1355 = load float* %.413491352.2, align 4
  %tmp2487 = bitcast float %tmp1353 to i32
  %tmp2488 = zext i32 %tmp2487 to i96
  %tmp2481 = bitcast float %tmp1354 to i32
  %tmp2482 = zext i32 %tmp2481 to i96
  %tmp2483 = shl nuw nsw i96 %tmp2482, 32
  %tmp2475 = bitcast float %tmp1355 to i32
  %tmp2436 = zext i32 %tmp2475 to i128
  %tmp2437 = shl nuw nsw i128 %tmp2436, 64
  %ins2621 = or i96 %tmp2488, %tmp2483
  %tmp2578 = zext i96 %ins2621 to i128
  %mask2579 = and i128 %memtmp.i152.1, -79228162514264337593543950336
  %mask2574 = or i128 %mask2579, %tmp2578
  %ins2575 = or i128 %mask2574, %tmp2437
  %tmp2600 = bitcast float %tmp1353 to i32
  %tmp2601 = zext i32 %tmp2600 to i96
  %tmp2594 = bitcast float %tmp1354 to i32
  %tmp2595 = zext i32 %tmp2594 to i96
  %tmp2596 = shl nuw nsw i96 %tmp2595, 32
  %ins2598 = or i96 %tmp2601, %tmp2596
  %tmp945 = zext i96 %ins2598 to i128
  %mask946 = and i128 %memtmp77.1, -79228162514264337593543950336
  %tmp940 = and i128 %ins2575, 79228162495817593519834398720
  %mask941 = or i128 %mask946, %tmp945
  %ins942 = or i128 %mask941, %tmp940
  %tmp927 = lshr i128 %ins942, 64
  %tmp928 = trunc i128 %tmp927 to i32
  %tmp929 = bitcast i32 %tmp928 to float
  %140 = fadd float %tmp1353, %tmp1354
  %141 = fadd float %140, %tmp929
  %142 = fcmp ogt float %141, 3.000000e+00
  br i1 %142, label %bb84, label %invcont97

bb84:                                             ; preds = %invcont83
  %143 = fmul float %tmp1353, 0x3F50624DE0000000
  %144 = fmul float %tmp1354, 0x3F50624DE0000000
  %145 = fmul float %tmp929, 0x3F50624DE0000000
  br label %invcont97

invcont97:                                        ; preds = %bb84, %invcont83
  %surface_color.0.0 = phi float [ %143, %bb84 ], [ %tmp1353, %invcont83 ]
  %surface_color.1.0 = phi float [ %144, %bb84 ], [ %tmp1354, %invcont83 ]
  %surface_color.2.0 = phi float [ %145, %bb84 ], [ %tmp929, %invcont83 ]
  %146 = call fastcc %0 @_ZN9HitRecord12hit_positionE3Ray(float %138, %struct.Box* byval %random_ray)
  %mrv_gr89 = extractvalue %0 %146, 0
  %tmp922 = bitcast double %mrv_gr89 to i64
  %mrv_gr91 = extractvalue %0 %146, 1
  %tmp916 = bitcast float %mrv_gr91 to i32
  %tmp912 = lshr i64 %tmp922, 32
  %tmp2636 = trunc i64 %tmp922 to i32
  %tmp2637 = bitcast i32 %tmp2636 to float
  %tmp2633 = trunc i64 %tmp912 to i32
  %tmp2634 = bitcast i32 %tmp2633 to float
  %147 = icmp sgt i32 %bounces.0, 0
  br i1 %147, label %bb107.thread, label %bb107

bb107.thread:                                     ; preds = %invcont97
  %148 = sext i32 %count.2 to i64
  %149 = getelementptr inbounds [220000 x %struct.Photon]* %67, i64 0, i64 %148, i32 0, i32 0
  store float %tmp2637, float* %149, align 4
  %150 = getelementptr inbounds [220000 x %struct.Photon]* %67, i64 0, i64 %148, i32 0, i32 1
  store float %tmp2634, float* %150, align 4
  %151 = getelementptr inbounds [220000 x %struct.Photon]* %67, i64 0, i64 %148, i32 0, i32 2
  store float %mrv_gr91, float* %151, align 4
  %152 = getelementptr inbounds [220000 x %struct.Photon]* %67, i64 0, i64 %148, i32 1, i64 0
  store float %134, float* %152, align 4
  %153 = getelementptr inbounds [220000 x %struct.Photon]* %67, i64 0, i64 %148, i32 1, i64 1
  store float %135, float* %153, align 4
  %154 = getelementptr inbounds [220000 x %struct.Photon]* %67, i64 0, i64 %148, i32 1, i64 2
  store float %136, float* %154, align 4
  %155 = getelementptr inbounds [220000 x %struct.Photon]* %67, i64 0, i64 %148, i32 2
  store i8 0, i8* %155, align 4
  %156 = add nsw i32 %count.2, 1
  %tmp8905796 = lshr i64 %tmp922, 32
  %extract.t57355797 = trunc i64 %tmp922 to i32
  %extract.t57435798 = trunc i64 %tmp8905796 to i32
  br label %bb108

bb107:                                            ; preds = %invcont97
  %tmp890 = lshr i64 %tmp922, 32
  %extract.t5735 = trunc i64 %tmp922 to i32
  %extract.t5743 = trunc i64 %tmp890 to i32
  br label %bb113

bb108:                                            ; preds = %bb107.thread, %invcont54.bb107_crit_edge
  %count.15792 = phi i32 [ %count.2, %invcont54.bb107_crit_edge ], [ %156, %bb107.thread ]
  %memtmp.i152.05790 = phi i128 [ %memtmp.i152.1, %invcont54.bb107_crit_edge ], [ %ins2575, %bb107.thread ]
  %ray_origin.0.off645784 = phi i32 [ %ray_origin.1.off64, %invcont54.bb107_crit_edge ], [ %tmp916, %bb107.thread ]
  %ray_origin.0.off325782 = phi i32 [ %ray_origin.1.off32, %invcont54.bb107_crit_edge ], [ %extract.t57435798, %bb107.thread ]
  %ray_origin.0.off05780 = phi i32 [ %ray_origin.1.off0, %invcont54.bb107_crit_edge ], [ %extract.t57355797, %bb107.thread ]
  %memtmp77.05774 = phi i128 [ %memtmp77.1, %invcont54.bb107_crit_edge ], [ %ins942, %bb107.thread ]
  %photon.0.2.05768 = phi float [ 0.000000e+00, %invcont54.bb107_crit_edge ], [ %mrv_gr91, %bb107.thread ]
  %photon.0.1.05767 = phi float [ 0.000000e+00, %invcont54.bb107_crit_edge ], [ %tmp2634, %bb107.thread ]
  %photon.0.0.05766 = phi float [ 0.000000e+00, %invcont54.bb107_crit_edge ], [ %tmp2637, %bb107.thread ]
  %surface_color.2.15765 = phi float [ %surface_color.2.2, %invcont54.bb107_crit_edge ], [ %surface_color.2.0, %bb107.thread ]
  %surface_color.1.15763 = phi float [ %surface_color.1.2, %invcont54.bb107_crit_edge ], [ %surface_color.1.0, %bb107.thread ]
  %surface_color.0.15761 = phi float [ %surface_color.0.2, %invcont54.bb107_crit_edge ], [ %surface_color.0.0, %bb107.thread ]
  %157 = load float* %109, align 8
  %158 = load float* %113, align 4
  %159 = load float* %114, align 8
  %tmp3797 = bitcast float %157 to i32
  %tmp3798 = zext i32 %tmp3797 to i96
  %tmp3791 = bitcast float %158 to i32
  %tmp3792 = zext i32 %tmp3791 to i96
  %tmp3793 = shl nuw nsw i96 %tmp3792, 32
  %tmp3785 = bitcast float %159 to i32
  %tmp3480 = zext i32 %tmp3785 to i128
  %tmp3481 = shl nuw nsw i128 %tmp3480, 64
  %160 = fsub float 2.650000e+02, %157
  %161 = load float* %110, align 4
  %162 = load float* %115, align 4
  %163 = load float* %116, align 4
  %tmp3774 = bitcast float %161 to i32
  %tmp3775 = zext i32 %tmp3774 to i96
  %tmp3768 = bitcast float %162 to i32
  %tmp3769 = zext i32 %tmp3768 to i96
  %tmp3770 = shl nuw nsw i96 %tmp3769, 32
  %tmp3762 = bitcast float %163 to i32
  %tmp3458 = zext i32 %tmp3762 to i128
  %tmp3459 = shl nuw nsw i128 %tmp3458, 64
  %164 = fdiv float %160, %161
  %165 = fsub float 0x4073A00420000000, %157
  %166 = fdiv float %165, %161
  %167 = fcmp ogt float %164, %166
  %tx1.i267.0 = select i1 %167, float %166, float %164
  %tx2.i268.0 = select i1 %167, float %164, float %166
  %168 = fcmp ogt float %tx1.i267.0, -1.000000e+10
  %tnear.i273.0 = select i1 %168, float %tx1.i267.0, float -1.000000e+10
  %169 = fcmp olt float %tx2.i268.0, 1.000000e+10
  %tfar.i274.0 = select i1 %169, float %tx2.i268.0, float 1.000000e+10
  %170 = fcmp ogt float %tnear.i273.0, %tfar.i274.0
  %171 = fcmp olt float %tfar.i274.0, 0.000000e+00
  %or.cond = or i1 %170, %171
  br i1 %or.cond, label %bb113, label %bb29.i387

bb29.i387:                                        ; preds = %bb108
  %172 = fsub float 2.960000e+02, %158
  %173 = fdiv float %172, %162
  %174 = fsub float 0x407C800420000000, %158
  %175 = fdiv float %174, %162
  %176 = fcmp ogt float %173, %175
  %ty1.i269.0 = select i1 %176, float %175, float %173
  %ty2.i270.0 = select i1 %176, float %173, float %175
  %177 = fcmp ogt float %ty1.i269.0, %tnear.i273.0
  %tnear.i273.1 = select i1 %177, float %ty1.i269.0, float %tnear.i273.0
  %178 = fcmp olt float %ty2.i270.0, %tfar.i274.0
  %tfar.i274.1 = select i1 %178, float %ty2.i270.0, float %tfar.i274.0
  %179 = fcmp ogt float %tnear.i273.1, %tfar.i274.1
  %180 = fcmp olt float %tfar.i274.1, 0.000000e+00
  %or.cond5819 = or i1 %179, %180
  br i1 %or.cond5819, label %bb113, label %bb62.i442

bb62.i442:                                        ; preds = %bb29.i387
  %ins3611 = or i96 %tmp3798, %tmp3793
  %tmp3310 = zext i96 %ins3611 to i128
  %mask3311 = and i128 %memtmp63.i283.2, -79228162514264337593543950336
  %mask3306 = or i128 %mask3311, %tmp3310
  %ins3307 = or i128 %mask3306, %tmp3481
  %tmp3292 = lshr i128 %ins3307, 64
  %tmp3293 = trunc i128 %tmp3292 to i32
  %tmp3294 = bitcast i32 %tmp3293 to float
  %181 = fsub float 0.000000e+00, %tmp3294
  %ins3588 = or i96 %tmp3775, %tmp3770
  %tmp3288 = zext i96 %ins3588 to i128
  %mask3289 = and i128 %memtmp69.i284.2, -79228162514264337593543950336
  %mask3284 = or i128 %mask3289, %tmp3288
  %ins3285 = or i128 %mask3284, %tmp3459
  %tmp3270 = lshr i128 %ins3285, 64
  %tmp3271 = trunc i128 %tmp3270 to i32
  %tmp3272 = bitcast i32 %tmp3271 to float
  %182 = fdiv float %181, %tmp3272
  %ins3565 = or i96 %tmp3798, %tmp3793
  %tmp3266 = zext i96 %ins3565 to i128
  %mask3267 = and i128 %memtmp75.i285.2, -79228162514264337593543950336
  %mask3262 = or i128 %mask3267, %tmp3266
  %ins3263 = or i128 %mask3262, %tmp3481
  %tmp3248 = lshr i128 %ins3263, 64
  %tmp3249 = trunc i128 %tmp3248 to i32
  %tmp3250 = bitcast i32 %tmp3249 to float
  %183 = fsub float 0x4074A00420000000, %tmp3250
  %ins3542 = or i96 %tmp3775, %tmp3770
  %tmp3244 = zext i96 %ins3542 to i128
  %mask3245 = and i128 %memtmp81.i286.2, -79228162514264337593543950336
  %mask3240 = or i128 %mask3245, %tmp3244
  %ins3241 = or i128 %mask3240, %tmp3459
  %tmp3226 = lshr i128 %ins3241, 64
  %tmp3227 = trunc i128 %tmp3226 to i32
  %tmp3228 = bitcast i32 %tmp3227 to float
  %184 = fdiv float %183, %tmp3228
  %185 = fcmp ogt float %182, %184
  %tz1.i271.0 = select i1 %185, float %184, float %182
  %tz2.i272.0 = select i1 %185, float %182, float %184
  %186 = fcmp ogt float %tz1.i271.0, %tnear.i273.1
  %tnear.i273.2 = select i1 %186, float %tz1.i271.0, float %tnear.i273.1
  %187 = fcmp olt float %tz2.i272.0, %tfar.i274.1
  %tfar.i274.2 = select i1 %187, float %tz2.i272.0, float %tfar.i274.1
  %188 = fcmp ogt float %tnear.i273.2, %tfar.i274.2
  %189 = fcmp olt float %tfar.i274.2, 0.000000e+00
  %or.cond5820 = or i1 %188, %189
  br i1 %or.cond5820, label %bb113, label %bb111

bb111:                                            ; preds = %bb62.i442
  %190 = sext i32 %v_p_count.1 to i64
  %191 = getelementptr inbounds [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %190, i32 0, i32 0
  store float %photon.0.0.05766, float* %191, align 8
  %192 = getelementptr inbounds [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %190, i32 0, i32 1
  store float %photon.0.1.05767, float* %192, align 4
  %193 = getelementptr inbounds [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %190, i32 0, i32 2
  store float %photon.0.2.05768, float* %193, align 8
  %194 = getelementptr inbounds [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %190, i32 1, i64 0
  store float %134, float* %194, align 4
  %195 = getelementptr inbounds [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %190, i32 1, i64 1
  store float %135, float* %195, align 4
  %196 = getelementptr inbounds [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %190, i32 1, i64 2
  store float %136, float* %196, align 4
  %197 = getelementptr inbounds [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %190, i32 2
  store i8 0, i8* %197, align 8
  %198 = add nsw i32 %v_p_count.1, 1
  br label %bb113

bb113:                                            ; preds = %bb116, %bb111, %bb62.i442, %bb29.i387, %bb108, %bb107, %invcont54.bb107_crit_edge
  %surface_color.0.2 = phi float [ 0.000000e+00, %bb116 ], [ %surface_color.0.15761, %bb111 ], [ %surface_color.0.0, %bb107 ], [ %surface_color.0.2, %invcont54.bb107_crit_edge ], [ %surface_color.0.15761, %bb108 ], [ %surface_color.0.15761, %bb29.i387 ], [ %surface_color.0.15761, %bb62.i442 ]
  %surface_color.1.2 = phi float [ 0.000000e+00, %bb116 ], [ %surface_color.1.15763, %bb111 ], [ %surface_color.1.0, %bb107 ], [ %surface_color.1.2, %invcont54.bb107_crit_edge ], [ %surface_color.1.15763, %bb108 ], [ %surface_color.1.15763, %bb29.i387 ], [ %surface_color.1.15763, %bb62.i442 ]
  %surface_color.2.2 = phi float [ 0.000000e+00, %bb116 ], [ %surface_color.2.15765, %bb111 ], [ %surface_color.2.0, %bb107 ], [ %surface_color.2.2, %invcont54.bb107_crit_edge ], [ %surface_color.2.15765, %bb108 ], [ %surface_color.2.15765, %bb29.i387 ], [ %surface_color.2.15765, %bb62.i442 ]
  %memtmp77.1 = phi i128 [ %memtmp77.2, %bb116 ], [ %memtmp77.05774, %bb111 ], [ %ins942, %bb107 ], [ %memtmp77.1, %invcont54.bb107_crit_edge ], [ %memtmp77.05774, %bb108 ], [ %memtmp77.05774, %bb29.i387 ], [ %memtmp77.05774, %bb62.i442 ]
  %memtmp40.0 = phi i128 [ %memtmp40.1, %bb116 ], [ %ins1008, %bb111 ], [ %ins1008, %bb107 ], [ %ins1008, %invcont54.bb107_crit_edge ], [ %ins1008, %bb108 ], [ %ins1008, %bb29.i387 ], [ %ins1008, %bb62.i442 ]
  %ray_origin.1.off0 = phi i32 [ %ray_origin.2.off0, %bb116 ], [ %ray_origin.0.off05780, %bb111 ], [ %extract.t5735, %bb107 ], [ %ray_origin.1.off0, %invcont54.bb107_crit_edge ], [ %ray_origin.0.off05780, %bb108 ], [ %ray_origin.0.off05780, %bb29.i387 ], [ %ray_origin.0.off05780, %bb62.i442 ]
  %ray_origin.1.off32 = phi i32 [ %ray_origin.2.off32, %bb116 ], [ %ray_origin.0.off325782, %bb111 ], [ %extract.t5743, %bb107 ], [ %ray_origin.1.off32, %invcont54.bb107_crit_edge ], [ %ray_origin.0.off325782, %bb108 ], [ %ray_origin.0.off325782, %bb29.i387 ], [ %ray_origin.0.off325782, %bb62.i442 ]
  %ray_origin.1.off64 = phi i32 [ %ray_origin.2.off64, %bb116 ], [ %ray_origin.0.off645784, %bb111 ], [ %tmp916, %bb107 ], [ %ray_origin.1.off64, %invcont54.bb107_crit_edge ], [ %ray_origin.0.off645784, %bb108 ], [ %ray_origin.0.off645784, %bb29.i387 ], [ %ray_origin.0.off645784, %bb62.i442 ]
  %memtmp.i152.1 = phi i128 [ %memtmp.i152.2, %bb116 ], [ %memtmp.i152.05790, %bb111 ], [ %ins2575, %bb107 ], [ %memtmp.i152.1, %invcont54.bb107_crit_edge ], [ %memtmp.i152.05790, %bb108 ], [ %memtmp.i152.05790, %bb29.i387 ], [ %memtmp.i152.05790, %bb62.i442 ]
  %memtmp81.i286.2 = phi i128 [ %memtmp81.i286.3, %bb116 ], [ %ins3241, %bb111 ], [ %memtmp81.i286.2, %bb107 ], [ %memtmp81.i286.2, %invcont54.bb107_crit_edge ], [ %memtmp81.i286.2, %bb108 ], [ %memtmp81.i286.2, %bb29.i387 ], [ %ins3241, %bb62.i442 ]
  %memtmp75.i285.2 = phi i128 [ %memtmp75.i285.3, %bb116 ], [ %ins3263, %bb111 ], [ %memtmp75.i285.2, %bb107 ], [ %memtmp75.i285.2, %invcont54.bb107_crit_edge ], [ %memtmp75.i285.2, %bb108 ], [ %memtmp75.i285.2, %bb29.i387 ], [ %ins3263, %bb62.i442 ]
  %memtmp69.i284.2 = phi i128 [ %memtmp69.i284.3, %bb116 ], [ %ins3285, %bb111 ], [ %memtmp69.i284.2, %bb107 ], [ %memtmp69.i284.2, %invcont54.bb107_crit_edge ], [ %memtmp69.i284.2, %bb108 ], [ %memtmp69.i284.2, %bb29.i387 ], [ %ins3285, %bb62.i442 ]
  %memtmp63.i283.2 = phi i128 [ %memtmp63.i283.3, %bb116 ], [ %ins3307, %bb111 ], [ %memtmp63.i283.2, %bb107 ], [ %memtmp63.i283.2, %invcont54.bb107_crit_edge ], [ %memtmp63.i283.2, %bb108 ], [ %memtmp63.i283.2, %bb29.i387 ], [ %ins3307, %bb62.i442 ]
  %bounces.0 = phi i32 [ 0, %bb116 ], [ %117, %bb111 ], [ %117, %bb107 ], [ %117, %invcont54.bb107_crit_edge ], [ %117, %bb108 ], [ %117, %bb29.i387 ], [ %117, %bb62.i442 ]
  %count.2 = phi i32 [ %count.3, %bb116 ], [ %count.15792, %bb111 ], [ %count.2, %bb107 ], [ %count.2, %invcont54.bb107_crit_edge ], [ %count.15792, %bb108 ], [ %count.15792, %bb29.i387 ], [ %count.15792, %bb62.i442 ]
  %v_p_count.1 = phi i32 [ %v_p_count.2, %bb116 ], [ %198, %bb111 ], [ %v_p_count.1, %bb107 ], [ %v_p_count.1, %invcont54.bb107_crit_edge ], [ %v_p_count.1, %bb108 ], [ %v_p_count.1, %bb29.i387 ], [ %v_p_count.1, %bb62.i442 ]
  %199 = icmp slt i32 %bounces.0, 3
  br i1 %199, label %bb32, label %bb115

bb115:                                            ; preds = %bb113
  %200 = add nsw i32 %iterator.0, 1
  br label %bb116

bb116:                                            ; preds = %bb115, %invcont24
  %memtmp77.2 = phi i128 [ undef, %invcont24 ], [ %memtmp77.1, %bb115 ]
  %memtmp40.1 = phi i128 [ undef, %invcont24 ], [ %memtmp40.0, %bb115 ]
  %ray_origin.2.off0 = phi i32 [ %tmp1104, %invcont24 ], [ %ray_origin.1.off0, %bb115 ]
  %ray_origin.2.off32 = phi i32 [ %tmp1098, %invcont24 ], [ %ray_origin.1.off32, %bb115 ]
  %ray_origin.2.off64 = phi i32 [ %tmp1092, %invcont24 ], [ %ray_origin.1.off64, %bb115 ]
  %memtmp.i152.2 = phi i128 [ undef, %invcont24 ], [ %memtmp.i152.1, %bb115 ]
  %memtmp81.i286.3 = phi i128 [ undef, %invcont24 ], [ %memtmp81.i286.2, %bb115 ]
  %memtmp75.i285.3 = phi i128 [ undef, %invcont24 ], [ %memtmp75.i285.2, %bb115 ]
  %memtmp69.i284.3 = phi i128 [ undef, %invcont24 ], [ %memtmp69.i284.2, %bb115 ]
  %memtmp63.i283.3 = phi i128 [ undef, %invcont24 ], [ %memtmp63.i283.2, %bb115 ]
  %count.3 = phi i32 [ 0, %invcont24 ], [ %count.2, %bb115 ]
  %iterator.0 = phi i32 [ 0, %invcont24 ], [ %200, %bb115 ]
  %v_p_count.2 = phi i32 [ 0, %invcont24 ], [ %v_p_count.1, %bb115 ]
  %201 = icmp slt i32 %iterator.0, 110000
  br i1 %201, label %bb113, label %invcont120

invcont120:                                       ; preds = %bb116
  call void @llvm.trax.printf(float 0.000000e+00)
  %202 = call i32 @llvm.trax.atominc(i32 0)
  %203 = mul nsw i32 %6, %7
  %204 = sitofp i32 %6 to float
  %205 = fdiv float %204, -2.000000e+00
  %206 = sitofp i32 %7 to float
  %207 = fdiv float %206, -2.000000e+00
  %208 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 0
  %209 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 1
  %210 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 2
  %211 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 0
  %212 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 1
  %213 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 2
  %214 = getelementptr inbounds %struct.Color* %3, i64 0, i32 0
  %215 = getelementptr inbounds %struct.Color* %3, i64 0, i32 1
  %216 = getelementptr inbounds %struct.Color* %3, i64 0, i32 2
  %217 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %218 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %219 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %220 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %221 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 0, i32 0
  %222 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 0, i32 1
  %223 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 0, i32 2
  %224 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 1, i32 0
  %225 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 1, i32 1
  %226 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 1, i32 2
  %227 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 2, i32 0
  %228 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 2, i32 1
  %229 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 2, i32 2
  %230 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 4, i32 0, i32 0
  %231 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 4, i32 0, i32 1
  %232 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 4, i32 0, i32 2
  %233 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 0
  %tmp615 = bitcast %struct.HitRecord* %hit_record127614 to i8*
  %tmp616 = bitcast %struct.HitRecord* %hit_record127 to i8*
  %ray4646.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray4646.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray4646.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.14642.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.14642.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.14642.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %234 = getelementptr inbounds %struct.Color* %light.i650, i64 0, i32 0
  %235 = getelementptr inbounds %struct.Color* %light.i650, i64 0, i32 1
  %236 = getelementptr inbounds %struct.Color* %light.i650, i64 0, i32 2
  %237 = getelementptr inbounds %struct.HitRecord* %hit_record127614, i64 0, i32 0
  %238 = getelementptr inbounds %struct.HitRecord* %hit_record127614, i64 0, i32 1
  %agg.result1.i.i666 = bitcast %struct.Trigonum* %tri.i653 to i8*
  %239 = bitcast %struct.Trigonum* %238 to i8*
  %240 = getelementptr inbounds %struct.Color* %2, i64 0, i32 0
  %241 = getelementptr inbounds %struct.Color* %2, i64 0, i32 1
  %242 = getelementptr inbounds %struct.Color* %2, i64 0, i32 2
  %243 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %244 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %245 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %tmp5420 = bitcast float %12 to i32
  %tmp5421 = zext i32 %tmp5420 to i96
  %tmp5416 = shl nuw nsw i96 %tmp1554, 32
  %tmp5408 = bitcast float %14 to i32
  %tmp4820 = zext i32 %tmp5408 to i128
  %tmp4821 = shl nuw nsw i128 %tmp4820, 64
  %246 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %247 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %248 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %249 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 0
  %250 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 1
  %251 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 2
  %ray_to_light_source15.i5070.0 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 0, i32 0
  %ray_to_light_source15.i5070.1 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 0, i32 1
  %ray_to_light_source15.i5070.2 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 0, i32 2
  %ray_to_light_source15.i.1.0 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 1, i32 0
  %ray_to_light_source15.i.1.1 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 1, i32 1
  %ray_to_light_source15.i.1.2 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 1, i32 2
  %252 = getelementptr inbounds %struct.Trigonum* %tri.i653, i64 0, i32 4, i32 2
  %253 = getelementptr inbounds %struct.Trigonum* %tri.i653, i64 0, i32 4, i32 0, i32 0
  %254 = getelementptr inbounds %struct.Trigonum* %tri.i653, i64 0, i32 4, i32 0, i32 1
  %255 = getelementptr inbounds %struct.Trigonum* %tri.i653, i64 0, i32 4, i32 0, i32 2
  %hit_record127.0 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 0
  %hit_record127.13854.0 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 0, i32 0
  %hit_record127.13854.1 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 0, i32 1
  %hit_record127.13854.2 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 0, i32 2
  %hit_record127.1.1.0 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 1, i32 0
  %hit_record127.1.1.1 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 1, i32 1
  %hit_record127.1.1.2 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 1, i32 2
  %hit_record127.1.2.0 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 2, i32 0
  %hit_record127.1.2.1 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 2, i32 1
  %hit_record127.1.2.2 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 2, i32 2
  %hit_record127.1.3 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 3
  %hit_record127.1.43830.0 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 4, i32 0, i32 0
  %hit_record127.1.43830.1 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 4, i32 0, i32 1
  %hit_record127.1.43830.2 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 4, i32 0, i32 2
  %hit_record127.1.4.1 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 4, i32 1
  %hit_record127.1.4.2 = getelementptr inbounds %struct.HitRecord* %hit_record127, i64 0, i32 1, i32 4, i32 2
  %tri.i3850.0 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 0, i32 0
  %tri.i3850.1 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 0, i32 1
  %tri.i3850.2 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 0, i32 2
  %tri.i.1.0 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 1, i32 0
  %tri.i.1.1 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 1, i32 1
  %tri.i.1.2 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 1, i32 2
  %tri.i.2.0 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 2, i32 0
  %tri.i.2.1 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 2, i32 1
  %tri.i.2.2 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 2, i32 2
  %tri.i.3 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 3
  %tri.i.43834.0 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 0, i32 0
  %tri.i.43834.1 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 0, i32 1
  %tri.i.43834.2 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 0, i32 2
  %tri.i.4.1 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 1
  %tri.i.4.2 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 2
  %256 = getelementptr inbounds %struct.Color* %4, i64 0, i32 0
  %257 = getelementptr inbounds %struct.Color* %4, i64 0, i32 1
  %258 = getelementptr inbounds %struct.Color* %4, i64 0, i32 2
  %259 = getelementptr inbounds %struct.Color* %light.i503, i64 0, i32 0
  %260 = getelementptr inbounds %struct.Color* %light.i503, i64 0, i32 1
  %261 = getelementptr inbounds %struct.Color* %light.i503, i64 0, i32 2
  %262 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 0, i32 0
  %263 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 0, i32 1
  %264 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 0, i32 2
  %elt193 = bitcast %struct.Color* %result to double*
  %265 = getelementptr inbounds %struct.Color* %5, i64 0, i32 0
  %266 = getelementptr inbounds %struct.Color* %5, i64 0, i32 1
  %267 = getelementptr inbounds %struct.Color* %5, i64 0, i32 2
  br label %bb199

invcont129:                                       ; preds = %bb199
  %268 = sdiv i32 %storemerge2, %6
  %269 = srem i32 %storemerge2, %6
  %270 = sitofp i32 %269 to float
  %271 = fadd float %270, %205
  %272 = fadd float %271, 5.000000e-01
  %273 = fmul float %272, 2.000000e+00
  %274 = fdiv float %273, %204
  %275 = sitofp i32 %268 to float
  %276 = fadd float %275, %207
  %277 = fadd float %276, 5.000000e-01
  %278 = fmul float %277, 2.000000e+00
  %279 = fdiv float %278, %206
  store float 0.000000e+00, float* %15, align 8
  store float 0.000000e+00, float* %16, align 4
  store float 0.000000e+00, float* %17, align 8
  store float %30, float* %211, align 8
  store float %31, float* %212, align 4
  store float %32, float* %213, align 8
  %280 = fmul float %38, %279
  %281 = fmul float %39, %279
  %282 = fmul float %40, %279
  %tmp4513 = bitcast float %280 to i32
  %tmp4514 = zext i32 %tmp4513 to i64
  %tmp4507 = bitcast float %281 to i32
  %tmp4508 = zext i32 %tmp4507 to i64
  %tmp4509 = shl nuw i64 %tmp4508, 32
  %ins4511 = or i64 %tmp4514, %tmp4509
  %283 = fmul float %34, %274
  %284 = fmul float %35, %274
  %285 = fmul float %36, %274
  store float %283, float* %214, align 8
  store float %284, float* %215, align 4
  store float %285, float* %216, align 8
  %tmp4499 = bitcast i64 %ins4511 to double
  %286 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %3, double %tmp4499, float %282) nounwind
  %mrv_gr14.i600 = extractvalue %0 %286, 0
  %mrv_gr16.i = extractvalue %0 %286, 1
  %287 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %ln.i, double %mrv_gr14.i600, float %mrv_gr16.i) nounwind
  %mrv_gr24.i602 = extractvalue %0 %287, 0
  %tmp4403 = bitcast double %mrv_gr24.i602 to i64
  %mrv_gr26.i604 = extractvalue %0 %287, 1
  %tmp4390 = trunc i64 %tmp4403 to i32
  %tmp4391 = bitcast i32 %tmp4390 to float
  store float %tmp4391, float* %208, align 8
  %tmp4393 = lshr i64 %tmp4403, 32
  %tmp4394 = trunc i64 %tmp4393 to i32
  %tmp4395 = bitcast i32 %tmp4394 to float
  store float %tmp4395, float* %209, align 4
  store float %mrv_gr26.i604, float* %210, align 8
  %288 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %V.i) nounwind
  %mrv_gr30.i = extractvalue %0 %288, 0
  %tmp4381 = bitcast double %mrv_gr30.i to i64
  %mrv_gr32.i607 = extractvalue %0 %288, 1
  %tmp4371 = lshr i64 %tmp4381, 32
  %tmp4558 = trunc i64 %tmp4381 to i32
  %tmp4559 = bitcast i32 %tmp4558 to float
  %tmp4555 = trunc i64 %tmp4371 to i32
  %tmp4556 = bitcast i32 %tmp4555 to float
  store float %22, float* %41, align 8
  store float %23, float* %217, align 4
  store float %24, float* %218, align 8
  store float %tmp4559, float* %42, align 4
  store float %tmp4556, float* %219, align 4
  store float %mrv_gr32.i607, float* %220, align 4
  store float 0.000000e+00, float* %221, align 4
  store float 0.000000e+00, float* %222, align 4
  store float 0.000000e+00, float* %223, align 4
  store float 0.000000e+00, float* %224, align 4
  store float 0.000000e+00, float* %225, align 4
  store float 0.000000e+00, float* %226, align 4
  store float 0.000000e+00, float* %227, align 4
  store float 0.000000e+00, float* %228, align 4
  store float 0.000000e+00, float* %229, align 4
  store float 0.000000e+00, float* %230, align 4
  store float 0.000000e+00, float* %231, align 4
  store float 0.000000e+00, float* %232, align 4
  store float 1.000000e+10, float* %233, align 8
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record127, %struct.Box* %ray)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp615, i8* %tmp616, i64 64, i32 8, i1 false)
  %tmp4647 = load float* %ray4646.0, align 8
  %tmp4648 = load float* %ray4646.1, align 4
  %tmp4649 = load float* %ray4646.2, align 8
  %tmp4643 = load float* %ray.14642.0, align 4
  %tmp4644 = load float* %ray.14642.1, align 4
  %tmp4645 = load float* %ray.14642.2, align 4
  store float 0.000000e+00, float* %234, align 8
  store float 0.000000e+00, float* %235, align 4
  store float 0.000000e+00, float* %236, align 8
  %289 = load float* %237, align 8
  %290 = fcmp olt float %289, 1.000000e+10
  br i1 %290, label %bb.i705, label %invcont134

bb.i705:                                          ; preds = %invcont129
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %agg.result1.i.i666, i8* %239, i64 60, i32 4, i1 false) nounwind
  %tmp5397 = bitcast float %tmp4643 to i32
  %tmp5398 = zext i32 %tmp5397 to i96
  %tmp5391 = bitcast float %tmp4644 to i32
  %tmp5392 = zext i32 %tmp5391 to i96
  %tmp5393 = shl nuw nsw i96 %tmp5392, 32
  %ins5395 = or i96 %tmp5398, %tmp5393
  %tmp5385 = bitcast float %tmp4645 to i32
  %tmp5002 = zext i96 %ins5395 to i128
  %mask5003 = and i128 %memtmp.i656.1, -79228162514264337593543950336
  %tmp4996 = zext i32 %tmp5385 to i128
  %tmp4997 = shl nuw nsw i128 %tmp4996, 64
  %mask4998 = or i128 %mask5003, %tmp5002
  %ins4999 = or i128 %mask4998, %tmp4997
  %tmp4984 = lshr i128 %ins4999, 64
  %tmp4985 = trunc i128 %tmp4984 to i32
  %tmp4986 = bitcast i32 %tmp4985 to float
  %291 = fmul float %tmp4643, %289
  %292 = fmul float %tmp4644, %289
  %293 = fmul float %tmp4986, %289
  %tmp5488 = bitcast float %291 to i32
  %tmp5489 = zext i32 %tmp5488 to i96
  %tmp5482 = bitcast float %292 to i32
  %tmp5483 = zext i32 %tmp5482 to i96
  %tmp5484 = shl nuw nsw i96 %tmp5483, 32
  %ins5486 = or i96 %tmp5489, %tmp5484
  %tmp5476 = bitcast float %293 to i32
  %tmp4980 = zext i96 %ins5486 to i128
  %mask4981 = and i128 %memtmp4.i657.1, -79228162514264337593543950336
  %tmp4974 = zext i32 %tmp5476 to i128
  %tmp4975 = shl nuw nsw i128 %tmp4974, 64
  %mask4976 = or i128 %mask4981, %tmp4980
  %ins4977 = or i128 %mask4976, %tmp4975
  %tmp5094 = bitcast float %291 to i32
  %tmp5095 = zext i32 %tmp5094 to i64
  %tmp5088 = bitcast float %292 to i32
  %tmp5089 = zext i32 %tmp5088 to i64
  %tmp5090 = shl nuw i64 %tmp5089, 32
  %ins5092 = or i64 %tmp5095, %tmp5090
  %ins4977.tr = trunc i128 %ins4977 to i96
  %tmp5534 = bitcast float %tmp4647 to i32
  %tmp5535 = zext i32 %tmp5534 to i96
  %tmp5528 = bitcast float %tmp4648 to i32
  %tmp5529 = zext i32 %tmp5528 to i96
  %tmp5530 = shl nuw nsw i96 %tmp5529, 32
  %ins5532 = or i96 %tmp5535, %tmp5530
  %tmp5522 = bitcast float %tmp4649 to i32
  %tmp4958 = zext i96 %ins5532 to i128
  %mask4959 = and i128 %memtmp10.i658.1, -79228162514264337593543950336
  %tmp4952 = zext i32 %tmp5522 to i128
  %tmp4953 = shl nuw nsw i128 %tmp4952, 64
  %mask4954 = or i128 %mask4959, %tmp4958
  %ins4955 = or i128 %mask4954, %tmp4953
  store float %tmp4647, float* %240, align 8
  store float %tmp4648, float* %241, align 4
  %tmp4940 = lshr i128 %ins4955, 64
  %tmp4941 = trunc i128 %tmp4940 to i32
  %tmp4942 = bitcast i32 %tmp4941 to float
  store float %tmp4942, float* %242, align 8
  %tmp5080 = bitcast i64 %ins5092 to double
  %tmp5075 = lshr i96 %ins4977.tr, 64
  %tmp5076 = trunc i96 %tmp5075 to i32
  %tmp5077 = bitcast i32 %tmp5076 to float
  %294 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %2, double %tmp5080, float %tmp5077) nounwind
  %mrv_gr20.i686 = extractvalue %0 %294, 0
  %tmp4935 = bitcast double %mrv_gr20.i686 to i64
  %mrv_gr22.i688 = extractvalue %0 %294, 1
  %tmp4925 = lshr i64 %tmp4935, 32
  %295 = call fastcc %0 @_Z6normal8Trigonum(%struct.Trigonum* byval %tri.i653) nounwind
  %mrv_gr26.i691 = extractvalue %0 %295, 0
  %tmp4913 = bitcast double %mrv_gr26.i691 to i64
  %mrv_gr28.i693 = extractvalue %0 %295, 1
  %tmp4900 = trunc i64 %tmp4913 to i32
  %tmp4901 = bitcast i32 %tmp4900 to float
  %tmp4903 = lshr i64 %tmp4913, 32
  %tmp4904 = trunc i64 %tmp4903 to i32
  %tmp4905 = bitcast i32 %tmp4904 to float
  %ins5509 = or i96 %tmp5398, %tmp5393
  %tmp4892 = zext i96 %ins5509 to i128
  %mask4893 = and i128 %memtmp30.i661.1, -79228162514264337593543950336
  %mask4888 = or i128 %mask4893, %tmp4892
  %ins4889 = or i128 %mask4888, %tmp4997
  store float %tmp4643, float* %243, align 8
  store float %tmp4644, float* %244, align 4
  %tmp4874 = lshr i128 %ins4889, 64
  %tmp4875 = trunc i128 %tmp4874 to i32
  %tmp4876 = bitcast i32 %tmp4875 to float
  store float %tmp4876, float* %245, align 8
  %296 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %1) nounwind
  %mrv_gr38.i701 = extractvalue %0 %296, 0
  %tmp4869 = bitcast double %mrv_gr38.i701 to i64
  %mrv_gr40.i703 = extractvalue %0 %296, 1
  %tmp4859 = lshr i64 %tmp4869, 32
  %tmp5456 = trunc i64 %tmp4869 to i32
  %tmp5457 = bitcast i32 %tmp5456 to float
  %297 = fmul float %tmp5457, %tmp4901
  %298 = fadd float %297, 0.000000e+00
  %tmp5453 = trunc i64 %tmp4859 to i32
  %tmp5454 = bitcast i32 %tmp5453 to float
  %299 = fmul float %tmp5454, %tmp4905
  %300 = fadd float %299, %298
  %301 = fmul float %mrv_gr40.i703, %mrv_gr28.i693
  %302 = fadd float %301, %300
  %303 = fcmp ogt float %302, 0.000000e+00
  br i1 %303, label %bb46.i711, label %bb53.i

bb46.i711:                                        ; preds = %bb.i705
  %304 = fmul float %tmp4901, -1.000000e+00
  %305 = fmul float %tmp4905, -1.000000e+00
  %306 = fmul float %mrv_gr28.i693, -1.000000e+00
  %tmp5443 = bitcast float %304 to i32
  %tmp5444 = zext i32 %tmp5443 to i96
  %tmp5437 = bitcast float %305 to i32
  %tmp5438 = zext i32 %tmp5437 to i96
  %tmp5439 = shl nuw nsw i96 %tmp5438, 32
  %ins5441 = or i96 %tmp5444, %tmp5439
  %tmp5431 = bitcast float %306 to i32
  %tmp4848 = zext i96 %ins5441 to i128
  %mask4849 = and i128 %memtmp47.i.2, -79228162514264337593543950336
  %tmp4842 = zext i32 %tmp5431 to i128
  %tmp4843 = shl nuw nsw i128 %tmp4842, 64
  %mask4844 = or i128 %mask4849, %tmp4848
  %ins4845 = or i128 %mask4844, %tmp4843
  %tmp4830 = lshr i128 %ins4845, 64
  %tmp4831 = trunc i128 %tmp4830 to i32
  %tmp4832 = bitcast i32 %tmp4831 to float
  br label %bb53.i

bb53.i:                                           ; preds = %bb46.i711, %bb.i705
  %N.i655.0.0 = phi float [ %304, %bb46.i711 ], [ %tmp4901, %bb.i705 ]
  %N.i655.1.0 = phi float [ %305, %bb46.i711 ], [ %tmp4905, %bb.i705 ]
  %N.i655.2.0 = phi float [ %tmp4832, %bb46.i711 ], [ %mrv_gr28.i693, %bb.i705 ]
  %memtmp47.i.0 = phi i128 [ %ins4845, %bb46.i711 ], [ %memtmp47.i.2, %bb.i705 ]
  %ins5418 = or i96 %tmp5421, %tmp5416
  %tmp4826 = zext i96 %ins5418 to i128
  %mask4827 = and i128 %memtmp54.i.1, -79228162514264337593543950336
  %mask4822 = or i128 %mask4827, %tmp4826
  %ins4823 = or i128 %mask4822, %tmp4821
  store float %12, float* %246, align 8
  store float %13, float* %247, align 4
  %tmp4808 = lshr i128 %ins4823, 64
  %tmp4809 = trunc i128 %tmp4808 to i32
  %tmp4810 = bitcast i32 %tmp4809 to float
  store float %tmp4810, float* %248, align 8
  %307 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %0, double %mrv_gr20.i686, float %mrv_gr22.i688) nounwind
  %mrv_gr66.i = extractvalue %0 %307, 0
  %tmp4803 = bitcast double %mrv_gr66.i to i64
  %mrv_gr68.i = extractvalue %0 %307, 1
  %tmp4790 = trunc i64 %tmp4803 to i32
  %tmp4791 = bitcast i32 %tmp4790 to float
  store float %tmp4791, float* %249, align 8
  %tmp4793 = lshr i64 %tmp4803, 32
  %tmp4794 = trunc i64 %tmp4793 to i32
  %tmp4795 = bitcast i32 %tmp4794 to float
  store float %tmp4795, float* %250, align 4
  store float %mrv_gr68.i, float* %251, align 8
  %308 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %L.i) nounwind
  %mrv_gr72.i = extractvalue %0 %308, 0
  %tmp4781 = bitcast double %mrv_gr72.i to i64
  %mrv_gr74.i = extractvalue %0 %308, 1
  %tmp4771 = lshr i64 %tmp4781, 32
  %tmp5365 = trunc i64 %tmp4781 to i32
  %tmp5366 = bitcast i32 %tmp5365 to float
  %309 = fmul float %tmp5366, %N.i655.0.0
  %310 = fadd float %309, 0.000000e+00
  %tmp5362 = trunc i64 %tmp4771 to i32
  %tmp5363 = bitcast i32 %tmp5362 to float
  %311 = fmul float %tmp5363, %N.i655.1.0
  %312 = fadd float %311, %310
  %313 = fmul float %mrv_gr74.i, %N.i655.2.0
  %314 = fadd float %313, %312
  %315 = fcmp ogt float %314, 0.000000e+00
  br i1 %315, label %bb88.i713, label %bb115.i

bb88.i713:                                        ; preds = %bb53.i
  %tmp5318 = trunc i64 %tmp4771 to i32
  %tmp5321 = trunc i64 %tmp4781 to i32
  %tmp5340 = trunc i64 %tmp4925 to i32
  %tmp5343 = trunc i64 %tmp4935 to i32
  %tmp5319 = bitcast i32 %tmp5318 to float
  %tmp5322 = bitcast i32 %tmp5321 to float
  %tmp5341 = bitcast i32 %tmp5340 to float
  %tmp5344 = bitcast i32 %tmp5343 to float
  %316 = load float* %249, align 8
  %317 = fmul float %316, %316
  %318 = load float* %250, align 4
  %319 = fmul float %318, %318
  %320 = fadd float %317, %319
  %321 = load float* %251, align 8
  %322 = fmul float %321, %321
  %323 = fadd float %320, %322
  %324 = call float @llvm.trax.invsqrt(float %323) nounwind
  %325 = fdiv float 1.000000e+00, %324
  store float %tmp5344, float* %ray_to_light_source15.i5070.0, align 8
  store float %tmp5341, float* %ray_to_light_source15.i5070.1, align 4
  store float %mrv_gr22.i688, float* %ray_to_light_source15.i5070.2, align 8
  store float %tmp5322, float* %ray_to_light_source15.i.1.0, align 4
  store float %tmp5319, float* %ray_to_light_source15.i.1.1, align 4
  store float %mrv_gr74.i, float* %ray_to_light_source15.i.1.2, align 4
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record127614, %struct.Box* %ray_to_light_source15.i) nounwind
  %326 = load float* %237, align 8
  %327 = fcmp uge float %326, %325
  %328 = fcmp ule float %326, 0x3F847AE140000000
  %or.cond5821 = or i1 %327, %328
  br i1 %or.cond5821, label %bb92.i722, label %bb115.i

bb92.i722:                                        ; preds = %bb88.i713
  %329 = load float* %252, align 8
  %330 = fmul float %329, %314
  %tmp5285 = bitcast float %330 to i32
  %tmp5286 = zext i32 %tmp5285 to i96
  %tmp5279 = bitcast float %330 to i32
  %tmp5280 = zext i32 %tmp5279 to i96
  %tmp5281 = shl nuw nsw i96 %tmp5280, 32
  %ins5283 = or i96 %tmp5286, %tmp5281
  %tmp5273 = bitcast float %330 to i32
  %tmp4738 = zext i96 %ins5283 to i128
  %mask4739 = and i128 %memtmp99.i.2, -79228162514264337593543950336
  %tmp4732 = zext i32 %tmp5273 to i128
  %tmp4733 = shl nuw nsw i128 %tmp4732, 64
  %mask4734 = or i128 %mask4739, %tmp4738
  %ins4735 = or i128 %mask4734, %tmp4733
  %tmp5137 = bitcast float %330 to i32
  %tmp5138 = zext i32 %tmp5137 to i64
  %tmp5131 = bitcast float %330 to i32
  %tmp5132 = zext i32 %tmp5131 to i64
  %tmp5133 = shl nuw i64 %tmp5132, 32
  %ins5135 = or i64 %tmp5138, %tmp5133
  %tmp4720 = lshr i128 %ins4735, 64
  %tmp4721 = trunc i128 %tmp4720 to i32
  %tmp4722 = bitcast i32 %tmp4721 to float
  %tmp5123 = bitcast i64 %ins5135 to double
  %331 = call fastcc %0 @_ZN5Color3addES_(%struct.Color* %light.i650, double %tmp5123, float %tmp4722) nounwind
  %mrv_gr111.i = extractvalue %0 %331, 0
  %tmp4715 = bitcast double %mrv_gr111.i to i64
  %mrv_gr113.i = extractvalue %0 %331, 1
  %tmp4702 = trunc i64 %tmp4715 to i32
  %tmp4703 = bitcast i32 %tmp4702 to float
  store float %tmp4703, float* %234, align 8
  %tmp4705 = lshr i64 %tmp4715, 32
  %tmp4706 = trunc i64 %tmp4705 to i32
  %tmp4707 = bitcast i32 %tmp4706 to float
  store float %tmp4707, float* %235, align 4
  store float %mrv_gr113.i, float* %236, align 8
  br label %bb115.i

bb115.i:                                          ; preds = %bb92.i722, %bb88.i713, %bb53.i
  %memtmp99.i.0 = phi i128 [ %ins4735, %bb92.i722 ], [ %memtmp99.i.2, %bb53.i ], [ %memtmp99.i.2, %bb88.i713 ]
  %332 = load float* %253, align 8
  %333 = load float* %254, align 4
  %334 = load float* %255, align 8
  %tmp5262 = bitcast float %332 to i32
  %tmp5263 = zext i32 %tmp5262 to i96
  %tmp5256 = bitcast float %333 to i32
  %tmp5257 = zext i32 %tmp5256 to i96
  %tmp5258 = shl nuw nsw i96 %tmp5257, 32
  %ins5260 = or i96 %tmp5263, %tmp5258
  %tmp5250 = bitcast float %334 to i32
  %tmp5217 = zext i96 %ins5260 to i128
  %mask5218 = and i128 %memtmp.i.i643.1, -79228162514264337593543950336
  %tmp5211 = zext i32 %tmp5250 to i128
  %tmp5212 = shl nuw nsw i128 %tmp5211, 64
  %mask5213 = or i128 %mask5218, %tmp5217
  %ins5214 = or i128 %mask5213, %tmp5212
  %tmp5239 = bitcast float %332 to i32
  %tmp5240 = zext i32 %tmp5239 to i96
  %tmp5233 = bitcast float %333 to i32
  %tmp5234 = zext i32 %tmp5233 to i96
  %tmp5235 = shl nuw nsw i96 %tmp5234, 32
  %ins5237 = or i96 %tmp5240, %tmp5235
  %tmp4694 = zext i96 %ins5237 to i128
  %mask4695 = and i128 %memtmp116.i.1, -79228162514264337593543950336
  %tmp4689 = and i128 %ins5214, 79228162495817593519834398720
  %mask4690 = or i128 %mask4695, %tmp4694
  %ins4691 = or i128 %mask4690, %tmp4689
  %tmp5160 = bitcast float %332 to i32
  %tmp5161 = zext i32 %tmp5160 to i64
  %tmp5154 = bitcast float %333 to i32
  %tmp5155 = zext i32 %tmp5154 to i64
  %tmp5156 = shl nuw i64 %tmp5155, 32
  %ins5158 = or i64 %tmp5161, %tmp5156
  %tmp4676 = lshr i128 %ins4691, 64
  %tmp4677 = trunc i128 %tmp4676 to i32
  %tmp4678 = bitcast i32 %tmp4677 to float
  %tmp5146 = bitcast i64 %ins5158 to double
  %335 = call fastcc %0 @_ZN5Color5timesES_(%struct.Color* %light.i650, double %tmp5146, float %tmp4678) nounwind
  %mrv_gr128.i = extractvalue %0 %335, 0
  %tmp4671 = bitcast double %mrv_gr128.i to i64
  %mrv_gr130.i = extractvalue %0 %335, 1
  %tmp4658 = trunc i64 %tmp4671 to i32
  %tmp4659 = bitcast i32 %tmp4658 to float
  store float %tmp4659, float* %234, align 8
  %tmp4661 = lshr i64 %tmp4671, 32
  %tmp4662 = trunc i64 %tmp4661 to i32
  %tmp4663 = bitcast i32 %tmp4662 to float
  store float %tmp4663, float* %235, align 4
  store float %mrv_gr130.i, float* %236, align 8
  %tmp3864.pre = load float* %ray4646.0, align 8
  %tmp3865.pre = load float* %ray4646.1, align 4
  %tmp3866.pre = load float* %ray4646.2, align 8
  %tmp3860.pre = load float* %ray.14642.0, align 4
  %tmp3861.pre = load float* %ray.14642.1, align 4
  %tmp3862.pre = load float* %ray.14642.2, align 4
  %extract = lshr i64 %tmp4671, 32
  %extract.t = trunc i64 %extract to i32
  %extract.t5754 = trunc i64 %tmp4671 to i32
  %phitmp = bitcast i32 %extract.t5754 to float
  %phitmp5755 = bitcast i32 %extract.t to float
  br label %invcont134

invcont134:                                       ; preds = %bb115.i, %invcont129
  %tmp3862 = phi float [ %tmp3862.pre, %bb115.i ], [ %tmp4645, %invcont129 ]
  %tmp3861 = phi float [ %tmp3861.pre, %bb115.i ], [ %tmp4644, %invcont129 ]
  %tmp3860 = phi float [ %tmp3860.pre, %bb115.i ], [ %tmp4643, %invcont129 ]
  %tmp3866 = phi float [ %tmp3866.pre, %bb115.i ], [ %tmp4649, %invcont129 ]
  %tmp3865 = phi float [ %tmp3865.pre, %bb115.i ], [ %tmp4648, %invcont129 ]
  %tmp3864 = phi float [ %tmp3864.pre, %bb115.i ], [ %tmp4647, %invcont129 ]
  %.05164.0.off0 = phi float [ %phitmp, %bb115.i ], [ 0x3FE1F3B640000000, %invcont129 ]
  %.15165.0.off32 = phi float [ %phitmp5755, %bb115.i ], [ 0x3FE753F7C0000000, %invcont129 ]
  %.25166.0 = phi float [ %mrv_gr130.i, %bb115.i ], [ 0x3FEF9DB220000000, %invcont129 ]
  %memtmp116.i.0 = phi i128 [ %ins4691, %bb115.i ], [ %memtmp116.i.1, %invcont129 ]
  %memtmp99.i.1 = phi i128 [ %memtmp99.i.0, %bb115.i ], [ %memtmp99.i.2, %invcont129 ]
  %memtmp54.i.0 = phi i128 [ %ins4823, %bb115.i ], [ %memtmp54.i.1, %invcont129 ]
  %memtmp47.i.1 = phi i128 [ %memtmp47.i.0, %bb115.i ], [ %memtmp47.i.2, %invcont129 ]
  %memtmp30.i661.0 = phi i128 [ %ins4889, %bb115.i ], [ %memtmp30.i661.1, %invcont129 ]
  %memtmp10.i658.0 = phi i128 [ %ins4955, %bb115.i ], [ %memtmp10.i658.1, %invcont129 ]
  %memtmp4.i657.0 = phi i128 [ %ins4977, %bb115.i ], [ %memtmp4.i657.1, %invcont129 ]
  %memtmp.i656.0 = phi i128 [ %ins4999, %bb115.i ], [ %memtmp.i656.1, %invcont129 ]
  %memtmp.i.i643.0 = phi i128 [ %ins5214, %bb115.i ], [ %memtmp.i.i643.1, %invcont129 ]
  store float %.05164.0.off0, float* %15, align 8
  store float %.15165.0.off32, float* %16, align 4
  store float %.25166.0, float* %17, align 8
  %tmp3824 = load float* %hit_record127.0, align 8
  %tmp3855 = load float* %hit_record127.13854.0, align 4
  %tmp3856 = load float* %hit_record127.13854.1, align 4
  %tmp3857 = load float* %hit_record127.13854.2, align 4
  %tmp3847 = load float* %hit_record127.1.1.0, align 4
  %tmp3848 = load float* %hit_record127.1.1.1, align 4
  %tmp3849 = load float* %hit_record127.1.1.2, align 4
  %tmp3841 = load float* %hit_record127.1.2.0, align 4
  %tmp3842 = load float* %hit_record127.1.2.1, align 4
  %tmp3843 = load float* %hit_record127.1.2.2, align 4
  %tmp = load i32* %hit_record127.1.3, align 4
  %tmp3831 = load float* %hit_record127.1.43830.0, align 4
  %tmp3832 = load float* %hit_record127.1.43830.1, align 4
  %tmp3833 = load float* %hit_record127.1.43830.2, align 4
  %tmp3828 = load float* %hit_record127.1.4.1, align 4
  %tmp3829 = load float* %hit_record127.1.4.2, align 4
  store float %tmp3855, float* %tri.i3850.0, align 8
  store float %tmp3856, float* %tri.i3850.1, align 4
  store float %tmp3857, float* %tri.i3850.2, align 8
  store float %tmp3847, float* %tri.i.1.0, align 4
  store float %tmp3848, float* %tri.i.1.1, align 4
  store float %tmp3849, float* %tri.i.1.2, align 4
  store float %tmp3841, float* %tri.i.2.0, align 8
  store float %tmp3842, float* %tri.i.2.1, align 4
  store float %tmp3843, float* %tri.i.2.2, align 8
  store i32 %tmp, i32* %tri.i.3, align 4
  store float %tmp3831, float* %tri.i.43834.0, align 8
  store float %tmp3832, float* %tri.i.43834.1, align 4
  store float %tmp3833, float* %tri.i.43834.2, align 8
  store float %tmp3828, float* %tri.i.4.1, align 4
  store float %tmp3829, float* %tri.i.4.2, align 8
  %336 = fmul float %tmp3860, %tmp3824
  %337 = fmul float %tmp3861, %tmp3824
  %338 = fmul float %tmp3862, %tmp3824
  %tmp4089 = bitcast float %336 to i32
  %tmp4090 = zext i32 %tmp4089 to i64
  %tmp4083 = bitcast float %337 to i32
  %tmp4084 = zext i32 %tmp4083 to i64
  %tmp4085 = shl nuw i64 %tmp4084, 32
  %ins4087 = or i64 %tmp4090, %tmp4085
  store float %tmp3864, float* %256, align 8
  store float %tmp3865, float* %257, align 4
  store float %tmp3866, float* %258, align 8
  %tmp4075 = bitcast i64 %ins4087 to double
  %339 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %4, double %tmp4075, float %338) nounwind
  %mrv_gr20.i527 = extractvalue %0 %339, 0
  %tmp3973 = bitcast double %mrv_gr20.i527 to i64
  %mrv_gr22.i = extractvalue %0 %339, 1
  %tmp3963 = lshr i64 %tmp3973, 32
  %340 = call fastcc %0 @_Z6normal8Trigonum(%struct.Trigonum* byval %tri.i) nounwind
  br label %bb47.i

bb.i540:                                          ; preds = %bb47.i
  %341 = sext i32 %storemerge.i551 to i64
  %342 = getelementptr inbounds [220000 x %struct.Photon]* %67, i64 0, i64 %341, i32 0, i32 0
  %343 = load float* %342, align 4
  %344 = getelementptr inbounds [220000 x %struct.Photon]* %67, i64 0, i64 %341, i32 0, i32 1
  %345 = load float* %344, align 4
  %346 = getelementptr inbounds [220000 x %struct.Photon]* %67, i64 0, i64 %341, i32 0, i32 2
  %347 = load float* %346, align 4
  %tmp4290 = bitcast float %343 to i32
  %tmp4291 = zext i32 %tmp4290 to i96
  %tmp4284 = bitcast float %345 to i32
  %tmp4285 = zext i32 %tmp4284 to i96
  %tmp4286 = shl nuw nsw i96 %tmp4285, 32
  %ins4288 = or i96 %tmp4291, %tmp4286
  %tmp4278 = bitcast float %347 to i32
  %tmp3930 = zext i96 %ins4288 to i128
  %mask3931 = and i128 %memtmp31.i.0, -79228162514264337593543950336
  %tmp3924 = zext i32 %tmp4278 to i128
  %tmp3925 = shl nuw nsw i128 %tmp3924, 64
  %mask3926 = or i128 %mask3931, %tmp3930
  %ins3927 = or i128 %mask3926, %tmp3925
  %ins3927.tr = trunc i128 %ins3927 to i96
  %tmp4236 = trunc i64 %tmp3973 to i32
  %tmp4237 = bitcast i32 %tmp4236 to float
  %348 = fsub float %343, %tmp4237
  %tmp4233 = trunc i64 %tmp3963 to i32
  %tmp4234 = bitcast i32 %tmp4233 to float
  %349 = fsub float %345, %tmp4234
  %tmp4250 = lshr i96 %ins3927.tr, 64
  %tmp4251 = trunc i96 %tmp4250 to i32
  %tmp4252 = bitcast i32 %tmp4251 to float
  %350 = fsub float %tmp4252, %mrv_gr22.i
  %351 = fmul float %348, %348
  %352 = fmul float %349, %349
  %353 = fadd float %351, %352
  %354 = fmul float %350, %350
  %355 = fadd float %353, %354
  %356 = fcmp olt float %355, 2.890000e+02
  br i1 %356, label %bb45.i549, label %bb46.i550

bb45.i549:                                        ; preds = %bb.i540
  %357 = add nsw i32 %num_of_photons.i499.1, 1
  %358 = getelementptr inbounds [220000 x %struct.Photon]* %67, i64 0, i64 %341, i32 1, i64 0
  %359 = load float* %358, align 4
  %360 = fadd float %power.i.0.1, %359
  %361 = getelementptr inbounds [220000 x %struct.Photon]* %67, i64 0, i64 %341, i32 1, i64 1
  %362 = load float* %361, align 4
  %363 = fadd float %power.i.1.1, %362
  %364 = getelementptr inbounds [220000 x %struct.Photon]* %67, i64 0, i64 %341, i32 1, i64 2
  %365 = load float* %364, align 4
  %366 = fadd float %power.i.2.1, %365
  %367 = icmp sgt i32 %357, 10
  br i1 %367, label %bb49.i, label %bb46.i550

bb46.i550:                                        ; preds = %bb45.i549, %bb.i540
  %power.i.0.0 = phi float [ %360, %bb45.i549 ], [ %power.i.0.1, %bb.i540 ]
  %power.i.1.0 = phi float [ %363, %bb45.i549 ], [ %power.i.1.1, %bb.i540 ]
  %power.i.2.0 = phi float [ %366, %bb45.i549 ], [ %power.i.2.1, %bb.i540 ]
  %num_of_photons.i499.0 = phi i32 [ %357, %bb45.i549 ], [ %num_of_photons.i499.1, %bb.i540 ]
  %368 = add nsw i32 %storemerge.i551, 1
  br label %bb47.i

bb47.i:                                           ; preds = %bb46.i550, %invcont134
  %power.i.0.1 = phi float [ 0.000000e+00, %invcont134 ], [ %power.i.0.0, %bb46.i550 ]
  %power.i.1.1 = phi float [ 0.000000e+00, %invcont134 ], [ %power.i.1.0, %bb46.i550 ]
  %power.i.2.1 = phi float [ 0.000000e+00, %invcont134 ], [ %power.i.2.0, %bb46.i550 ]
  %memtmp31.i.0 = phi i128 [ %memtmp31.i.3, %invcont134 ], [ %ins3927, %bb46.i550 ]
  %num_of_photons.i499.1 = phi i32 [ 0, %invcont134 ], [ %num_of_photons.i499.0, %bb46.i550 ]
  %storemerge.i551 = phi i32 [ 0, %invcont134 ], [ %368, %bb46.i550 ]
  %369 = icmp slt i32 %storemerge.i551, %count.3
  br i1 %369, label %bb.i540, label %bb48.i

bb48.i:                                           ; preds = %bb47.i
  %370 = icmp eq i32 %num_of_photons.i499.1, 0
  br i1 %370, label %invcont159, label %bb49.i

bb49.i:                                           ; preds = %bb48.i, %bb45.i549
  %power.i.0.2 = phi float [ %power.i.0.1, %bb48.i ], [ %360, %bb45.i549 ]
  %power.i.1.2 = phi float [ %power.i.1.1, %bb48.i ], [ %363, %bb45.i549 ]
  %power.i.2.2 = phi float [ %power.i.2.1, %bb48.i ], [ %366, %bb45.i549 ]
  %memtmp31.i.1 = phi i128 [ %memtmp31.i.0, %bb48.i ], [ %ins3927, %bb45.i549 ]
  %num_of_photons.i499.2 = phi i32 [ %num_of_photons.i499.1, %bb48.i ], [ %357, %bb45.i549 ]
  %371 = sitofp i32 %num_of_photons.i499.2 to float
  %372 = fdiv float %power.i.0.2, %371
  %373 = fdiv float %power.i.1.2, %371
  %374 = fdiv float %power.i.2.2, %371
  store float %372, float* %259, align 8
  store float %373, float* %260, align 4
  store float %374, float* %261, align 8
  %375 = load float* %262, align 8
  %376 = load float* %263, align 4
  %377 = load float* %264, align 8
  %tmp4223 = bitcast float %375 to i32
  %tmp4224 = zext i32 %tmp4223 to i96
  %tmp4217 = bitcast float %376 to i32
  %tmp4218 = zext i32 %tmp4217 to i96
  %tmp4219 = shl nuw nsw i96 %tmp4218, 32
  %ins4221 = or i96 %tmp4224, %tmp4219
  %tmp4211 = bitcast float %377 to i32
  %tmp4178 = zext i96 %ins4221 to i128
  %mask4179 = and i128 %memtmp.i.i.1, -79228162514264337593543950336
  %tmp4172 = zext i32 %tmp4211 to i128
  %tmp4173 = shl nuw nsw i128 %tmp4172, 64
  %mask4174 = or i128 %mask4179, %tmp4178
  %ins4175 = or i128 %mask4174, %tmp4173
  %tmp4200 = bitcast float %375 to i32
  %tmp4201 = zext i32 %tmp4200 to i96
  %tmp4194 = bitcast float %376 to i32
  %tmp4195 = zext i32 %tmp4194 to i96
  %tmp4196 = shl nuw nsw i96 %tmp4195, 32
  %ins4198 = or i96 %tmp4201, %tmp4196
  %tmp3908 = zext i96 %ins4198 to i128
  %mask3909 = and i128 %memtmp51.i.1, -79228162514264337593543950336
  %tmp3903 = and i128 %ins4175, 79228162495817593519834398720
  %mask3904 = or i128 %mask3909, %tmp3908
  %ins3905 = or i128 %mask3904, %tmp3903
  %tmp4132 = bitcast float %375 to i32
  %tmp4133 = zext i32 %tmp4132 to i64
  %tmp4126 = bitcast float %376 to i32
  %tmp4127 = zext i32 %tmp4126 to i64
  %tmp4128 = shl nuw i64 %tmp4127, 32
  %ins4130 = or i64 %tmp4133, %tmp4128
  %tmp3890 = lshr i128 %ins3905, 64
  %tmp3891 = trunc i128 %tmp3890 to i32
  %tmp3892 = bitcast i32 %tmp3891 to float
  %tmp4118 = bitcast i64 %ins4130 to double
  %378 = call fastcc %0 @_ZN5Color5timesES_(%struct.Color* %light.i503, double %tmp4118, float %tmp3892) nounwind
  %mrv_gr63.i = extractvalue %0 %378, 0
  %tmp3885 = bitcast double %mrv_gr63.i to i64
  %mrv_gr65.i555 = extractvalue %0 %378, 1
  %tmp3872 = trunc i64 %tmp3885 to i32
  %tmp3873 = bitcast i32 %tmp3872 to float
  store float %tmp3873, float* %259, align 8
  %tmp3875 = lshr i64 %tmp3885, 32
  %tmp3876 = trunc i64 %tmp3875 to i32
  %tmp3877 = bitcast i32 %tmp3876 to float
  store float %tmp3877, float* %260, align 4
  store float %mrv_gr65.i555, float* %261, align 8
  %phitmp5646 = and i64 %tmp3885, -4294967296
  %phitmp5757 = and i64 %tmp3885, 4294967295
  br label %invcont159

invcont159:                                       ; preds = %bb49.i, %bb48.i
  %.04136.0 = phi i64 [ %phitmp5757, %bb49.i ], [ 0, %bb48.i ]
  %.14137.0 = phi i64 [ %phitmp5646, %bb49.i ], [ 0, %bb48.i ]
  %.24138.0 = phi float [ %mrv_gr65.i555, %bb49.i ], [ 0.000000e+00, %bb48.i ]
  %memtmp51.i.0 = phi i128 [ %ins3905, %bb49.i ], [ %memtmp51.i.1, %bb48.i ]
  %memtmp31.i.2 = phi i128 [ %memtmp31.i.1, %bb49.i ], [ %memtmp31.i.0, %bb48.i ]
  %memtmp.i.i.0 = phi i128 [ %ins4175, %bb49.i ], [ %memtmp.i.i.1, %bb48.i ]
  %mask1469 = or i64 %.04136.0, %.14137.0
  %tmp1464 = bitcast i64 %mask1469 to double
  %379 = call fastcc %0 @_ZN5Color3addES_(%struct.Color* %result, double %tmp1464, float %.24138.0)
  %mrv_gr162 = extractvalue %0 %379, 0
  %tmp812 = bitcast double %mrv_gr162 to i64
  %mrv_gr164 = extractvalue %0 %379, 1
  %tmp799 = trunc i64 %tmp812 to i32
  %tmp800 = bitcast i32 %tmp799 to float
  store float %tmp800, float* %15, align 8
  %tmp802 = lshr i64 %tmp812, 32
  %tmp803 = trunc i64 %tmp802 to i32
  %tmp804 = bitcast i32 %tmp803 to float
  store float %tmp804, float* %16, align 4
  store float %mrv_gr164, float* %17, align 8
  %380 = load float* %41, align 8
  %381 = load float* %217, align 4
  %382 = load float* %218, align 8
  %tmp3221 = bitcast float %380 to i32
  %tmp3222 = zext i32 %tmp3221 to i96
  %tmp3215 = bitcast float %381 to i32
  %tmp3216 = zext i32 %tmp3215 to i96
  %tmp3217 = shl nuw nsw i96 %tmp3216, 32
  %tmp3209 = bitcast float %382 to i32
  %tmp2904 = zext i32 %tmp3209 to i128
  %tmp2905 = shl nuw nsw i128 %tmp2904, 64
  %383 = fsub float 2.650000e+02, %380
  %384 = load float* %42, align 4
  %385 = load float* %219, align 4
  %386 = load float* %220, align 4
  %tmp3198 = bitcast float %384 to i32
  %tmp3199 = zext i32 %tmp3198 to i96
  %tmp3192 = bitcast float %385 to i32
  %tmp3193 = zext i32 %tmp3192 to i96
  %tmp3194 = shl nuw nsw i96 %tmp3193, 32
  %tmp3186 = bitcast float %386 to i32
  %tmp2882 = zext i32 %tmp3186 to i128
  %tmp2883 = shl nuw nsw i128 %tmp2882, 64
  %387 = fdiv float %383, %384
  %388 = fsub float 0x4073A00420000000, %380
  %389 = fdiv float %388, %384
  %390 = fcmp ogt float %387, %389
  %tx1.i.0 = select i1 %390, float %389, float %387
  %tx2.i.0 = select i1 %390, float %387, float %389
  %391 = fcmp ogt float %tx1.i.0, -1.000000e+10
  %tnear.i.0 = select i1 %391, float %tx1.i.0, float -1.000000e+10
  %392 = fcmp olt float %tx2.i.0, 1.000000e+10
  %tfar.i.0 = select i1 %392, float %tx2.i.0, float 1.000000e+10
  %393 = fcmp ogt float %tnear.i.0, %tfar.i.0
  %394 = fcmp olt float %tfar.i.0, 0.000000e+00
  %or.cond5822 = or i1 %393, %394
  br i1 %or.cond5822, label %invcont166.invcont198_crit_edge, label %bb29.i

bb29.i:                                           ; preds = %invcont159
  %395 = fsub float 2.960000e+02, %381
  %396 = fdiv float %395, %385
  %397 = fsub float 0x407C800420000000, %381
  %398 = fdiv float %397, %385
  %399 = fcmp ogt float %396, %398
  %ty1.i.0 = select i1 %399, float %398, float %396
  %ty2.i.0 = select i1 %399, float %396, float %398
  %400 = fcmp ogt float %ty1.i.0, %tnear.i.0
  %tnear.i.1 = select i1 %400, float %ty1.i.0, float %tnear.i.0
  %401 = fcmp olt float %ty2.i.0, %tfar.i.0
  %tfar.i.1 = select i1 %401, float %ty2.i.0, float %tfar.i.0
  %402 = fcmp ogt float %tnear.i.1, %tfar.i.1
  %403 = fcmp olt float %tfar.i.1, 0.000000e+00
  %or.cond5823 = or i1 %402, %403
  br i1 %or.cond5823, label %invcont166.invcont198_crit_edge, label %bb62.i

bb62.i:                                           ; preds = %bb29.i
  %ins3035 = or i96 %tmp3222, %tmp3217
  %tmp2734 = zext i96 %ins3035 to i128
  %mask2735 = and i128 %memtmp63.i.1, -79228162514264337593543950336
  %mask2730 = or i128 %mask2735, %tmp2734
  %ins2731 = or i128 %mask2730, %tmp2905
  %tmp2716 = lshr i128 %ins2731, 64
  %tmp2717 = trunc i128 %tmp2716 to i32
  %tmp2718 = bitcast i32 %tmp2717 to float
  %404 = fsub float 0.000000e+00, %tmp2718
  %ins3012 = or i96 %tmp3199, %tmp3194
  %tmp2712 = zext i96 %ins3012 to i128
  %mask2713 = and i128 %memtmp69.i.1, -79228162514264337593543950336
  %mask2708 = or i128 %mask2713, %tmp2712
  %ins2709 = or i128 %mask2708, %tmp2883
  %tmp2694 = lshr i128 %ins2709, 64
  %tmp2695 = trunc i128 %tmp2694 to i32
  %tmp2696 = bitcast i32 %tmp2695 to float
  %405 = fdiv float %404, %tmp2696
  %ins2989 = or i96 %tmp3222, %tmp3217
  %tmp2690 = zext i96 %ins2989 to i128
  %mask2691 = and i128 %memtmp75.i.1, -79228162514264337593543950336
  %mask2686 = or i128 %mask2691, %tmp2690
  %ins2687 = or i128 %mask2686, %tmp2905
  %tmp2672 = lshr i128 %ins2687, 64
  %tmp2673 = trunc i128 %tmp2672 to i32
  %tmp2674 = bitcast i32 %tmp2673 to float
  %406 = fsub float 0x4074A00420000000, %tmp2674
  %ins2966 = or i96 %tmp3199, %tmp3194
  %tmp2668 = zext i96 %ins2966 to i128
  %mask2669 = and i128 %memtmp81.i.1, -79228162514264337593543950336
  %mask2664 = or i128 %mask2669, %tmp2668
  %ins2665 = or i128 %mask2664, %tmp2883
  %tmp2650 = lshr i128 %ins2665, 64
  %tmp2651 = trunc i128 %tmp2650 to i32
  %tmp2652 = bitcast i32 %tmp2651 to float
  %407 = fdiv float %406, %tmp2652
  %408 = fcmp ogt float %405, %407
  %tz1.i.0 = select i1 %408, float %407, float %405
  %tz2.i.0 = select i1 %408, float %405, float %407
  %409 = fcmp ogt float %tz1.i.0, %tnear.i.1
  %tnear.i.2 = select i1 %409, float %tz1.i.0, float %tnear.i.1
  %410 = fcmp olt float %tz2.i.0, %tfar.i.1
  %tfar.i.2 = select i1 %410, float %tz2.i.0, float %tfar.i.1
  %411 = fcmp ogt float %tnear.i.2, %tfar.i.2
  %412 = fcmp olt float %tfar.i.2, 0.000000e+00
  %or.cond5824 = or i1 %411, %412
  br i1 %or.cond5824, label %invcont166.invcont198_crit_edge, label %bb46.i

invcont166.invcont198_crit_edge:                  ; preds = %bb62.i, %bb29.i, %invcont159
  %memtmp81.i.0.ph = phi i128 [ %memtmp81.i.1, %invcont159 ], [ %memtmp81.i.1, %bb29.i ], [ %ins2665, %bb62.i ]
  %memtmp75.i.0.ph = phi i128 [ %memtmp75.i.1, %invcont159 ], [ %memtmp75.i.1, %bb29.i ], [ %ins2687, %bb62.i ]
  %memtmp69.i.0.ph = phi i128 [ %memtmp69.i.1, %invcont159 ], [ %memtmp69.i.1, %bb29.i ], [ %ins2709, %bb62.i ]
  %memtmp63.i.0.ph = phi i128 [ %memtmp63.i.1, %invcont159 ], [ %memtmp63.i.1, %bb29.i ], [ %ins2731, %bb62.i ]
  %val194.pre = load double* %elt193, align 8
  br label %invcont198

bb1.i:                                            ; preds = %bb44.i
  %ins2018 = or i96 %tmp3199, %tmp3194
  %tmp1762 = zext i96 %ins2018 to i128
  %mask1763 = and i128 %memtmp.i18.0, -79228162514264337593543950336
  %mask1758 = or i128 %mask1763, %tmp1762
  %ins1759 = or i128 %mask1758, %tmp2883
  %tmp1744 = lshr i128 %ins1759, 64
  %tmp1745 = trunc i128 %tmp1744 to i32
  %tmp1746 = bitcast i32 %tmp1745 to float
  %413 = fmul float %384, %step.i.0
  %414 = fmul float %385, %step.i.0
  %415 = fmul float %tmp1746, %step.i.0
  %tmp1997 = bitcast float %413 to i32
  %tmp1998 = zext i32 %tmp1997 to i96
  %tmp1991 = bitcast float %414 to i32
  %tmp1992 = zext i32 %tmp1991 to i96
  %tmp1993 = shl nuw nsw i96 %tmp1992, 32
  %ins1995 = or i96 %tmp1998, %tmp1993
  %tmp1985 = bitcast float %415 to i32
  %tmp1740 = zext i96 %ins1995 to i128
  %mask1741 = and i128 %memtmp5.i.0, -79228162514264337593543950336
  %tmp1734 = zext i32 %tmp1985 to i128
  %tmp1735 = shl nuw nsw i128 %tmp1734, 64
  %mask1736 = or i128 %mask1741, %tmp1740
  %ins1737 = or i128 %mask1736, %tmp1735
  %tmp1815 = bitcast float %413 to i32
  %tmp1816 = zext i32 %tmp1815 to i64
  %tmp1809 = bitcast float %414 to i32
  %tmp1810 = zext i32 %tmp1809 to i64
  %tmp1811 = shl nuw i64 %tmp1810, 32
  %ins1813 = or i64 %tmp1816, %tmp1811
  %ins1737.tr = trunc i128 %ins1737 to i96
  %ins1972 = or i96 %tmp3222, %tmp3217
  %tmp1718 = zext i96 %ins1972 to i128
  %mask1719 = and i128 %memtmp11.i.0, -79228162514264337593543950336
  %mask1714 = or i128 %mask1719, %tmp1718
  %ins1715 = or i128 %mask1714, %tmp2905
  store float %380, float* %265, align 8
  store float %381, float* %266, align 4
  %tmp1700 = lshr i128 %ins1715, 64
  %tmp1701 = trunc i128 %tmp1700 to i32
  %tmp1702 = bitcast i32 %tmp1701 to float
  store float %tmp1702, float* %267, align 8
  %tmp1801 = bitcast i64 %ins1813 to double
  %tmp1796 = lshr i96 %ins1737.tr, 64
  %tmp1797 = trunc i96 %tmp1796 to i32
  %tmp1798 = bitcast i32 %tmp1797 to float
  %416 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %5, double %tmp1801, float %tmp1798) nounwind
  %mrv_gr21.i = extractvalue %0 %416, 0
  %tmp1695 = bitcast double %mrv_gr21.i to i64
  %mrv_gr23.i = extractvalue %0 %416, 1
  %tmp1685 = lshr i64 %tmp1695, 32
  %417 = sext i32 %storemerge.i to i64
  %418 = getelementptr inbounds [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %417, i32 0, i32 0
  %419 = load float* %418, align 8
  %420 = getelementptr inbounds [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %417, i32 0, i32 1
  %421 = load float* %420, align 4
  %422 = getelementptr inbounds [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %417, i32 0, i32 2
  %423 = load float* %422, align 8
  %tmp1951 = bitcast float %419 to i32
  %tmp1952 = zext i32 %tmp1951 to i96
  %tmp1945 = bitcast float %421 to i32
  %tmp1946 = zext i32 %tmp1945 to i96
  %tmp1947 = shl nuw nsw i96 %tmp1946, 32
  %ins1949 = or i96 %tmp1952, %tmp1947
  %tmp1939 = bitcast float %423 to i32
  %tmp1674 = zext i96 %ins1949 to i128
  %mask1675 = and i128 %memtmp25.i.0, -79228162514264337593543950336
  %tmp1668 = zext i32 %tmp1939 to i128
  %tmp1669 = shl nuw nsw i128 %tmp1668, 64
  %mask1670 = or i128 %mask1675, %tmp1674
  %ins1671 = or i128 %mask1670, %tmp1669
  %ins1671.tr = trunc i128 %ins1671 to i96
  %tmp1897 = trunc i64 %tmp1695 to i32
  %tmp1898 = bitcast i32 %tmp1897 to float
  %424 = fsub float %419, %tmp1898
  %tmp1894 = trunc i64 %tmp1685 to i32
  %tmp1895 = bitcast i32 %tmp1894 to float
  %425 = fsub float %421, %tmp1895
  %tmp1911 = lshr i96 %ins1671.tr, 64
  %tmp1912 = trunc i96 %tmp1911 to i32
  %tmp1913 = bitcast i32 %tmp1912 to float
  %426 = fsub float %tmp1913, %mrv_gr23.i
  %427 = fmul float %424, %424
  %428 = fmul float %425, %425
  %429 = fadd float %427, %428
  %430 = fmul float %426, %426
  %431 = fadd float %429, %430
  %432 = fcmp olt float %431, 1.000000e+04
  br i1 %432, label %bb39.i, label %bb40.i

bb39.i:                                           ; preds = %bb1.i
  %433 = add nsw i32 %num_of_photons.i.1, 1
  %434 = getelementptr inbounds [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %417, i32 1, i64 0
  %435 = load float* %434, align 4
  %436 = fadd float %power.i.0.4, %435
  %437 = getelementptr inbounds [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %417, i32 1, i64 1
  %438 = load float* %437, align 4
  %439 = fadd float %power.i.1.4, %438
  %440 = getelementptr inbounds [20000 x %struct.Photon]* %volume_photons, i64 0, i64 %417, i32 1, i64 2
  %441 = load float* %440, align 4
  %442 = fadd float %power.i.2.4, %441
  %443 = icmp sgt i32 %433, 20
  br i1 %443, label %bb45.i, label %bb40.i

bb40.i:                                           ; preds = %bb39.i, %bb1.i
  %power.i.0.3 = phi float [ %436, %bb39.i ], [ %power.i.0.4, %bb1.i ]
  %power.i.1.3 = phi float [ %439, %bb39.i ], [ %power.i.1.4, %bb1.i ]
  %power.i.2.3 = phi float [ %442, %bb39.i ], [ %power.i.2.4, %bb1.i ]
  %num_of_photons.i.0 = phi i32 [ %433, %bb39.i ], [ %num_of_photons.i.1, %bb1.i ]
  %444 = icmp eq i32 %num_of_photons.i.0, 0
  %volume_radiance.i.0.0 = select i1 %444, float %volume_radiance.i.0.1, float %power.i.0.3
  %volume_radiance.i.1.0 = select i1 %444, float %volume_radiance.i.1.1, float %power.i.1.3
  %volume_radiance.i.2.0 = select i1 %444, float %volume_radiance.i.2.1, float %power.i.2.3
  %445 = add nsw i32 %storemerge.i, 1
  br label %bb44.i

bb44.i:                                           ; preds = %bb46.i, %bb40.i
  %power.i.0.4 = phi float [ %power.i.0.3, %bb40.i ], [ %power.i.0.6, %bb46.i ]
  %power.i.1.4 = phi float [ %power.i.1.3, %bb40.i ], [ %power.i.1.6, %bb46.i ]
  %power.i.2.4 = phi float [ %power.i.2.3, %bb40.i ], [ %power.i.2.6, %bb46.i ]
  %volume_radiance.i.0.1 = phi float [ %volume_radiance.i.0.0, %bb40.i ], [ %volume_radiance.i.0.2, %bb46.i ]
  %volume_radiance.i.1.1 = phi float [ %volume_radiance.i.1.0, %bb40.i ], [ %volume_radiance.i.1.2, %bb46.i ]
  %volume_radiance.i.2.1 = phi float [ %volume_radiance.i.2.0, %bb40.i ], [ %volume_radiance.i.2.2, %bb46.i ]
  %memtmp25.i.0 = phi i128 [ %ins1671, %bb40.i ], [ %memtmp25.i.2, %bb46.i ]
  %memtmp11.i.0 = phi i128 [ %ins1715, %bb40.i ], [ %memtmp11.i.2, %bb46.i ]
  %memtmp5.i.0 = phi i128 [ %ins1737, %bb40.i ], [ %memtmp5.i.2, %bb46.i ]
  %memtmp.i18.0 = phi i128 [ %ins1759, %bb40.i ], [ %memtmp.i18.2, %bb46.i ]
  %num_of_photons.i.1 = phi i32 [ %num_of_photons.i.0, %bb40.i ], [ %num_of_photons.i.3, %bb46.i ]
  %storemerge.i = phi i32 [ %445, %bb40.i ], [ 0, %bb46.i ]
  %446 = icmp slt i32 %storemerge.i, %v_p_count.2
  br i1 %446, label %bb1.i, label %bb45.i

bb45.i:                                           ; preds = %bb44.i, %bb39.i
  %power.i.0.5 = phi float [ %436, %bb39.i ], [ %power.i.0.4, %bb44.i ]
  %power.i.1.5 = phi float [ %439, %bb39.i ], [ %power.i.1.4, %bb44.i ]
  %power.i.2.5 = phi float [ %442, %bb39.i ], [ %power.i.2.4, %bb44.i ]
  %memtmp25.i.1 = phi i128 [ %ins1671, %bb39.i ], [ %memtmp25.i.0, %bb44.i ]
  %memtmp11.i.1 = phi i128 [ %ins1715, %bb39.i ], [ %memtmp11.i.0, %bb44.i ]
  %memtmp5.i.1 = phi i128 [ %ins1737, %bb39.i ], [ %memtmp5.i.0, %bb44.i ]
  %memtmp.i18.1 = phi i128 [ %ins1759, %bb39.i ], [ %memtmp.i18.0, %bb44.i ]
  %num_of_photons.i.2 = phi i32 [ %433, %bb39.i ], [ %num_of_photons.i.1, %bb44.i ]
  %447 = fadd float %step.i.0, 1.000000e+00
  br label %bb46.i

bb46.i:                                           ; preds = %bb45.i, %bb62.i
  %power.i.0.6 = phi float [ %power.i.0.5, %bb45.i ], [ 0.000000e+00, %bb62.i ]
  %power.i.1.6 = phi float [ %power.i.1.5, %bb45.i ], [ 0.000000e+00, %bb62.i ]
  %power.i.2.6 = phi float [ %power.i.2.5, %bb45.i ], [ 0.000000e+00, %bb62.i ]
  %volume_radiance.i.0.2 = phi float [ %volume_radiance.i.0.1, %bb45.i ], [ 0.000000e+00, %bb62.i ]
  %volume_radiance.i.1.2 = phi float [ %volume_radiance.i.1.1, %bb45.i ], [ 0.000000e+00, %bb62.i ]
  %volume_radiance.i.2.2 = phi float [ %volume_radiance.i.2.1, %bb45.i ], [ 0.000000e+00, %bb62.i ]
  %memtmp25.i.2 = phi i128 [ %memtmp25.i.1, %bb45.i ], [ %memtmp25.i.4, %bb62.i ]
  %memtmp11.i.2 = phi i128 [ %memtmp11.i.1, %bb45.i ], [ %memtmp11.i.4, %bb62.i ]
  %memtmp5.i.2 = phi i128 [ %memtmp5.i.1, %bb45.i ], [ %memtmp5.i.4, %bb62.i ]
  %memtmp.i18.2 = phi i128 [ %memtmp.i18.1, %bb45.i ], [ %memtmp.i18.4, %bb62.i ]
  %num_of_photons.i.3 = phi i32 [ %num_of_photons.i.2, %bb45.i ], [ 0, %bb62.i ]
  %step.i.0 = phi float [ %447, %bb45.i ], [ %tnear.i.2, %bb62.i ]
  %448 = fcmp olt float %step.i.0, %tfar.i.2
  br i1 %448, label %bb44.i, label %invcont191

invcont191:                                       ; preds = %bb46.i
  %449 = fdiv float 1.000000e+00, %step.i.0
  %450 = fmul float %volume_radiance.i.0.2, %449
  %451 = fmul float %volume_radiance.i.1.2, %449
  %452 = fmul float %volume_radiance.i.2.2, %449
  %tmp1884 = bitcast float %450 to i32
  %tmp1885 = zext i32 %tmp1884 to i96
  %tmp1878 = bitcast float %451 to i32
  %tmp1879 = zext i32 %tmp1878 to i96
  %tmp1880 = shl nuw nsw i96 %tmp1879, 32
  %ins1882 = or i96 %tmp1885, %tmp1880
  %tmp1872 = bitcast float %452 to i32
  %tmp1652 = zext i96 %ins1882 to i128
  %mask1653 = and i128 %memtmp48.i.1, -79228162514264337593543950336
  %tmp1646 = zext i32 %tmp1872 to i128
  %tmp1647 = shl nuw nsw i128 %tmp1646, 64
  %mask1648 = or i128 %mask1653, %tmp1652
  %ins1649 = or i128 %mask1648, %tmp1647
  %tmp1861 = bitcast float %450 to i32
  %tmp1862 = zext i32 %tmp1861 to i96
  %tmp1855 = bitcast float %451 to i32
  %tmp1856 = zext i32 %tmp1855 to i96
  %tmp1857 = shl nuw nsw i96 %tmp1856, 32
  %ins1859 = or i96 %tmp1862, %tmp1857
  %tmp791 = zext i96 %ins1859 to i128
  %mask792 = and i128 %memtmp170.1, -79228162514264337593543950336
  %tmp786 = and i128 %ins1649, 79228162495817593519834398720
  %mask787 = or i128 %mask792, %tmp791
  %ins788 = or i128 %mask787, %tmp786
  %tmp1501 = bitcast float %450 to i32
  %tmp1502 = zext i32 %tmp1501 to i64
  %tmp1495 = bitcast float %451 to i32
  %tmp1496 = zext i32 %tmp1495 to i64
  %tmp1497 = shl nuw i64 %tmp1496, 32
  %ins1499 = or i64 %tmp1502, %tmp1497
  %tmp773 = lshr i128 %ins788, 64
  %tmp774 = trunc i128 %tmp773 to i32
  %tmp775 = bitcast i32 %tmp774 to float
  %tmp1487 = bitcast i64 %ins1499 to double
  %453 = call fastcc %0 @_ZN5Color3addES_(%struct.Color* %result, double %tmp1487, float %tmp775)
  %mrv_gr183 = extractvalue %0 %453, 0
  %tmp768 = bitcast double %mrv_gr183 to i64
  %mrv_gr185 = extractvalue %0 %453, 1
  %tmp758 = trunc i64 %tmp768 to i32
  %tmp759 = bitcast i32 %tmp758 to float
  store float %tmp759, float* %15, align 8
  %tmp761 = lshr i64 %tmp768, 32
  %tmp762 = trunc i64 %tmp761 to i32
  %tmp763 = bitcast i32 %tmp762 to float
  store float %tmp763, float* %16, align 4
  store float %mrv_gr185, float* %17, align 8
  %val188 = load double* %elt193, align 8
  call fastcc void @_ZN5Image3setEii5Color(%struct.Image* %image, i32 %268, i32 %269, double %val188, float %mrv_gr185)
  br label %invcont198

invcont198:                                       ; preds = %invcont191, %invcont166.invcont198_crit_edge
  %memtmp63.i.05805 = phi i128 [ %memtmp63.i.0.ph, %invcont166.invcont198_crit_edge ], [ %ins2731, %invcont191 ]
  %memtmp69.i.05803 = phi i128 [ %memtmp69.i.0.ph, %invcont166.invcont198_crit_edge ], [ %ins2709, %invcont191 ]
  %memtmp75.i.05801 = phi i128 [ %memtmp75.i.0.ph, %invcont166.invcont198_crit_edge ], [ %ins2687, %invcont191 ]
  %memtmp81.i.05799 = phi i128 [ %memtmp81.i.0.ph, %invcont166.invcont198_crit_edge ], [ %ins2665, %invcont191 ]
  %val194 = phi double [ %val194.pre, %invcont166.invcont198_crit_edge ], [ %val188, %invcont191 ]
  %val196 = phi float [ %mrv_gr164, %invcont166.invcont198_crit_edge ], [ %mrv_gr185, %invcont191 ]
  %memtmp170.0 = phi i128 [ %memtmp170.1, %invcont166.invcont198_crit_edge ], [ %ins788, %invcont191 ]
  %memtmp48.i.0 = phi i128 [ %memtmp48.i.1, %invcont166.invcont198_crit_edge ], [ %ins1649, %invcont191 ]
  %memtmp25.i.3 = phi i128 [ %memtmp25.i.4, %invcont166.invcont198_crit_edge ], [ %memtmp25.i.2, %invcont191 ]
  %memtmp11.i.3 = phi i128 [ %memtmp11.i.4, %invcont166.invcont198_crit_edge ], [ %memtmp11.i.2, %invcont191 ]
  %memtmp5.i.3 = phi i128 [ %memtmp5.i.4, %invcont166.invcont198_crit_edge ], [ %memtmp5.i.2, %invcont191 ]
  %memtmp.i18.3 = phi i128 [ %memtmp.i18.4, %invcont166.invcont198_crit_edge ], [ %memtmp.i18.2, %invcont191 ]
  call fastcc void @_ZN5Image3setEii5Color(%struct.Image* %image, i32 %268, i32 %269, double %val194, float %val196)
  %454 = call i32 @llvm.trax.atominc(i32 0)
  br label %bb199

bb199:                                            ; preds = %invcont198, %invcont120
  %memtmp170.1 = phi i128 [ undef, %invcont120 ], [ %memtmp170.0, %invcont198 ]
  %memtmp48.i.1 = phi i128 [ undef, %invcont120 ], [ %memtmp48.i.0, %invcont198 ]
  %memtmp25.i.4 = phi i128 [ undef, %invcont120 ], [ %memtmp25.i.3, %invcont198 ]
  %memtmp11.i.4 = phi i128 [ undef, %invcont120 ], [ %memtmp11.i.3, %invcont198 ]
  %memtmp5.i.4 = phi i128 [ undef, %invcont120 ], [ %memtmp5.i.3, %invcont198 ]
  %memtmp.i18.4 = phi i128 [ undef, %invcont120 ], [ %memtmp.i18.3, %invcont198 ]
  %memtmp81.i.1 = phi i128 [ undef, %invcont120 ], [ %memtmp81.i.05799, %invcont198 ]
  %memtmp75.i.1 = phi i128 [ undef, %invcont120 ], [ %memtmp75.i.05801, %invcont198 ]
  %memtmp69.i.1 = phi i128 [ undef, %invcont120 ], [ %memtmp69.i.05803, %invcont198 ]
  %memtmp63.i.1 = phi i128 [ undef, %invcont120 ], [ %memtmp63.i.05805, %invcont198 ]
  %memtmp51.i.1 = phi i128 [ undef, %invcont120 ], [ %memtmp51.i.0, %invcont198 ]
  %memtmp31.i.3 = phi i128 [ undef, %invcont120 ], [ %memtmp31.i.2, %invcont198 ]
  %memtmp.i.i.1 = phi i128 [ undef, %invcont120 ], [ %memtmp.i.i.0, %invcont198 ]
  %memtmp116.i.1 = phi i128 [ undef, %invcont120 ], [ %memtmp116.i.0, %invcont198 ]
  %memtmp99.i.2 = phi i128 [ undef, %invcont120 ], [ %memtmp99.i.1, %invcont198 ]
  %memtmp54.i.1 = phi i128 [ undef, %invcont120 ], [ %memtmp54.i.0, %invcont198 ]
  %memtmp47.i.2 = phi i128 [ undef, %invcont120 ], [ %memtmp47.i.1, %invcont198 ]
  %memtmp30.i661.1 = phi i128 [ undef, %invcont120 ], [ %memtmp30.i661.0, %invcont198 ]
  %memtmp10.i658.1 = phi i128 [ undef, %invcont120 ], [ %memtmp10.i658.0, %invcont198 ]
  %memtmp4.i657.1 = phi i128 [ undef, %invcont120 ], [ %memtmp4.i657.0, %invcont198 ]
  %memtmp.i656.1 = phi i128 [ undef, %invcont120 ], [ %memtmp.i656.0, %invcont198 ]
  %memtmp.i.i643.1 = phi i128 [ undef, %invcont120 ], [ %memtmp.i.i643.0, %invcont198 ]
  %storemerge2 = phi i32 [ %202, %invcont120 ], [ %454, %invcont198 ]
  %455 = icmp sgt i32 %203, %storemerge2
  br i1 %455, label %invcont129, label %return

return:                                           ; preds = %bb199
  ret i32 0
}

declare void @llvm.trax.printf(float) nounwind

declare i32 @llvm.trax.atominc(i32) nounwind

declare float @llvm.trax.invsqrt(float) nounwind

define internal fastcc %0 @_Z6normal8Trigonum(%struct.Trigonum* nocapture byval %triangle) nounwind inlinehint ssp {
return:
  %0 = alloca %struct.Color, align 8
  %1 = alloca %struct.Color, align 8
  %edge1 = alloca %struct.Color, align 8
  %n = alloca %struct.Color, align 8
  %2 = getelementptr inbounds %struct.Trigonum* %triangle, i64 0, i32 1, i32 0
  %3 = load float* %2, align 4
  %4 = getelementptr inbounds %struct.Trigonum* %triangle, i64 0, i32 1, i32 1
  %5 = load float* %4, align 4
  %6 = getelementptr inbounds %struct.Trigonum* %triangle, i64 0, i32 1, i32 2
  %7 = load float* %6, align 4
  %tmp231 = bitcast float %3 to i32
  %tmp232 = zext i32 %tmp231 to i64
  %tmp225 = bitcast float %5 to i32
  %tmp226 = zext i32 %tmp225 to i64
  %tmp227 = shl nuw i64 %tmp226, 32
  %ins229 = or i64 %tmp232, %tmp227
  %8 = getelementptr inbounds %struct.Trigonum* %triangle, i64 0, i32 0, i32 0
  %9 = load float* %8, align 4
  %10 = getelementptr inbounds %struct.Trigonum* %triangle, i64 0, i32 0, i32 1
  %11 = load float* %10, align 4
  %12 = getelementptr inbounds %struct.Trigonum* %triangle, i64 0, i32 0, i32 2
  %13 = load float* %12, align 4
  %14 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  store float %9, float* %14, align 8
  %15 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  store float %11, float* %15, align 4
  %16 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  store float %13, float* %16, align 8
  %tmp217 = bitcast i64 %ins229 to double
  %17 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %1, double %tmp217, float %7)
  %mrv_gr14 = extractvalue %0 %17, 0
  %tmp143 = bitcast double %mrv_gr14 to i64
  %mrv_gr16 = extractvalue %0 %17, 1
  %18 = getelementptr inbounds %struct.Color* %edge1, i64 0, i32 0
  %tmp130 = trunc i64 %tmp143 to i32
  %tmp131 = bitcast i32 %tmp130 to float
  store float %tmp131, float* %18, align 8
  %19 = getelementptr inbounds %struct.Color* %edge1, i64 0, i32 1
  %tmp133 = lshr i64 %tmp143, 32
  %tmp134 = trunc i64 %tmp133 to i32
  %tmp135 = bitcast i32 %tmp134 to float
  store float %tmp135, float* %19, align 4
  %20 = getelementptr inbounds %struct.Color* %edge1, i64 0, i32 2
  store float %mrv_gr16, float* %20, align 8
  %21 = getelementptr inbounds %struct.Trigonum* %triangle, i64 0, i32 2, i32 0
  %22 = load float* %21, align 4
  %23 = getelementptr inbounds %struct.Trigonum* %triangle, i64 0, i32 2, i32 1
  %24 = load float* %23, align 4
  %25 = getelementptr inbounds %struct.Trigonum* %triangle, i64 0, i32 2, i32 2
  %26 = load float* %25, align 4
  %tmp255 = bitcast float %22 to i32
  %tmp256 = zext i32 %tmp255 to i64
  %tmp249 = bitcast float %24 to i32
  %tmp250 = zext i32 %tmp249 to i64
  %tmp251 = shl nuw i64 %tmp250, 32
  %ins253 = or i64 %tmp256, %tmp251
  %27 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  store float %3, float* %27, align 8
  %28 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  store float %5, float* %28, align 4
  %29 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  store float %7, float* %29, align 8
  %tmp241 = bitcast i64 %ins253 to double
  %30 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %0, double %tmp241, float %26)
  %mrv_gr36 = extractvalue %0 %30, 0
  %mrv_gr38 = extractvalue %0 %30, 1
  %31 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %edge1, double %mrv_gr36, float %mrv_gr38)
  %mrv_gr46 = extractvalue %0 %31, 0
  %tmp55 = bitcast double %mrv_gr46 to i64
  %mrv_gr48 = extractvalue %0 %31, 1
  %32 = getelementptr inbounds %struct.Color* %n, i64 0, i32 0
  %tmp42 = trunc i64 %tmp55 to i32
  %tmp43 = bitcast i32 %tmp42 to float
  store float %tmp43, float* %32, align 8
  %33 = getelementptr inbounds %struct.Color* %n, i64 0, i32 1
  %tmp45 = lshr i64 %tmp55, 32
  %tmp46 = trunc i64 %tmp45 to i32
  %tmp47 = bitcast i32 %tmp46 to float
  store float %tmp47, float* %33, align 4
  %34 = getelementptr inbounds %struct.Color* %n, i64 0, i32 2
  store float %mrv_gr48, float* %34, align 8
  %35 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %n)
  %mrv_gr52 = extractvalue %0 %35, 0
  %mrv_gr54 = extractvalue %0 %35, 1
  %mrv60 = insertvalue %0 undef, double %mrv_gr52, 0
  %mrv61 = insertvalue %0 %mrv60, float %mrv_gr54, 1
  ret %0 %mrv61
}

define internal fastcc %0 @_ZN6Vector5crossES_(%struct.Color* nocapture %this, double %other.0, float %other.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %other.0 to i64
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %1 = load float* %0, align 4
  %2 = fmul float %1, %other.1
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %4 = load float* %3, align 4
  %tmp47 = lshr i64 %tmp28, 32
  %tmp48 = trunc i64 %tmp47 to i32
  %tmp49 = bitcast i32 %tmp48 to float
  %5 = fmul float %4, %tmp49
  %6 = fsub float %2, %5
  %tmp44 = trunc i64 %tmp28 to i32
  %tmp45 = bitcast i32 %tmp44 to float
  %7 = fmul float %4, %tmp45
  %8 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %9 = load float* %8, align 4
  %10 = fmul float %9, %other.1
  %11 = fsub float %7, %10
  %12 = fmul float %9, %tmp49
  %13 = fmul float %1, %tmp45
  %14 = fsub float %12, %13
  %tmp17 = bitcast float %6 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %11 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %14, 1
  ret %0 %mrv5
}

define internal fastcc %0 @_ZN6Vector3addES_(%struct.Color* nocapture %this, double %other.0, float %other.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %other.0 to i64
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %tmp41 = trunc i64 %tmp28 to i32
  %tmp42 = bitcast i32 %tmp41 to float
  %2 = fadd float %1, %tmp42
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %tmp37 = lshr i64 %tmp28, 32
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = bitcast i32 %tmp38 to float
  %5 = fadd float %4, %tmp39
  %6 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %7 = load float* %6, align 4
  %8 = fadd float %7, %other.1
  %tmp17 = bitcast float %2 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %5 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %8, 1
  ret %0 %mrv5
}

define internal fastcc %0 @_ZN6Vector3subES_(%struct.Color* nocapture %this, double %other.0, float %other.1) nounwind readonly ssp align 2 {
return:
  %tmp28 = bitcast double %other.0 to i64
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %tmp41 = trunc i64 %tmp28 to i32
  %tmp42 = bitcast i32 %tmp41 to float
  %2 = fsub float %1, %tmp42
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %tmp37 = lshr i64 %tmp28, 32
  %tmp38 = trunc i64 %tmp37 to i32
  %tmp39 = bitcast i32 %tmp38 to float
  %5 = fsub float %4, %tmp39
  %6 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %7 = load float* %6, align 4
  %8 = fsub float %7, %other.1
  %tmp17 = bitcast float %2 to i32
  %tmp18 = zext i32 %tmp17 to i64
  %tmp11 = bitcast float %5 to i32
  %tmp12 = zext i32 %tmp11 to i64
  %tmp13 = shl nuw i64 %tmp12, 32
  %ins15 = or i64 %tmp18, %tmp13
  %tmp6 = bitcast i64 %ins15 to double
  %mrv4 = insertvalue %0 undef, double %tmp6, 0
  %mrv5 = insertvalue %0 %mrv4, float %8, 1
  ret %0 %mrv5
}

define internal fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* nocapture %this) nounwind ssp align 2 {
return:
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %2 = fmul float %1, %1
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %5 = fmul float %4, %4
  %6 = fadd float %2, %5
  %7 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %8 = load float* %7, align 4
  %9 = fmul float %8, %8
  %10 = fadd float %6, %9
  %11 = call float @llvm.trax.invsqrt(float %10) nounwind
  %12 = fdiv float 1.000000e+00, %11
  %13 = load float* %7, align 4
  %14 = fdiv float %13, %12
  %15 = load float* %3, align 4
  %16 = fdiv float %15, %12
  %17 = load float* %0, align 4
  %18 = fdiv float %17, %12
  %tmp18 = bitcast float %18 to i32
  %tmp19 = zext i32 %tmp18 to i64
  %tmp12 = bitcast float %16 to i32
  %tmp13 = zext i32 %tmp12 to i64
  %tmp14 = shl nuw i64 %tmp13, 32
  %ins16 = or i64 %tmp19, %tmp14
  %tmp7 = bitcast i64 %ins16 to double
  %mrv4 = insertvalue %0 undef, double %tmp7, 0
  %mrv5 = insertvalue %0 %mrv4, float %14, 1
  ret %0 %mrv5
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind
