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
%struct.Photon = type { %struct.Color, %struct.Color, [3 x float], i32, float }
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

declare void @llvm.trax.storef(float, i32, i32) nounwind

declare float @llvm.trax.rand() nounwind

define i32 @main() ssp {
invcont8:
  %0 = alloca %struct.Color, align 8
  %V.i = alloca %struct.Color, align 8
  %ln.i = alloca %struct.Color, align 8
  %direction.i = alloca %struct.Color, align 8
  %1 = alloca %struct.Color, align 8
  %2 = alloca %struct.Color, align 8
  %edge1.i.i = alloca %struct.Color, align 8
  %n.i.i = alloca %struct.Color, align 8
  %3 = alloca %struct.Color, align 8
  %ray = alloca %struct.Box, align 8
  %map = alloca %struct.PhotonMap, align 8
  %bvh = alloca %struct.BVH, align 8
  %hit_record = alloca %struct.HitRecord, align 8
  %random_ray = alloca %struct.Box, align 8
  %hit_record80 = alloca %struct.HitRecord, align 8
  %4 = call i8* @llvm.stacksave()
  %5 = call i32 @llvm.trax.loadi(i32 0, i32 1)
  %6 = call i32 @llvm.trax.loadi(i32 0, i32 4)
  %7 = call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %8 = call float @llvm.trax.loadf(i32 0, i32 2)
  %9 = call float @llvm.trax.loadf(i32 0, i32 5)
  %10 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %11 = call float @llvm.trax.loadf(i32 %10, i32 0) nounwind
  %12 = call float @llvm.trax.loadf(i32 %10, i32 1) nounwind
  %13 = call float @llvm.trax.loadf(i32 %10, i32 2) nounwind
  %14 = call i32 @llvm.trax.loadi(i32 0, i32 10)
  %15 = call float @llvm.trax.loadf(i32 %14, i32 0) nounwind
  %16 = call float @llvm.trax.loadf(i32 %14, i32 1) nounwind
  %17 = call float @llvm.trax.loadf(i32 %14, i32 2) nounwind
  %18 = add nsw i32 %14, 9
  %19 = call float @llvm.trax.loadf(i32 %18, i32 0) nounwind
  %20 = call float @llvm.trax.loadf(i32 %18, i32 1) nounwind
  %21 = call float @llvm.trax.loadf(i32 %18, i32 2) nounwind
  %22 = add nsw i32 %14, 12
  %23 = call float @llvm.trax.loadf(i32 %22, i32 0) nounwind
  %24 = call float @llvm.trax.loadf(i32 %22, i32 1) nounwind
  %25 = call float @llvm.trax.loadf(i32 %22, i32 2) nounwind
  %26 = add nsw i32 %14, 15
  %27 = call float @llvm.trax.loadf(i32 %26, i32 0) nounwind
  %28 = call float @llvm.trax.loadf(i32 %26, i32 1) nounwind
  %29 = call float @llvm.trax.loadf(i32 %26, i32 2) nounwind
  %30 = add nsw i32 %14, 18
  %31 = call float @llvm.trax.loadf(i32 %30, i32 0) nounwind
  %32 = call float @llvm.trax.loadf(i32 %30, i32 1) nounwind
  %33 = call float @llvm.trax.loadf(i32 %30, i32 2) nounwind
  %34 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %35 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %36 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %37 = bitcast %struct.Box* %ray to i8*
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %36, align 4
  %38 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %38, align 4
  %39 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 0, i64 0
  br label %bb1.i91

bb.i89:                                           ; preds = %bb1.i91
  %40 = getelementptr inbounds %struct.Photon* %.0194, i64 0, i32 1, i32 1
  %41 = bitcast %struct.Photon* %.0194 to i8*
  call void @llvm.memset.p0i8.i64(i8* %41, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %40, align 4
  %42 = getelementptr inbounds %struct.Photon* %.0194, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %42, align 4
  %43 = getelementptr inbounds %struct.Photon* %.0194, i64 0, i32 2, i64 0
  store float 1.000000e+00, float* %43, align 4
  %44 = getelementptr inbounds %struct.Photon* %.0194, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %44, align 4
  %45 = getelementptr inbounds %struct.Photon* %.0194, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %45, align 4
  %46 = getelementptr inbounds %struct.Photon* %.0194, i64 1
  %47 = add nsw i64 %storemerge.i90, -1
  br label %bb1.i91

bb1.i91:                                          ; preds = %bb.i89, %invcont8
  %.0194 = phi %struct.Photon* [ %39, %invcont8 ], [ %46, %bb.i89 ]
  %storemerge.i90 = phi i64 [ 4999, %invcont8 ], [ %47, %bb.i89 ]
  %48 = icmp eq i64 %storemerge.i90, -1
  br i1 %48, label %invcont11, label %bb.i89

invcont11:                                        ; preds = %bb1.i91
  %49 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 2
  store float 1.000000e+07, float* %49, align 8
  %50 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 1
  store float 1.000000e+07, float* %50, align 4
  %51 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 0
  store float 1.000000e+07, float* %51, align 8
  %52 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 2
  store float -1.000000e+07, float* %52, align 4
  %53 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 1
  store float -1.000000e+07, float* %53, align 4
  %54 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 0
  store float -1.000000e+07, float* %54, align 4
  %55 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %56 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %57 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %58 = getelementptr inbounds %struct.BVH* %bvh, i64 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = alloca [135000 x %struct.Photon], align 1
  %.sub = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 0
  br label %bb12

bb:                                               ; preds = %bb12
  %60 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i32 1
  %61 = bitcast %struct.Photon* %.0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %60, align 4
  %62 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %62, align 4
  %63 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2, i64 0
  store float 1.000000e+00, float* %63, align 4
  %64 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %64, align 4
  %65 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %65, align 4
  %66 = getelementptr inbounds %struct.Photon* %.0, i64 1
  %67 = add nsw i64 %storemerge, -1
  br label %bb12

bb12:                                             ; preds = %bb, %invcont11
  %.0 = phi %struct.Photon* [ %.sub, %invcont11 ], [ %66, %bb ]
  %storemerge = phi i64 [ 134999, %invcont11 ], [ %67, %bb ]
  %68 = icmp eq i64 %storemerge, -1
  br i1 %68, label %bb13, label %bb

bb13:                                             ; preds = %bb12
  %69 = alloca [45000 x %struct.Photon], align 1
  %.sub2496 = getelementptr inbounds [45000 x %struct.Photon]* %69, i64 0, i64 0
  br label %bb15

bb14:                                             ; preds = %bb15
  %storemerge1 = add nsw i64 %storemerge1.in, -1
  %70 = getelementptr inbounds %struct.Photon* %.0193, i64 0, i32 1, i32 1
  %71 = bitcast %struct.Photon* %.0193 to i8*
  call void @llvm.memset.p0i8.i64(i8* %71, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %70, align 4
  %72 = getelementptr inbounds %struct.Photon* %.0193, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %72, align 4
  %73 = getelementptr inbounds %struct.Photon* %.0193, i64 0, i32 2, i64 0
  store float 1.000000e+00, float* %73, align 4
  %74 = getelementptr inbounds %struct.Photon* %.0193, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %74, align 4
  %75 = getelementptr inbounds %struct.Photon* %.0193, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %75, align 4
  %76 = getelementptr inbounds %struct.Photon* %.0193, i64 1
  br label %bb15

bb15:                                             ; preds = %bb14, %bb13
  %.0193 = phi %struct.Photon* [ %.sub2496, %bb13 ], [ %76, %bb14 ]
  %storemerge1.in = phi i64 [ 45000, %bb13 ], [ %storemerge1, %bb14 ]
  %77 = icmp eq i64 %storemerge1.in, 0
  br i1 %77, label %invcont18, label %bb14

invcont18:                                        ; preds = %bb15
  %78 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %79 = call float @llvm.trax.loadf(i32 %78, i32 0) nounwind
  %80 = call float @llvm.trax.loadf(i32 %78, i32 1) nounwind
  %81 = call float @llvm.trax.loadf(i32 %78, i32 2) nounwind
  %tmp384 = bitcast float %79 to i32
  %tmp378 = bitcast float %80 to i32
  %tmp372 = bitcast float %81 to i32
  %82 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 0
  %83 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 1
  %84 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 2
  %85 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 0
  %86 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 1
  %87 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 2
  %88 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 0
  %89 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 1
  %90 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 2
  %91 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 0
  %92 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 1
  %93 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 2
  %94 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %95 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %96 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  %97 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %98 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 0, i32 0
  %99 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 0
  %100 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 1
  %101 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 2
  %102 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 0, i32 1
  %103 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 0, i32 2
  %104 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 1
  %105 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 2
  %.4613.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 2
  br label %bb70

bb23:                                             ; preds = %bb68
  %106 = add nsw i32 %bounces.0, 1
  br label %bb.i112

bb.i112:                                          ; preds = %.noexc119, %bb23
  %107 = invoke float @llvm.trax.rand()
          to label %.noexc unwind label %Unwind

.noexc:                                           ; preds = %bb.i112
  %108 = fadd float %107, -5.000000e-01
  %109 = fmul float %108, 2.000000e+00
  %110 = invoke float @llvm.trax.rand()
          to label %.noexc118 unwind label %Unwind

.noexc118:                                        ; preds = %.noexc
  %111 = fadd float %110, -5.000000e-01
  %112 = fmul float %111, 2.000000e+00
  %113 = invoke float @llvm.trax.rand()
          to label %.noexc119 unwind label %Unwind

.noexc119:                                        ; preds = %.noexc118
  %114 = fadd float %113, -5.000000e-01
  %115 = fmul float %114, 2.000000e+00
  %116 = fmul float %109, %109
  %117 = fmul float %112, %112
  %118 = fadd float %116, %117
  %119 = fmul float %115, %115
  %120 = fadd float %118, %119
  %121 = fcmp ogt float %120, 1.000000e+00
  br i1 %121, label %bb.i112, label %invcont41

invcont41:                                        ; preds = %.noexc119
  store float %109, float* %82, align 8
  store float %112, float* %83, align 4
  store float %115, float* %84, align 8
  %122 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %direction.i)
  %mrv_gr.i114 = extractvalue %0 %122, 0
  %tmp2116 = bitcast double %mrv_gr.i114 to i64
  %mrv_gr3.i = extractvalue %0 %122, 1
  %tmp2110 = bitcast float %mrv_gr3.i to i32
  %tmp2106 = lshr i64 %tmp2116, 32
  %tmp2140 = zext i64 %tmp2116 to i96
  %tmp2134 = zext i64 %tmp2106 to i96
  %tmp2135 = shl nuw nsw i96 %tmp2134, 32
  %tmp2140.masked = and i96 %tmp2140, 4294967295
  %ins2137 = or i96 %tmp2140.masked, %tmp2135
  %tmp277 = zext i96 %ins2137 to i128
  %mask278 = and i128 %memtmp29.0, -79228162514264337593543950336
  %tmp271 = zext i32 %tmp2110 to i128
  %tmp272 = shl nuw nsw i128 %tmp271, 64
  %mask273 = or i128 %mask278, %tmp277
  %ins274 = or i128 %mask273, %tmp272
  %ins274.tr = trunc i128 %ins274 to i96
  store float 0.000000e+00, float* %85, align 4
  store float 0.000000e+00, float* %86, align 4
  store float 0.000000e+00, float* %87, align 4
  store float 0.000000e+00, float* %88, align 4
  store float 0.000000e+00, float* %89, align 4
  store float 0.000000e+00, float* %90, align 4
  store float 0.000000e+00, float* %91, align 4
  store float 0.000000e+00, float* %92, align 4
  store float 0.000000e+00, float* %93, align 4
  store float 0.000000e+00, float* %94, align 4
  store float 0.000000e+00, float* %95, align 4
  store float 0.000000e+00, float* %96, align 4
  store float 1.000000e+10, float* %97, align 8
  %123 = bitcast %struct.Box* %random_ray to i8*
  call void @llvm.memset.p0i8.i64(i8* %123, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %100, align 4
  store float 0.000000e+00, float* %101, align 4
  %tmp2175 = bitcast i32 %ray_origin.0.ph.off0 to float
  store float %tmp2175, float* %98, align 8
  %tmp2172 = bitcast i32 %ray_origin.0.ph.off32 to float
  store float %tmp2172, float* %102, align 4
  %tmp2168 = bitcast i32 %ray_origin.0.ph.off64 to float
  store float %tmp2168, float* %103, align 8
  %tmp2152 = trunc i64 %tmp2116 to i32
  %tmp2153 = bitcast i32 %tmp2152 to float
  store float %tmp2153, float* %99, align 4
  %tmp2149 = trunc i64 %tmp2106 to i32
  %tmp2150 = bitcast i32 %tmp2149 to float
  store float %tmp2150, float* %104, align 4
  %tmp2144 = lshr i96 %ins274.tr, 64
  %tmp2145 = trunc i96 %tmp2144 to i32
  %tmp2146 = bitcast i32 %tmp2145 to float
  store float %tmp2146, float* %105, align 4
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record, %struct.Box* %random_ray)
  %124 = load float* %97, align 8
  %125 = fcmp olt float %124, 1.000000e+10
  br i1 %125, label %invcont60, label %bb68

invcont60:                                        ; preds = %invcont41
  %tmp615 = load float* %.4613.2, align 4
  %126 = call fastcc %0 @_ZN9HitRecord12hit_positionE3Ray(float %124, %struct.Box* byval %random_ray)
  %mrv_gr50 = extractvalue %0 %126, 0
  %tmp254 = bitcast double %mrv_gr50 to i64
  %mrv_gr52 = extractvalue %0 %126, 1
  %tmp248 = bitcast float %mrv_gr52 to i32
  %tmp244 = lshr i64 %tmp254, 32
  %tmp2196 = trunc i64 %tmp254 to i32
  %tmp2197 = bitcast i32 %tmp2196 to float
  %tmp2193 = trunc i64 %tmp244 to i32
  %tmp2194 = bitcast i32 %tmp2193 to float
  %127 = sext i32 %count.0.ph to i64
  %.0295 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %127, i32 0, i32 0
  store float %tmp2197, float* %.0295, align 4
  %.1297 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %127, i32 0, i32 1
  store float %tmp2194, float* %.1297, align 4
  %.2299 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %127, i32 0, i32 2
  store float %mrv_gr52, float* %.2299, align 4
  %.1.0 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %127, i32 1, i32 0
  store float 0.000000e+00, float* %.1.0, align 4
  %.1.1 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %127, i32 1, i32 1
  store float 0.000000e+00, float* %.1.1, align 4
  %.1.2 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %127, i32 1, i32 2
  store float 0.000000e+00, float* %.1.2, align 4
  %.2.0 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %127, i32 2, i64 0
  store float %tmp615, float* %.2.0, align 4
  %.2.1 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %127, i32 2, i64 1
  store float %tmp615, float* %.2.1, align 4
  %.2.2 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %127, i32 2, i64 2
  store float %tmp615, float* %.2.2, align 4
  %128 = add nsw i32 %count.0.ph, 1
  %tmp222 = lshr i64 %tmp254, 32
  %extract.t = trunc i64 %tmp254 to i32
  %extract.t2598 = trunc i64 %tmp222 to i32
  br label %bb67.outer

bb67.outer:                                       ; preds = %bb70, %invcont60
  %memtmp29.0.ph = phi i128 [ %ins274, %invcont60 ], [ %memtmp29.1, %bb70 ]
  %ray_origin.0.ph.off0 = phi i32 [ %extract.t, %invcont60 ], [ %ray_origin.1.off0, %bb70 ]
  %ray_origin.0.ph.off32 = phi i32 [ %extract.t2598, %invcont60 ], [ %ray_origin.1.off32, %bb70 ]
  %ray_origin.0.ph.off64 = phi i32 [ %tmp248, %invcont60 ], [ %ray_origin.1.off64, %bb70 ]
  %bounces.0.ph = phi i32 [ %106, %invcont60 ], [ 0, %bb70 ]
  %count.0.ph = phi i32 [ %128, %invcont60 ], [ %count.1, %bb70 ]
  br label %bb68

bb68:                                             ; preds = %bb67.outer, %invcont41
  %bounces.0 = phi i32 [ %106, %invcont41 ], [ %bounces.0.ph, %bb67.outer ]
  %memtmp29.0 = phi i128 [ %ins274, %invcont41 ], [ %memtmp29.0.ph, %bb67.outer ]
  %129 = icmp slt i32 %bounces.0, 3
  br i1 %129, label %bb23, label %bb69

bb69:                                             ; preds = %bb68
  %130 = add nsw i32 %iterator.0, 1
  br label %bb70

bb70:                                             ; preds = %bb69, %invcont18
  %memtmp29.1 = phi i128 [ undef, %invcont18 ], [ %memtmp29.0, %bb69 ]
  %ray_origin.1.off0 = phi i32 [ %tmp384, %invcont18 ], [ %ray_origin.0.ph.off0, %bb69 ]
  %ray_origin.1.off32 = phi i32 [ %tmp378, %invcont18 ], [ %ray_origin.0.ph.off32, %bb69 ]
  %ray_origin.1.off64 = phi i32 [ %tmp372, %invcont18 ], [ %ray_origin.0.ph.off64, %bb69 ]
  %count.1 = phi i32 [ 0, %invcont18 ], [ %count.0.ph, %bb69 ]
  %iterator.0 = phi i32 [ 0, %invcont18 ], [ %130, %bb69 ]
  %131 = icmp slt i32 %iterator.0, 45000
  br i1 %131, label %bb67.outer, label %invcont73

invcont73:                                        ; preds = %bb70
  %132 = call i32 @llvm.trax.atominc(i32 0)
  %133 = mul nsw i32 %5, %6
  %134 = sitofp i32 %5 to float
  %135 = fdiv float %134, -2.000000e+00
  %136 = sitofp i32 %6 to float
  %137 = fdiv float %136, -2.000000e+00
  %138 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 0
  %139 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 1
  %140 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 2
  %141 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 0
  %142 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 1
  %143 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 2
  %144 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %145 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %146 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %147 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %148 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %149 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %150 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %151 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 0, i32 0
  %152 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 0, i32 1
  %153 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 0, i32 2
  %154 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 1, i32 0
  %155 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 1, i32 1
  %156 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 1, i32 2
  %157 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 2, i32 0
  %158 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 2, i32 1
  %159 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 2, i32 2
  %160 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 4, i32 0, i32 0
  %161 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 4, i32 0, i32 1
  %162 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 4, i32 0, i32 2
  %163 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 0
  %hit_record80.0 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 0
  %hit_record80.1854.0 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 0, i32 0
  %hit_record80.1854.1 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 0, i32 1
  %hit_record80.1854.2 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 0, i32 2
  %hit_record80.1.1.0 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 1, i32 0
  %hit_record80.1.1.1 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 1, i32 1
  %hit_record80.1.1.2 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 1, i32 2
  %hit_record80.1.2.0 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 2, i32 0
  %hit_record80.1.2.1 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 2, i32 1
  %hit_record80.1.2.2 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 2, i32 2
  %hit_record80.1.4830.0 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 4, i32 0, i32 0
  %hit_record80.1.4830.1 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 4, i32 0, i32 1
  %hit_record80.1.4830.2 = getelementptr inbounds %struct.HitRecord* %hit_record80, i64 0, i32 1, i32 4, i32 0, i32 2
  %ray863.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray863.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray863.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.1.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.1.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.1.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %164 = getelementptr inbounds %struct.Color* %3, i64 0, i32 0
  %165 = getelementptr inbounds %struct.Color* %3, i64 0, i32 1
  %166 = getelementptr inbounds %struct.Color* %3, i64 0, i32 2
  %167 = getelementptr inbounds %struct.Color* %2, i64 0, i32 0
  %168 = getelementptr inbounds %struct.Color* %2, i64 0, i32 1
  %169 = getelementptr inbounds %struct.Color* %2, i64 0, i32 2
  %170 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 0
  %171 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 1
  %172 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 2
  %173 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %174 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %175 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %176 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 0
  %177 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 1
  %178 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 2
  br label %bb96

invcont82:                                        ; preds = %bb96
  %179 = sdiv i32 %storemerge2, %5
  %180 = srem i32 %storemerge2, %5
  %181 = sitofp i32 %180 to float
  %182 = fadd float %181, %135
  %183 = fadd float %182, 5.000000e-01
  %184 = fmul float %183, 2.000000e+00
  %185 = fdiv float %184, %134
  %186 = sitofp i32 %179 to float
  %187 = fadd float %186, %137
  %188 = fadd float %187, 5.000000e-01
  %189 = fmul float %188, 2.000000e+00
  %190 = fdiv float %189, %136
  store float %23, float* %141, align 8
  store float %24, float* %142, align 4
  store float %25, float* %143, align 8
  %191 = fmul float %31, %190
  %192 = fmul float %32, %190
  %193 = fmul float %33, %190
  %tmp2359 = bitcast float %191 to i32
  %tmp2360 = zext i32 %tmp2359 to i64
  %tmp2353 = bitcast float %192 to i32
  %tmp2354 = zext i32 %tmp2353 to i64
  %tmp2355 = shl nuw i64 %tmp2354, 32
  %ins2357 = or i64 %tmp2360, %tmp2355
  %194 = fmul float %27, %185
  %195 = fmul float %28, %185
  %196 = fmul float %29, %185
  store float %194, float* %144, align 8
  store float %195, float* %145, align 4
  store float %196, float* %146, align 8
  %tmp2345 = bitcast i64 %ins2357 to double
  %197 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %0, double %tmp2345, float %193) nounwind
  %mrv_gr14.i176 = extractvalue %0 %197, 0
  %mrv_gr16.i = extractvalue %0 %197, 1
  %198 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %ln.i, double %mrv_gr14.i176, float %mrv_gr16.i) nounwind
  %mrv_gr24.i178 = extractvalue %0 %198, 0
  %tmp2249 = bitcast double %mrv_gr24.i178 to i64
  %mrv_gr26.i180 = extractvalue %0 %198, 1
  %tmp2236 = trunc i64 %tmp2249 to i32
  %tmp2237 = bitcast i32 %tmp2236 to float
  store float %tmp2237, float* %138, align 8
  %tmp2239 = lshr i64 %tmp2249, 32
  %tmp2240 = trunc i64 %tmp2239 to i32
  %tmp2241 = bitcast i32 %tmp2240 to float
  store float %tmp2241, float* %139, align 4
  store float %mrv_gr26.i180, float* %140, align 8
  %199 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %V.i) nounwind
  %mrv_gr30.i = extractvalue %0 %199, 0
  %tmp2227 = bitcast double %mrv_gr30.i to i64
  %mrv_gr32.i = extractvalue %0 %199, 1
  %tmp2217 = lshr i64 %tmp2227, 32
  %tmp2404 = trunc i64 %tmp2227 to i32
  %tmp2405 = bitcast i32 %tmp2404 to float
  %tmp2401 = trunc i64 %tmp2217 to i32
  %tmp2402 = bitcast i32 %tmp2401 to float
  store float %15, float* %34, align 8
  store float %16, float* %147, align 4
  store float %17, float* %148, align 8
  store float %tmp2405, float* %35, align 4
  store float %tmp2402, float* %149, align 4
  store float %mrv_gr32.i, float* %150, align 4
  store float 0.000000e+00, float* %151, align 4
  store float 0.000000e+00, float* %152, align 4
  store float 0.000000e+00, float* %153, align 4
  store float 0.000000e+00, float* %154, align 4
  store float 0.000000e+00, float* %155, align 4
  store float 0.000000e+00, float* %156, align 4
  store float 0.000000e+00, float* %157, align 4
  store float 0.000000e+00, float* %158, align 4
  store float 0.000000e+00, float* %159, align 4
  store float 0.000000e+00, float* %160, align 4
  store float 0.000000e+00, float* %161, align 4
  store float 0.000000e+00, float* %162, align 4
  store float 1.000000e+10, float* %163, align 8
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record80, %struct.Box* %ray)
  %tmp824 = load float* %hit_record80.0, align 8
  %tmp855 = load float* %hit_record80.1854.0, align 4
  %tmp856 = load float* %hit_record80.1854.1, align 4
  %tmp857 = load float* %hit_record80.1854.2, align 4
  %tmp847 = load float* %hit_record80.1.1.0, align 4
  %tmp848 = load float* %hit_record80.1.1.1, align 4
  %tmp849 = load float* %hit_record80.1.1.2, align 4
  %tmp841 = load float* %hit_record80.1.2.0, align 4
  %tmp842 = load float* %hit_record80.1.2.1, align 4
  %tmp843 = load float* %hit_record80.1.2.2, align 4
  %tmp831 = load float* %hit_record80.1.4830.0, align 4
  %tmp832 = load float* %hit_record80.1.4830.1, align 4
  %tmp833 = load float* %hit_record80.1.4830.2, align 4
  %tmp864 = load float* %ray863.0, align 8
  %tmp865 = load float* %ray863.1, align 4
  %tmp866 = load float* %ray863.2, align 8
  %tmp860 = load float* %ray.1.0, align 4
  %tmp861 = load float* %ray.1.1, align 4
  %tmp862 = load float* %ray.1.2, align 4
  %200 = fmul float %tmp860, %tmp824
  %201 = fmul float %tmp861, %tmp824
  %202 = fmul float %tmp862, %tmp824
  %tmp1163 = bitcast float %200 to i32
  %tmp1164 = zext i32 %tmp1163 to i64
  %tmp1157 = bitcast float %201 to i32
  %tmp1158 = zext i32 %tmp1157 to i64
  %tmp1159 = shl nuw i64 %tmp1158, 32
  %ins1161 = or i64 %tmp1164, %tmp1159
  store float %tmp864, float* %164, align 8
  store float %tmp865, float* %165, align 4
  store float %tmp866, float* %166, align 8
  %tmp1149 = bitcast i64 %ins1161 to double
  %203 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %3, double %tmp1149, float %202) nounwind
  %mrv_gr20.i = extractvalue %0 %203, 0
  %tmp973 = bitcast double %mrv_gr20.i to i64
  %mrv_gr22.i = extractvalue %0 %203, 1
  %tmp963 = lshr i64 %tmp973, 32
  %tmp1620 = bitcast float %tmp847 to i32
  %tmp1621 = zext i32 %tmp1620 to i64
  %tmp1614 = bitcast float %tmp848 to i32
  %tmp1615 = zext i32 %tmp1614 to i64
  %tmp1616 = shl nuw i64 %tmp1615, 32
  %ins1618 = or i64 %tmp1621, %tmp1616
  store float %tmp855, float* %167, align 8
  store float %tmp856, float* %168, align 4
  store float %tmp857, float* %169, align 8
  %tmp1606 = bitcast i64 %ins1618 to double
  %204 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %2, double %tmp1606, float %tmp849) nounwind
  %mrv_gr14.i.i = extractvalue %0 %204, 0
  %tmp1532 = bitcast double %mrv_gr14.i.i to i64
  %mrv_gr16.i.i = extractvalue %0 %204, 1
  %tmp1519 = trunc i64 %tmp1532 to i32
  %tmp1520 = bitcast i32 %tmp1519 to float
  store float %tmp1520, float* %170, align 8
  %tmp1522 = lshr i64 %tmp1532, 32
  %tmp1523 = trunc i64 %tmp1522 to i32
  %tmp1524 = bitcast i32 %tmp1523 to float
  store float %tmp1524, float* %171, align 4
  store float %mrv_gr16.i.i, float* %172, align 8
  %tmp1644 = bitcast float %tmp841 to i32
  %tmp1645 = zext i32 %tmp1644 to i64
  %tmp1638 = bitcast float %tmp842 to i32
  %tmp1639 = zext i32 %tmp1638 to i64
  %tmp1640 = shl nuw i64 %tmp1639, 32
  %ins1642 = or i64 %tmp1645, %tmp1640
  store float %tmp847, float* %173, align 8
  store float %tmp848, float* %174, align 4
  store float %tmp849, float* %175, align 8
  %tmp1630 = bitcast i64 %ins1642 to double
  %205 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %1, double %tmp1630, float %tmp843) nounwind
  %mrv_gr36.i.i = extractvalue %0 %205, 0
  %mrv_gr38.i.i = extractvalue %0 %205, 1
  %206 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %edge1.i.i, double %mrv_gr36.i.i, float %mrv_gr38.i.i) nounwind
  %mrv_gr46.i.i = extractvalue %0 %206, 0
  %tmp1444 = bitcast double %mrv_gr46.i.i to i64
  %mrv_gr48.i.i = extractvalue %0 %206, 1
  %tmp1431 = trunc i64 %tmp1444 to i32
  %tmp1432 = bitcast i32 %tmp1431 to float
  store float %tmp1432, float* %176, align 8
  %tmp1434 = lshr i64 %tmp1444, 32
  %tmp1435 = trunc i64 %tmp1434 to i32
  %tmp1436 = bitcast i32 %tmp1435 to float
  store float %tmp1436, float* %177, align 4
  store float %mrv_gr48.i.i, float* %178, align 8
  %207 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %n.i.i) nounwind
  br label %bb47.i

