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
%struct.Photon = type { %struct.Color, %struct.Color, [3 x float], float, float, i32, float }
%struct.PhotonMap = type { %struct.Photon }
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

define internal fastcc %0 @_ZN9HitRecord12hit_positionE3Ray(float %this.0.0.val, float %ray.0.1.0.val, float %ray.0.1.1.val, float %ray.0.1.2.val) nounwind readnone ssp align 2 {
return:
  %0 = fmul float %ray.0.1.0.val, %this.0.0.val
  %1 = fmul float %ray.0.1.1.val, %this.0.0.val
  %2 = fmul float %ray.0.1.2.val, %this.0.0.val
  %tmp64 = bitcast float %0 to i32
  %tmp65 = zext i32 %tmp64 to i64
  %tmp58 = bitcast float %1 to i32
  %tmp59 = zext i32 %tmp58 to i64
  %tmp60 = shl nuw i64 %tmp59, 32
  %ins62 = or i64 %tmp65, %tmp60
  %tmp50 = bitcast i64 %ins62 to double
  %mrv14 = insertvalue %0 undef, double %tmp50, 0
  %mrv15 = insertvalue %0 %mrv14, float %2, 1
  ret %0 %mrv15
}

declare void @llvm.trax.storef(float, i32, i32) nounwind

