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

declare float @llvm.trax.rand() nounwind

define i32 @main() ssp {
invcont11:
  %0 = alloca %struct.Color, align 8
  %V.i = alloca %struct.Color, align 8
  %ln.i = alloca %struct.Color, align 8
  %direction.i = alloca %struct.Color, align 8
  %1 = alloca %struct.Color, align 8
  %2 = alloca %struct.Color, align 8
  %edge1.i.i = alloca %struct.Color, align 8
  %n.i.i = alloca %struct.Color, align 8
  %ray_to_light_source75.i = alloca %struct.Box, align 8
  %energy.i.i = alloca %struct.Color, align 8
  %3 = alloca %struct.Color, align 8
  %4 = alloca %struct.Color, align 8
  %5 = alloca %struct.Color, align 8
  %light.i = alloca %struct.Color, align 8
  %L.i = alloca %struct.Color, align 8
  %hit_record8111 = alloca %struct.HitRecord, align 8
  %ray = alloca %struct.Box, align 8
  %bvh = alloca %struct.BVH, align 8
  %ray27 = alloca %struct.Box, align 8
  %hit_record = alloca %struct.HitRecord, align 8
  %hit_record81 = alloca %struct.HitRecord, align 8
  %6 = call i8* @llvm.stacksave()
  %7 = call i32 @llvm.trax.loadi(i32 0, i32 1)
  %8 = call i32 @llvm.trax.loadi(i32 0, i32 4)
  %9 = call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %10 = call float @llvm.trax.loadf(i32 0, i32 2)
  %11 = call float @llvm.trax.loadf(i32 0, i32 5)
  %12 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %13 = call float @llvm.trax.loadf(i32 %12, i32 0) nounwind
  %14 = call float @llvm.trax.loadf(i32 %12, i32 1) nounwind
  %15 = call float @llvm.trax.loadf(i32 %12, i32 2) nounwind
  %tmp774 = bitcast float %14 to i32
  %tmp775 = zext i32 %tmp774 to i96
  %16 = call i32 @llvm.trax.loadi(i32 0, i32 10)
  %17 = call float @llvm.trax.loadf(i32 %16, i32 0) nounwind
  %18 = call float @llvm.trax.loadf(i32 %16, i32 1) nounwind
  %19 = call float @llvm.trax.loadf(i32 %16, i32 2) nounwind
  %20 = add nsw i32 %16, 9
  %21 = call float @llvm.trax.loadf(i32 %20, i32 0) nounwind
  %22 = call float @llvm.trax.loadf(i32 %20, i32 1) nounwind
  %23 = call float @llvm.trax.loadf(i32 %20, i32 2) nounwind
  %24 = add nsw i32 %16, 12
  %25 = call float @llvm.trax.loadf(i32 %24, i32 0) nounwind
  %26 = call float @llvm.trax.loadf(i32 %24, i32 1) nounwind
  %27 = call float @llvm.trax.loadf(i32 %24, i32 2) nounwind
  %28 = add nsw i32 %16, 15
  %29 = call float @llvm.trax.loadf(i32 %28, i32 0) nounwind
  %30 = call float @llvm.trax.loadf(i32 %28, i32 1) nounwind
  %31 = call float @llvm.trax.loadf(i32 %28, i32 2) nounwind
  %32 = add nsw i32 %16, 18
  %33 = call float @llvm.trax.loadf(i32 %32, i32 0) nounwind
  %34 = call float @llvm.trax.loadf(i32 %32, i32 1) nounwind
  %35 = call float @llvm.trax.loadf(i32 %32, i32 2) nounwind
  %36 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %37 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %38 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %39 = bitcast %struct.Box* %ray to i8*
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %38, align 4
  %40 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %40, align 4
  %41 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %42 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %43 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %44 = getelementptr inbounds %struct.BVH* %bvh, i64 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = alloca [20000 x %struct.Photon], align 1
  %.sub = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 0
  br label %bb12

bb:                                               ; preds = %bb12
  %46 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i32 1
  %47 = bitcast %struct.Photon* %.0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %46, align 4
  %48 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %48, align 4
  %49 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2, i64 0
  store float 1.000000e+00, float* %49, align 4
  %50 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %50, align 4
  %51 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %51, align 4
  %52 = getelementptr inbounds %struct.Photon* %.0, i64 1
  %53 = add nsw i64 %storemerge, -1
  br label %bb12

bb12:                                             ; preds = %bb, %invcont11
  %.0 = phi %struct.Photon* [ %.sub, %invcont11 ], [ %52, %bb ]
  %storemerge = phi i64 [ 19999, %invcont11 ], [ %53, %bb ]
  %54 = icmp eq i64 %storemerge, -1
  br i1 %54, label %bb13, label %bb

bb13:                                             ; preds = %bb12
  %55 = alloca [5000 x %struct.Photon], align 1
  %.sub3512 = getelementptr inbounds [5000 x %struct.Photon]* %55, i64 0, i64 0
  br label %bb15

bb14:                                             ; preds = %bb15
  %storemerge1 = add nsw i64 %storemerge1.in, -1
  %56 = getelementptr inbounds %struct.Photon* %.0197, i64 0, i32 1, i32 1
  %57 = bitcast %struct.Photon* %.0197 to i8*
  call void @llvm.memset.p0i8.i64(i8* %57, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %56, align 4
  %58 = getelementptr inbounds %struct.Photon* %.0197, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %58, align 4
  %59 = getelementptr inbounds %struct.Photon* %.0197, i64 0, i32 2, i64 0
  store float 1.000000e+00, float* %59, align 4
  %60 = getelementptr inbounds %struct.Photon* %.0197, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %60, align 4
  %61 = getelementptr inbounds %struct.Photon* %.0197, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %61, align 4
  %62 = getelementptr inbounds %struct.Photon* %.0197, i64 1
  br label %bb15

bb15:                                             ; preds = %bb14, %bb13
  %.0197 = phi %struct.Photon* [ %.sub3512, %bb13 ], [ %62, %bb14 ]
  %storemerge1.in = phi i64 [ 5000, %bb13 ], [ %storemerge1, %bb14 ]
  %63 = icmp eq i64 %storemerge1.in, 0
  br i1 %63, label %invcont18, label %bb14

invcont18:                                        ; preds = %bb15
  %64 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %65 = call float @llvm.trax.loadf(i32 %64, i32 0) nounwind
  %66 = call float @llvm.trax.loadf(i32 %64, i32 1) nounwind
  %67 = call float @llvm.trax.loadf(i32 %64, i32 2) nounwind
  %tmp394 = bitcast float %65 to i32
  %tmp388 = bitcast float %66 to i32
  %tmp382 = bitcast float %67 to i32
  %68 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 0
  %69 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 1
  %70 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 2
  %71 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 0, i32 0
  %72 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 0
  %73 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 1
  %74 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 2
  %75 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 0, i32 1
  %76 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 0, i32 2
  %77 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 1
  %78 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 2
  %79 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 0
  %80 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 1
  %81 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 2
  %82 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 0
  %83 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 1
  %84 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 2
  %85 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 0
  %86 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 1
  %87 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 2
  %88 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %89 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %90 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  %91 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %.4643.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 2
  br label %bb71

bb23:                                             ; preds = %bb69
  %92 = add nsw i32 %bounces.0, 1
  br label %bb.i105

bb.i105:                                          ; preds = %.noexc112, %bb23
  %93 = invoke float @llvm.trax.rand()
          to label %.noexc unwind label %Unwind

.noexc:                                           ; preds = %bb.i105
  %94 = fadd float %93, -5.000000e-01
  %95 = fmul float %94, 2.000000e+00
  %96 = invoke float @llvm.trax.rand()
          to label %.noexc111 unwind label %Unwind

.noexc111:                                        ; preds = %.noexc
  %97 = fadd float %96, -5.000000e-01
  %98 = fmul float %97, 2.000000e+00
  %99 = invoke float @llvm.trax.rand()
          to label %.noexc112 unwind label %Unwind

.noexc112:                                        ; preds = %.noexc111
  %100 = fadd float %99, -5.000000e-01
  %101 = fmul float %100, 2.000000e+00
  %102 = fmul float %95, %95
  %103 = fmul float %98, %98
  %104 = fadd float %102, %103
  %105 = fmul float %101, %101
  %106 = fadd float %104, %105
  %107 = fcmp ogt float %106, 1.000000e+00
  br i1 %107, label %bb.i105, label %invcont42

invcont42:                                        ; preds = %.noexc112
  store float %95, float* %68, align 8
  store float %98, float* %69, align 4
  store float %101, float* %70, align 8
  %108 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %direction.i)
  %mrv_gr.i107 = extractvalue %0 %108, 0
  %tmp3115 = bitcast double %mrv_gr.i107 to i64
  %mrv_gr3.i = extractvalue %0 %108, 1
  %tmp3109 = bitcast float %mrv_gr3.i to i32
  %tmp3105 = lshr i64 %tmp3115, 32
  %tmp3139 = zext i64 %tmp3115 to i96
  %tmp3133 = zext i64 %tmp3105 to i96
  %tmp3134 = shl nuw nsw i96 %tmp3133, 32
  %tmp3139.masked = and i96 %tmp3139, 4294967295
  %ins3136 = or i96 %tmp3139.masked, %tmp3134
  %tmp281 = zext i96 %ins3136 to i128
  %mask282 = and i128 %memtmp30.0, -79228162514264337593543950336
  %tmp275 = zext i32 %tmp3109 to i128
  %tmp276 = shl nuw nsw i128 %tmp275, 64
  %mask277 = or i128 %mask282, %tmp281
  %ins278 = or i128 %mask277, %tmp276
  %ins278.tr = trunc i128 %ins278 to i96
  %109 = bitcast %struct.Box* %ray27 to i8*
  call void @llvm.memset.p0i8.i64(i8* %109, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %73, align 4
  store float 0.000000e+00, float* %74, align 4
  %tmp3174 = bitcast i32 %ray_origin.0.ph.off0 to float
  store float %tmp3174, float* %71, align 8
  %tmp3171 = bitcast i32 %ray_origin.0.ph.off32 to float
  store float %tmp3171, float* %75, align 4
  %tmp3167 = bitcast i32 %ray_origin.0.ph.off64 to float
  store float %tmp3167, float* %76, align 8
  %tmp3151 = trunc i64 %tmp3115 to i32
  %tmp3152 = bitcast i32 %tmp3151 to float
  store float %tmp3152, float* %72, align 4
  %tmp3148 = trunc i64 %tmp3105 to i32
  %tmp3149 = bitcast i32 %tmp3148 to float
  store float %tmp3149, float* %77, align 4
  %tmp3143 = lshr i96 %ins278.tr, 64
  %tmp3144 = trunc i96 %tmp3143 to i32
  %tmp3145 = bitcast i32 %tmp3144 to float
  store float %tmp3145, float* %78, align 4
  store float 0.000000e+00, float* %79, align 4
  store float 0.000000e+00, float* %80, align 4
  store float 0.000000e+00, float* %81, align 4
  store float 0.000000e+00, float* %82, align 4
  store float 0.000000e+00, float* %83, align 4
  store float 0.000000e+00, float* %84, align 4
  store float 0.000000e+00, float* %85, align 4
  store float 0.000000e+00, float* %86, align 4
  store float 0.000000e+00, float* %87, align 4
  store float 0.000000e+00, float* %88, align 4
  store float 0.000000e+00, float* %89, align 4
  store float 0.000000e+00, float* %90, align 4
  store float 1.000000e+10, float* %91, align 8
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record, %struct.Box* %ray27)
  %110 = load float* %91, align 8
  %111 = fcmp olt float %110, 1.000000e+10
  br i1 %111, label %invcont61, label %bb69

invcont61:                                        ; preds = %invcont42
  %tmp645 = load float* %.4643.2, align 4
  %ray27.idx188.val = load float* %72, align 4
  %ray27.idx189.val = load float* %77, align 4
  %ray27.idx190.val = load float* %78, align 4
  %112 = call fastcc %0 @_ZN9HitRecord12hit_positionE3Ray(float %110, float %ray27.idx188.val, float %ray27.idx189.val, float %ray27.idx190.val)
  %mrv_gr51 = extractvalue %0 %112, 0
  %tmp258 = bitcast double %mrv_gr51 to i64
  %mrv_gr53 = extractvalue %0 %112, 1
  %tmp252 = bitcast float %mrv_gr53 to i32
  %tmp248 = lshr i64 %tmp258, 32
  %tmp3195 = trunc i64 %tmp258 to i32
  %tmp3196 = bitcast i32 %tmp3195 to float
  %tmp3192 = trunc i64 %tmp248 to i32
  %tmp3193 = bitcast i32 %tmp3192 to float
  %113 = sext i32 %count.0.ph to i64
  %.0301 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %113, i32 0, i32 0
  store float %tmp3196, float* %.0301, align 4
  %.1303 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %113, i32 0, i32 1
  store float %tmp3193, float* %.1303, align 4
  %.2305 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %113, i32 0, i32 2
  store float %mrv_gr53, float* %.2305, align 4
  %.1.0 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %113, i32 1, i32 0
  store float 0.000000e+00, float* %.1.0, align 4
  %.1.1 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %113, i32 1, i32 1
  store float 0.000000e+00, float* %.1.1, align 4
  %.1.2 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %113, i32 1, i32 2
  store float 0.000000e+00, float* %.1.2, align 4
  %.2.0 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %113, i32 2, i64 0
  store float %tmp645, float* %.2.0, align 4
  %.2.1 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %113, i32 2, i64 1
  store float %tmp645, float* %.2.1, align 4
  %.2.2 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %113, i32 2, i64 2
  store float %tmp645, float* %.2.2, align 4
  %114 = add nsw i32 %count.0.ph, 1
  %tmp226 = lshr i64 %tmp258, 32
  %extract.t = trunc i64 %tmp258 to i32
  %extract.t3615 = trunc i64 %tmp226 to i32
  br label %bb68.outer

bb68.outer:                                       ; preds = %bb71, %invcont61
  %memtmp30.0.ph = phi i128 [ %ins278, %invcont61 ], [ %memtmp30.1, %bb71 ]
  %ray_origin.0.ph.off0 = phi i32 [ %extract.t, %invcont61 ], [ %ray_origin.1.off0, %bb71 ]
  %ray_origin.0.ph.off32 = phi i32 [ %extract.t3615, %invcont61 ], [ %ray_origin.1.off32, %bb71 ]
  %ray_origin.0.ph.off64 = phi i32 [ %tmp252, %invcont61 ], [ %ray_origin.1.off64, %bb71 ]
  %bounces.0.ph = phi i32 [ %92, %invcont61 ], [ 0, %bb71 ]
  %count.0.ph = phi i32 [ %114, %invcont61 ], [ %count.1, %bb71 ]
  br label %bb69

bb69:                                             ; preds = %bb68.outer, %invcont42
  %bounces.0 = phi i32 [ %92, %invcont42 ], [ %bounces.0.ph, %bb68.outer ]
  %memtmp30.0 = phi i128 [ %ins278, %invcont42 ], [ %memtmp30.0.ph, %bb68.outer ]
  %115 = icmp slt i32 %bounces.0, 6
  br i1 %115, label %bb23, label %bb70

bb70:                                             ; preds = %bb69
  %116 = add nsw i32 %iterator.0, 1
  br label %bb71

bb71:                                             ; preds = %bb70, %invcont18
  %memtmp30.1 = phi i128 [ undef, %invcont18 ], [ %memtmp30.0, %bb70 ]
  %ray_origin.1.off0 = phi i32 [ %tmp394, %invcont18 ], [ %ray_origin.0.ph.off0, %bb70 ]
  %ray_origin.1.off32 = phi i32 [ %tmp388, %invcont18 ], [ %ray_origin.0.ph.off32, %bb70 ]
  %ray_origin.1.off64 = phi i32 [ %tmp382, %invcont18 ], [ %ray_origin.0.ph.off64, %bb70 ]
  %count.1 = phi i32 [ 0, %invcont18 ], [ %count.0.ph, %bb70 ]
  %iterator.0 = phi i32 [ 0, %invcont18 ], [ %116, %bb70 ]
  %117 = icmp slt i32 %iterator.0, 5000
  br i1 %117, label %bb68.outer, label %invcont74

invcont74:                                        ; preds = %bb71
  %118 = call i32 @llvm.trax.atominc(i32 0)
  %119 = mul nsw i32 %7, %8
  %120 = sitofp i32 %7 to float
  %121 = fdiv float %120, -2.000000e+00
  %122 = sitofp i32 %8 to float
  %123 = fdiv float %122, -2.000000e+00
  %124 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 0
  %125 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 1
  %126 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 2
  %127 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 0
  %128 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 1
  %129 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 2
  %130 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %131 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %132 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %133 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %134 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %135 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %136 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %137 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 0, i32 0
  %138 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 0, i32 1
  %139 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 0, i32 2
  %140 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 1, i32 0
  %141 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 1, i32 1
  %142 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 1, i32 2
  %143 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 2, i32 0
  %144 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 2, i32 1
  %145 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 2, i32 2
  %146 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 4, i32 0, i32 0
  %147 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 4, i32 0, i32 1
  %148 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 1, i32 4, i32 0, i32 2
  %149 = getelementptr inbounds %struct.HitRecord* %hit_record81, i64 0, i32 0
  %tmp = bitcast %struct.HitRecord* %hit_record8111 to i8*
  %tmp12 = bitcast %struct.HitRecord* %hit_record81 to i8*
  %ray860.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray860.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray860.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.1.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.1.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.1.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %150 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 0
  %.01479 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 1, i32 0, i32 0
  %.11481 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 1, i32 0, i32 1
  %.21483 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 1, i32 0, i32 2
  %.11450.0 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 1, i32 1, i32 0
  %.11450.1 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 1, i32 1, i32 1
  %.11450.2 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 1, i32 1, i32 2
  %.21451.0 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 1, i32 2, i32 0
  %.21451.1 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 1, i32 2, i32 1
  %.21451.2 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 1, i32 2, i32 2
  %.414541463.0 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 1, i32 4, i32 0, i32 0
  %.414541463.1 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 1, i32 4, i32 0, i32 1
  %.414541463.2 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 1, i32 4, i32 0, i32 2
  %.41454.1 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 1, i32 4, i32 1
  %.41454.2 = getelementptr inbounds %struct.HitRecord* %hit_record8111, i64 0, i32 1, i32 4, i32 2
  %151 = getelementptr inbounds %struct.Color* %5, i64 0, i32 0
  %152 = getelementptr inbounds %struct.Color* %5, i64 0, i32 1
  %153 = getelementptr inbounds %struct.Color* %5, i64 0, i32 2
  %154 = getelementptr inbounds %struct.Color* %2, i64 0, i32 0
  %155 = getelementptr inbounds %struct.Color* %2, i64 0, i32 1
  %156 = getelementptr inbounds %struct.Color* %2, i64 0, i32 2
  %157 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 0
  %158 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 1
  %159 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 2
  %160 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %161 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %162 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %163 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 0
  %164 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 1
  %165 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 2
  %166 = getelementptr inbounds %struct.Color* %4, i64 0, i32 0
  %167 = getelementptr inbounds %struct.Color* %4, i64 0, i32 1
  %168 = getelementptr inbounds %struct.Color* %4, i64 0, i32 2
  %169 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 0
  %170 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 1
  %171 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 2
  %tmp2804 = bitcast float %13 to i32
  %tmp2805 = zext i32 %tmp2804 to i96
  %tmp2800 = shl nuw nsw i96 %tmp775, 32
  %tmp2792 = bitcast float %15 to i32
  %tmp1100 = zext i32 %tmp2792 to i128
  %tmp1101 = shl nuw nsw i128 %tmp1100, 64
  %172 = getelementptr inbounds %struct.Color* %3, i64 0, i32 0
  %173 = getelementptr inbounds %struct.Color* %3, i64 0, i32 1
  %174 = getelementptr inbounds %struct.Color* %3, i64 0, i32 2
  %175 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 0
  %176 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 1
  %177 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 2
  %ray_to_light_source75.i1496.0 = getelementptr inbounds %struct.Box* %ray_to_light_source75.i, i64 0, i32 0, i32 0
  %ray_to_light_source75.i1496.1 = getelementptr inbounds %struct.Box* %ray_to_light_source75.i, i64 0, i32 0, i32 1
  %ray_to_light_source75.i1496.2 = getelementptr inbounds %struct.Box* %ray_to_light_source75.i, i64 0, i32 0, i32 2
  %ray_to_light_source75.i.1.0 = getelementptr inbounds %struct.Box* %ray_to_light_source75.i, i64 0, i32 1, i32 0
  %ray_to_light_source75.i.1.1 = getelementptr inbounds %struct.Box* %ray_to_light_source75.i, i64 0, i32 1, i32 1
  %ray_to_light_source75.i.1.2 = getelementptr inbounds %struct.Box* %ray_to_light_source75.i, i64 0, i32 1, i32 2
  %178 = getelementptr inbounds %struct.Color* %energy.i.i, i64 0, i32 0
  %179 = getelementptr inbounds %struct.Color* %energy.i.i, i64 0, i32 1
  %180 = getelementptr inbounds %struct.Color* %energy.i.i, i64 0, i32 2
  br label %bb101

invcont83:                                        ; preds = %bb101
  %181 = sdiv i32 %storemerge2, %7
  %182 = srem i32 %storemerge2, %7
  %183 = sitofp i32 %182 to float
  %184 = fadd float %183, %121
  %185 = fadd float %184, 5.000000e-01
  %186 = fmul float %185, 2.000000e+00
  %187 = fdiv float %186, %120
  %188 = sitofp i32 %181 to float
  %189 = fadd float %188, %123
  %190 = fadd float %189, 5.000000e-01
  %191 = fmul float %190, 2.000000e+00
  %192 = fdiv float %191, %122
  store float %25, float* %127, align 8
  store float %26, float* %128, align 4
  store float %27, float* %129, align 8
  %193 = fmul float %33, %192
  %194 = fmul float %34, %192
  %195 = fmul float %35, %192
  %tmp3358 = bitcast float %193 to i32
  %tmp3359 = zext i32 %tmp3358 to i64
  %tmp3352 = bitcast float %194 to i32
  %tmp3353 = zext i32 %tmp3352 to i64
  %tmp3354 = shl nuw i64 %tmp3353, 32
  %ins3356 = or i64 %tmp3359, %tmp3354
  %196 = fmul float %29, %187
  %197 = fmul float %30, %187
  %198 = fmul float %31, %187
  store float %196, float* %130, align 8
  store float %197, float* %131, align 4
  store float %198, float* %132, align 8
  %tmp3344 = bitcast i64 %ins3356 to double
  %199 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %0, double %tmp3344, float %195) nounwind
  %mrv_gr14.i171 = extractvalue %0 %199, 0
  %mrv_gr16.i = extractvalue %0 %199, 1
  %200 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %ln.i, double %mrv_gr14.i171, float %mrv_gr16.i) nounwind
  %mrv_gr24.i173 = extractvalue %0 %200, 0
  %tmp3248 = bitcast double %mrv_gr24.i173 to i64
  %mrv_gr26.i175 = extractvalue %0 %200, 1
  %tmp3235 = trunc i64 %tmp3248 to i32
  %tmp3236 = bitcast i32 %tmp3235 to float
  store float %tmp3236, float* %124, align 8
  %tmp3238 = lshr i64 %tmp3248, 32
  %tmp3239 = trunc i64 %tmp3238 to i32
  %tmp3240 = bitcast i32 %tmp3239 to float
  store float %tmp3240, float* %125, align 4
  store float %mrv_gr26.i175, float* %126, align 8
  %201 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %V.i) nounwind
  %mrv_gr30.i = extractvalue %0 %201, 0
  %tmp3226 = bitcast double %mrv_gr30.i to i64
  %mrv_gr32.i178 = extractvalue %0 %201, 1
  %tmp3216 = lshr i64 %tmp3226, 32
  %tmp3403 = trunc i64 %tmp3226 to i32
  %tmp3404 = bitcast i32 %tmp3403 to float
  %tmp3400 = trunc i64 %tmp3216 to i32
  %tmp3401 = bitcast i32 %tmp3400 to float
  store float %17, float* %36, align 8
  store float %18, float* %133, align 4
  store float %19, float* %134, align 8
  store float %tmp3404, float* %37, align 4
  store float %tmp3401, float* %135, align 4
  store float %mrv_gr32.i178, float* %136, align 4
  store float 0.000000e+00, float* %137, align 4
  store float 0.000000e+00, float* %138, align 4
  store float 0.000000e+00, float* %139, align 4
  store float 0.000000e+00, float* %140, align 4
  store float 0.000000e+00, float* %141, align 4
  store float 0.000000e+00, float* %142, align 4
  store float 0.000000e+00, float* %143, align 4
  store float 0.000000e+00, float* %144, align 4
  store float 0.000000e+00, float* %145, align 4
  store float 0.000000e+00, float* %146, align 4
  store float 0.000000e+00, float* %147, align 4
  store float 0.000000e+00, float* %148, align 4
  store float 1.000000e+10, float* %149, align 8
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record81, %struct.Box* %ray)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp, i8* %tmp12, i64 64, i32 8, i1 false)
  %202 = load float* %150, align 8
  %203 = fcmp olt float %202, 1.000000e+10
  br i1 %203, label %bb.i38, label %bb4.i