bb.i36:                                           ; preds = %bb47.i
  %208 = sext i32 %storemerge.i to i64
  %209 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %208, i32 0, i32 0
  %210 = load float* %209, align 4
  %211 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %208, i32 0, i32 1
  %212 = load float* %211, align 4
  %213 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %208, i32 0, i32 2
  %214 = load float* %213, align 4
  %tmp1392 = bitcast float %210 to i32
  %tmp1393 = zext i32 %tmp1392 to i96
  %tmp1386 = bitcast float %212 to i32
  %tmp1387 = zext i32 %tmp1386 to i96
  %tmp1388 = shl nuw nsw i96 %tmp1387, 32
  %ins1390 = or i96 %tmp1393, %tmp1388
  %tmp1380 = bitcast float %214 to i32
  %tmp930 = zext i96 %ins1390 to i128
  %mask931 = and i128 %memtmp31.i.0, -79228162514264337593543950336
  %tmp924 = zext i32 %tmp1380 to i128
  %tmp925 = shl nuw nsw i128 %tmp924, 64
  %mask926 = or i128 %mask931, %tmp930
  %ins927 = or i128 %mask926, %tmp925
  %ins927.tr = trunc i128 %ins927 to i96
  %tmp1338 = trunc i64 %tmp973 to i32
  %tmp1339 = bitcast i32 %tmp1338 to float
  %215 = fsub float %210, %tmp1339
  %tmp1335 = trunc i64 %tmp963 to i32
  %tmp1336 = bitcast i32 %tmp1335 to float
  %216 = fsub float %212, %tmp1336
  %tmp1352 = lshr i96 %ins927.tr, 64
  %tmp1353 = trunc i96 %tmp1352 to i32
  %tmp1354 = bitcast i32 %tmp1353 to float
  %217 = fsub float %tmp1354, %mrv_gr22.i
  %218 = fmul float %215, %215
  %219 = fmul float %216, %216
  %220 = fadd float %218, %219
  %221 = fmul float %217, %217
  %222 = fadd float %220, %221
  %223 = fcmp olt float %222, 0x3FDF5C28E0000000
  br i1 %223, label %bb45.i, label %bb46.i