define i32 @main() ssp {
invcont11:
  %0 = alloca %struct.Color, align 8
  %V.i = alloca %struct.Color, align 8
  %ln.i = alloca %struct.Color, align 8
  %1 = alloca %struct.Color, align 8
  %2 = alloca %struct.Color, align 8
  %edge1.i.i = alloca %struct.Color, align 8
  %n.i.i = alloca %struct.Color, align 8
  %3 = alloca %struct.Color, align 8
  %nearest.i = alloca [10000 x %struct.Photon], align 8
  %ray = alloca %struct.Box, align 8
  %bvh = alloca %struct.BVH, align 8
  %ray27 = alloca %struct.Box, align 8
  %hit_record = alloca %struct.HitRecord, align 8
  %hit_record81 = alloca %struct.HitRecord, align 8
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
  %39 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %40 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %41 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %42 = getelementptr inbounds %struct.BVH* %bvh, i64 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = alloca [15000 x %struct.Photon], align 1
  %.sub = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 0
  br label %bb12

bb:                                               ; preds = %bb12
  %44 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i32 1
  %45 = bitcast %struct.Photon* %.0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %44, align 4
  %46 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %46, align 4
  %47 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2, i64 0
  store float 1.000000e+00, float* %47, align 4
  %48 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %48, align 4
  %49 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %49, align 4
  %50 = getelementptr inbounds %struct.Photon* %.0, i64 1
  %51 = add nsw i64 %storemerge, -1
  br label %bb12

bb12:                                             ; preds = %bb, %invcont11
  %.0 = phi %struct.Photon* [ %.sub, %invcont11 ], [ %50, %bb ]
  %storemerge = phi i64 [ 14999, %invcont11 ], [ %51, %bb ]
  %52 = icmp eq i64 %storemerge, -1
  br i1 %52, label %bb13, label %bb

bb13:                                             ; preds = %bb12
  %53 = alloca [15000 x %struct.Photon], align 1
  %.sub2560 = getelementptr inbounds [15000 x %struct.Photon]* %53, i64 0, i64 0
  br label %bb15

bb14:                                             ; preds = %bb15
  %storemerge1 = add nsw i64 %storemerge1.in, -1
  %54 = getelementptr inbounds %struct.Photon* %.0180, i64 0, i32 1, i32 1
  %55 = bitcast %struct.Photon* %.0180 to i8*
  call void @llvm.memset.p0i8.i64(i8* %55, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %54, align 4
  %56 = getelementptr inbounds %struct.Photon* %.0180, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %56, align 4
  %57 = getelementptr inbounds %struct.Photon* %.0180, i64 0, i32 2, i64 0
  store float 1.000000e+00, float* %57, align 4
  %58 = getelementptr inbounds %struct.Photon* %.0180, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %58, align 4
  %59 = getelementptr inbounds %struct.Photon* %.0180, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %59, align 4
  %60 = getelementptr inbounds %struct.Photon* %.0180, i64 1
  br label %bb15

bb15:                                             ; preds = %bb14, %bb13
  %.0180 = phi %struct.Photon* [ %.sub2560, %bb13 ], [ %60, %bb14 ]
  %storemerge1.in = phi i64 [ 15000, %bb13 ], [ %storemerge1, %bb14 ]
  %61 = icmp eq i64 %storemerge1.in, 0
  br i1 %61, label %invcont18, label %bb14

invcont18:                                        ; preds = %bb15
  %62 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %63 = call float @llvm.trax.loadf(i32 %62, i32 0) nounwind
  %64 = call float @llvm.trax.loadf(i32 %62, i32 1) nounwind
  %65 = call float @llvm.trax.loadf(i32 %62, i32 2) nounwind
  %tmp378 = bitcast float %63 to i32
  %tmp372 = bitcast float %64 to i32
  %tmp366 = bitcast float %65 to i32
  %66 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 0, i32 0
  %67 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 0
  %68 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 1
  %69 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 2
  %70 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 0, i32 1
  %71 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 0, i32 2
  %72 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 1
  %73 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 2
  %74 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 0
  %75 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 1
  %76 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 2
  %77 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 0
  %78 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 1
  %79 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 2
  %80 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 0
  %81 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 1
  %82 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 2
  %83 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %84 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %85 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  %86 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %.4620.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 2
  br label %bb71

bb23:                                             ; preds = %bb69
  %87 = add nsw i32 %bounces.0, 1
  br label %bb.i84

bb.i84:                                           ; preds = %.noexc91, %bb23
  %88 = invoke float @llvm.trax.rand()
          to label %.noexc unwind label %Unwind

.noexc:                                           ; preds = %bb.i84
  %89 = fadd float %88, -5.000000e-01
  %90 = fmul float %89, 2.000000e+00
  %91 = invoke float @llvm.trax.rand()
          to label %.noexc90 unwind label %Unwind

.noexc90:                                         ; preds = %.noexc
  %92 = fadd float %91, -5.000000e-01
  %93 = fmul float %92, 2.000000e+00
  %94 = invoke float @llvm.trax.rand()
          to label %.noexc91 unwind label %Unwind

.noexc91:                                         ; preds = %.noexc90
  %95 = fadd float %94, -5.000000e-01
  %96 = fmul float %95, 2.000000e+00
  %97 = fmul float %90, %90
  %98 = fmul float %93, %93
  %99 = fadd float %97, %98
  %100 = fmul float %96, %96
  %101 = fadd float %99, %100
  %102 = fcmp ogt float %101, 1.000000e+00
  br i1 %102, label %bb.i84, label %invcont42

invcont42:                                        ; preds = %.noexc91
  %tmp2191 = bitcast float %90 to i32
  %tmp2192 = zext i32 %tmp2191 to i96
  %tmp2185 = bitcast float %93 to i32
  %tmp2186 = zext i32 %tmp2185 to i96
  %tmp2187 = shl nuw nsw i96 %tmp2186, 32
  %ins2189 = or i96 %tmp2192, %tmp2187
  %tmp2179 = bitcast float %96 to i32
  %tmp265 = zext i96 %ins2189 to i128
  %mask266 = and i128 %memtmp30.0, -79228162514264337593543950336
  %tmp259 = zext i32 %tmp2179 to i128
  %tmp260 = shl nuw nsw i128 %tmp259, 64
  %mask261 = or i128 %mask266, %tmp265
  %ins262 = or i128 %mask261, %tmp260
  %ins262.tr = trunc i128 %ins262 to i96
  %103 = bitcast %struct.Box* %ray27 to i8*
  call void @llvm.memset.p0i8.i64(i8* %103, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %68, align 4
  store float 0.000000e+00, float* %69, align 4
  %tmp2227 = bitcast i32 %ray_origin.0.ph.off0 to float
  store float %tmp2227, float* %66, align 8
  %tmp2224 = bitcast i32 %ray_origin.0.ph.off32 to float
  store float %tmp2224, float* %70, align 4
  %tmp2220 = bitcast i32 %ray_origin.0.ph.off64 to float
  store float %tmp2220, float* %71, align 8
  store float %90, float* %67, align 4
  store float %93, float* %72, align 4
  %tmp2196 = lshr i96 %ins262.tr, 64
  %tmp2197 = trunc i96 %tmp2196 to i32
  %tmp2198 = bitcast i32 %tmp2197 to float
  store float %tmp2198, float* %73, align 4
  store float 0.000000e+00, float* %74, align 4
  store float 0.000000e+00, float* %75, align 4
  store float 0.000000e+00, float* %76, align 4
  store float 0.000000e+00, float* %77, align 4
  store float 0.000000e+00, float* %78, align 4
  store float 0.000000e+00, float* %79, align 4
  store float 0.000000e+00, float* %80, align 4
  store float 0.000000e+00, float* %81, align 4
  store float 0.000000e+00, float* %82, align 4
  store float 0.000000e+00, float* %83, align 4
  store float 0.000000e+00, float* %84, align 4
  store float 0.000000e+00, float* %85, align 4
  store float 1.000000e+10, float* %86, align 8
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record, %struct.Box* %ray27)
  %104 = load float* %86, align 8
  %105 = fcmp olt float %104, 1.000000e+10
  br i1 %105, label %invcont61, label %bb69

invcont61:                                        ; preds = %invcont42
  %tmp622 = load float* %.4620.2, align 4
  %ray27.idx173.val = load float* %67, align 4
  %ray27.idx174.val = load float* %72, align 4
  %ray27.idx175.val = load float* %73, align 4
  %106 = call fastcc %0 @_ZN9HitRecord12hit_positionE3Ray(float %104, float %ray27.idx173.val, float %ray27.idx174.val, float %ray27.idx175.val)
  %mrv_gr51 = extractvalue %0 %106, 0
  %tmp242 = bitcast double %mrv_gr51 to i64
  %mrv_gr53 = extractvalue %0 %106, 1
  %tmp236 = bitcast float %mrv_gr53 to i32
  %tmp232 = lshr i64 %tmp242, 32
  %tmp2248 = trunc i64 %tmp242 to i32
  %tmp2249 = bitcast i32 %tmp2248 to float
  %tmp2245 = trunc i64 %tmp232 to i32
  %tmp2246 = bitcast i32 %tmp2245 to float
  %107 = sext i32 %count.0.ph to i64
  %.0285 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %107, i32 0, i32 0
  store float %tmp2249, float* %.0285, align 4
  %.1287 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %107, i32 0, i32 1
  store float %tmp2246, float* %.1287, align 4
  %.2289 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %107, i32 0, i32 2
  store float %mrv_gr53, float* %.2289, align 4
  %.1.0 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %107, i32 1, i32 0
  store float 0.000000e+00, float* %.1.0, align 4
  %.1.1 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %107, i32 1, i32 1
  store float 0.000000e+00, float* %.1.1, align 4
  %.1.2 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %107, i32 1, i32 2
  store float 0.000000e+00, float* %.1.2, align 4
  %.2.0 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %107, i32 2, i64 0
  store float %tmp622, float* %.2.0, align 4
  %.2.1 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %107, i32 2, i64 1
  store float %tmp622, float* %.2.1, align 4
  %.2.2 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %107, i32 2, i64 2
  store float %tmp622, float* %.2.2, align 4
  %108 = add nsw i32 %count.0.ph, 1
  %tmp210 = lshr i64 %tmp242, 32
  %extract.t = trunc i64 %tmp242 to i32
  %extract.t2621 = trunc i64 %tmp210 to i32
  br label %bb68.outer

bb68.outer:                                       ; preds = %bb71, %invcont61
  %memtmp30.0.ph = phi i128 [ %ins262, %invcont61 ], [ %memtmp30.1, %bb71 ]
  %ray_origin.0.ph.off0 = phi i32 [ %extract.t, %invcont61 ], [ %ray_origin.1.off0, %bb71 ]
  %ray_origin.0.ph.off32 = phi i32 [ %extract.t2621, %invcont61 ], [ %ray_origin.1.off32, %bb71 ]
  %ray_origin.0.ph.off64 = phi i32 [ %tmp236, %invcont61 ], [ %ray_origin.1.off64, %bb71 ]
  %bounces.0.ph = phi i32 [ %87, %invcont61 ], [ 0, %bb71 ]
  %count.0.ph = phi i32 [ %108, %invcont61 ], [ %count.1, %bb71 ]
  br label %bb69

bb69:                                             ; preds = %bb68.outer, %invcont42
  %bounces.0 = phi i32 [ %87, %invcont42 ], [ %bounces.0.ph, %bb68.outer ]
  %memtmp30.0 = phi i128 [ %ins262, %invcont42 ], [ %memtmp30.0.ph, %bb68.outer ]
  %109 = icmp slt i32 %bounces.0, 3
  br i1 %109, label %bb23, label %bb70

bb70:                                             ; preds = %bb69
  %110 = add nsw i32 %iterator.0, 1
  br label %bb71

bb71:                                             ; preds = %bb70, %invcont18
  %memtmp30.1 = phi i128 [ undef, %invcont18 ], [ %memtmp30.0, %bb70 ]
  %ray_origin.1.off0 = phi i32 [ %tmp378, %invcont18 ], [ %ray_origin.0.ph.off0, %bb70 ]
  %ray_origin.1.off32 = phi i32 [ %tmp372, %invcont18 ], [ %ray_origin.0.ph.off32, %bb70 ]
  %ray_origin.1.off64 = phi i32 [ %tmp366, %invcont18 ], [ %ray_origin.0.ph.off64, %bb70 ]
  %count.1 = phi i32 [ 0, %invcont18 ], [ %count.0.ph, %bb70 ]
  %iterator.0 = phi i32 [ 0, %invcont18 ], [ %110, %bb70 ]
  %111 = icmp slt i32 %iterator.0, 15000
  br i1 %111, label %bb68.outer, label %invcont74

invcont74:                                        ; preds = %bb71
  %112 = call i32 @llvm.trax.atominc(i32 0)
  %113 = mul nsw i32 %5, %6
  %114 = sitofp i32 %5 to float
  %115 = fdiv float %114, -2.000000e+00
  %116 = sitofp i32 %6 to float
  %117 = fdiv float %116, -2.000000e+00
  %118 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 0
  %119 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 1
  %120 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 2
  %121 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 0
  %122 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 1
  %123 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 2
  %124 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %125 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %126 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %127 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %128 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %129 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %130 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %131 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 0, i32 0
  %132 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 0, i32 1
  %133 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 0, i32 2
  %134 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 1, i32 0
  %135 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 1, i32 1
  %136 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 1, i32 2
  %137 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 2, i32 0
  %138 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 2, i32 1
  %139 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 2, i32 2
  %140 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 4, i32 0, i32 0
  %141 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 4, i32 0, i32 1
  %142 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 4, i32 0, i32 2
  %143 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 0
  %hit_record81.0 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 0
  %hit_record81.1861.0 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 0, i32 0
  %hit_record81.1861.1 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 0, i32 1
  %hit_record81.1861.2 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 0, i32 2
  %hit_record81.1.1.0 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 1, i32 0
  %hit_record81.1.1.1 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 1, i32 1
  %hit_record81.1.1.2 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 1, i32 2
  %hit_record81.1.2.0 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 2, i32 0
  %hit_record81.1.2.1 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 2, i32 1
  %hit_record81.1.2.2 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 2, i32 2
  %hit_record81.1.4837.0 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 4, i32 0, i32 0
  %hit_record81.1.4837.1 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 4, i32 0, i32 1
  %hit_record81.1.4837.2 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 4, i32 0, i32 2
  %ray870.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray870.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray870.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.1.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.1.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.1.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %144 = getelementptr inbounds [10000 x %struct.Photon]* %nearest.i, i64 0, i64 0
  %145 = getelementptr inbounds %struct.Color* %3, i64 0, i32 0
  %146 = getelementptr inbounds %struct.Color* %3, i64 0, i32 1
  %147 = getelementptr inbounds %struct.Color* %3, i64 0, i32 2
  %148 = getelementptr inbounds %struct.Color* %2, i64 0, i32 0
  %149 = getelementptr inbounds %struct.Color* %2, i64 0, i32 1
  %150 = getelementptr inbounds %struct.Color* %2, i64 0, i32 2
  %151 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 0
  %152 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 1
  %153 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 2
  %154 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %155 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %156 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %157 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 0
  %158 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 1
  %159 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 2
  br label %bb101

invcont83:                                        ; preds = %bb101
  %160 = sdiv i32 %storemerge2, %5
  %161 = srem i32 %storemerge2, %5
  %162 = sitofp i32 %161 to float
  %163 = fadd float %162, %115
  %164 = fadd float %163, 5.000000e-01
  %165 = fmul float %164, 2.000000e+00
  %166 = fdiv float %165, %114
  %167 = sitofp i32 %160 to float
  %168 = fadd float %167, %117
  %169 = fadd float %168, 5.000000e-01
  %170 = fmul float %169, 2.000000e+00
  %171 = fdiv float %170, %116
  store float %23, float* %121, align 8
  store float %24, float* %122, align 4
  store float %25, float* %123, align 8
  %172 = fmul float %31, %171
  %173 = fmul float %32, %171
  %174 = fmul float %33, %171
  %tmp2411 = bitcast float %172 to i32
  %tmp2412 = zext i32 %tmp2411 to i64
  %tmp2405 = bitcast float %173 to i32
  %tmp2406 = zext i32 %tmp2405 to i64
  %tmp2407 = shl nuw i64 %tmp2406, 32
  %ins2409 = or i64 %tmp2412, %tmp2407
  %175 = fmul float %27, %166
  %176 = fmul float %28, %166
  %177 = fmul float %29, %166
  store float %175, float* %124, align 8
  store float %176, float* %125, align 4
  store float %177, float* %126, align 8
  %tmp2397 = bitcast i64 %ins2409 to double
  %178 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %0, double %tmp2397, float %174) nounwind
  %mrv_gr14.i152 = extractvalue %0 %178, 0
  %mrv_gr16.i = extractvalue %0 %178, 1
  %179 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %ln.i, double %mrv_gr14.i152, float %mrv_gr16.i) nounwind
  %mrv_gr24.i154 = extractvalue %0 %179, 0
  %tmp2301 = bitcast double %mrv_gr24.i154 to i64
  %mrv_gr26.i156 = extractvalue %0 %179, 1
  %tmp2288 = trunc i64 %tmp2301 to i32
  %tmp2289 = bitcast i32 %tmp2288 to float
  store float %tmp2289, float* %118, align 8
  %tmp2291 = lshr i64 %tmp2301, 32
  %tmp2292 = trunc i64 %tmp2291 to i32
  %tmp2293 = bitcast i32 %tmp2292 to float
  store float %tmp2293, float* %119, align 4
  store float %mrv_gr26.i156, float* %120, align 8
  %180 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %V.i) nounwind
  %mrv_gr30.i = extractvalue %0 %180, 0
  %tmp2279 = bitcast double %mrv_gr30.i to i64
  %mrv_gr32.i = extractvalue %0 %180, 1
  %tmp2269 = lshr i64 %tmp2279, 32
  %tmp2456 = trunc i64 %tmp2279 to i32
  %tmp2457 = bitcast i32 %tmp2456 to float
  %tmp2453 = trunc i64 %tmp2269 to i32
  %tmp2454 = bitcast i32 %tmp2453 to float
  store float %15, float* %34, align 8
  store float %16, float* %127, align 4
  store float %17, float* %128, align 8
  store float %tmp2457, float* %35, align 4
  store float %tmp2454, float* %129, align 4
  store float %mrv_gr32.i, float* %130, align 4
  store float 0.000000e+00, float* %131, align 4
  store float 0.000000e+00, float* %132, align 4
  store float 0.000000e+00, float* %133, align 4
  store float 0.000000e+00, float* %134, align 4
  store float 0.000000e+00, float* %135, align 4
  store float 0.000000e+00, float* %136, align 4
  store float 0.000000e+00, float* %137, align 4
  store float 0.000000e+00, float* %138, align 4
  store float 0.000000e+00, float* %139, align 4
  store float 0.000000e+00, float* %140, align 4
  store float 0.000000e+00, float* %141, align 4
  store float 0.000000e+00, float* %142, align 4
  store float 1.000000e+10, float* %143, align 8
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record81, %struct.Box* %ray)
  %tmp831 = load float* %hit_record81.0, align 8
  %tmp862 = load float* %hit_record81.1861.0, align 4
  %tmp863 = load float* %hit_record81.1861.1, align 4
  %tmp864 = load float* %hit_record81.1861.2, align 4
  %tmp854 = load float* %hit_record81.1.1.0, align 4
  %tmp855 = load float* %hit_record81.1.1.1, align 4
  %tmp856 = load float* %hit_record81.1.1.2, align 4
  %tmp848 = load float* %hit_record81.1.2.0, align 4
  %tmp849 = load float* %hit_record81.1.2.1, align 4
  %tmp850 = load float* %hit_record81.1.2.2, align 4
  %tmp838 = load float* %hit_record81.1.4837.0, align 4
  %tmp839 = load float* %hit_record81.1.4837.1, align 4
  %tmp840 = load float* %hit_record81.1.4837.2, align 4
  %tmp871 = load float* %ray870.0, align 8
  %tmp872 = load float* %ray870.1, align 4
  %tmp873 = load float* %ray870.2, align 8
  %tmp867 = load float* %ray.1.0, align 4
  %tmp868 = load float* %ray.1.1, align 4
  %tmp869 = load float* %ray.1.2, align 4
  %181 = fcmp olt float %tmp831, 1.000000e+10
  br i1 %181, label %bb2.i, label %bb4.i