bb.i38:                                           ; preds = %invcont83
  %tmp859 = load float* %ray.1.2, align 4
  %tmp858 = load float* %ray.1.1, align 4
  %tmp857 = load float* %ray.1.0, align 4
  %tmp863 = load float* %ray860.2, align 8
  %tmp862 = load float* %ray860.1, align 4
  %tmp861 = load float* %ray860.0, align 8
  %tmp1480 = load float* %.01479, align 4
  %tmp1482 = load float* %.11481, align 4
  %tmp1484 = load float* %.21483, align 4
  %tmp1473 = load float* %.11450.0, align 4
  %tmp1474 = load float* %.11450.1, align 4
  %tmp1475 = load float* %.11450.2, align 4
  %tmp1467 = load float* %.21451.0, align 4
  %tmp1468 = load float* %.21451.1, align 4
  %tmp1469 = load float* %.21451.2, align 4
  %tmp1464 = load float* %.414541463.0, align 4
  %tmp1465 = load float* %.414541463.1, align 4
  %tmp1466 = load float* %.414541463.2, align 4
  %tmp1455 = load float* %.41454.1, align 4
  %tmp1456 = load float* %.41454.2, align 4
  %tmp2234 = bitcast float %tmp857 to i32
  %tmp2235 = zext i32 %tmp2234 to i96
  %tmp2228 = bitcast float %tmp858 to i32
  %tmp2229 = zext i32 %tmp2228 to i96
  %tmp2230 = shl nuw nsw i96 %tmp2229, 32
  %ins2232 = or i96 %tmp2235, %tmp2230
  %tmp2222 = bitcast float %tmp859 to i32
  %tmp1304 = zext i96 %ins2232 to i128
  %mask1305 = and i128 %memtmp.i29.1, -79228162514264337593543950336
  %tmp1298 = zext i32 %tmp2222 to i128
  %tmp1299 = shl nuw nsw i128 %tmp1298, 64
  %mask1300 = or i128 %mask1305, %tmp1304
  %ins1301 = or i128 %mask1300, %tmp1299
  %tmp1286 = lshr i128 %ins1301, 64
  %tmp1287 = trunc i128 %tmp1286 to i32
  %tmp1288 = bitcast i32 %tmp1287 to float
  %204 = fmul float %tmp857, %202
  %205 = fmul float %tmp858, %202
  %206 = fmul float %tmp1288, %202
  %tmp2257 = bitcast float %204 to i32
  %tmp2258 = zext i32 %tmp2257 to i96
  %tmp2251 = bitcast float %205 to i32
  %tmp2252 = zext i32 %tmp2251 to i96
  %tmp2253 = shl nuw nsw i96 %tmp2252, 32
  %ins2255 = or i96 %tmp2258, %tmp2253
  %tmp2245 = bitcast float %206 to i32
  %tmp1282 = zext i96 %ins2255 to i128
  %mask1283 = and i128 %memtmp4.i.1, -79228162514264337593543950336
  %tmp1276 = zext i32 %tmp2245 to i128
  %tmp1277 = shl nuw nsw i128 %tmp1276, 64
  %mask1278 = or i128 %mask1283, %tmp1282
  %ins1279 = or i128 %mask1278, %tmp1277
  %tmp1546 = bitcast float %204 to i32
  %tmp1547 = zext i32 %tmp1546 to i64
  %tmp1540 = bitcast float %205 to i32
  %tmp1541 = zext i32 %tmp1540 to i64
  %tmp1542 = shl nuw i64 %tmp1541, 32
  %ins1544 = or i64 %tmp1547, %tmp1542
  %ins1279.tr = trunc i128 %ins1279 to i96
  %tmp2346 = bitcast float %tmp861 to i32
  %tmp2347 = zext i32 %tmp2346 to i96
  %tmp2340 = bitcast float %tmp862 to i32
  %tmp2341 = zext i32 %tmp2340 to i96
  %tmp2342 = shl nuw nsw i96 %tmp2341, 32
  %ins2344 = or i96 %tmp2347, %tmp2342
  %tmp2334 = bitcast float %tmp863 to i32
  %tmp1260 = zext i96 %ins2344 to i128
  %mask1261 = and i128 %memtmp10.i.1, -79228162514264337593543950336
  %tmp1254 = zext i32 %tmp2334 to i128
  %tmp1255 = shl nuw nsw i128 %tmp1254, 64
  %mask1256 = or i128 %mask1261, %tmp1260
  %ins1257 = or i128 %mask1256, %tmp1255
  store float %tmp861, float* %151, align 8
  store float %tmp862, float* %152, align 4
  %tmp1242 = lshr i128 %ins1257, 64
  %tmp1243 = trunc i128 %tmp1242 to i32
  %tmp1244 = bitcast i32 %tmp1243 to float
  store float %tmp1244, float* %153, align 8
  %tmp1532 = bitcast i64 %ins1544 to double
  %tmp1527 = lshr i96 %ins1279.tr, 64
  %tmp1528 = trunc i96 %tmp1527 to i32
  %tmp1529 = bitcast i32 %tmp1528 to float
  %207 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %5, double %tmp1532, float %tmp1529) nounwind
  %mrv_gr20.i = extractvalue %0 %207, 0
  %tmp1237 = bitcast double %mrv_gr20.i to i64
  %mrv_gr22.i = extractvalue %0 %207, 1
  %tmp1227 = lshr i64 %tmp1237, 32
  %tmp2644 = bitcast float %tmp1473 to i32
  %tmp2645 = zext i32 %tmp2644 to i96
  %tmp2638 = bitcast float %tmp1474 to i32
  %tmp2639 = zext i32 %tmp2638 to i96
  %tmp2640 = shl nuw nsw i96 %tmp2639, 32
  %ins2642 = or i96 %tmp2645, %tmp2640
  %tmp2632 = bitcast float %tmp1475 to i32
  %tmp2531 = zext i96 %ins2642 to i128
  %mask2532 = and i128 %memtmp.i123.i.1, -79228162514264337593543950336
  %tmp2525 = zext i32 %tmp2632 to i128
  %tmp2526 = shl nuw nsw i128 %tmp2525, 64
  %mask2527 = or i128 %mask2532, %tmp2531
  %ins2528 = or i128 %mask2527, %tmp2526
  %tmp2574 = bitcast float %tmp1473 to i32
  %tmp2575 = zext i32 %tmp2574 to i64
  %tmp2568 = bitcast float %tmp1474 to i32
  %tmp2569 = zext i32 %tmp2568 to i64
  %tmp2570 = shl nuw i64 %tmp2569, 32
  %ins2572 = or i64 %tmp2575, %tmp2570
  %ins2528.tr = trunc i128 %ins2528 to i96
  %tmp2667 = bitcast float %tmp1480 to i32
  %tmp2668 = zext i32 %tmp2667 to i96
  %tmp2661 = bitcast float %tmp1482 to i32
  %tmp2662 = zext i32 %tmp2661 to i96
  %tmp2663 = shl nuw nsw i96 %tmp2662, 32
  %ins2665 = or i96 %tmp2668, %tmp2663
  %tmp2655 = bitcast float %tmp1484 to i32
  %tmp2509 = zext i96 %ins2665 to i128
  %mask2510 = and i128 %memtmp4.i.i.1, -79228162514264337593543950336
  %tmp2503 = zext i32 %tmp2655 to i128
  %tmp2504 = shl nuw nsw i128 %tmp2503, 64
  %mask2505 = or i128 %mask2510, %tmp2509
  %ins2506 = or i128 %mask2505, %tmp2504
  store float %tmp1480, float* %154, align 8
  store float %tmp1482, float* %155, align 4
  %tmp2491 = lshr i128 %ins2506, 64
  %tmp2492 = trunc i128 %tmp2491 to i32
  %tmp2493 = bitcast i32 %tmp2492 to float
  store float %tmp2493, float* %156, align 8
  %tmp2560 = bitcast i64 %ins2572 to double
  %tmp2555 = lshr i96 %ins2528.tr, 64
  %tmp2556 = trunc i96 %tmp2555 to i32
  %tmp2557 = bitcast i32 %tmp2556 to float
  %208 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %2, double %tmp2560, float %tmp2557) nounwind
  %mrv_gr14.i.i = extractvalue %0 %208, 0
  %tmp2486 = bitcast double %mrv_gr14.i.i to i64
  %mrv_gr16.i.i = extractvalue %0 %208, 1
  %tmp2473 = trunc i64 %tmp2486 to i32
  %tmp2474 = bitcast i32 %tmp2473 to float
  store float %tmp2474, float* %157, align 8
  %tmp2476 = lshr i64 %tmp2486, 32
  %tmp2477 = trunc i64 %tmp2476 to i32
  %tmp2478 = bitcast i32 %tmp2477 to float
  store float %tmp2478, float* %158, align 4
  store float %mrv_gr16.i.i, float* %159, align 8
  %tmp2690 = bitcast float %tmp1467 to i32
  %tmp2691 = zext i32 %tmp2690 to i96
  %tmp2684 = bitcast float %tmp1468 to i32
  %tmp2685 = zext i32 %tmp2684 to i96
  %tmp2686 = shl nuw nsw i96 %tmp2685, 32
  %ins2688 = or i96 %tmp2691, %tmp2686
  %tmp2678 = bitcast float %tmp1469 to i32
  %tmp2465 = zext i96 %ins2688 to i128
  %mask2466 = and i128 %memtmp18.i.i.1, -79228162514264337593543950336
  %tmp2459 = zext i32 %tmp2678 to i128
  %tmp2460 = shl nuw nsw i128 %tmp2459, 64
  %mask2461 = or i128 %mask2466, %tmp2465
  %ins2462 = or i128 %mask2461, %tmp2460
  %tmp2598 = bitcast float %tmp1467 to i32
  %tmp2599 = zext i32 %tmp2598 to i64
  %tmp2592 = bitcast float %tmp1468 to i32
  %tmp2593 = zext i32 %tmp2592 to i64
  %tmp2594 = shl nuw i64 %tmp2593, 32
  %ins2596 = or i64 %tmp2599, %tmp2594
  %ins2462.tr = trunc i128 %ins2462 to i96
  %ins2711 = or i96 %tmp2645, %tmp2640
  %tmp2443 = zext i96 %ins2711 to i128
  %mask2444 = and i128 %memtmp24.i.i.1, -79228162514264337593543950336
  %mask2439 = or i128 %mask2444, %tmp2443
  %ins2440 = or i128 %mask2439, %tmp2526
  store float %tmp1473, float* %160, align 8
  store float %tmp1474, float* %161, align 4
  %tmp2425 = lshr i128 %ins2440, 64
  %tmp2426 = trunc i128 %tmp2425 to i32
  %tmp2427 = bitcast i32 %tmp2426 to float
  store float %tmp2427, float* %162, align 8
  %tmp2584 = bitcast i64 %ins2596 to double
  %tmp2579 = lshr i96 %ins2462.tr, 64
  %tmp2580 = trunc i96 %tmp2579 to i32
  %tmp2581 = bitcast i32 %tmp2580 to float
  %209 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %1, double %tmp2584, float %tmp2581) nounwind
  %mrv_gr36.i.i = extractvalue %0 %209, 0
  %mrv_gr38.i.i = extractvalue %0 %209, 1
  %210 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %edge1.i.i, double %mrv_gr36.i.i, float %mrv_gr38.i.i) nounwind
  %mrv_gr46.i.i = extractvalue %0 %210, 0
  %tmp2398 = bitcast double %mrv_gr46.i.i to i64
  %mrv_gr48.i.i = extractvalue %0 %210, 1
  %tmp2385 = trunc i64 %tmp2398 to i32
  %tmp2386 = bitcast i32 %tmp2385 to float
  store float %tmp2386, float* %163, align 8
  %tmp2388 = lshr i64 %tmp2398, 32
  %tmp2389 = trunc i64 %tmp2388 to i32
  %tmp2390 = bitcast i32 %tmp2389 to float
  store float %tmp2390, float* %164, align 4
  store float %mrv_gr48.i.i, float* %165, align 8
  %211 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %n.i.i) nounwind
  %mrv_gr52.i.i = extractvalue %0 %211, 0
  %tmp2376 = bitcast double %mrv_gr52.i.i to i64
  %mrv_gr54.i.i = extractvalue %0 %211, 1
  %tmp2370 = bitcast float %mrv_gr54.i.i to i32
  %tmp2366 = lshr i64 %tmp2376, 32
  %tmp2622 = zext i64 %tmp2376 to i96
  %tmp2616 = zext i64 %tmp2366 to i96
  %tmp2617 = shl nuw nsw i96 %tmp2616, 32
  %tmp2622.masked = and i96 %tmp2622, 4294967295
  %ins2619 = or i96 %tmp2622.masked, %tmp2617
  %tmp1216 = zext i96 %ins2619 to i128
  %mask1217 = and i128 %memtmp24.i.1, -79228162514264337593543950336
  %tmp1210 = zext i32 %tmp2370 to i128
  %tmp1211 = shl nuw nsw i128 %tmp1210, 64
  %mask1212 = or i128 %mask1217, %tmp1216
  %ins1213 = or i128 %mask1212, %tmp1211
  %ins1213.tr = trunc i128 %ins1213 to i96
  %ins2734 = or i96 %tmp2235, %tmp2230
  %tmp1194 = zext i96 %ins2734 to i128
  %mask1195 = and i128 %memtmp30.i.1, -79228162514264337593543950336
  %mask1190 = or i128 %mask1195, %tmp1194
  %ins1191 = or i128 %mask1190, %tmp1299
  store float %tmp857, float* %166, align 8
  store float %tmp858, float* %167, align 4
  %tmp1176 = lshr i128 %ins1191, 64
  %tmp1177 = trunc i128 %tmp1176 to i32
  %tmp1178 = bitcast i32 %tmp1177 to float
  store float %tmp1178, float* %168, align 8
  %212 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %4) nounwind
  %mrv_gr38.i = extractvalue %0 %212, 0
  %tmp1171 = bitcast double %mrv_gr38.i to i64
  %mrv_gr40.i = extractvalue %0 %212, 1
  %tmp1161 = lshr i64 %tmp1171, 32
  %tmp2749 = trunc i64 %tmp1171 to i32
  %tmp2750 = bitcast i32 %tmp2749 to float
  %tmp1339 = trunc i64 %tmp2376 to i32
  %tmp1340 = bitcast i32 %tmp1339 to float
  %213 = fmul float %tmp2750, %tmp1340
  %214 = fadd float %213, 0.000000e+00
  %tmp2746 = trunc i64 %tmp1161 to i32
  %tmp2747 = bitcast i32 %tmp2746 to float
  %tmp1343 = trunc i64 %tmp2366 to i32
  %tmp1344 = bitcast i32 %tmp1343 to float
  %215 = fmul float %tmp2747, %tmp1344
  %216 = fadd float %215, %214
  %tmp1346 = lshr i96 %ins1213.tr, 64
  %tmp1347 = trunc i96 %tmp1346 to i32
  %tmp1348 = bitcast i32 %tmp1347 to float
  %217 = fmul float %mrv_gr40.i, %tmp1348
  %218 = fadd float %217, %216
  %219 = fcmp ogt float %218, 0.000000e+00
  %extract.t3569 = trunc i64 %tmp2376 to i32
  %extract.t3575 = trunc i64 %tmp2366 to i32
  %extract3578 = lshr i96 %ins1213.tr, 64
  %extract.t3579 = trunc i96 %extract3578 to i32
  br i1 %219, label %bb46.i, label %bb53.i