bb45.i:                                           ; preds = %bb.i36
  %224 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %208, i32 2, i64 0
  %225 = load float* %224, align 4
  %226 = fadd float %power.i.0.1, %225
  %227 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %208, i32 2, i64 1
  %228 = load float* %227, align 4
  %229 = fadd float %power.i.1.1, %228
  %230 = getelementptr inbounds [135000 x %struct.Photon]* %59, i64 0, i64 %208, i32 2, i64 2
  %231 = load float* %230, align 4
  %232 = fadd float %power.i.2.1, %231
  br label %bb46.i

bb46.i:                                           ; preds = %bb45.i, %bb.i36
  %power.i.0.0 = phi float [ %226, %bb45.i ], [ %power.i.0.1, %bb.i36 ]
  %power.i.1.0 = phi float [ %229, %bb45.i ], [ %power.i.1.1, %bb.i36 ]
  %power.i.2.0 = phi float [ %232, %bb45.i ], [ %power.i.2.1, %bb.i36 ]
  %233 = add nsw i32 %storemerge.i, 1
  br label %bb47.i

bb47.i:                                           ; preds = %bb46.i, %invcont82
  %power.i.0.1 = phi float [ 0.000000e+00, %invcont82 ], [ %power.i.0.0, %bb46.i ]
  %power.i.1.1 = phi float [ 0.000000e+00, %invcont82 ], [ %power.i.1.0, %bb46.i ]
  %power.i.2.1 = phi float [ 0.000000e+00, %invcont82 ], [ %power.i.2.0, %bb46.i ]
  %memtmp31.i.0 = phi i128 [ %memtmp31.i.1, %invcont82 ], [ %ins927, %bb46.i ]
  %storemerge.i = phi i32 [ 0, %invcont82 ], [ %233, %bb46.i ]
  %234 = icmp slt i32 %storemerge.i, %count.1
  br i1 %234, label %bb.i36, label %invcont83