bb1.i27:                                          ; preds = %bb2.i
  %182 = getelementptr inbounds %struct.Photon* %.0181, i64 0, i32 1, i32 1
  %183 = bitcast %struct.Photon* %.0181 to i8*
  call void @llvm.memset.p0i8.i64(i8* %183, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %182, align 4
  %184 = getelementptr inbounds %struct.Photon* %.0181, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %184, align 4
  %185 = getelementptr inbounds %struct.Photon* %.0181, i64 0, i32 2, i64 0
  store float 1.000000e+00, float* %185, align 4
  %186 = getelementptr inbounds %struct.Photon* %.0181, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %186, align 4
  %187 = getelementptr inbounds %struct.Photon* %.0181, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %187, align 4
  %188 = getelementptr inbounds %struct.Photon* %.0181, i64 1
  %189 = add nsw i64 %storemerge.i, -1
  br label %bb2.i

bb2.i:                                            ; preds = %bb1.i27, %invcont83
  %.0181 = phi %struct.Photon* [ %188, %bb1.i27 ], [ %144, %invcont83 ]
  %storemerge.i = phi i64 [ %189, %bb1.i27 ], [ 9999, %invcont83 ]
  %190 = icmp eq i64 %storemerge.i, -1
  br i1 %190, label %bb3.i32, label %bb1.i27

bb3.i32:                                          ; preds = %bb2.i
  %tmp1856 = bitcast float %tmp867 to i32
  %tmp1857 = zext i32 %tmp1856 to i96
  %tmp1850 = bitcast float %tmp868 to i32
  %tmp1851 = zext i32 %tmp1850 to i96
  %tmp1852 = shl nuw nsw i96 %tmp1851, 32
  %ins1854 = or i96 %tmp1857, %tmp1852
  %tmp1844 = bitcast float %tmp869 to i32
  %tmp1069 = zext i96 %ins1854 to i128
  %mask1070 = and i128 %memtmp.i25.1, -79228162514264337593543950336
  %tmp1063 = zext i32 %tmp1844 to i128
  %tmp1064 = shl nuw nsw i128 %tmp1063, 64
  %mask1065 = or i128 %mask1070, %tmp1069
  %ins1066 = or i128 %mask1065, %tmp1064
  %tmp1051 = lshr i128 %ins1066, 64
  %tmp1052 = trunc i128 %tmp1051 to i32
  %tmp1053 = bitcast i32 %tmp1052 to float
  %191 = fmul float %tmp867, %tmp831
  %192 = fmul float %tmp868, %tmp831
  %193 = fmul float %tmp1053, %tmp831
  %tmp1902 = bitcast float %191 to i32
  %tmp1903 = zext i32 %tmp1902 to i96
  %tmp1896 = bitcast float %192 to i32
  %tmp1897 = zext i32 %tmp1896 to i96
  %tmp1898 = shl nuw nsw i96 %tmp1897, 32
  %ins1900 = or i96 %tmp1903, %tmp1898
  %tmp1890 = bitcast float %193 to i32
  %tmp1047 = zext i96 %ins1900 to i128
  %mask1048 = and i128 %memtmp7.i.1, -79228162514264337593543950336
  %tmp1041 = zext i32 %tmp1890 to i128
  %tmp1042 = shl nuw nsw i128 %tmp1041, 64
  %mask1043 = or i128 %mask1048, %tmp1047
  %ins1044 = or i128 %mask1043, %tmp1042
  %tmp1140 = bitcast float %191 to i32
  %tmp1141 = zext i32 %tmp1140 to i64
  %tmp1134 = bitcast float %192 to i32
  %tmp1135 = zext i32 %tmp1134 to i64
  %tmp1136 = shl nuw i64 %tmp1135, 32
  %ins1138 = or i64 %tmp1141, %tmp1136
  %ins1044.tr = trunc i128 %ins1044 to i96
  %tmp1879 = bitcast float %tmp871 to i32
  %tmp1880 = zext i32 %tmp1879 to i96
  %tmp1873 = bitcast float %tmp872 to i32
  %tmp1874 = zext i32 %tmp1873 to i96
  %tmp1875 = shl nuw nsw i96 %tmp1874, 32
  %ins1877 = or i96 %tmp1880, %tmp1875
  %tmp1867 = bitcast float %tmp873 to i32
  %tmp1025 = zext i96 %ins1877 to i128
  %mask1026 = and i128 %memtmp13.i.1, -79228162514264337593543950336
  %tmp1019 = zext i32 %tmp1867 to i128
  %tmp1020 = shl nuw nsw i128 %tmp1019, 64
  %mask1021 = or i128 %mask1026, %tmp1025
  %ins1022 = or i128 %mask1021, %tmp1020
  store float %tmp871, float* %145, align 8
  store float %tmp872, float* %146, align 4
  %tmp1007 = lshr i128 %ins1022, 64
  %tmp1008 = trunc i128 %tmp1007 to i32
  %tmp1009 = bitcast i32 %tmp1008 to float
  store float %tmp1009, float* %147, align 8
  %tmp1126 = bitcast i64 %ins1138 to double
  %tmp1121 = lshr i96 %ins1044.tr, 64
  %tmp1122 = trunc i96 %tmp1121 to i32
  %tmp1123 = bitcast i32 %tmp1122 to float
  %194 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %3, double %tmp1126, float %tmp1123) nounwind
  %mrv_gr23.i = extractvalue %0 %194, 0
  %tmp1002 = bitcast double %mrv_gr23.i to i64
  %mrv_gr25.i = extractvalue %0 %194, 1
  %tmp992 = lshr i64 %tmp1002, 32
  %tmp1764 = bitcast float %tmp854 to i32
  %tmp1765 = zext i32 %tmp1764 to i96
  %tmp1758 = bitcast float %tmp855 to i32
  %tmp1759 = zext i32 %tmp1758 to i96
  %tmp1760 = shl nuw nsw i96 %tmp1759, 32
  %ins1762 = or i96 %tmp1765, %tmp1760
  %tmp1752 = bitcast float %tmp856 to i32
  %tmp1651 = zext i96 %ins1762 to i128
  %mask1652 = and i128 %memtmp.i40.i.1, -79228162514264337593543950336
  %tmp1645 = zext i32 %tmp1752 to i128
  %tmp1646 = shl nuw nsw i128 %tmp1645, 64
  %mask1647 = or i128 %mask1652, %tmp1651
  %ins1648 = or i128 %mask1647, %tmp1646
  %tmp1694 = bitcast float %tmp854 to i32
  %tmp1695 = zext i32 %tmp1694 to i64
  %tmp1688 = bitcast float %tmp855 to i32
  %tmp1689 = zext i32 %tmp1688 to i64
  %tmp1690 = shl nuw i64 %tmp1689, 32
  %ins1692 = or i64 %tmp1695, %tmp1690
  %ins1648.tr = trunc i128 %ins1648 to i96
  %tmp1787 = bitcast float %tmp862 to i32
  %tmp1788 = zext i32 %tmp1787 to i96
  %tmp1781 = bitcast float %tmp863 to i32
  %tmp1782 = zext i32 %tmp1781 to i96
  %tmp1783 = shl nuw nsw i96 %tmp1782, 32
  %ins1785 = or i96 %tmp1788, %tmp1783
  %tmp1775 = bitcast float %tmp864 to i32
  %tmp1629 = zext i96 %ins1785 to i128
  %mask1630 = and i128 %memtmp4.i.i.1, -79228162514264337593543950336
  %tmp1623 = zext i32 %tmp1775 to i128
  %tmp1624 = shl nuw nsw i128 %tmp1623, 64
  %mask1625 = or i128 %mask1630, %tmp1629
  %ins1626 = or i128 %mask1625, %tmp1624
  store float %tmp862, float* %148, align 8
  store float %tmp863, float* %149, align 4
  %tmp1611 = lshr i128 %ins1626, 64
  %tmp1612 = trunc i128 %tmp1611 to i32
  %tmp1613 = bitcast i32 %tmp1612 to float
  store float %tmp1613, float* %150, align 8
  %tmp1680 = bitcast i64 %ins1692 to double
  %tmp1675 = lshr i96 %ins1648.tr, 64
  %tmp1676 = trunc i96 %tmp1675 to i32
  %tmp1677 = bitcast i32 %tmp1676 to float
  %195 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %2, double %tmp1680, float %tmp1677) nounwind
  %mrv_gr14.i.i = extractvalue %0 %195, 0
  %tmp1606 = bitcast double %mrv_gr14.i.i to i64
  %mrv_gr16.i.i = extractvalue %0 %195, 1
  %tmp1593 = trunc i64 %tmp1606 to i32
  %tmp1594 = bitcast i32 %tmp1593 to float
  store float %tmp1594, float* %151, align 8
  %tmp1596 = lshr i64 %tmp1606, 32
  %tmp1597 = trunc i64 %tmp1596 to i32
  %tmp1598 = bitcast i32 %tmp1597 to float
  store float %tmp1598, float* %152, align 4
  store float %mrv_gr16.i.i, float* %153, align 8
  %tmp1810 = bitcast float %tmp848 to i32
  %tmp1811 = zext i32 %tmp1810 to i96
  %tmp1804 = bitcast float %tmp849 to i32
  %tmp1805 = zext i32 %tmp1804 to i96
  %tmp1806 = shl nuw nsw i96 %tmp1805, 32
  %ins1808 = or i96 %tmp1811, %tmp1806
  %tmp1798 = bitcast float %tmp850 to i32
  %tmp1585 = zext i96 %ins1808 to i128
  %mask1586 = and i128 %memtmp18.i.i.1, -79228162514264337593543950336
  %tmp1579 = zext i32 %tmp1798 to i128
  %tmp1580 = shl nuw nsw i128 %tmp1579, 64
  %mask1581 = or i128 %mask1586, %tmp1585
  %ins1582 = or i128 %mask1581, %tmp1580
  %tmp1718 = bitcast float %tmp848 to i32
  %tmp1719 = zext i32 %tmp1718 to i64
  %tmp1712 = bitcast float %tmp849 to i32
  %tmp1713 = zext i32 %tmp1712 to i64
  %tmp1714 = shl nuw i64 %tmp1713, 32
  %ins1716 = or i64 %tmp1719, %tmp1714
  %ins1582.tr = trunc i128 %ins1582 to i96
  %ins1831 = or i96 %tmp1765, %tmp1760
  %tmp1563 = zext i96 %ins1831 to i128
  %mask1564 = and i128 %memtmp24.i.i.1, -79228162514264337593543950336
  %mask1559 = or i128 %mask1564, %tmp1563
  %ins1560 = or i128 %mask1559, %tmp1646
  store float %tmp854, float* %154, align 8
  store float %tmp855, float* %155, align 4
  %tmp1545 = lshr i128 %ins1560, 64
  %tmp1546 = trunc i128 %tmp1545 to i32
  %tmp1547 = bitcast i32 %tmp1546 to float
  store float %tmp1547, float* %156, align 8
  %tmp1704 = bitcast i64 %ins1716 to double
  %tmp1699 = lshr i96 %ins1582.tr, 64
  %tmp1700 = trunc i96 %tmp1699 to i32
  %tmp1701 = bitcast i32 %tmp1700 to float
  %196 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %1, double %tmp1704, float %tmp1701) nounwind
  %mrv_gr36.i.i = extractvalue %0 %196, 0
  %mrv_gr38.i.i = extractvalue %0 %196, 1
  %197 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %edge1.i.i, double %mrv_gr36.i.i, float %mrv_gr38.i.i) nounwind
  %mrv_gr46.i.i = extractvalue %0 %197, 0
  %tmp1518 = bitcast double %mrv_gr46.i.i to i64
  %mrv_gr48.i.i = extractvalue %0 %197, 1
  %tmp1505 = trunc i64 %tmp1518 to i32
  %tmp1506 = bitcast i32 %tmp1505 to float
  store float %tmp1506, float* %157, align 8
  %tmp1508 = lshr i64 %tmp1518, 32
  %tmp1509 = trunc i64 %tmp1508 to i32
  %tmp1510 = bitcast i32 %tmp1509 to float
  store float %tmp1510, float* %158, align 4
  store float %mrv_gr48.i.i, float* %159, align 8
  %198 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %n.i.i) nounwind
  %mrv_gr52.i.i = extractvalue %0 %198, 0
  %tmp1496 = bitcast double %mrv_gr52.i.i to i64
  %mrv_gr54.i.i = extractvalue %0 %198, 1
  %tmp1490 = bitcast float %mrv_gr54.i.i to i32
  %tmp1486 = lshr i64 %tmp1496, 32
  %tmp1742 = zext i64 %tmp1496 to i96
  %tmp1736 = zext i64 %tmp1486 to i96
  %tmp1737 = shl nuw nsw i96 %tmp1736, 32
  %tmp1742.masked = and i96 %tmp1742, 4294967295
  %ins1739 = or i96 %tmp1742.masked, %tmp1737
  %tmp981 = zext i96 %ins1739 to i128
  %mask982 = and i128 %memtmp27.i.1, -79228162514264337593543950336
  %tmp975 = zext i32 %tmp1490 to i128
  %tmp976 = shl nuw nsw i128 %tmp975, 64
  %mask977 = or i128 %mask982, %tmp981
  %ins978 = or i128 %mask977, %tmp976
  %tmp967 = trunc i64 %tmp1496 to i32
  %tmp968 = bitcast i32 %tmp967 to float
  %tmp971 = trunc i64 %tmp1486 to i32
  %tmp972 = bitcast i32 %tmp971 to float
  %tmp963 = lshr i128 %ins978, 64
  %tmp964 = trunc i128 %tmp963 to i32
  %tmp965 = bitcast i32 %tmp964 to float
  %tmp1354 = bitcast float %tmp838 to i32
  %tmp1355 = zext i32 %tmp1354 to i96
  %tmp1348 = bitcast float %tmp839 to i32
  %tmp1349 = zext i32 %tmp1348 to i96
  %tmp1350 = shl nuw nsw i96 %tmp1349, 32
  %tmp1342 = bitcast float %tmp840 to i32
  %tmp1303 = zext i32 %tmp1342 to i128
  %tmp1304 = shl nuw nsw i128 %tmp1303, 64
  br label %bb80.i