bb46.i:                                           ; preds = %bb.i38
  %220 = fmul float %tmp1340, -1.000000e+00
  %221 = fmul float %tmp1344, -1.000000e+00
  %222 = fmul float %tmp1348, -1.000000e+00
  %tmp2781 = bitcast float %220 to i32
  %tmp2782 = zext i32 %tmp2781 to i96
  %tmp2775 = bitcast float %221 to i32
  %tmp2776 = zext i32 %tmp2775 to i96
  %tmp2777 = shl nuw nsw i96 %tmp2776, 32
  %ins2779 = or i96 %tmp2782, %tmp2777
  %tmp2769 = bitcast float %222 to i32
  %tmp1150 = zext i96 %ins2779 to i128
  %mask1151 = and i128 %memtmp47.i.2, -79228162514264337593543950336
  %tmp1144 = zext i32 %tmp2769 to i128
  %tmp1145 = shl nuw nsw i128 %tmp1144, 64
  %mask1146 = or i128 %mask1151, %tmp1150
  %ins1147 = or i128 %mask1146, %tmp1145
  %tmp1380 = bitcast float %220 to i32
  %tmp1381 = zext i32 %tmp1380 to i64
  %tmp1374 = bitcast float %221 to i32
  %tmp1375 = zext i32 %tmp1374 to i64
  %tmp1376 = shl nuw i64 %tmp1375, 32
  %ins1378 = or i64 %tmp1381, %tmp1376
  %tmp1132 = lshr i128 %ins1147, 64
  %tmp1133 = trunc i128 %tmp1132 to i32
  br label %bb53.i