invcont83:                                        ; preds = %bb47.i
  %235 = fpext float %power.i.0.1 to double
  %236 = fdiv double %235, 0x3FF8A14D4D19B8C1
  %237 = fptrunc double %236 to float
  %238 = fpext float %power.i.1.1 to double
  %239 = fdiv double %238, 0x3FF8A14D4D19B8C1
  %240 = fptrunc double %239 to float
  %241 = fpext float %power.i.2.1 to double
  %242 = fdiv double %241, 0x3FF8A14D4D19B8C1
  %243 = fptrunc double %242 to float
  %244 = fmul float %237, %tmp831
  %245 = fmul float %240, %tmp832
  %246 = fmul float %243, %tmp833
  %247 = fcmp olt float %244, 0.000000e+00
  br i1 %247, label %bb5.i, label %bb1.i

bb1.i:                                            ; preds = %invcont83
  %248 = fcmp ogt float %244, 1.000000e+00
  br i1 %248, label %bb5.i, label %bb4.i

bb4.i:                                            ; preds = %bb1.i
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb1.i, %invcont83
  %r.i.0 = phi float [ %244, %bb4.i ], [ 0.000000e+00, %invcont83 ], [ 1.000000e+00, %bb1.i ]
  %249 = fcmp olt float %246, 0.000000e+00
  br i1 %249, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i
  %250 = fcmp ogt float %246, 1.000000e+00
  br i1 %250, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i
  %b.i.0 = phi float [ %246, %bb11.i ], [ 0.000000e+00, %bb5.i ], [ 1.000000e+00, %bb8.i ]
  %251 = fcmp olt float %245, 0.000000e+00
  br i1 %251, label %invcont95, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %252 = fcmp ogt float %245, 1.000000e+00
  br i1 %252, label %invcont95, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %invcont95