bb34.i:                                           ; preds = %bb80.i
  %199 = sext i32 %storemerge1.i to i64
  %200 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %199, i32 0, i32 0
  %201 = load float* %200, align 4
  %202 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %199, i32 0, i32 1
  %203 = load float* %202, align 4
  %204 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %199, i32 0, i32 2
  %205 = load float* %204, align 4
  %tmp1466 = bitcast float %201 to i32
  %tmp1467 = zext i32 %tmp1466 to i96
  %tmp1460 = bitcast float %203 to i32
  %tmp1461 = zext i32 %tmp1460 to i96
  %tmp1462 = shl nuw nsw i96 %tmp1461, 32
  %ins1464 = or i96 %tmp1467, %tmp1462
  %tmp1454 = bitcast float %205 to i32
  %tmp959 = zext i96 %ins1464 to i128
  %mask960 = and i128 %memtmp35.i.0, -79228162514264337593543950336
  %tmp953 = zext i32 %tmp1454 to i128
  %tmp954 = shl nuw nsw i128 %tmp953, 64
  %mask955 = or i128 %mask960, %tmp959
  %ins956 = or i128 %mask955, %tmp954
  %ins956.tr = trunc i128 %ins956 to i96
  %tmp1434 = trunc i64 %tmp1002 to i32
  %tmp1435 = bitcast i32 %tmp1434 to float
  %206 = fsub float %tmp1435, %201
  %207 = fmul float %206, %206
  %208 = fcmp ogt float %207, 0x3FE6666660000000
  br i1 %208, label %bb79.i, label %bb1.i.i