bb53.i:                                           ; preds = %bb46.i, %bb.i38
  %memtmp47.i.0 = phi i128 [ %ins1147, %bb46.i ], [ %memtmp47.i.2, %bb.i38 ]
  %N.i.0.off0 = phi i32 [ %tmp1380, %bb46.i ], [ %extract.t3569, %bb.i38 ]
  %N.i.0.off03570 = phi i64 [ %ins1378, %bb46.i ], [ %tmp2376, %bb.i38 ]
  %N.i.0.off32 = phi i32 [ %tmp1374, %bb46.i ], [ %extract.t3575, %bb.i38 ]
  %N.i.0.off64 = phi i32 [ %tmp1133, %bb46.i ], [ %extract.t3579, %bb.i38 ]
  %223 = fmul float %tmp1455, 0.000000e+00
  %tmp2827 = bitcast float %223 to i32
  %tmp2828 = zext i32 %tmp2827 to i96
  %tmp2823 = shl nuw nsw i96 %tmp2828, 32
  %ins2825 = or i96 %tmp2828, %tmp2823
  %tmp1128 = zext i96 %ins2825 to i128
  %mask1129 = and i128 %memtmp54.i.1, -79228162514264337593543950336
  %tmp1122 = zext i32 %tmp2827 to i128
  %tmp1123 = shl nuw nsw i128 %tmp1122, 64
  %mask1124 = or i128 %mask1129, %tmp1128
  %ins1125 = or i128 %mask1124, %tmp1123
  store float %223, float* %169, align 8
  store float %223, float* %170, align 4
  %tmp1110 = lshr i128 %ins1125, 64
  %tmp1111 = trunc i128 %tmp1110 to i32
  %tmp1112 = bitcast i32 %tmp1111 to float
  store float %tmp1112, float* %171, align 8
  %ins2802 = or i96 %tmp2805, %tmp2800
  %tmp1106 = zext i96 %ins2802 to i128
  %mask1107 = and i128 %memtmp60.i.1, -79228162514264337593543950336
  %mask1102 = or i128 %mask1107, %tmp1106
  %ins1103 = or i128 %mask1102, %tmp1101
  store float %13, float* %172, align 8
  store float %14, float* %173, align 4
  %tmp1088 = lshr i128 %ins1103, 64
  %tmp1089 = trunc i128 %tmp1088 to i32
  %tmp1090 = bitcast i32 %tmp1089 to float
  store float %tmp1090, float* %174, align 8
  %224 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %3, double %mrv_gr20.i, float %mrv_gr22.i) nounwind
  %mrv_gr72.i = extractvalue %0 %224, 0
  %tmp1083 = bitcast double %mrv_gr72.i to i64
  %mrv_gr74.i = extractvalue %0 %224, 1
  %tmp1070 = trunc i64 %tmp1083 to i32
  %tmp1071 = bitcast i32 %tmp1070 to float
  store float %tmp1071, float* %175, align 8
  %tmp1073 = lshr i64 %tmp1083, 32
  %tmp1074 = trunc i64 %tmp1073 to i32
  %tmp1075 = bitcast i32 %tmp1074 to float
  store float %tmp1075, float* %176, align 4
  store float %mrv_gr74.i, float* %177, align 8
  %225 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %L.i) nounwind
  %mrv_gr78.i = extractvalue %0 %225, 0
  %tmp1061 = bitcast double %mrv_gr78.i to i64
  %mrv_gr80.i = extractvalue %0 %225, 1
  %tmp1051 = lshr i64 %tmp1061, 32
  %tmp2314 = trunc i64 %tmp1061 to i32
  %tmp2315 = bitcast i32 %tmp2314 to float
  %tmp1351 = bitcast i32 %N.i.0.off0 to float
  %226 = fmul float %tmp2315, %tmp1351
  %227 = fadd float %226, 0.000000e+00
  %tmp2311 = trunc i64 %tmp1051 to i32
  %tmp2312 = bitcast i32 %tmp2311 to float
  %tmp1355 = bitcast i32 %N.i.0.off32 to float
  %228 = fmul float %tmp2312, %tmp1355
  %229 = fadd float %228, %227
  %tmp1359 = bitcast i32 %N.i.0.off64 to float
  %230 = fmul float %mrv_gr80.i, %tmp1359
  %231 = fadd float %230, %229
  %232 = fcmp ogt float %231, 0.000000e+00
  br i1 %232, label %bb94.i, label %bb121.i