invcont95:                                        ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.i.0 = phi float [ %245, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %253 = mul nsw i32 %5, %179
  %254 = add nsw i32 %253, %180
  %255 = mul nsw i32 %254, 3
  %256 = add nsw i32 %7, %255
  call void @llvm.trax.storef(float %r.i.0, i32 %256, i32 0) nounwind
  call void @llvm.trax.storef(float %g.i.0, i32 %256, i32 1) nounwind
  call void @llvm.trax.storef(float %b.i.0, i32 %256, i32 2) nounwind
  %257 = call i32 @llvm.trax.atominc(i32 0)
  br label %bb96

bb96:                                             ; preds = %invcont95, %invcont73
  %memtmp31.i.1 = phi i128 [ undef, %invcont73 ], [ %memtmp31.i.0, %invcont95 ]
  %storemerge2 = phi i32 [ %132, %invcont73 ], [ %257, %invcont95 ]
  %258 = icmp sgt i32 %133, %storemerge2
  br i1 %258, label %invcont82, label %return

return:                                           ; preds = %bb96
  ret i32 0

Unwind:                                           ; preds = %.noexc118, %.noexc, %bb.i112
  %eh_ptr = call i8* @llvm.eh.exception()
  %eh_select103 = call i32 (i8*, i8*, ...)* @llvm.eh.selector(i8* %eh_ptr, i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*), i32 0)
  call void @llvm.stackrestore(i8* %4)
  call void @_Unwind_Resume_or_Rethrow(i8* %eh_ptr)
  unreachable
}

declare i8* @llvm.stacksave() nounwind

declare i32 @llvm.trax.atominc(i32) nounwind

declare void @llvm.stackrestore(i8*) nounwind

declare i8* @llvm.eh.exception() nounwind readonly

declare i32 @llvm.eh.selector(i8*, i8*, ...) nounwind

declare i32 @__gxx_personality_v0(...)

declare void @_Unwind_Resume_or_Rethrow(i8*)

declare float @llvm.trax.invsqrt(float) nounwind

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