bb1.i.i:                                          ; preds = %bb34.i
  %tmp1431 = trunc i64 %tmp992 to i32
  %tmp1432 = bitcast i32 %tmp1431 to float
  %209 = fsub float %tmp1432, %203
  %210 = fmul float %209, %209
  %211 = fadd float %210, %207
  %212 = fcmp ogt float %211, 0x3FE6666660000000
  br i1 %212, label %bb79.i, label %bb3.i.i

bb3.i.i:                                          ; preds = %bb1.i.i
  %tmp1404 = lshr i96 %ins956.tr, 64
  %tmp1405 = trunc i96 %tmp1404 to i32
  %tmp1406 = bitcast i32 %tmp1405 to float
  %213 = fsub float %mrv_gr25.i, %tmp1406
  %214 = fmul float %213, %213
  %215 = fadd float %214, %211
  %216 = fcmp ogt float %215, 0x3FE6666660000000
  br i1 %216, label %bb79.i, label %bb50.i

bb50.i:                                           ; preds = %bb3.i.i
  %ins1397 = or i96 %tmp1467, %tmp1462
  %tmp937 = zext i96 %ins1397 to i128
  %mask938 = and i128 %memtmp53.i.1, -79228162514264337593543950336
  %mask933 = or i128 %mask938, %tmp937
  %ins934 = or i128 %mask933, %tmp954
  %ins934.tr = trunc i128 %ins934 to i96
  %217 = fmul float %201, %tmp968
  %218 = fadd float %217, 0.000000e+00
  %219 = fmul float %203, %tmp972
  %220 = fadd float %219, %218
  %tmp1359 = lshr i96 %ins934.tr, 64
  %tmp1360 = trunc i96 %tmp1359 to i32
  %tmp1361 = bitcast i32 %tmp1360 to float
  %221 = fmul float %tmp1361, %tmp965
  %222 = fadd float %221, %220
  %223 = fsub float -0.000000e+00, %222
  %224 = fcmp olt float %223, 0.000000e+00
  br i1 %224, label %llvm.trax.max.exit, label %bb1.i166