bb94.i:                                           ; preds = %bb53.i
  %tmp2267 = trunc i64 %tmp1051 to i32
  %tmp2270 = trunc i64 %tmp1061 to i32
  %tmp2289 = trunc i64 %tmp1227 to i32
  %tmp2292 = trunc i64 %tmp1237 to i32
  %tmp2268 = bitcast i32 %tmp2267 to float
  %tmp2271 = bitcast i32 %tmp2270 to float
  %tmp2290 = bitcast i32 %tmp2289 to float
  %tmp2293 = bitcast i32 %tmp2292 to float
  %233 = load float* %175, align 8
  %234 = fmul float %233, %233
  %235 = load float* %176, align 4
  %236 = fmul float %235, %235
  %237 = fadd float %234, %236
  %238 = load float* %177, align 8
  %239 = fmul float %238, %238
  %240 = fadd float %237, %239
  %241 = call float @llvm.trax.invsqrt(float %240) nounwind
  %242 = fdiv float 1.000000e+00, %241
  store float %tmp2293, float* %ray_to_light_source75.i1496.0, align 8
  store float %tmp2290, float* %ray_to_light_source75.i1496.1, align 4
  store float %mrv_gr22.i, float* %ray_to_light_source75.i1496.2, align 8
  store float %tmp2271, float* %ray_to_light_source75.i.1.0, align 4
  store float %tmp2268, float* %ray_to_light_source75.i.1.1, align 4
  store float %mrv_gr80.i, float* %ray_to_light_source75.i.1.2, align 4
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record8111, %struct.Box* %ray_to_light_source75.i) nounwind
  %243 = load float* %150, align 8
  %244 = fcmp uge float %243, %242
  %245 = fcmp ule float %243, 0x3F847AE140000000
  %or.cond = or i1 %244, %245
  br i1 %or.cond, label %bb98.i, label %bb121.i

bb98.i:                                           ; preds = %bb94.i
  %246 = fmul float %tmp1456, %231
  %tmp2188 = bitcast float %246 to i32
  %tmp2189 = zext i32 %tmp2188 to i96
  %tmp2182 = bitcast float %246 to i32
  %tmp2183 = zext i32 %tmp2182 to i96
  %tmp2184 = shl nuw nsw i96 %tmp2183, 32
  %ins2186 = or i96 %tmp2189, %tmp2184
  %tmp2176 = bitcast float %246 to i32
  %tmp1018 = zext i96 %ins2186 to i128
  %mask1019 = and i128 %memtmp105.i.2, -79228162514264337593543950336
  %tmp1012 = zext i32 %tmp2176 to i128
  %tmp1013 = shl nuw nsw i128 %tmp1012, 64
  %mask1014 = or i128 %mask1019, %tmp1018
  %ins1015 = or i128 %mask1014, %tmp1013
  %ins1015.tr = trunc i128 %ins1015 to i96
  %247 = fadd float %246, %223
  %248 = fadd float %246, %223
  %tmp2148 = lshr i96 %ins1015.tr, 64
  %tmp2149 = trunc i96 %tmp2148 to i32
  %tmp2150 = bitcast i32 %tmp2149 to float
  %249 = fadd float %tmp2150, %tmp1112
  %tmp2143 = bitcast float %247 to i32
  %tmp2144 = zext i32 %tmp2143 to i96
  %tmp2137 = bitcast float %248 to i32
  %tmp2138 = zext i32 %tmp2137 to i96
  %tmp2139 = shl nuw nsw i96 %tmp2138, 32
  %ins2141 = or i96 %tmp2144, %tmp2139
  %tmp2131 = bitcast float %249 to i32
  %tmp996 = zext i96 %ins2141 to i128
  %mask997 = and i128 %memtmp115.i.2, -79228162514264337593543950336
  %tmp990 = zext i32 %tmp2131 to i128
  %tmp991 = shl nuw nsw i128 %tmp990, 64
  %mask992 = or i128 %mask997, %tmp996
  %ins993 = or i128 %mask992, %tmp991
  store float %247, float* %169, align 8
  store float %248, float* %170, align 4
  %tmp978 = lshr i128 %ins993, 64
  %tmp979 = trunc i128 %tmp978 to i32
  %tmp980 = bitcast i32 %tmp979 to float
  store float %tmp980, float* %171, align 8
  br label %bb121.i

bb121.i:                                          ; preds = %bb98.i, %bb94.i, %bb53.i
  %memtmp115.i.0 = phi i128 [ %ins993, %bb98.i ], [ %memtmp115.i.2, %bb53.i ], [ %memtmp115.i.2, %bb94.i ]
  %memtmp105.i.0 = phi i128 [ %ins1015, %bb98.i ], [ %memtmp105.i.2, %bb53.i ], [ %memtmp105.i.2, %bb94.i ]
  %tmp2120 = bitcast float %tmp1464 to i32
  %tmp2121 = zext i32 %tmp2120 to i96
  %tmp2114 = bitcast float %tmp1465 to i32
  %tmp2115 = zext i32 %tmp2114 to i96
  %tmp2116 = shl nuw nsw i96 %tmp2115, 32
  %ins2118 = or i96 %tmp2121, %tmp2116
  %tmp2108 = bitcast float %tmp1466 to i32
  %tmp2075 = zext i96 %ins2118 to i128
  %mask2076 = and i128 %memtmp.i30.i.1, -79228162514264337593543950336
  %tmp2069 = zext i32 %tmp2108 to i128
  %tmp2070 = shl nuw nsw i128 %tmp2069, 64
  %mask2071 = or i128 %mask2076, %tmp2075
  %ins2072 = or i128 %mask2071, %tmp2070
  %tmp2097 = bitcast float %tmp1464 to i32
  %tmp2098 = zext i32 %tmp2097 to i96
  %tmp2091 = bitcast float %tmp1465 to i32
  %tmp2092 = zext i32 %tmp2091 to i96
  %tmp2093 = shl nuw nsw i96 %tmp2092, 32
  %ins2095 = or i96 %tmp2098, %tmp2093
  %tmp974 = zext i96 %ins2095 to i128
  %mask975 = and i128 %memtmp122.i.1, -79228162514264337593543950336
  %tmp969 = and i128 %ins2072, 79228162495817593519834398720
  %mask970 = or i128 %mask975, %tmp974
  %ins971 = or i128 %mask970, %tmp969
  %tmp1612 = bitcast float %tmp1464 to i32
  %tmp1613 = zext i32 %tmp1612 to i64
  %tmp1606 = bitcast float %tmp1465 to i32
  %tmp1607 = zext i32 %tmp1606 to i64
  %tmp1608 = shl nuw i64 %tmp1607, 32
  %ins1610 = or i64 %tmp1613, %tmp1608
  %tmp956 = lshr i128 %ins971, 64
  %tmp957 = trunc i128 %tmp956 to i32
  %tmp958 = bitcast i32 %tmp957 to float
  %tmp1598 = bitcast i64 %ins1610 to double
  %250 = call fastcc %0 @_ZN5Color5timesES_(%struct.Color* %light.i, double %tmp1598, float %tmp958) nounwind
  %mrv_gr134.i = extractvalue %0 %250, 0
  %tmp951 = bitcast double %mrv_gr134.i to i64
  %mrv_gr136.i = extractvalue %0 %250, 1
  %tmp938 = trunc i64 %tmp951 to i32
  %tmp939 = bitcast i32 %tmp938 to float
  store float %tmp939, float* %169, align 8
  %tmp941 = lshr i64 %tmp951, 32
  %tmp942 = trunc i64 %tmp941 to i32
  %tmp943 = bitcast i32 %tmp942 to float
  store float %tmp943, float* %170, align 4
  store float %mrv_gr136.i, float* %171, align 8
  %ins2050 = or i96 %tmp2121, %tmp2116
  %tmp2007 = zext i96 %ins2050 to i128
  %mask2008 = and i128 %memtmp.i15.i.1, -79228162514264337593543950336
  %mask2003 = or i128 %mask2008, %tmp2007
  %ins2004 = or i128 %mask2003, %tmp2070
  %tmp2029 = bitcast float %tmp1464 to i32
  %tmp2030 = zext i32 %tmp2029 to i96
  %tmp2023 = bitcast float %tmp1465 to i32
  %tmp2024 = zext i32 %tmp2023 to i96
  %tmp2025 = shl nuw nsw i96 %tmp2024, 32
  %ins2027 = or i96 %tmp2030, %tmp2025
  %tmp930 = zext i96 %ins2027 to i128
  %mask931 = and i128 %memtmp138.i.1, -79228162514264337593543950336
  %tmp925 = and i128 %ins2004, 79228162495817593519834398720
  %mask926 = or i128 %mask931, %tmp930
  %ins927 = or i128 %mask926, %tmp925
  %tmp1636 = bitcast float %tmp1464 to i32
  %tmp1637 = zext i32 %tmp1636 to i64
  %tmp1630 = bitcast float %tmp1465 to i32
  %tmp1631 = zext i32 %tmp1630 to i64
  %tmp1632 = shl nuw i64 %tmp1631, 32
  %ins1634 = or i64 %tmp1637, %tmp1632
  %ins927.tr = trunc i128 %ins927 to i96
  %tmp1837 = trunc i64 %N.i.0.off03570 to i32
  %tmp1838 = bitcast i32 %tmp1837 to float
  %tmp1840 = lshr i64 %N.i.0.off03570, 32
  %tmp1841 = trunc i64 %tmp1840 to i32
  %tmp1842 = bitcast i32 %tmp1841 to float
  %tmp1846 = bitcast i32 %N.i.0.off64 to float
  %tmp1824 = bitcast i64 %ins1634 to double
  %tmp1819 = lshr i96 %ins927.tr, 64
  %tmp1820 = trunc i96 %tmp1819 to i32
  %tmp1821 = bitcast i32 %tmp1820 to float
  br label %bb34.i.i

bb.i.i:                                           ; preds = %bb34.i.i
  %251 = sext i32 %storemerge.i.i to i64
  %252 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %251, i32 0, i32 0
  %253 = load float* %252, align 4
  %254 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %251, i32 0, i32 1
  %255 = load float* %254, align 4
  %256 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %251, i32 0, i32 2
  %257 = load float* %256, align 4
  %tmp1895 = bitcast float %253 to i32
  %tmp1896 = zext i32 %tmp1895 to i96
  %tmp1889 = bitcast float %255 to i32
  %tmp1890 = zext i32 %tmp1889 to i96
  %tmp1891 = shl nuw nsw i96 %tmp1890, 32
  %ins1893 = or i96 %tmp1896, %tmp1891
  %tmp1883 = bitcast float %257 to i32
  %tmp1748 = zext i96 %ins1893 to i128
  %mask1749 = and i128 %memtmp.i.i.0, -79228162514264337593543950336
  %tmp1742 = zext i32 %tmp1883 to i128
  %tmp1743 = shl nuw nsw i128 %tmp1742, 64
  %mask1744 = or i128 %mask1749, %tmp1748
  %ins1745 = or i128 %mask1744, %tmp1743
  %ins1745.tr = trunc i128 %ins1745 to i96
  %tmp1930 = trunc i64 %tmp1237 to i32
  %tmp1931 = bitcast i32 %tmp1930 to float
  %258 = fsub float %tmp1931, %253
  %259 = fmul float %258, %258
  %260 = fcmp ogt float %259, 3.000000e+00
  br i1 %260, label %bb33.i.i, label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %bb.i.i
  %tmp1927 = trunc i64 %tmp1227 to i32
  %tmp1928 = bitcast i32 %tmp1927 to float
  %261 = fsub float %tmp1928, %255
  %262 = fmul float %261, %261
  %263 = fadd float %262, %259
  %264 = fcmp ogt float %263, 3.000000e+00
  br i1 %264, label %bb33.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb1.i.i.i
  %tmp1900 = lshr i96 %ins1745.tr, 64
  %tmp1901 = trunc i96 %tmp1900 to i32
  %tmp1902 = bitcast i32 %tmp1901 to float
  %265 = fsub float %mrv_gr22.i, %tmp1902
  %266 = fmul float %265, %265
  %267 = fadd float %266, %263
  %268 = fcmp ogt float %267, 3.000000e+00
  br i1 %268, label %bb33.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i.i.i
  %ins1982 = or i96 %tmp1896, %tmp1891
  %tmp1726 = zext i96 %ins1982 to i128
  %mask1727 = and i128 %memtmp13.i.i.1, -79228162514264337593543950336
  %mask1722 = or i128 %mask1727, %tmp1726
  %ins1723 = or i128 %mask1722, %tmp1743
  %ins1723.tr = trunc i128 %ins1723 to i96
  %269 = fmul float %253, %tmp1838
  %270 = fadd float %269, 0.000000e+00
  %271 = fmul float %255, %tmp1842
  %272 = fadd float %271, %270
  %tmp1944 = lshr i96 %ins1723.tr, 64
  %tmp1945 = trunc i96 %tmp1944 to i32
  %tmp1946 = bitcast i32 %tmp1945 to float
  %273 = fmul float %tmp1946, %tmp1846
  %274 = fadd float %273, %272
  %275 = fsub float -0.000000e+00, %274
  %276 = fcmp olt float %275, 0.000000e+00
  br i1 %276, label %llvm.trax.max.exit.i, label %bb1.i.i