bb1.i166:                                         ; preds = %bb50.i
  %phitmp2608 = fpext float %223 to double
  br label %llvm.trax.max.exit

llvm.trax.max.exit:                               ; preds = %bb1.i166, %bb50.i
  %storemerge.i167 = phi double [ %phitmp2608, %bb1.i166 ], [ 0.000000e+00, %bb50.i ]
  %225 = call float @llvm.trax.invsqrt(float %215) nounwind
  %226 = fdiv float 1.000000e+00, %225
  %227 = fpext float %226 to double
  %228 = fsub double 1.000000e+00, %227
  %229 = fdiv double %228, 5.000000e+01
  %230 = fmul double %storemerge.i167, %229
  %231 = fptrunc double %230 to float
  %232 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %199, i32 2, i64 2
  %233 = load float* %232, align 4
  %234 = fadd float %233, %231
  %235 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %199, i32 2, i64 1
  %236 = load float* %235, align 4
  %237 = fadd float %236, %231
  %238 = getelementptr inbounds [15000 x %struct.Photon]* %43, i64 0, i64 %199, i32 2, i64 0
  %239 = load float* %238, align 4
  %240 = fadd float %239, %231
  %ins1352 = or i96 %tmp1355, %tmp1350
  %tmp1309 = zext i96 %ins1352 to i128
  %mask1310 = and i128 %memtmp.i.i.1, -79228162514264337593543950336
  %mask1305 = or i128 %mask1310, %tmp1309
  %ins1306 = or i128 %mask1305, %tmp1304
  %tmp1331 = bitcast float %tmp838 to i32
  %tmp1332 = zext i32 %tmp1331 to i96
  %tmp1325 = bitcast float %tmp839 to i32
  %tmp1326 = zext i32 %tmp1325 to i96
  %tmp1327 = shl nuw nsw i96 %tmp1326, 32
  %ins1329 = or i96 %tmp1332, %tmp1327
  %tmp915 = zext i96 %ins1329 to i128
  %mask916 = and i128 %memtmp63.i.1, -79228162514264337593543950336
  %tmp910 = and i128 %ins1306, 79228162495817593519834398720
  %mask911 = or i128 %mask916, %tmp915
  %ins912 = or i128 %mask911, %tmp910
  %ins912.tr = trunc i128 %ins912 to i96
  %241 = fmul float %tmp838, %240
  %242 = fmul float %tmp839, %237
  %tmp1269 = lshr i96 %ins912.tr, 64
  %tmp1270 = trunc i96 %tmp1269 to i32
  %tmp1271 = bitcast i32 %tmp1270 to float
  %243 = fmul float %tmp1271, %234
  %tmp1264 = bitcast float %241 to i32
  %tmp1265 = zext i32 %tmp1264 to i96
  %tmp1258 = bitcast float %242 to i32
  %tmp1259 = zext i32 %tmp1258 to i96
  %tmp1260 = shl nuw nsw i96 %tmp1259, 32
  %ins1262 = or i96 %tmp1265, %tmp1260
  %tmp1252 = bitcast float %243 to i32
  %tmp893 = zext i96 %ins1262 to i128
  %mask894 = and i128 %memtmp73.i.1, -79228162514264337593543950336
  %tmp887 = zext i32 %tmp1252 to i128
  %tmp888 = shl nuw nsw i128 %tmp887, 64
  %mask889 = or i128 %mask894, %tmp893
  %ins890 = or i128 %mask889, %tmp888
  %tmp875 = lshr i128 %ins890, 64
  %tmp876 = trunc i128 %tmp875 to i32
  %tmp877 = bitcast i32 %tmp876 to float
  br label %bb79.i