bb1.i.i:                                          ; preds = %bb10.i.i
  %phitmp3602 = fpext float %275 to double
  br label %llvm.trax.max.exit.i

llvm.trax.max.exit.i:                             ; preds = %bb1.i.i, %bb10.i.i
  %storemerge.i4.i = phi double [ %phitmp3602, %bb1.i.i ], [ 0.000000e+00, %bb10.i.i ]
  %277 = call float @llvm.trax.invsqrt(float %267) nounwind
  %278 = fdiv float 1.000000e+00, %277
  %279 = fpext float %278 to double
  %280 = fsub double 1.000000e+00, %279
  %281 = fdiv double %280, 1.000000e+00
  %282 = fmul double %storemerge.i4.i, %281
  %283 = fptrunc double %282 to float
  %284 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %251, i32 2, i64 2
  %285 = load float* %284, align 4
  %286 = fadd float %285, %283
  %287 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %251, i32 2, i64 1
  %288 = load float* %287, align 4
  %289 = fadd float %288, %283
  %290 = getelementptr inbounds [20000 x %struct.Photon]* %45, i64 0, i64 %251, i32 2, i64 0
  %291 = load float* %290, align 4
  %292 = fadd float %291, %283
  store float %292, float* %178, align 8
  store float %289, float* %179, align 4
  store float %286, float* %180, align 8
  %293 = call fastcc %0 @_ZN5Color5timesES_(%struct.Color* %energy.i.i, double %tmp1824, float %tmp1821) nounwind
  %mrv_gr29.i.i = extractvalue %0 %293, 0
  %tmp1703 = bitcast double %mrv_gr29.i.i to i64
  %mrv_gr31.i.i = extractvalue %0 %293, 1
  %tmp1690 = trunc i64 %tmp1703 to i32
  %tmp1691 = bitcast i32 %tmp1690 to float
  store float %tmp1691, float* %178, align 8
  %tmp1693 = lshr i64 %tmp1703, 32
  %tmp1694 = trunc i64 %tmp1693 to i32
  %tmp1695 = bitcast i32 %tmp1694 to float
  store float %tmp1695, float* %179, align 4
  store float %mrv_gr31.i.i, float* %180, align 8
  br label %bb33.i.i

bb33.i.i:                                         ; preds = %llvm.trax.max.exit.i, %bb3.i.i.i, %bb1.i.i.i, %bb.i.i
  %temp.i.i.0.0 = phi float [ %tmp1691, %llvm.trax.max.exit.i ], [ %temp.i.i.0.1, %bb.i.i ], [ %temp.i.i.0.1, %bb1.i.i.i ], [ %temp.i.i.0.1, %bb3.i.i.i ]
  %temp.i.i.1.0 = phi float [ %tmp1695, %llvm.trax.max.exit.i ], [ %temp.i.i.1.1, %bb.i.i ], [ %temp.i.i.1.1, %bb1.i.i.i ], [ %temp.i.i.1.1, %bb3.i.i.i ]
  %temp.i.i.2.0 = phi float [ %mrv_gr31.i.i, %llvm.trax.max.exit.i ], [ %temp.i.i.2.1, %bb.i.i ], [ %temp.i.i.2.1, %bb1.i.i.i ], [ %temp.i.i.2.1, %bb3.i.i.i ]
  %memtmp13.i.i.0 = phi i128 [ %ins1723, %llvm.trax.max.exit.i ], [ %memtmp13.i.i.1, %bb.i.i ], [ %memtmp13.i.i.1, %bb1.i.i.i ], [ %memtmp13.i.i.1, %bb3.i.i.i ]
  %294 = add nsw i32 %storemerge.i.i, 1
  br label %bb34.i.i

bb34.i.i:                                         ; preds = %bb33.i.i, %bb121.i
  %temp.i.i.0.1 = phi float [ 0.000000e+00, %bb121.i ], [ %temp.i.i.0.0, %bb33.i.i ]
  %temp.i.i.1.1 = phi float [ 0.000000e+00, %bb121.i ], [ %temp.i.i.1.0, %bb33.i.i ]
  %temp.i.i.2.1 = phi float [ 0.000000e+00, %bb121.i ], [ %temp.i.i.2.0, %bb33.i.i ]
  %memtmp13.i.i.1 = phi i128 [ %memtmp13.i.i.3, %bb121.i ], [ %memtmp13.i.i.0, %bb33.i.i ]
  %memtmp.i.i.0 = phi i128 [ %memtmp.i.i.2, %bb121.i ], [ %ins1745, %bb33.i.i ]
  %storemerge.i.i = phi i32 [ 0, %bb121.i ], [ %294, %bb33.i.i ]
  %295 = icmp slt i32 %storemerge.i.i, %count.1
  br i1 %295, label %bb.i.i, label %invcont88

invcont88:                                        ; preds = %bb34.i.i
  %tmp1814 = bitcast float %temp.i.i.0.1 to i32
  %tmp1815 = zext i32 %tmp1814 to i96
  %tmp1808 = bitcast float %temp.i.i.1.1 to i32
  %tmp1809 = zext i32 %tmp1808 to i96
  %tmp1810 = shl nuw nsw i96 %tmp1809, 32
  %ins1812 = or i96 %tmp1815, %tmp1810
  %tmp1802 = bitcast float %temp.i.i.2.1 to i32
  %tmp908 = zext i96 %ins1812 to i128
  %mask909 = and i128 %memtmp156.i.1, -79228162514264337593543950336
  %tmp902 = zext i32 %tmp1802 to i128
  %tmp903 = shl nuw nsw i128 %tmp902, 64
  %mask904 = or i128 %mask909, %tmp908
  %ins905 = or i128 %mask904, %tmp903
  %tmp1520 = bitcast float %temp.i.i.0.1 to i32
  %tmp1521 = zext i32 %tmp1520 to i64
  %tmp1514 = bitcast float %temp.i.i.1.1 to i32
  %tmp1515 = zext i32 %tmp1514 to i64
  %tmp1516 = shl nuw i64 %tmp1515, 32
  %ins1518 = or i64 %tmp1521, %tmp1516
  %tmp890 = lshr i128 %ins905, 64
  %tmp891 = trunc i128 %tmp890 to i32
  %tmp892 = bitcast i32 %tmp891 to float
  %tmp1506 = bitcast i64 %ins1518 to double
  %296 = call fastcc %0 @_ZN5Color5timesES_(%struct.Color* %light.i, double %tmp1506, float %tmp892) nounwind
  %mrv_gr168.i = extractvalue %0 %296, 0
  %tmp885 = bitcast double %mrv_gr168.i to i64
  %mrv_gr170.i = extractvalue %0 %296, 1
  %extract = lshr i64 %tmp885, 32
  %extract.t3634 = trunc i64 %extract to i32
  %extract.t3635 = trunc i64 %tmp885 to i32
  %phitmp = bitcast i32 %extract.t3635 to float
  %phitmp3637 = bitcast i32 %extract.t3634 to float
  %297 = fcmp olt float %phitmp, 0.000000e+00
  br i1 %297, label %bb5.i, label %bb1.i

bb1.i:                                            ; preds = %invcont88
  %298 = fcmp ogt float %phitmp, 1.000000e+00
  br i1 %298, label %bb5.i, label %bb4.i