bb79.i:                                           ; preds = %llvm.trax.max.exit, %bb3.i.i, %bb1.i.i, %bb34.i
  %temp.i.0.0 = phi float [ %241, %llvm.trax.max.exit ], [ %temp.i.0.1, %bb34.i ], [ %temp.i.0.1, %bb1.i.i ], [ %temp.i.0.1, %bb3.i.i ]
  %temp.i.1.0 = phi float [ %242, %llvm.trax.max.exit ], [ %temp.i.1.1, %bb34.i ], [ %temp.i.1.1, %bb1.i.i ], [ %temp.i.1.1, %bb3.i.i ]
  %temp.i.2.0 = phi float [ %tmp877, %llvm.trax.max.exit ], [ %temp.i.2.1, %bb34.i ], [ %temp.i.2.1, %bb1.i.i ], [ %temp.i.2.1, %bb3.i.i ]
  %memtmp73.i.0 = phi i128 [ %ins890, %llvm.trax.max.exit ], [ %memtmp73.i.1, %bb34.i ], [ %memtmp73.i.1, %bb1.i.i ], [ %memtmp73.i.1, %bb3.i.i ]
  %memtmp63.i.0 = phi i128 [ %ins912, %llvm.trax.max.exit ], [ %memtmp63.i.1, %bb34.i ], [ %memtmp63.i.1, %bb1.i.i ], [ %memtmp63.i.1, %bb3.i.i ]
  %memtmp53.i.0 = phi i128 [ %ins934, %llvm.trax.max.exit ], [ %memtmp53.i.1, %bb34.i ], [ %memtmp53.i.1, %bb1.i.i ], [ %memtmp53.i.1, %bb3.i.i ]
  %memtmp.i.i.0 = phi i128 [ %ins1306, %llvm.trax.max.exit ], [ %memtmp.i.i.1, %bb34.i ], [ %memtmp.i.i.1, %bb1.i.i ], [ %memtmp.i.i.1, %bb3.i.i ]
  %244 = add nsw i32 %storemerge1.i, 1
  br label %bb80.i

bb80.i:                                           ; preds = %bb79.i, %bb3.i32
  %temp.i.0.1 = phi float [ 0.000000e+00, %bb3.i32 ], [ %temp.i.0.0, %bb79.i ]
  %temp.i.1.1 = phi float [ 0.000000e+00, %bb3.i32 ], [ %temp.i.1.0, %bb79.i ]
  %temp.i.2.1 = phi float [ 0.000000e+00, %bb3.i32 ], [ %temp.i.2.0, %bb79.i ]
  %memtmp73.i.1 = phi i128 [ %memtmp73.i.3, %bb3.i32 ], [ %memtmp73.i.0, %bb79.i ]
  %memtmp63.i.1 = phi i128 [ %memtmp63.i.3, %bb3.i32 ], [ %memtmp63.i.0, %bb79.i ]
  %memtmp53.i.1 = phi i128 [ %memtmp53.i.3, %bb3.i32 ], [ %memtmp53.i.0, %bb79.i ]
  %memtmp35.i.0 = phi i128 [ %memtmp35.i.2, %bb3.i32 ], [ %ins956, %bb79.i ]
  %memtmp.i.i.1 = phi i128 [ %memtmp.i.i.3, %bb3.i32 ], [ %memtmp.i.i.0, %bb79.i ]
  %storemerge1.i = phi i32 [ 0, %bb3.i32 ], [ %244, %bb79.i ]
  %245 = icmp slt i32 %storemerge1.i, %count.1
  br i1 %245, label %bb34.i, label %invcont88

invcont88:                                        ; preds = %bb80.i
  %246 = fcmp olt float %temp.i.0.1, 0.000000e+00
  br i1 %246, label %bb5.i, label %bb1.i

bb1.i:                                            ; preds = %invcont88
  %247 = fcmp ogt float %temp.i.0.1, 1.000000e+00
  br i1 %247, label %bb5.i, label %bb4.i