bb4.i:                                            ; preds = %bb1.i, %invcont83
  %.01640.0.off036393748 = phi float [ %phitmp, %bb1.i ], [ 0x3FE1F3B640000000, %invcont83 ]
  %.11641.0.off3236413747 = phi float [ %phitmp3637, %bb1.i ], [ 0x3FE753F7C0000000, %invcont83 ]
  %.21642.036433746 = phi float [ %mrv_gr170.i, %bb1.i ], [ 0x3FEF9DB220000000, %invcont83 ]
  %memtmp156.i.036473744 = phi i128 [ %ins905, %bb1.i ], [ %memtmp156.i.1, %invcont83 ]
  %memtmp138.i.036493743 = phi i128 [ %ins927, %bb1.i ], [ %memtmp138.i.1, %invcont83 ]
  %memtmp122.i.036533741 = phi i128 [ %ins971, %bb1.i ], [ %memtmp122.i.1, %invcont83 ]
  %memtmp115.i.136553740 = phi i128 [ %memtmp115.i.0, %bb1.i ], [ %memtmp115.i.2, %invcont83 ]
  %memtmp105.i.136573739 = phi i128 [ %memtmp105.i.0, %bb1.i ], [ %memtmp105.i.2, %invcont83 ]
  %memtmp60.i.036653735 = phi i128 [ %ins1103, %bb1.i ], [ %memtmp60.i.1, %invcont83 ]
  %memtmp54.i.036673734 = phi i128 [ %ins1125, %bb1.i ], [ %memtmp54.i.1, %invcont83 ]
  %memtmp47.i.136693733 = phi i128 [ %memtmp47.i.0, %bb1.i ], [ %memtmp47.i.2, %invcont83 ]
  %memtmp30.i.036733731 = phi i128 [ %ins1191, %bb1.i ], [ %memtmp30.i.1, %invcont83 ]
  %memtmp24.i.036753730 = phi i128 [ %ins1213, %bb1.i ], [ %memtmp24.i.1, %invcont83 ]
  %memtmp10.i.036793728 = phi i128 [ %ins1257, %bb1.i ], [ %memtmp10.i.1, %invcont83 ]
  %memtmp4.i.036813727 = phi i128 [ %ins1279, %bb1.i ], [ %memtmp4.i.1, %invcont83 ]
  %memtmp.i29.036833726 = phi i128 [ %ins1301, %bb1.i ], [ %memtmp.i29.1, %invcont83 ]
  %memtmp13.i.i.236873724 = phi i128 [ %memtmp13.i.i.1, %bb1.i ], [ %memtmp13.i.i.3, %invcont83 ]
  %memtmp.i.i.136893723 = phi i128 [ %memtmp.i.i.0, %bb1.i ], [ %memtmp.i.i.2, %invcont83 ]
  %memtmp.i15.i.036913722 = phi i128 [ %ins2004, %bb1.i ], [ %memtmp.i15.i.1, %invcont83 ]
  %memtmp.i30.i.036933721 = phi i128 [ %ins2072, %bb1.i ], [ %memtmp.i30.i.1, %invcont83 ]
  %memtmp24.i.i.037013717 = phi i128 [ %ins2440, %bb1.i ], [ %memtmp24.i.i.1, %invcont83 ]
  %memtmp18.i.i.037033716 = phi i128 [ %ins2462, %bb1.i ], [ %memtmp18.i.i.1, %invcont83 ]
  %memtmp4.i.i.037073714 = phi i128 [ %ins2506, %bb1.i ], [ %memtmp4.i.i.1, %invcont83 ]
  %memtmp.i123.i.037093713 = phi i128 [ %ins2528, %bb1.i ], [ %memtmp.i123.i.1, %invcont83 ]
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb1.i, %invcont88
  %memtmp.i123.i.03708 = phi i128 [ %memtmp.i123.i.037093713, %bb4.i ], [ %ins2528, %invcont88 ], [ %ins2528, %bb1.i ]
  %memtmp4.i.i.03706 = phi i128 [ %memtmp4.i.i.037073714, %bb4.i ], [ %ins2506, %invcont88 ], [ %ins2506, %bb1.i ]
  %memtmp18.i.i.03702 = phi i128 [ %memtmp18.i.i.037033716, %bb4.i ], [ %ins2462, %invcont88 ], [ %ins2462, %bb1.i ]
  %memtmp24.i.i.03700 = phi i128 [ %memtmp24.i.i.037013717, %bb4.i ], [ %ins2440, %invcont88 ], [ %ins2440, %bb1.i ]
  %memtmp.i30.i.03692 = phi i128 [ %memtmp.i30.i.036933721, %bb4.i ], [ %ins2072, %invcont88 ], [ %ins2072, %bb1.i ]
  %memtmp.i15.i.03690 = phi i128 [ %memtmp.i15.i.036913722, %bb4.i ], [ %ins2004, %invcont88 ], [ %ins2004, %bb1.i ]
  %memtmp.i.i.13688 = phi i128 [ %memtmp.i.i.136893723, %bb4.i ], [ %memtmp.i.i.0, %invcont88 ], [ %memtmp.i.i.0, %bb1.i ]
  %memtmp13.i.i.23686 = phi i128 [ %memtmp13.i.i.236873724, %bb4.i ], [ %memtmp13.i.i.1, %invcont88 ], [ %memtmp13.i.i.1, %bb1.i ]
  %memtmp.i29.03682 = phi i128 [ %memtmp.i29.036833726, %bb4.i ], [ %ins1301, %invcont88 ], [ %ins1301, %bb1.i ]
  %memtmp4.i.03680 = phi i128 [ %memtmp4.i.036813727, %bb4.i ], [ %ins1279, %invcont88 ], [ %ins1279, %bb1.i ]
  %memtmp10.i.03678 = phi i128 [ %memtmp10.i.036793728, %bb4.i ], [ %ins1257, %invcont88 ], [ %ins1257, %bb1.i ]
  %memtmp24.i.03674 = phi i128 [ %memtmp24.i.036753730, %bb4.i ], [ %ins1213, %invcont88 ], [ %ins1213, %bb1.i ]
  %memtmp30.i.03672 = phi i128 [ %memtmp30.i.036733731, %bb4.i ], [ %ins1191, %invcont88 ], [ %ins1191, %bb1.i ]
  %memtmp47.i.13668 = phi i128 [ %memtmp47.i.136693733, %bb4.i ], [ %memtmp47.i.0, %invcont88 ], [ %memtmp47.i.0, %bb1.i ]
  %memtmp54.i.03666 = phi i128 [ %memtmp54.i.036673734, %bb4.i ], [ %ins1125, %invcont88 ], [ %ins1125, %bb1.i ]
  %memtmp60.i.03664 = phi i128 [ %memtmp60.i.036653735, %bb4.i ], [ %ins1103, %invcont88 ], [ %ins1103, %bb1.i ]
  %memtmp105.i.13656 = phi i128 [ %memtmp105.i.136573739, %bb4.i ], [ %memtmp105.i.0, %invcont88 ], [ %memtmp105.i.0, %bb1.i ]
  %memtmp115.i.13654 = phi i128 [ %memtmp115.i.136553740, %bb4.i ], [ %memtmp115.i.0, %invcont88 ], [ %memtmp115.i.0, %bb1.i ]
  %memtmp122.i.03652 = phi i128 [ %memtmp122.i.036533741, %bb4.i ], [ %ins971, %invcont88 ], [ %ins971, %bb1.i ]
  %memtmp138.i.03648 = phi i128 [ %memtmp138.i.036493743, %bb4.i ], [ %ins927, %invcont88 ], [ %ins927, %bb1.i ]
  %memtmp156.i.03646 = phi i128 [ %memtmp156.i.036473744, %bb4.i ], [ %ins905, %invcont88 ], [ %ins905, %bb1.i ]
  %.21642.03642 = phi float [ %.21642.036433746, %bb4.i ], [ %mrv_gr170.i, %invcont88 ], [ %mrv_gr170.i, %bb1.i ]
  %.11641.0.off323640 = phi float [ %.11641.0.off3236413747, %bb4.i ], [ %phitmp3637, %invcont88 ], [ %phitmp3637, %bb1.i ]
  %r.i.0 = phi float [ %.01640.0.off036393748, %bb4.i ], [ 0.000000e+00, %invcont88 ], [ 1.000000e+00, %bb1.i ]
  %299 = fcmp olt float %.21642.03642, 0.000000e+00
  br i1 %299, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i
  %300 = fcmp ogt float %.21642.03642, 1.000000e+00
  br i1 %300, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i
  %b.i.0 = phi float [ %.21642.03642, %bb11.i ], [ 0.000000e+00, %bb5.i ], [ 1.000000e+00, %bb8.i ]
  %301 = fcmp olt float %.11641.0.off323640, 0.000000e+00
  br i1 %301, label %invcont100, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %302 = fcmp ogt float %.11641.0.off323640, 1.000000e+00
  br i1 %302, label %invcont100, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %invcont100

invcont100:                                       ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.i.0 = phi float [ %.11641.0.off323640, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %303 = mul nsw i32 %7, %181
  %304 = add nsw i32 %303, %182
  %305 = mul nsw i32 %304, 3
  %306 = add nsw i32 %9, %305
  call void @llvm.trax.storef(float %r.i.0, i32 %306, i32 0) nounwind
  call void @llvm.trax.storef(float %g.i.0, i32 %306, i32 1) nounwind
  call void @llvm.trax.storef(float %b.i.0, i32 %306, i32 2) nounwind
  %307 = call i32 @llvm.trax.atominc(i32 0)
  br label %bb101

bb101:                                            ; preds = %invcont100, %invcont74
  %memtmp156.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp156.i.03646, %invcont100 ]
  %memtmp138.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp138.i.03648, %invcont100 ]
  %memtmp122.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp122.i.03652, %invcont100 ]
  %memtmp115.i.2 = phi i128 [ undef, %invcont74 ], [ %memtmp115.i.13654, %invcont100 ]
  %memtmp105.i.2 = phi i128 [ undef, %invcont74 ], [ %memtmp105.i.13656, %invcont100 ]
  %memtmp60.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp60.i.03664, %invcont100 ]
  %memtmp54.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp54.i.03666, %invcont100 ]
  %memtmp47.i.2 = phi i128 [ undef, %invcont74 ], [ %memtmp47.i.13668, %invcont100 ]
  %memtmp30.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp30.i.03672, %invcont100 ]
  %memtmp24.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp24.i.03674, %invcont100 ]
  %memtmp10.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp10.i.03678, %invcont100 ]
  %memtmp4.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp4.i.03680, %invcont100 ]
  %memtmp.i29.1 = phi i128 [ undef, %invcont74 ], [ %memtmp.i29.03682, %invcont100 ]
  %memtmp13.i.i.3 = phi i128 [ undef, %invcont74 ], [ %memtmp13.i.i.23686, %invcont100 ]
  %memtmp.i.i.2 = phi i128 [ undef, %invcont74 ], [ %memtmp.i.i.13688, %invcont100 ]
  %memtmp.i15.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp.i15.i.03690, %invcont100 ]
  %memtmp.i30.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp.i30.i.03692, %invcont100 ]
  %memtmp24.i.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp24.i.i.03700, %invcont100 ]
  %memtmp18.i.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp18.i.i.03702, %invcont100 ]
  %memtmp4.i.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp4.i.i.03706, %invcont100 ]
  %memtmp.i123.i.1 = phi i128 [ undef, %invcont74 ], [ %memtmp.i123.i.03708, %invcont100 ]
  %storemerge2 = phi i32 [ %118, %invcont74 ], [ %307, %invcont100 ]
  %308 = icmp sgt i32 %119, %storemerge2
  br i1 %308, label %invcont83, label %return

return:                                           ; preds = %bb101
  ret i32 0

Unwind:                                           ; preds = %.noexc111, %.noexc, %bb.i105
  %eh_ptr = call i8* @llvm.eh.exception()
  %eh_select108 = call i32 (i8*, i8*, ...)* @llvm.eh.selector(i8* %eh_ptr, i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*), i32 0)
  call void @llvm.stackrestore(i8* %6)
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