bb4.i:                                            ; preds = %bb1.i, %invcont83
  %.01211.026412705 = phi float [ %temp.i.0.1, %bb1.i ], [ 0x3FE1F3B640000000, %invcont83 ]
  %.11212.026432704 = phi float [ %temp.i.1.1, %bb1.i ], [ 0x3FE753F7C0000000, %invcont83 ]
  %.21213.026452703 = phi float [ %temp.i.2.1, %bb1.i ], [ 0x3FEF9DB220000000, %invcont83 ]
  %memtmp73.i.226472702 = phi i128 [ %memtmp73.i.1, %bb1.i ], [ %memtmp73.i.3, %invcont83 ]
  %memtmp63.i.226492701 = phi i128 [ %memtmp63.i.1, %bb1.i ], [ %memtmp63.i.3, %invcont83 ]
  %memtmp53.i.226512700 = phi i128 [ %memtmp53.i.1, %bb1.i ], [ %memtmp53.i.3, %invcont83 ]
  %memtmp35.i.126532699 = phi i128 [ %memtmp35.i.0, %bb1.i ], [ %memtmp35.i.2, %invcont83 ]
  %memtmp27.i.026552698 = phi i128 [ %ins978, %bb1.i ], [ %memtmp27.i.1, %invcont83 ]
  %memtmp13.i.026592696 = phi i128 [ %ins1022, %bb1.i ], [ %memtmp13.i.1, %invcont83 ]
  %memtmp7.i.026612695 = phi i128 [ %ins1044, %bb1.i ], [ %memtmp7.i.1, %invcont83 ]
  %memtmp.i25.026632694 = phi i128 [ %ins1066, %bb1.i ], [ %memtmp.i25.1, %invcont83 ]
  %memtmp.i.i.226652693 = phi i128 [ %memtmp.i.i.1, %bb1.i ], [ %memtmp.i.i.3, %invcont83 ]
  %memtmp24.i.i.026732689 = phi i128 [ %ins1560, %bb1.i ], [ %memtmp24.i.i.1, %invcont83 ]
  %memtmp18.i.i.026752688 = phi i128 [ %ins1582, %bb1.i ], [ %memtmp18.i.i.1, %invcont83 ]
  %memtmp4.i.i.026792686 = phi i128 [ %ins1626, %bb1.i ], [ %memtmp4.i.i.1, %invcont83 ]
  %memtmp.i40.i.026812685 = phi i128 [ %ins1648, %bb1.i ], [ %memtmp.i40.i.1, %invcont83 ]
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb1.i, %invcont88
  %memtmp.i40.i.02680 = phi i128 [ %memtmp.i40.i.026812685, %bb4.i ], [ %ins1648, %invcont88 ], [ %ins1648, %bb1.i ]
  %memtmp4.i.i.02678 = phi i128 [ %memtmp4.i.i.026792686, %bb4.i ], [ %ins1626, %invcont88 ], [ %ins1626, %bb1.i ]
  %memtmp18.i.i.02674 = phi i128 [ %memtmp18.i.i.026752688, %bb4.i ], [ %ins1582, %invcont88 ], [ %ins1582, %bb1.i ]
  %memtmp24.i.i.02672 = phi i128 [ %memtmp24.i.i.026732689, %bb4.i ], [ %ins1560, %invcont88 ], [ %ins1560, %bb1.i ]
  %memtmp.i.i.22664 = phi i128 [ %memtmp.i.i.226652693, %bb4.i ], [ %memtmp.i.i.1, %invcont88 ], [ %memtmp.i.i.1, %bb1.i ]
  %memtmp.i25.02662 = phi i128 [ %memtmp.i25.026632694, %bb4.i ], [ %ins1066, %invcont88 ], [ %ins1066, %bb1.i ]
  %memtmp7.i.02660 = phi i128 [ %memtmp7.i.026612695, %bb4.i ], [ %ins1044, %invcont88 ], [ %ins1044, %bb1.i ]
  %memtmp13.i.02658 = phi i128 [ %memtmp13.i.026592696, %bb4.i ], [ %ins1022, %invcont88 ], [ %ins1022, %bb1.i ]
  %memtmp27.i.02654 = phi i128 [ %memtmp27.i.026552698, %bb4.i ], [ %ins978, %invcont88 ], [ %ins978, %bb1.i ]
  %memtmp35.i.12652 = phi i128 [ %memtmp35.i.126532699, %bb4.i ], [ %memtmp35.i.0, %invcont88 ], [ %memtmp35.i.0, %bb1.i ]
  %memtmp53.i.22650 = phi i128 [ %memtmp53.i.226512700, %bb4.i ], [ %memtmp53.i.1, %invcont88 ], [ %memtmp53.i.1, %bb1.i ]
  %memtmp63.i.22648 = phi i128 [ %memtmp63.i.226492701, %bb4.i ], [ %memtmp63.i.1, %invcont88 ], [ %memtmp63.i.1, %bb1.i ]
  %memtmp73.i.22646 = phi i128 [ %memtmp73.i.226472702, %bb4.i ], [ %memtmp73.i.1, %invcont88 ], [ %memtmp73.i.1, %bb1.i ]
  %.21213.02644 = phi float [ %.21213.026452703, %bb4.i ], [ %temp.i.2.1, %invcont88 ], [ %temp.i.2.1, %bb1.i ]
  %.11212.02642 = phi float [ %.11212.026432704, %bb4.i ], [ %temp.i.1.1, %invcont88 ], [ %temp.i.1.1, %bb1.i ]
  %r.i.0 = phi float [ %.01211.026412705, %bb4.i ], [ 0.000000e+00, %invcont88 ], [ 1.000000e+00, %bb1.i ]
  %248 = fcmp olt float %.21213.02644, 0.000000e+00
  br i1 %248, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i
  %249 = fcmp ogt float %.21213.02644, 1.000000e+00
  br i1 %249, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i
  %b.i.0 = phi float [ %.21213.02644, %bb11.i ], [ 0.000000e+00, %bb5.i ], [ 1.000000e+00, %bb8.i ]
  %250 = fcmp olt float %.11212.02642, 0.000000e+00
  br i1 %250, label %invcont100, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %251 = fcmp ogt float %.11212.02642, 1.000000e+00
  br i1 %251, label %invcont100, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %invcont100

invcont100:                                       ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.i.0 = phi float [ %.11212.02642, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %252 = mul nsw i32 %5, %160
  %253 = add nsw i32 %252, %161
  %254 = mul nsw i32 %253, 3
  %255 = add nsw i32 %7, %254
  call void @llvm.trax.storef(float %r.i.0, i32 %255, i32 0) nounwind
  call void @llvm.trax.storef(float %g.i.0, i32 %255, i32 1) nounwind
  call void @llvm.trax.storef(float %b.i.0, i32 %255, i32 2) nounwind
  %256 = call i32 @llvm.trax.atominc(i32 0)
  br label %bb101

bb101:                                            ; preds = %invcont100, %invcont74
  %memtmp73.i.3 = phi i128 [ undef, %invcont74 ], [ %memtmp73.i.22646, %invcont100 ]
  %memtmp63.i.3 = phi i128 [ undef, %invcont74 ], [ %memtmp63.i.22648, %invcont100 ]
  %memtmp53.i.3 = phi i128 [ undef, %invcont74 ], [ %memtmp53.i.22650, %invcont100 ]
  %memtmp35.i.2 = phi i128 [ undef, %invcont74 ], [ %memtmp35.i.12652, %invcont100 ]
  %memtmp27.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp27.i.02654, %invcont100 ]
  %memtmp13.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp13.i.02658, %invcont100 ]
  %memtmp7.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp7.i.02660, %invcont100 ]
  %memtmp.i25.1 = phi i128 [ undef, %invcont74 ], [ %memtmp.i25.02662, %invcont100 ]
  %memtmp.i.i.3 = phi i128 [ undef, %invcont74 ], [ %memtmp.i.i.22664, %invcont100 ]
  %memtmp24.i.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp24.i.i.02672, %invcont100 ]
  %memtmp18.i.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp18.i.i.02674, %invcont100 ]
  %memtmp4.i.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp4.i.i.02678, %invcont100 ]
  %memtmp.i40.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp.i40.i.02680, %invcont100 ]
  %storemerge2 = phi i32 [ %112, %invcont74 ], [ %256, %invcont100 ]
  %257 = icmp sgt i32 %113, %storemerge2
  br i1 %257, label %invcont83, label %return

return:                                           ; preds = %bb101
  ret i32 0

Unwind:                                           ; preds = %.noexc90, %.noexc, %bb.i84
  %eh_ptr = call i8* @llvm.eh.exception()
  %eh_select108 = call i32 (i8*, i8*, ...)* @llvm.eh.selector(i8* %eh_ptr, i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*), i32 0)
  call void @llvm.stackrestore(i8* %4)
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
