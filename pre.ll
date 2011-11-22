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

@sort_dim = internal unnamed_addr global i32 0

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
  %nearest.i = alloca [1000 x %struct.Photon], align 8
  %count_nearest.i = alloca i32, align 4
  %tempPhotons.i = alloca [1000 x %struct.Photon], align 8
  %map23 = alloca %struct.PhotonMap, align 8
  %ray = alloca %struct.Box, align 8
  %bvh = alloca %struct.BVH, align 8
  %map = alloca %struct.PhotonMap, align 8
  %ray27 = alloca %struct.Box, align 8
  %hit_record = alloca %struct.HitRecord, align 8
  %hit_record85 = alloca %struct.HitRecord, align 8
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
  %43 = alloca [1000 x %struct.Photon], align 1
  %.sub = getelementptr inbounds [1000 x %struct.Photon]* %43, i64 0, i64 0
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
  %storemerge = phi i64 [ 999, %invcont11 ], [ %51, %bb ]
  %52 = icmp eq i64 %storemerge, -1
  br i1 %52, label %bb13, label %bb

bb13:                                             ; preds = %bb12
  %53 = alloca [1000 x %struct.Photon], align 1
  %.sub2737 = getelementptr inbounds [1000 x %struct.Photon]* %53, i64 0, i64 0
  br label %bb15

bb14:                                             ; preds = %bb15
  %54 = getelementptr inbounds %struct.Photon* %.0198, i64 0, i32 1, i32 1
  %55 = bitcast %struct.Photon* %.0198 to i8*
  call void @llvm.memset.p0i8.i64(i8* %55, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %54, align 4
  %56 = getelementptr inbounds %struct.Photon* %.0198, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %56, align 4
  %57 = getelementptr inbounds %struct.Photon* %.0198, i64 0, i32 2, i64 0
  store float 1.000000e+00, float* %57, align 4
  %58 = getelementptr inbounds %struct.Photon* %.0198, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %58, align 4
  %59 = getelementptr inbounds %struct.Photon* %.0198, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %59, align 4
  %60 = getelementptr inbounds %struct.Photon* %.0198, i64 1
  %61 = add nsw i64 %storemerge1, -1
  br label %bb15

bb15:                                             ; preds = %bb14, %bb13
  %.0198 = phi %struct.Photon* [ %.sub2737, %bb13 ], [ %60, %bb14 ]
  %storemerge1 = phi i64 [ 999, %bb13 ], [ %61, %bb14 ]
  %62 = icmp eq i64 %storemerge1, -1
  br i1 %62, label %invcont18, label %bb14

invcont18:                                        ; preds = %bb15
  %63 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %64 = call float @llvm.trax.loadf(i32 %63, i32 0) nounwind
  %65 = call float @llvm.trax.loadf(i32 %63, i32 1) nounwind
  %66 = call float @llvm.trax.loadf(i32 %63, i32 2) nounwind
  %tmp414 = bitcast float %64 to i32
  %tmp408 = bitcast float %65 to i32
  %tmp402 = bitcast float %66 to i32
  %67 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 0, i32 0
  %68 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 0
  %69 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 1
  %70 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 2
  %71 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 0, i32 2
  %73 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 1
  %74 = getelementptr inbounds %struct.Box* %ray27, i64 0, i32 1, i32 2
  %75 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 0
  %76 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 1
  %77 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 2
  %78 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 0
  %79 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 1
  %80 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 2
  %81 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 0
  %82 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 1
  %83 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 2
  %84 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %85 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %86 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  %87 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %.4684.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 2
  br label %bb71

bb23:                                             ; preds = %bb69
  %88 = add nsw i32 %bounces.0, 1
  br label %bb.i99

bb.i99:                                           ; preds = %.noexc106, %bb23
  %89 = invoke float @llvm.trax.rand()
          to label %.noexc unwind label %Unwind

.noexc:                                           ; preds = %bb.i99
  %90 = fadd float %89, -5.000000e-01
  %91 = fmul float %90, 2.000000e+00
  %92 = invoke float @llvm.trax.rand()
          to label %.noexc105 unwind label %Unwind

.noexc105:                                        ; preds = %.noexc
  %93 = fadd float %92, -5.000000e-01
  %94 = fmul float %93, 2.000000e+00
  %95 = invoke float @llvm.trax.rand()
          to label %.noexc106 unwind label %Unwind

.noexc106:                                        ; preds = %.noexc105
  %96 = fadd float %95, -5.000000e-01
  %97 = fmul float %96, 2.000000e+00
  %98 = fmul float %91, %91
  %99 = fmul float %94, %94
  %100 = fadd float %98, %99
  %101 = fmul float %97, %97
  %102 = fadd float %100, %101
  %103 = fcmp ogt float %102, 1.000000e+00
  br i1 %103, label %bb.i99, label %invcont42

invcont42:                                        ; preds = %.noexc106
  %tmp2372 = bitcast float %91 to i32
  %tmp2373 = zext i32 %tmp2372 to i96
  %tmp2366 = bitcast float %94 to i32
  %tmp2367 = zext i32 %tmp2366 to i96
  %tmp2368 = shl nuw nsw i96 %tmp2367, 32
  %ins2370 = or i96 %tmp2373, %tmp2368
  %tmp2360 = bitcast float %97 to i32
  %tmp305 = zext i96 %ins2370 to i128
  %mask306 = and i128 %memtmp30.0, -79228162514264337593543950336
  %tmp299 = zext i32 %tmp2360 to i128
  %tmp300 = shl nuw nsw i128 %tmp299, 64
  %mask301 = or i128 %mask306, %tmp305
  %ins302 = or i128 %mask301, %tmp300
  %ins302.tr = trunc i128 %ins302 to i96
  %104 = bitcast %struct.Box* %ray27 to i8*
  call void @llvm.memset.p0i8.i64(i8* %104, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %69, align 4
  store float 0.000000e+00, float* %70, align 4
  %tmp2408 = bitcast i32 %ray_origin.0.ph.off0 to float
  store float %tmp2408, float* %67, align 8
  %tmp2405 = bitcast i32 %ray_origin.0.ph.off32 to float
  store float %tmp2405, float* %71, align 4
  %tmp2401 = bitcast i32 %ray_origin.0.ph.off64 to float
  store float %tmp2401, float* %72, align 8
  store float %91, float* %68, align 4
  store float %94, float* %73, align 4
  %tmp2377 = lshr i96 %ins302.tr, 64
  %tmp2378 = trunc i96 %tmp2377 to i32
  %tmp2379 = bitcast i32 %tmp2378 to float
  store float %tmp2379, float* %74, align 4
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
  store float 0.000000e+00, float* %86, align 4
  store float 1.000000e+10, float* %87, align 8
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record, %struct.Box* %ray27)
  %105 = load float* %87, align 8
  %106 = fcmp olt float %105, 1.000000e+10
  br i1 %106, label %invcont61, label %bb69

invcont61:                                        ; preds = %invcont42
  %tmp686 = load float* %.4684.2, align 4
  %ray27.idx191.val = load float* %68, align 4
  %ray27.idx192.val = load float* %73, align 4
  %ray27.idx193.val = load float* %74, align 4
  %107 = call fastcc %0 @_ZN9HitRecord12hit_positionE3Ray(float %105, float %ray27.idx191.val, float %ray27.idx192.val, float %ray27.idx193.val)
  %mrv_gr51 = extractvalue %0 %107, 0
  %tmp282 = bitcast double %mrv_gr51 to i64
  %mrv_gr53 = extractvalue %0 %107, 1
  %tmp276 = bitcast float %mrv_gr53 to i32
  %tmp272 = lshr i64 %tmp282, 32
  %tmp2429 = trunc i64 %tmp282 to i32
  %tmp2430 = bitcast i32 %tmp2429 to float
  %tmp2426 = trunc i64 %tmp272 to i32
  %tmp2427 = bitcast i32 %tmp2426 to float
  %108 = sext i32 %count.0.ph to i64
  %.0325 = getelementptr inbounds [1000 x %struct.Photon]* %43, i64 0, i64 %108, i32 0, i32 0
  store float %tmp2430, float* %.0325, align 4
  %.1327 = getelementptr inbounds [1000 x %struct.Photon]* %43, i64 0, i64 %108, i32 0, i32 1
  store float %tmp2427, float* %.1327, align 4
  %.2329 = getelementptr inbounds [1000 x %struct.Photon]* %43, i64 0, i64 %108, i32 0, i32 2
  store float %mrv_gr53, float* %.2329, align 4
  %.1.0 = getelementptr inbounds [1000 x %struct.Photon]* %43, i64 0, i64 %108, i32 1, i32 0
  store float 0.000000e+00, float* %.1.0, align 4
  %.1.1 = getelementptr inbounds [1000 x %struct.Photon]* %43, i64 0, i64 %108, i32 1, i32 1
  store float 0.000000e+00, float* %.1.1, align 4
  %.1.2 = getelementptr inbounds [1000 x %struct.Photon]* %43, i64 0, i64 %108, i32 1, i32 2
  store float 0.000000e+00, float* %.1.2, align 4
  %.2.0 = getelementptr inbounds [1000 x %struct.Photon]* %43, i64 0, i64 %108, i32 2, i64 0
  store float %tmp686, float* %.2.0, align 4
  %.2.1 = getelementptr inbounds [1000 x %struct.Photon]* %43, i64 0, i64 %108, i32 2, i64 1
  store float %tmp686, float* %.2.1, align 4
  %.2.2 = getelementptr inbounds [1000 x %struct.Photon]* %43, i64 0, i64 %108, i32 2, i64 2
  store float %tmp686, float* %.2.2, align 4
  %109 = add nsw i32 %count.0.ph, 1
  %tmp250 = lshr i64 %tmp282, 32
  %extract.t = trunc i64 %tmp282 to i32
  %extract.t2792 = trunc i64 %tmp250 to i32
  br label %bb68.outer

bb68.outer:                                       ; preds = %bb71, %invcont61
  %memtmp30.0.ph = phi i128 [ %ins302, %invcont61 ], [ %memtmp30.1, %bb71 ]
  %ray_origin.0.ph.off0 = phi i32 [ %extract.t, %invcont61 ], [ %ray_origin.1.off0, %bb71 ]
  %ray_origin.0.ph.off32 = phi i32 [ %extract.t2792, %invcont61 ], [ %ray_origin.1.off32, %bb71 ]
  %ray_origin.0.ph.off64 = phi i32 [ %tmp276, %invcont61 ], [ %ray_origin.1.off64, %bb71 ]
  %bounces.0.ph = phi i32 [ %88, %invcont61 ], [ 0, %bb71 ]
  %count.0.ph = phi i32 [ %109, %invcont61 ], [ %count.1, %bb71 ]
  br label %bb69

bb69:                                             ; preds = %bb68.outer, %invcont42
  %bounces.0 = phi i32 [ %88, %invcont42 ], [ %bounces.0.ph, %bb68.outer ]
  %memtmp30.0 = phi i128 [ %ins302, %invcont42 ], [ %memtmp30.0.ph, %bb68.outer ]
  %110 = icmp slt i32 %bounces.0, 3
  br i1 %110, label %bb23, label %bb71

bb71:                                             ; preds = %bb69, %invcont18
  %memtmp30.1 = phi i128 [ undef, %invcont18 ], [ %memtmp30.0, %bb69 ]
  %ray_origin.1.off0 = phi i32 [ %tmp414, %invcont18 ], [ %ray_origin.0.ph.off0, %bb69 ]
  %ray_origin.1.off32 = phi i32 [ %tmp408, %invcont18 ], [ %ray_origin.0.ph.off32, %bb69 ]
  %ray_origin.1.off64 = phi i32 [ %tmp402, %invcont18 ], [ %ray_origin.0.ph.off64, %bb69 ]
  %count.1 = phi i32 [ 0, %invcont18 ], [ %count.0.ph, %bb69 ]
  %111 = icmp slt i32 %count.1, 1000
  br i1 %111, label %bb68.outer, label %bb72

bb72:                                             ; preds = %bb71
  %112 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 0, i32 1, i32 1
  %113 = bitcast %struct.PhotonMap* %map to i8*
  call void @llvm.memset.p0i8.i64(i8* %113, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %112, align 4
  %114 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 0, i32 1, i32 2
  store float 0.000000e+00, float* %114, align 4
  %115 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 0, i32 2, i64 0
  store float 1.000000e+00, float* %115, align 8
  %116 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 0, i32 2, i64 1
  store float 1.000000e+00, float* %116, align 4
  %117 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 0, i32 2, i64 2
  store float 1.000000e+00, float* %117, align 8
  %118 = getelementptr inbounds [1000 x %struct.Photon]* %53, i64 0, i64 0
  %119 = getelementptr inbounds [1000 x %struct.Photon]* %43, i64 0, i64 0
  invoke fastcc void @_ZN9PhotonMap8generateEP6PhotonS1_ii(%struct.PhotonMap* %map, %struct.Photon* %119, %struct.Photon* %118, i32 %count.1, i32 0)
          to label %invcont75 unwind label %Unwind

invcont75:                                        ; preds = %bb72
  %120 = call i32 @llvm.trax.atominc(i32 0)
  %121 = mul nsw i32 %5, %6
  %122 = sitofp i32 %5 to float
  %123 = fdiv float %122, -2.000000e+00
  %124 = sitofp i32 %6 to float
  %125 = fdiv float %124, -2.000000e+00
  %126 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 0
  %127 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 1
  %128 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 2
  %129 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 0
  %130 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 1
  %131 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 2
  %132 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %133 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %134 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %135 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %136 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %137 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %138 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %139 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 0, i32 0
  %140 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 0, i32 1
  %141 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 0, i32 2
  %142 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 1, i32 0
  %143 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 1, i32 1
  %144 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 1, i32 2
  %145 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 2, i32 0
  %146 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 2, i32 1
  %147 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 2, i32 2
  %148 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 4, i32 0, i32 0
  %149 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 4, i32 0, i32 1
  %150 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 4, i32 0, i32 2
  %151 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 0
  %hit_record85.0 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 0
  %hit_record85.1951.0 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 0, i32 0
  %hit_record85.1951.1 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 0, i32 1
  %hit_record85.1951.2 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 0, i32 2
  %hit_record85.1.1.0 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 1, i32 0
  %hit_record85.1.1.1 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 1, i32 1
  %hit_record85.1.1.2 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 1, i32 2
  %hit_record85.1.2.0 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 2, i32 0
  %hit_record85.1.2.1 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 2, i32 1
  %hit_record85.1.2.2 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 2, i32 2
  %hit_record85.1.4927.0 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 4, i32 0, i32 0
  %hit_record85.1.4927.1 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 4, i32 0, i32 1
  %hit_record85.1.4927.2 = getelementptr inbounds %struct.HitRecord* %hit_record85, i64 0, i32 1, i32 4, i32 0, i32 2
  %ray960.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray960.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray960.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.1.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.1.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.1.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %tmp24 = bitcast %struct.PhotonMap* %map23 to i8*
  %tmp25 = bitcast %struct.PhotonMap* %map to i8*
  %152 = getelementptr inbounds [1000 x %struct.Photon]* %nearest.i, i64 0, i64 0
  %153 = getelementptr inbounds %struct.Color* %3, i64 0, i32 0
  %154 = getelementptr inbounds %struct.Color* %3, i64 0, i32 1
  %155 = getelementptr inbounds %struct.Color* %3, i64 0, i32 2
  %156 = getelementptr inbounds %struct.Color* %2, i64 0, i32 0
  %157 = getelementptr inbounds %struct.Color* %2, i64 0, i32 1
  %158 = getelementptr inbounds %struct.Color* %2, i64 0, i32 2
  %159 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 0
  %160 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 1
  %161 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 2
  %162 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %163 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %164 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %165 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 0
  %166 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 1
  %167 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 2
  %168 = getelementptr inbounds [1000 x %struct.Photon]* %tempPhotons.i, i64 0, i64 0
  %169 = sitofp i32 %count.1 to double
  %170 = fmul double %169, 0x3FF8A14D4A15A4D3
  br label %bb116

bb76:                                             ; preds = %bb116
  %171 = sdiv i32 %storemerge2, %5
  %172 = srem i32 %storemerge2, %5
  %173 = sitofp i32 %172 to float
  %174 = fadd float %173, %123
  %175 = fadd float %174, 5.000000e-01
  %176 = fmul float %175, 2.000000e+00
  %177 = fdiv float %176, %122
  %178 = sitofp i32 %171 to float
  %179 = fadd float %178, %125
  %180 = fadd float %179, 5.000000e-01
  %181 = fmul float %180, 2.000000e+00
  %182 = fdiv float %181, %124
  br label %bb101

bb83:                                             ; preds = %bb101
  %183 = invoke float @llvm.trax.rand()
          to label %invcont86 unwind label %Unwind

invcont86:                                        ; preds = %bb83
  %184 = invoke float @llvm.trax.rand()
          to label %invcont89 unwind label %Unwind

invcont89:                                        ; preds = %invcont86
  %185 = fadd float %183, -5.000000e-01
  %186 = fmul float %185, 2.000000e+00
  %187 = fadd float %184, -5.000000e-01
  %188 = fmul float %187, 2.000000e+00
  %189 = fmul float %186, %8
  %190 = fmul float %188, %9
  %191 = fadd float %182, %190
  %192 = fadd float %177, %189
  store float %23, float* %129, align 8
  store float %24, float* %130, align 4
  store float %25, float* %131, align 8
  %193 = fmul float %31, %191
  %194 = fmul float %32, %191
  %195 = fmul float %33, %191
  %tmp2691 = bitcast float %193 to i32
  %tmp2692 = zext i32 %tmp2691 to i96
  %tmp2685 = bitcast float %194 to i32
  %tmp2686 = zext i32 %tmp2685 to i96
  %tmp2687 = shl nuw nsw i96 %tmp2686, 32
  %ins2689 = or i96 %tmp2692, %tmp2687
  %tmp2679 = bitcast float %195 to i32
  %tmp2549 = zext i96 %ins2689 to i128
  %mask2550 = and i128 %memtmp.i149.0, -79228162514264337593543950336
  %tmp2543 = zext i32 %tmp2679 to i128
  %tmp2544 = shl nuw nsw i128 %tmp2543, 64
  %mask2545 = or i128 %mask2550, %tmp2549
  %ins2546 = or i128 %mask2545, %tmp2544
  %tmp2592 = bitcast float %193 to i32
  %tmp2593 = zext i32 %tmp2592 to i64
  %tmp2586 = bitcast float %194 to i32
  %tmp2587 = zext i32 %tmp2586 to i64
  %tmp2588 = shl nuw i64 %tmp2587, 32
  %ins2590 = or i64 %tmp2593, %tmp2588
  %ins2546.tr = trunc i128 %ins2546 to i96
  %196 = fmul float %27, %192
  %197 = fmul float %28, %192
  %198 = fmul float %29, %192
  %tmp2714 = bitcast float %196 to i32
  %tmp2715 = zext i32 %tmp2714 to i96
  %tmp2708 = bitcast float %197 to i32
  %tmp2709 = zext i32 %tmp2708 to i96
  %tmp2710 = shl nuw nsw i96 %tmp2709, 32
  %ins2712 = or i96 %tmp2715, %tmp2710
  %tmp2702 = bitcast float %198 to i32
  %tmp2527 = zext i96 %ins2712 to i128
  %mask2528 = and i128 %memtmp4.i150.0, -79228162514264337593543950336
  %tmp2521 = zext i32 %tmp2702 to i128
  %tmp2522 = shl nuw nsw i128 %tmp2521, 64
  %mask2523 = or i128 %mask2528, %tmp2527
  %ins2524 = or i128 %mask2523, %tmp2522
  store float %196, float* %132, align 8
  store float %197, float* %133, align 4
  %tmp2509 = lshr i128 %ins2524, 64
  %tmp2510 = trunc i128 %tmp2509 to i32
  %tmp2511 = bitcast i32 %tmp2510 to float
  store float %tmp2511, float* %134, align 8
  %tmp2578 = bitcast i64 %ins2590 to double
  %tmp2573 = lshr i96 %ins2546.tr, 64
  %tmp2574 = trunc i96 %tmp2573 to i32
  %tmp2575 = bitcast i32 %tmp2574 to float
  %199 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %0, double %tmp2578, float %tmp2575) nounwind
  %mrv_gr14.i170 = extractvalue %0 %199, 0
  %mrv_gr16.i = extractvalue %0 %199, 1
  %200 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %ln.i, double %mrv_gr14.i170, float %mrv_gr16.i) nounwind
  %mrv_gr24.i172 = extractvalue %0 %200, 0
  %tmp2482 = bitcast double %mrv_gr24.i172 to i64
  %mrv_gr26.i174 = extractvalue %0 %200, 1
  %tmp2469 = trunc i64 %tmp2482 to i32
  %tmp2470 = bitcast i32 %tmp2469 to float
  store float %tmp2470, float* %126, align 8
  %tmp2472 = lshr i64 %tmp2482, 32
  %tmp2473 = trunc i64 %tmp2472 to i32
  %tmp2474 = bitcast i32 %tmp2473 to float
  store float %tmp2474, float* %127, align 4
  store float %mrv_gr26.i174, float* %128, align 8
  %201 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %V.i) nounwind
  %mrv_gr30.i = extractvalue %0 %201, 0
  %tmp2460 = bitcast double %mrv_gr30.i to i64
  %mrv_gr32.i = extractvalue %0 %201, 1
  %tmp2450 = lshr i64 %tmp2460, 32
  %tmp2637 = trunc i64 %tmp2460 to i32
  %tmp2638 = bitcast i32 %tmp2637 to float
  %tmp2634 = trunc i64 %tmp2450 to i32
  %tmp2635 = bitcast i32 %tmp2634 to float
  store float %15, float* %34, align 8
  store float %16, float* %135, align 4
  store float %17, float* %136, align 8
  store float %tmp2638, float* %35, align 4
  store float %tmp2635, float* %137, align 4
  store float %mrv_gr32.i, float* %138, align 4
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
  store float 0.000000e+00, float* %149, align 4
  store float 0.000000e+00, float* %150, align 4
  store float 1.000000e+10, float* %151, align 8
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record85, %struct.Box* %ray)
  %tmp921 = load float* %hit_record85.0, align 8
  %tmp952 = load float* %hit_record85.1951.0, align 4
  %tmp953 = load float* %hit_record85.1951.1, align 4
  %tmp954 = load float* %hit_record85.1951.2, align 4
  %tmp944 = load float* %hit_record85.1.1.0, align 4
  %tmp945 = load float* %hit_record85.1.1.1, align 4
  %tmp946 = load float* %hit_record85.1.1.2, align 4
  %tmp938 = load float* %hit_record85.1.2.0, align 4
  %tmp939 = load float* %hit_record85.1.2.1, align 4
  %tmp940 = load float* %hit_record85.1.2.2, align 4
  %tmp928 = load float* %hit_record85.1.4927.0, align 4
  %tmp929 = load float* %hit_record85.1.4927.1, align 4
  %tmp930 = load float* %hit_record85.1.4927.2, align 4
  %tmp961 = load float* %ray960.0, align 8
  %tmp962 = load float* %ray960.1, align 4
  %tmp963 = load float* %ray960.2, align 8
  %tmp957 = load float* %ray.1.0, align 4
  %tmp958 = load float* %ray.1.1, align 4
  %tmp959 = load float* %ray.1.2, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp24, i8* %tmp25, i64 52, i32 8, i1 false)
  %202 = fcmp olt float %tmp921, 1.000000e+10
  br i1 %202, label %bb2.i, label %invcont94

bb1.i37:                                          ; preds = %bb2.i
  %203 = getelementptr inbounds %struct.Photon* %.0199, i64 0, i32 1, i32 1
  %204 = bitcast %struct.Photon* %.0199 to i8*
  call void @llvm.memset.p0i8.i64(i8* %204, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %203, align 4
  %205 = getelementptr inbounds %struct.Photon* %.0199, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %205, align 4
  %206 = getelementptr inbounds %struct.Photon* %.0199, i64 0, i32 2, i64 0
  store float 1.000000e+00, float* %206, align 4
  %207 = getelementptr inbounds %struct.Photon* %.0199, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %207, align 4
  %208 = getelementptr inbounds %struct.Photon* %.0199, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %208, align 4
  %209 = getelementptr inbounds %struct.Photon* %.0199, i64 1
  %210 = add nsw i64 %storemerge.i, -1
  br label %bb2.i

bb2.i:                                            ; preds = %bb1.i37, %invcont89
  %.0199 = phi %struct.Photon* [ %209, %bb1.i37 ], [ %152, %invcont89 ]
  %storemerge.i = phi i64 [ %210, %bb1.i37 ], [ 999, %invcont89 ]
  %211 = icmp eq i64 %storemerge.i, -1
  br i1 %211, label %bb3.i42, label %bb1.i37

bb3.i42:                                          ; preds = %bb2.i
  store i32 0, i32* %count_nearest.i, align 4
  %tmp2037 = bitcast float %tmp957 to i32
  %tmp2038 = zext i32 %tmp2037 to i96
  %tmp2031 = bitcast float %tmp958 to i32
  %tmp2032 = zext i32 %tmp2031 to i96
  %tmp2033 = shl nuw nsw i96 %tmp2032, 32
  %ins2035 = or i96 %tmp2038, %tmp2033
  %tmp2025 = bitcast float %tmp959 to i32
  %tmp1181 = zext i96 %ins2035 to i128
  %mask1182 = and i128 %memtmp.i35.1, -79228162514264337593543950336
  %tmp1175 = zext i32 %tmp2025 to i128
  %tmp1176 = shl nuw nsw i128 %tmp1175, 64
  %mask1177 = or i128 %mask1182, %tmp1181
  %ins1178 = or i128 %mask1177, %tmp1176
  %tmp1163 = lshr i128 %ins1178, 64
  %tmp1164 = trunc i128 %tmp1163 to i32
  %tmp1165 = bitcast i32 %tmp1164 to float
  %212 = fmul float %tmp957, %tmp921
  %213 = fmul float %tmp958, %tmp921
  %214 = fmul float %tmp1165, %tmp921
  %tmp2060 = bitcast float %212 to i32
  %tmp2061 = zext i32 %tmp2060 to i96
  %tmp2054 = bitcast float %213 to i32
  %tmp2055 = zext i32 %tmp2054 to i96
  %tmp2056 = shl nuw nsw i96 %tmp2055, 32
  %ins2058 = or i96 %tmp2061, %tmp2056
  %tmp2048 = bitcast float %214 to i32
  %tmp1159 = zext i96 %ins2058 to i128
  %mask1160 = and i128 %memtmp7.i.1, -79228162514264337593543950336
  %tmp1153 = zext i32 %tmp2048 to i128
  %tmp1154 = shl nuw nsw i128 %tmp1153, 64
  %mask1155 = or i128 %mask1160, %tmp1159
  %ins1156 = or i128 %mask1155, %tmp1154
  %tmp1326 = bitcast float %212 to i32
  %tmp1327 = zext i32 %tmp1326 to i64
  %tmp1320 = bitcast float %213 to i32
  %tmp1321 = zext i32 %tmp1320 to i64
  %tmp1322 = shl nuw i64 %tmp1321, 32
  %ins1324 = or i64 %tmp1327, %tmp1322
  %ins1156.tr = trunc i128 %ins1156 to i96
  %tmp2083 = bitcast float %tmp961 to i32
  %tmp2084 = zext i32 %tmp2083 to i96
  %tmp2077 = bitcast float %tmp962 to i32
  %tmp2078 = zext i32 %tmp2077 to i96
  %tmp2079 = shl nuw nsw i96 %tmp2078, 32
  %ins2081 = or i96 %tmp2084, %tmp2079
  %tmp2071 = bitcast float %tmp963 to i32
  %tmp1137 = zext i96 %ins2081 to i128
  %mask1138 = and i128 %memtmp13.i.1, -79228162514264337593543950336
  %tmp1131 = zext i32 %tmp2071 to i128
  %tmp1132 = shl nuw nsw i128 %tmp1131, 64
  %mask1133 = or i128 %mask1138, %tmp1137
  %ins1134 = or i128 %mask1133, %tmp1132
  store float %tmp961, float* %153, align 8
  store float %tmp962, float* %154, align 4
  %tmp1119 = lshr i128 %ins1134, 64
  %tmp1120 = trunc i128 %tmp1119 to i32
  %tmp1121 = bitcast i32 %tmp1120 to float
  store float %tmp1121, float* %155, align 8
  %tmp1312 = bitcast i64 %ins1324 to double
  %tmp1307 = lshr i96 %ins1156.tr, 64
  %tmp1308 = trunc i96 %tmp1307 to i32
  %tmp1309 = bitcast i32 %tmp1308 to float
  %215 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %3, double %tmp1312, float %tmp1309) nounwind
  %mrv_gr23.i = extractvalue %0 %215, 0
  %mrv_gr25.i = extractvalue %0 %215, 1
  %tmp1945 = bitcast float %tmp944 to i32
  %tmp1946 = zext i32 %tmp1945 to i96
  %tmp1939 = bitcast float %tmp945 to i32
  %tmp1940 = zext i32 %tmp1939 to i96
  %tmp1941 = shl nuw nsw i96 %tmp1940, 32
  %ins1943 = or i96 %tmp1946, %tmp1941
  %tmp1933 = bitcast float %tmp946 to i32
  %tmp1832 = zext i96 %ins1943 to i128
  %mask1833 = and i128 %memtmp.i74.i.1, -79228162514264337593543950336
  %tmp1826 = zext i32 %tmp1933 to i128
  %tmp1827 = shl nuw nsw i128 %tmp1826, 64
  %mask1828 = or i128 %mask1833, %tmp1832
  %ins1829 = or i128 %mask1828, %tmp1827
  %tmp1875 = bitcast float %tmp944 to i32
  %tmp1876 = zext i32 %tmp1875 to i64
  %tmp1869 = bitcast float %tmp945 to i32
  %tmp1870 = zext i32 %tmp1869 to i64
  %tmp1871 = shl nuw i64 %tmp1870, 32
  %ins1873 = or i64 %tmp1876, %tmp1871
  %ins1829.tr = trunc i128 %ins1829 to i96
  %tmp1968 = bitcast float %tmp952 to i32
  %tmp1969 = zext i32 %tmp1968 to i96
  %tmp1962 = bitcast float %tmp953 to i32
  %tmp1963 = zext i32 %tmp1962 to i96
  %tmp1964 = shl nuw nsw i96 %tmp1963, 32
  %ins1966 = or i96 %tmp1969, %tmp1964
  %tmp1956 = bitcast float %tmp954 to i32
  %tmp1810 = zext i96 %ins1966 to i128
  %mask1811 = and i128 %memtmp4.i.i.1, -79228162514264337593543950336
  %tmp1804 = zext i32 %tmp1956 to i128
  %tmp1805 = shl nuw nsw i128 %tmp1804, 64
  %mask1806 = or i128 %mask1811, %tmp1810
  %ins1807 = or i128 %mask1806, %tmp1805
  store float %tmp952, float* %156, align 8
  store float %tmp953, float* %157, align 4
  %tmp1792 = lshr i128 %ins1807, 64
  %tmp1793 = trunc i128 %tmp1792 to i32
  %tmp1794 = bitcast i32 %tmp1793 to float
  store float %tmp1794, float* %158, align 8
  %tmp1861 = bitcast i64 %ins1873 to double
  %tmp1856 = lshr i96 %ins1829.tr, 64
  %tmp1857 = trunc i96 %tmp1856 to i32
  %tmp1858 = bitcast i32 %tmp1857 to float
  %216 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %2, double %tmp1861, float %tmp1858) nounwind
  %mrv_gr14.i.i = extractvalue %0 %216, 0
  %tmp1787 = bitcast double %mrv_gr14.i.i to i64
  %mrv_gr16.i.i = extractvalue %0 %216, 1
  %tmp1774 = trunc i64 %tmp1787 to i32
  %tmp1775 = bitcast i32 %tmp1774 to float
  store float %tmp1775, float* %159, align 8
  %tmp1777 = lshr i64 %tmp1787, 32
  %tmp1778 = trunc i64 %tmp1777 to i32
  %tmp1779 = bitcast i32 %tmp1778 to float
  store float %tmp1779, float* %160, align 4
  store float %mrv_gr16.i.i, float* %161, align 8
  %tmp1991 = bitcast float %tmp938 to i32
  %tmp1992 = zext i32 %tmp1991 to i96
  %tmp1985 = bitcast float %tmp939 to i32
  %tmp1986 = zext i32 %tmp1985 to i96
  %tmp1987 = shl nuw nsw i96 %tmp1986, 32
  %ins1989 = or i96 %tmp1992, %tmp1987
  %tmp1979 = bitcast float %tmp940 to i32
  %tmp1766 = zext i96 %ins1989 to i128
  %mask1767 = and i128 %memtmp18.i.i.1, -79228162514264337593543950336
  %tmp1760 = zext i32 %tmp1979 to i128
  %tmp1761 = shl nuw nsw i128 %tmp1760, 64
  %mask1762 = or i128 %mask1767, %tmp1766
  %ins1763 = or i128 %mask1762, %tmp1761
  %tmp1899 = bitcast float %tmp938 to i32
  %tmp1900 = zext i32 %tmp1899 to i64
  %tmp1893 = bitcast float %tmp939 to i32
  %tmp1894 = zext i32 %tmp1893 to i64
  %tmp1895 = shl nuw i64 %tmp1894, 32
  %ins1897 = or i64 %tmp1900, %tmp1895
  %ins1763.tr = trunc i128 %ins1763 to i96
  %ins2012 = or i96 %tmp1946, %tmp1941
  %tmp1744 = zext i96 %ins2012 to i128
  %mask1745 = and i128 %memtmp24.i.i.1, -79228162514264337593543950336
  %mask1740 = or i128 %mask1745, %tmp1744
  %ins1741 = or i128 %mask1740, %tmp1827
  store float %tmp944, float* %162, align 8
  store float %tmp945, float* %163, align 4
  %tmp1726 = lshr i128 %ins1741, 64
  %tmp1727 = trunc i128 %tmp1726 to i32
  %tmp1728 = bitcast i32 %tmp1727 to float
  store float %tmp1728, float* %164, align 8
  %tmp1885 = bitcast i64 %ins1897 to double
  %tmp1880 = lshr i96 %ins1763.tr, 64
  %tmp1881 = trunc i96 %tmp1880 to i32
  %tmp1882 = bitcast i32 %tmp1881 to float
  %217 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %1, double %tmp1885, float %tmp1882) nounwind
  %mrv_gr36.i.i = extractvalue %0 %217, 0
  %mrv_gr38.i.i = extractvalue %0 %217, 1
  %218 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %edge1.i.i, double %mrv_gr36.i.i, float %mrv_gr38.i.i) nounwind
  %mrv_gr46.i.i = extractvalue %0 %218, 0
  %tmp1699 = bitcast double %mrv_gr46.i.i to i64
  %mrv_gr48.i.i = extractvalue %0 %218, 1
  %tmp1686 = trunc i64 %tmp1699 to i32
  %tmp1687 = bitcast i32 %tmp1686 to float
  store float %tmp1687, float* %165, align 8
  %tmp1689 = lshr i64 %tmp1699, 32
  %tmp1690 = trunc i64 %tmp1689 to i32
  %tmp1691 = bitcast i32 %tmp1690 to float
  store float %tmp1691, float* %166, align 4
  store float %mrv_gr48.i.i, float* %167, align 8
  %219 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %n.i.i) nounwind
  %mrv_gr52.i.i = extractvalue %0 %219, 0
  %tmp1677 = bitcast double %mrv_gr52.i.i to i64
  %mrv_gr54.i.i = extractvalue %0 %219, 1
  %tmp1671 = bitcast float %mrv_gr54.i.i to i32
  %tmp1667 = lshr i64 %tmp1677, 32
  %tmp1923 = zext i64 %tmp1677 to i96
  %tmp1917 = zext i64 %tmp1667 to i96
  %tmp1918 = shl nuw nsw i96 %tmp1917, 32
  %tmp1923.masked = and i96 %tmp1923, 4294967295
  %ins1920 = or i96 %tmp1923.masked, %tmp1918
  %tmp1093 = zext i96 %ins1920 to i128
  %mask1094 = and i128 %memtmp27.i.1, -79228162514264337593543950336
  %tmp1087 = zext i32 %tmp1671 to i128
  %tmp1088 = shl nuw nsw i128 %tmp1087, 64
  %mask1089 = or i128 %mask1094, %tmp1093
  %ins1090 = or i128 %mask1089, %tmp1088
  %ins1090.tr = trunc i128 %ins1090 to i96
  call fastcc void @_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi(%struct.PhotonMap* %map23, double %mrv_gr23.i, float %mrv_gr25.i, float 0x3FDF5C28E0000000, i32 0, %struct.Photon* %152, %struct.Photon* %118, i32 %count.1, i32* %count_nearest.i) nounwind
  br label %bb38.i

bb37.i:                                           ; preds = %bb38.i
  %220 = getelementptr inbounds %struct.Photon* %.0200, i64 0, i32 1, i32 1
  %221 = bitcast %struct.Photon* %.0200 to i8*
  call void @llvm.memset.p0i8.i64(i8* %221, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %220, align 4
  %222 = getelementptr inbounds %struct.Photon* %.0200, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %222, align 4
  %223 = getelementptr inbounds %struct.Photon* %.0200, i64 0, i32 2, i64 0
  store float 1.000000e+00, float* %223, align 4
  %224 = getelementptr inbounds %struct.Photon* %.0200, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %224, align 4
  %225 = getelementptr inbounds %struct.Photon* %.0200, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %225, align 4
  %226 = getelementptr inbounds %struct.Photon* %.0200, i64 1
  %227 = add nsw i64 %storemerge1.i, -1
  br label %bb38.i

bb38.i:                                           ; preds = %bb37.i, %bb3.i42
  %.0200 = phi %struct.Photon* [ %168, %bb3.i42 ], [ %226, %bb37.i ]
  %storemerge1.i = phi i64 [ 999, %bb3.i42 ], [ %227, %bb37.i ]
  %228 = icmp eq i64 %storemerge1.i, -1
  br i1 %228, label %bb39.i, label %bb37.i

bb39.i:                                           ; preds = %bb38.i
  %count_nearest.i.promoted = load i32* %count_nearest.i, align 4
  br label %bb59.i

bb41.i:                                           ; preds = %bb59.i
  %229 = sext i32 %247 to i64
  %.11187.0 = getelementptr inbounds [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %229, i32 1, i32 0
  %tmp1217 = load float* %.11187.0, align 4
  %.11187.1 = getelementptr inbounds [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %229, i32 1, i32 1
  %tmp1218 = load float* %.11187.1, align 4
  %.11187.2 = getelementptr inbounds [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %229, i32 1, i32 2
  %tmp1219 = load float* %.11187.2, align 4
  %.21188.0 = getelementptr inbounds [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %229, i32 2, i64 0
  %tmp1211 = load float* %.21188.0, align 4
  %.21188.1 = getelementptr inbounds [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %229, i32 2, i64 1
  %tmp1212 = load float* %.21188.1, align 4
  %.21188.2 = getelementptr inbounds [1000 x %struct.Photon]* %nearest.i, i64 0, i64 %229, i32 2, i64 2
  %tmp1213 = load float* %.21188.2, align 4
  %230 = add nsw i32 %247, -1
  %tmp1647 = bitcast float %tmp1217 to i32
  %tmp1648 = zext i32 %tmp1647 to i96
  %tmp1641 = bitcast float %tmp1218 to i32
  %tmp1642 = zext i32 %tmp1641 to i96
  %tmp1643 = shl nuw nsw i96 %tmp1642, 32
  %ins1645 = or i96 %tmp1648, %tmp1643
  %tmp1635 = bitcast float %tmp1219 to i32
  %tmp1071 = zext i96 %ins1645 to i128
  %mask1072 = and i128 %memtmp43.i.0, -79228162514264337593543950336
  %tmp1065 = zext i32 %tmp1635 to i128
  %tmp1066 = shl nuw nsw i128 %tmp1065, 64
  %mask1067 = or i128 %mask1072, %tmp1071
  %ins1068 = or i128 %mask1067, %tmp1066
  %tmp1053 = lshr i128 %ins1068, 64
  %tmp1054 = trunc i128 %tmp1053 to i32
  %tmp1055 = bitcast i32 %tmp1054 to float
  %231 = fmul float %tmp1217, -1.000000e+00
  %232 = fmul float %tmp1218, -1.000000e+00
  %233 = fmul float %tmp1055, -1.000000e+00
  %tmp1624 = bitcast float %231 to i32
  %tmp1625 = zext i32 %tmp1624 to i96
  %tmp1618 = bitcast float %232 to i32
  %tmp1619 = zext i32 %tmp1618 to i96
  %tmp1620 = shl nuw nsw i96 %tmp1619, 32
  %ins1622 = or i96 %tmp1625, %tmp1620
  %tmp1612 = bitcast float %233 to i32
  %tmp1049 = zext i96 %ins1622 to i128
  %mask1050 = and i128 %memtmp49.i.0, -79228162514264337593543950336
  %tmp1043 = zext i32 %tmp1612 to i128
  %tmp1044 = shl nuw nsw i128 %tmp1043, 64
  %mask1045 = or i128 %mask1050, %tmp1049
  %ins1046 = or i128 %mask1045, %tmp1044
  %tmp1031 = lshr i128 %ins1046, 64
  %tmp1032 = trunc i128 %tmp1031 to i32
  %tmp1033 = bitcast i32 %tmp1032 to float
  %tmp1592 = trunc i64 %tmp1677 to i32
  %tmp1593 = bitcast i32 %tmp1592 to float
  %234 = fmul float %tmp1593, %231
  %235 = fadd float %234, 0.000000e+00
  %tmp1589 = trunc i64 %tmp1667 to i32
  %tmp1590 = bitcast i32 %tmp1589 to float
  %236 = fmul float %tmp1590, %232
  %237 = fadd float %236, %235
  %tmp1584 = lshr i96 %ins1090.tr, 64
  %tmp1585 = trunc i96 %tmp1584 to i32
  %tmp1586 = bitcast i32 %tmp1585 to float
  %238 = fmul float %tmp1586, %tmp1033
  %239 = fadd float %238, %237
  %240 = fcmp ogt float %239, 0.000000e+00
  %storemerge.i185 = select i1 %240, float %239, float 0.000000e+00
  %241 = fmul float %tmp1211, %storemerge.i185
  %242 = fadd float %irr.i.0.0, %241
  %243 = fmul float %tmp1212, %storemerge.i185
  %244 = fadd float %irr.i.1.0, %243
  %245 = fmul float %tmp1213, %storemerge.i185
  %246 = fadd float %irr.i.2.0, %245
  br label %bb59.i

bb59.i:                                           ; preds = %bb41.i, %bb39.i
  %247 = phi i32 [ %count_nearest.i.promoted, %bb39.i ], [ %230, %bb41.i ]
  %irr.i.0.0 = phi float [ 0.000000e+00, %bb39.i ], [ %242, %bb41.i ]
  %irr.i.1.0 = phi float [ 0.000000e+00, %bb39.i ], [ %244, %bb41.i ]
  %irr.i.2.0 = phi float [ 0.000000e+00, %bb39.i ], [ %246, %bb41.i ]
  %memtmp49.i.0 = phi i128 [ %memtmp49.i.2, %bb39.i ], [ %ins1046, %bb41.i ]
  %memtmp43.i.0 = phi i128 [ %memtmp43.i.2, %bb39.i ], [ %ins1068, %bb41.i ]
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %bb60.i, label %bb41.i

bb60.i:                                           ; preds = %bb59.i
  store i32 %247, i32* %count_nearest.i, align 4
  %249 = fpext float %color.i.0.1 to double
  %tmp1579 = bitcast float %tmp928 to i32
  %tmp1580 = zext i32 %tmp1579 to i96
  %tmp1573 = bitcast float %tmp929 to i32
  %tmp1574 = zext i32 %tmp1573 to i96
  %tmp1575 = shl nuw nsw i96 %tmp1574, 32
  %tmp1567 = bitcast float %tmp930 to i32
  %tmp1528 = zext i32 %tmp1567 to i128
  %tmp1529 = shl nuw nsw i128 %tmp1528, 64
  %250 = fmul float %irr.i.0.0, %tmp928
  %251 = fpext float %250 to double
  %252 = fdiv double %251, %170
  %253 = fadd double %249, %252
  %254 = fptrunc double %253 to float
  %255 = fpext float %color.i.1.1 to double
  %256 = fmul float %irr.i.1.0, %tmp929
  %257 = fpext float %256 to double
  %258 = fdiv double %257, %170
  %259 = fadd double %255, %258
  %260 = fptrunc double %259 to float
  %261 = fpext float %color.i.2.1 to double
  %ins1441 = or i96 %tmp1580, %tmp1575
  %tmp1398 = zext i96 %ins1441 to i128
  %mask1399 = and i128 %memtmp.i.i.1, -79228162514264337593543950336
  %mask1394 = or i128 %mask1399, %tmp1398
  %ins1395 = or i128 %mask1394, %tmp1529
  %tmp1420 = bitcast float %tmp928 to i32
  %tmp1421 = zext i32 %tmp1420 to i96
  %tmp1414 = bitcast float %tmp929 to i32
  %tmp1415 = zext i32 %tmp1414 to i96
  %tmp1416 = shl nuw nsw i96 %tmp1415, 32
  %ins1418 = or i96 %tmp1421, %tmp1416
  %tmp983 = zext i96 %ins1418 to i128
  %mask984 = and i128 %memtmp73.i.1, -79228162514264337593543950336
  %tmp978 = and i128 %ins1395, 79228162495817593519834398720
  %mask979 = or i128 %mask984, %tmp983
  %ins980 = or i128 %mask979, %tmp978
  %tmp965 = lshr i128 %ins980, 64
  %tmp966 = trunc i128 %tmp965 to i32
  %tmp967 = bitcast i32 %tmp966 to float
  %262 = fmul float %irr.i.2.0, %tmp967
  %263 = fpext float %262 to double
  %264 = fdiv double %263, %170
  %265 = fadd double %261, %264
  %266 = fptrunc double %265 to float
  %phitmp2750 = bitcast float %254 to i32
  %phitmp2751 = zext i32 %phitmp2750 to i96
  %phitmp2752 = bitcast float %260 to i32
  %phitmp2753 = zext i32 %phitmp2752 to i96
  %phitmp2754 = shl nuw nsw i96 %phitmp2753, 32
  %phitmp2755 = bitcast float %266 to i32
  br label %invcont94

invcont94:                                        ; preds = %bb60.i, %invcont89
  %.01345.0 = phi i96 [ %phitmp2751, %bb60.i ], [ 1057988018, %invcont89 ]
  %.11346.0 = phi i96 [ %phitmp2754, %bb60.i ], [ 4556129611431280640, %invcont89 ]
  %.21347.0 = phi i32 [ %phitmp2755, %bb60.i ], [ 1065151889, %invcont89 ]
  %color.i.0.0 = phi float [ %254, %bb60.i ], [ %color.i.0.1, %invcont89 ]
  %color.i.1.0 = phi float [ %260, %bb60.i ], [ %color.i.1.1, %invcont89 ]
  %color.i.2.0 = phi float [ %266, %bb60.i ], [ %color.i.2.1, %invcont89 ]
  %memtmp73.i.0 = phi i128 [ %ins980, %bb60.i ], [ %memtmp73.i.1, %invcont89 ]
  %memtmp49.i.1 = phi i128 [ %memtmp49.i.0, %bb60.i ], [ %memtmp49.i.2, %invcont89 ]
  %memtmp43.i.1 = phi i128 [ %memtmp43.i.0, %bb60.i ], [ %memtmp43.i.2, %invcont89 ]
  %memtmp27.i.0 = phi i128 [ %ins1090, %bb60.i ], [ %memtmp27.i.1, %invcont89 ]
  %memtmp13.i.0 = phi i128 [ %ins1134, %bb60.i ], [ %memtmp13.i.1, %invcont89 ]
  %memtmp7.i.0 = phi i128 [ %ins1156, %bb60.i ], [ %memtmp7.i.1, %invcont89 ]
  %memtmp.i35.0 = phi i128 [ %ins1178, %bb60.i ], [ %memtmp.i35.1, %invcont89 ]
  %memtmp.i.i.0 = phi i128 [ %ins1395, %bb60.i ], [ %memtmp.i.i.1, %invcont89 ]
  %memtmp24.i.i.0 = phi i128 [ %ins1741, %bb60.i ], [ %memtmp24.i.i.1, %invcont89 ]
  %memtmp18.i.i.0 = phi i128 [ %ins1763, %bb60.i ], [ %memtmp18.i.i.1, %invcont89 ]
  %memtmp4.i.i.0 = phi i128 [ %ins1807, %bb60.i ], [ %memtmp4.i.i.1, %invcont89 ]
  %memtmp.i74.i.0 = phi i128 [ %ins1829, %bb60.i ], [ %memtmp.i74.i.1, %invcont89 ]
  %267 = add nsw i32 %storemerge3, 1
  %extract.t2809 = trunc i96 %.01345.0 to i32
  %extract = lshr exact i96 %.11346.0, 32
  %extract.t2810 = trunc i96 %extract to i32
  %phitmp = bitcast i32 %extract.t2809 to float
  %phitmp2813 = fmul float %phitmp, 0x3FC99999A0000000
  %phitmp2814 = bitcast i32 %extract.t2810 to float
  %phitmp2815 = fmul float %phitmp2814, 0x3FC99999A0000000
  br label %bb101

bb101:                                            ; preds = %invcont94, %bb76
  %color.i.0.1 = phi float [ %color.i.0.2, %bb76 ], [ %color.i.0.0, %invcont94 ]
  %color.i.1.1 = phi float [ %color.i.1.2, %bb76 ], [ %color.i.1.0, %invcont94 ]
  %color.i.2.1 = phi float [ %color.i.2.2, %bb76 ], [ %color.i.2.0, %invcont94 ]
  %result.0.off0 = phi float [ 0.000000e+00, %bb76 ], [ %phitmp2813, %invcont94 ]
  %result.0.off32.off32 = phi float [ 0.000000e+00, %bb76 ], [ %phitmp2815, %invcont94 ]
  %result.0.off64 = phi i32 [ 0, %bb76 ], [ %.21347.0, %invcont94 ]
  %memtmp73.i.1 = phi i128 [ %memtmp73.i.2, %bb76 ], [ %memtmp73.i.0, %invcont94 ]
  %memtmp49.i.2 = phi i128 [ %memtmp49.i.3, %bb76 ], [ %memtmp49.i.1, %invcont94 ]
  %memtmp43.i.2 = phi i128 [ %memtmp43.i.3, %bb76 ], [ %memtmp43.i.1, %invcont94 ]
  %memtmp27.i.1 = phi i128 [ %memtmp27.i.2, %bb76 ], [ %memtmp27.i.0, %invcont94 ]
  %memtmp13.i.1 = phi i128 [ %memtmp13.i.2, %bb76 ], [ %memtmp13.i.0, %invcont94 ]
  %memtmp7.i.1 = phi i128 [ %memtmp7.i.2, %bb76 ], [ %memtmp7.i.0, %invcont94 ]
  %memtmp.i35.1 = phi i128 [ %memtmp.i35.2, %bb76 ], [ %memtmp.i35.0, %invcont94 ]
  %memtmp.i.i.1 = phi i128 [ %memtmp.i.i.2, %bb76 ], [ %memtmp.i.i.0, %invcont94 ]
  %memtmp24.i.i.1 = phi i128 [ %memtmp24.i.i.2, %bb76 ], [ %memtmp24.i.i.0, %invcont94 ]
  %memtmp18.i.i.1 = phi i128 [ %memtmp18.i.i.2, %bb76 ], [ %memtmp18.i.i.0, %invcont94 ]
  %memtmp4.i.i.1 = phi i128 [ %memtmp4.i.i.2, %bb76 ], [ %memtmp4.i.i.0, %invcont94 ]
  %memtmp.i74.i.1 = phi i128 [ %memtmp.i74.i.2, %bb76 ], [ %memtmp.i74.i.0, %invcont94 ]
  %memtmp4.i150.0 = phi i128 [ %memtmp4.i150.1, %bb76 ], [ %ins2524, %invcont94 ]
  %memtmp.i149.0 = phi i128 [ %memtmp.i149.1, %bb76 ], [ %ins2546, %invcont94 ]
  %storemerge3 = phi i32 [ 0, %bb76 ], [ %267, %invcont94 ]
  %268 = icmp slt i32 %storemerge3, 5
  br i1 %268, label %bb83, label %invcont103

invcont103:                                       ; preds = %bb101
  %tmp589 = bitcast i32 %result.0.off64 to float
  %269 = fmul float %tmp589, 0x3FC99999A0000000
  %270 = fcmp olt float %result.0.off0, 0.000000e+00
  br i1 %270, label %bb5.i, label %bb1.i

bb1.i:                                            ; preds = %invcont103
  %271 = fcmp ogt float %result.0.off0, 1.000000e+00
  br i1 %271, label %bb5.i, label %bb4.i

bb4.i:                                            ; preds = %bb1.i
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb1.i, %invcont103
  %r.i.0 = phi float [ %result.0.off0, %bb4.i ], [ 0.000000e+00, %invcont103 ], [ 1.000000e+00, %bb1.i ]
  %272 = fcmp olt float %269, 0.000000e+00
  br i1 %272, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i
  %273 = fcmp ogt float %269, 1.000000e+00
  br i1 %273, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i
  %b.i.0 = phi float [ %269, %bb11.i ], [ 0.000000e+00, %bb5.i ], [ 1.000000e+00, %bb8.i ]
  %274 = fcmp olt float %result.0.off32.off32, 0.000000e+00
  br i1 %274, label %invcont115, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %275 = fcmp ogt float %result.0.off32.off32, 1.000000e+00
  br i1 %275, label %invcont115, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %invcont115

invcont115:                                       ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.i.0 = phi float [ %result.0.off32.off32, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %276 = mul nsw i32 %5, %171
  %277 = add nsw i32 %276, %172
  %278 = mul nsw i32 %277, 3
  %279 = add nsw i32 %7, %278
  call void @llvm.trax.storef(float %r.i.0, i32 %279, i32 0) nounwind
  call void @llvm.trax.storef(float %g.i.0, i32 %279, i32 1) nounwind
  call void @llvm.trax.storef(float %b.i.0, i32 %279, i32 2) nounwind
  %280 = call i32 @llvm.trax.atominc(i32 0)
  br label %bb116

bb116:                                            ; preds = %invcont115, %invcont75
  %color.i.0.2 = phi float [ undef, %invcont75 ], [ %color.i.0.1, %invcont115 ]
  %color.i.1.2 = phi float [ undef, %invcont75 ], [ %color.i.1.1, %invcont115 ]
  %color.i.2.2 = phi float [ undef, %invcont75 ], [ %color.i.2.1, %invcont115 ]
  %memtmp73.i.2 = phi i128 [ undef, %invcont75 ], [ %memtmp73.i.1, %invcont115 ]
  %memtmp49.i.3 = phi i128 [ undef, %invcont75 ], [ %memtmp49.i.2, %invcont115 ]
  %memtmp43.i.3 = phi i128 [ undef, %invcont75 ], [ %memtmp43.i.2, %invcont115 ]
  %memtmp27.i.2 = phi i128 [ undef, %invcont75 ], [ %memtmp27.i.1, %invcont115 ]
  %memtmp13.i.2 = phi i128 [ undef, %invcont75 ], [ %memtmp13.i.1, %invcont115 ]
  %memtmp7.i.2 = phi i128 [ undef, %invcont75 ], [ %memtmp7.i.1, %invcont115 ]
  %memtmp.i35.2 = phi i128 [ undef, %invcont75 ], [ %memtmp.i35.1, %invcont115 ]
  %memtmp.i.i.2 = phi i128 [ undef, %invcont75 ], [ %memtmp.i.i.1, %invcont115 ]
  %memtmp24.i.i.2 = phi i128 [ undef, %invcont75 ], [ %memtmp24.i.i.1, %invcont115 ]
  %memtmp18.i.i.2 = phi i128 [ undef, %invcont75 ], [ %memtmp18.i.i.1, %invcont115 ]
  %memtmp4.i.i.2 = phi i128 [ undef, %invcont75 ], [ %memtmp4.i.i.1, %invcont115 ]
  %memtmp.i74.i.2 = phi i128 [ undef, %invcont75 ], [ %memtmp.i74.i.1, %invcont115 ]
  %memtmp4.i150.1 = phi i128 [ undef, %invcont75 ], [ %memtmp4.i150.0, %invcont115 ]
  %memtmp.i149.1 = phi i128 [ undef, %invcont75 ], [ %memtmp.i149.0, %invcont115 ]
  %storemerge2 = phi i32 [ %120, %invcont75 ], [ %280, %invcont115 ]
  %281 = icmp sgt i32 %121, %storemerge2
  br i1 %281, label %bb76, label %return

return:                                           ; preds = %bb116
  ret i32 0

Unwind:                                           ; preds = %invcont86, %bb83, %bb72, %.noexc105, %.noexc, %bb.i99
  %eh_ptr = call i8* @llvm.eh.exception()
  %eh_select123 = call i32 (i8*, i8*, ...)* @llvm.eh.selector(i8* %eh_ptr, i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*), i32 0)
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

define internal fastcc float @_ZN6Photon8get_axisEi(%struct.Photon* nocapture %this, i32 %dim) nounwind readonly ssp align 2 {
entry:
  switch i32 %dim, label %bb12 [
    i32 0, label %bb
    i32 1, label %bb5
  ]

bb:                                               ; preds = %entry
  %0 = getelementptr inbounds %struct.Photon* %this, i64 0, i32 0, i32 0
  br label %return

bb5:                                              ; preds = %entry
  %1 = getelementptr inbounds %struct.Photon* %this, i64 0, i32 0, i32 1
  br label %return

bb12:                                             ; preds = %entry
  %2 = getelementptr inbounds %struct.Photon* %this, i64 0, i32 0, i32 2
  br label %return

return:                                           ; preds = %bb12, %bb5, %bb
  %.0.in = phi float* [ %0, %bb ], [ %1, %bb5 ], [ %2, %bb12 ]
  %.0 = load float* %.0.in, align 4
  ret float %.0
}

declare double @llvm.log.f64(double) nounwind readonly

define internal fastcc void @_ZN9PhotonMap8generateEP6PhotonS1_ii(%struct.PhotonMap* %this, %struct.Photon* %photons, %struct.Photon* %photonHeap, i32 %count, i32 %currentPos) ssp align 2 {
entry:
  %pivot.i = alloca %struct.Photon, align 8
  %0 = icmp eq i32 %count, 0
  br i1 %0, label %return, label %bb17

bb17:                                             ; preds = %entry
  %1 = call i8* @llvm.stacksave()
  br label %bb119

invcont:                                          ; preds = %bb119
  %2 = sext i32 %storemerge to i64
  %3 = getelementptr inbounds %struct.Photon* %photons, i64 %2, i32 0, i32 0
  %4 = load float* %3, align 4
  %5 = getelementptr inbounds %struct.Photon* %photons, i64 %2, i32 0, i32 1
  %6 = load float* %5, align 4
  %7 = getelementptr inbounds %struct.Photon* %photons, i64 %2, i32 0, i32 2
  %8 = load float* %7, align 4
  %tmp1098 = bitcast float %4 to i32
  %tmp1099 = zext i32 %tmp1098 to i96
  %tmp1092 = bitcast float %6 to i32
  %tmp1093 = zext i32 %tmp1092 to i96
  %tmp1094 = shl nuw nsw i96 %tmp1093, 32
  %tmp1086 = bitcast float %8 to i32
  %tmp490 = zext i32 %tmp1086 to i128
  %tmp491 = shl nuw nsw i128 %tmp490, 64
  %9 = fcmp olt float %4, %minXYZ.0.1
  br i1 %9, label %invcont26, label %invcont34

invcont26:                                        ; preds = %invcont
  br label %invcont34

invcont34:                                        ; preds = %invcont26, %invcont
  %minXYZ.0.0 = phi float [ %4, %invcont26 ], [ %minXYZ.0.1, %invcont ]
  %10 = fcmp olt float %6, %minXYZ.1.1
  br i1 %10, label %invcont43, label %invcont51

invcont43:                                        ; preds = %invcont34
  br label %invcont51

invcont51:                                        ; preds = %invcont43, %invcont34
  %minXYZ.1.0 = phi float [ %6, %invcont43 ], [ %minXYZ.1.1, %invcont34 ]
  %11 = fcmp olt float %8, %minXYZ.2.1
  br i1 %11, label %invcont60, label %invcont68

invcont60:                                        ; preds = %invcont51
  %ins1349 = or i96 %tmp1099, %tmp1094
  %tmp386 = zext i96 %ins1349 to i128
  %mask387 = and i128 %memtmp61.1, -79228162514264337593543950336
  %mask382 = or i128 %mask387, %tmp386
  %ins383 = or i128 %mask382, %tmp491
  %tmp368 = lshr i128 %ins383, 64
  %tmp369 = trunc i128 %tmp368 to i32
  %tmp370 = bitcast i32 %tmp369 to float
  br label %invcont68

invcont68:                                        ; preds = %invcont60, %invcont51
  %minXYZ.2.0 = phi float [ %tmp370, %invcont60 ], [ %minXYZ.2.1, %invcont51 ]
  %memtmp61.0 = phi i128 [ %ins383, %invcont60 ], [ %memtmp61.1, %invcont51 ]
  %12 = fcmp ogt float %4, %maxXYZ.0.1
  br i1 %12, label %invcont77, label %invcont85

invcont77:                                        ; preds = %invcont68
  br label %invcont85

invcont85:                                        ; preds = %invcont77, %invcont68
  %maxXYZ.0.0 = phi float [ %4, %invcont77 ], [ %maxXYZ.0.1, %invcont68 ]
  %13 = fcmp ogt float %6, %maxXYZ.1.1
  br i1 %13, label %invcont94, label %invcont102

invcont94:                                        ; preds = %invcont85
  br label %invcont102

invcont102:                                       ; preds = %invcont94, %invcont85
  %maxXYZ.1.0 = phi float [ %6, %invcont94 ], [ %maxXYZ.1.1, %invcont85 ]
  %14 = fcmp ogt float %8, %maxXYZ.2.1
  br i1 %14, label %invcont111, label %bb118

invcont111:                                       ; preds = %invcont102
  %ins1211 = or i96 %tmp1099, %tmp1094
  %tmp254 = zext i96 %ins1211 to i128
  %mask255 = and i128 %memtmp112.1, -79228162514264337593543950336
  %mask250 = or i128 %mask255, %tmp254
  %ins251 = or i128 %mask250, %tmp491
  %tmp236 = lshr i128 %ins251, 64
  %tmp237 = trunc i128 %tmp236 to i32
  %tmp238 = bitcast i32 %tmp237 to float
  br label %bb118

bb118:                                            ; preds = %invcont111, %invcont102
  %maxXYZ.2.0 = phi float [ %tmp238, %invcont111 ], [ %maxXYZ.2.1, %invcont102 ]
  %memtmp112.0 = phi i128 [ %ins251, %invcont111 ], [ %memtmp112.1, %invcont102 ]
  %15 = add nsw i32 %storemerge, 1
  br label %bb119

bb119:                                            ; preds = %bb118, %bb17
  %minXYZ.0.1 = phi float [ 9.999999e+06, %bb17 ], [ %minXYZ.0.0, %bb118 ]
  %minXYZ.1.1 = phi float [ 9.999999e+06, %bb17 ], [ %minXYZ.1.0, %bb118 ]
  %minXYZ.2.1 = phi float [ 9.999999e+06, %bb17 ], [ %minXYZ.2.0, %bb118 ]
  %maxXYZ.0.1 = phi float [ -9.999999e+06, %bb17 ], [ %maxXYZ.0.0, %bb118 ]
  %maxXYZ.1.1 = phi float [ -9.999999e+06, %bb17 ], [ %maxXYZ.1.0, %bb118 ]
  %maxXYZ.2.1 = phi float [ -9.999999e+06, %bb17 ], [ %maxXYZ.2.0, %bb118 ]
  %memtmp112.1 = phi i128 [ undef, %bb17 ], [ %memtmp112.0, %bb118 ]
  %memtmp61.1 = phi i128 [ undef, %bb17 ], [ %memtmp61.0, %bb118 ]
  %storemerge = phi i32 [ 0, %bb17 ], [ %15, %bb118 ]
  %16 = icmp eq i32 %storemerge, %count
  br i1 %16, label %bb120, label %invcont

bb120:                                            ; preds = %bb119
  %17 = fsub float %maxXYZ.0.1, %minXYZ.0.1
  %18 = fsub float %maxXYZ.1.1, %minXYZ.1.1
  %19 = fsub float %maxXYZ.2.1, %minXYZ.2.1
  %20 = fcmp ule float %17, %18
  %21 = fcmp ule float %17, %19
  %or.cond = or i1 %20, %21
  br i1 %or.cond, label %bb123, label %bb122

bb122:                                            ; preds = %bb120
  store i32 0, i32* @sort_dim, align 4
  br label %bb127

bb123:                                            ; preds = %bb120
  %22 = fcmp ule float %18, %17
  %23 = fcmp ule float %18, %19
  %or.cond1403 = or i1 %22, %23
  br i1 %or.cond1403, label %bb126, label %bb125

bb125:                                            ; preds = %bb123
  store i32 1, i32* @sort_dim, align 4
  br label %bb127

bb126:                                            ; preds = %bb123
  store i32 2, i32* @sort_dim, align 4
  br label %bb127

bb127:                                            ; preds = %bb126, %bb125, %bb122
  %24 = phi i32 [ 2, %bb126 ], [ 1, %bb125 ], [ 0, %bb122 ]
  %savedstack = call i8* @llvm.stacksave()
  %25 = getelementptr inbounds %struct.Photon* %pivot.i, i64 0, i32 1, i32 1
  %26 = bitcast %struct.Photon* %pivot.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %25, align 4
  %27 = getelementptr inbounds %struct.Photon* %pivot.i, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %27, align 4
  %28 = getelementptr inbounds %struct.Photon* %pivot.i, i64 0, i32 2, i64 0
  store float 1.000000e+00, float* %28, align 8
  %29 = getelementptr inbounds %struct.Photon* %pivot.i, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %29, align 4
  %30 = getelementptr inbounds %struct.Photon* %pivot.i, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %30, align 8
  %31 = shl i32 %count, 2
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 4
  %34 = bitcast i8* %33 to [0 x i32]*
  %35 = bitcast i8* %33 to i32*
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds i8* %33, i64 4
  %37 = bitcast i8* %36 to i32*
  store i32 %count, i32* %37, align 4
  %pivot2.i = bitcast %struct.Photon* %pivot.i to i8*
  br label %bb28.i

bb.i52:                                           ; preds = %bb28.i
  %38 = add nsw i32 %sp.i.4, -1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i32]* %34, i64 0, i64 %39
  %41 = load i32* %40, align 4
  %42 = add i32 %sp.i.4, -2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [0 x i32]* %34, i64 0, i64 %43
  %45 = load i32* %44, align 4
  br label %bb1.i53

bb1.i53:                                          ; preds = %bb27.i, %bb.i52
  %right_addr.i.0 = phi i32 [ %41, %bb.i52 ], [ %right_addr.i.1, %bb27.i ]
  %left_addr.i.0 = phi i32 [ %45, %bb.i52 ], [ %left_addr.i.1, %bb27.i ]
  %sp.i.0 = phi i32 [ %42, %bb.i52 ], [ %sp.i.3, %bb27.i ]
  %46 = add nsw i32 %left_addr.i.0, %right_addr.i.0
  %47 = sdiv i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.Photon* %photons, i64 %48
  %50 = bitcast %struct.Photon* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %pivot2.i, i8* %50, i64 52, i32 1, i1 false)
  br label %bb5.i.outer

bb5.i.outer:                                      ; preds = %bb19.i, %bb1.i53
  %l2.i.0.ph = phi i32 [ %left_addr.i.0, %bb1.i53 ], [ %l2.i.1, %bb19.i ]
  %r2.i.0.ph = phi i32 [ %right_addr.i.0, %bb1.i53 ], [ %r2.i.2, %bb19.i ]
  %51 = call fastcc float @_ZN6Photon8get_axisEi(%struct.Photon* %pivot.i, i32 %24)
  br label %bb5.i

bb4.i:                                            ; preds = %bb5.i
  %52 = add nsw i32 %l2.i.0, 1
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb5.i.outer
  %l2.i.0 = phi i32 [ %52, %bb4.i ], [ %l2.i.0.ph, %bb5.i.outer ]
  %53 = sext i32 %l2.i.0 to i64
  %54 = getelementptr inbounds %struct.Photon* %photons, i64 %53
  %55 = call fastcc float @_ZN6Photon8get_axisEi(%struct.Photon* %54, i32 %24)
  %56 = fcmp olt float %55, %51
  br i1 %56, label %bb4.i, label %bb9.i

bb8.i:                                            ; preds = %bb9.i
  %57 = add nsw i32 %r2.i.1, -1
  br label %bb9.i

bb9.i:                                            ; preds = %bb8.i, %bb5.i
  %r2.i.1 = phi i32 [ %57, %bb8.i ], [ %r2.i.0.ph, %bb5.i ]
  %58 = sext i32 %r2.i.1 to i64
  %59 = getelementptr inbounds %struct.Photon* %photons, i64 %58
  %60 = call fastcc float @_ZN6Photon8get_axisEi(%struct.Photon* %59, i32 %24)
  %61 = fcmp ogt float %60, %51
  br i1 %61, label %bb8.i, label %bb13.i

bb13.i:                                           ; preds = %bb9.i
  %62 = icmp sgt i32 %l2.i.0, %r2.i.1
  br i1 %62, label %bb19.i, label %bb14.i

bb14.i:                                           ; preds = %bb13.i
  %63 = icmp eq i32 %l2.i.0, %r2.i.1
  br i1 %63, label %bb18.i, label %bb15.i

bb15.i:                                           ; preds = %bb14.i
  %.01067 = getelementptr inbounds %struct.Photon* %photons, i64 %53, i32 0, i32 0
  %tmp1068 = load float* %.01067, align 1
  %.11069 = getelementptr inbounds %struct.Photon* %photons, i64 %53, i32 0, i32 1
  %tmp1070 = load float* %.11069, align 1
  %.21071 = getelementptr inbounds %struct.Photon* %photons, i64 %53, i32 0, i32 2
  %tmp1072 = load float* %.21071, align 1
  %.11045.0 = getelementptr inbounds %struct.Photon* %photons, i64 %53, i32 1, i32 0
  %tmp1061 = load float* %.11045.0, align 1
  %.11045.1 = getelementptr inbounds %struct.Photon* %photons, i64 %53, i32 1, i32 1
  %tmp1062 = load float* %.11045.1, align 1
  %.11045.2 = getelementptr inbounds %struct.Photon* %photons, i64 %53, i32 1, i32 2
  %tmp1063 = load float* %.11045.2, align 1
  %.21046.0 = getelementptr inbounds %struct.Photon* %photons, i64 %53, i32 2, i64 0
  %tmp1055 = load float* %.21046.0, align 1
  %.21046.1 = getelementptr inbounds %struct.Photon* %photons, i64 %53, i32 2, i64 1
  %tmp1056 = load float* %.21046.1, align 1
  %.21046.2 = getelementptr inbounds %struct.Photon* %photons, i64 %53, i32 2, i64 2
  %tmp1057 = load float* %.21046.2, align 1
  %.31047 = getelementptr inbounds %struct.Photon* %photons, i64 %53, i32 3
  %tmp1048 = load float* %.31047, align 1
  %.41049 = getelementptr inbounds %struct.Photon* %photons, i64 %53, i32 4
  %tmp1050 = load float* %.41049, align 1
  %.51051 = getelementptr inbounds %struct.Photon* %photons, i64 %53, i32 5
  %tmp1052 = load i32* %.51051, align 1
  %.61053 = getelementptr inbounds %struct.Photon* %photons, i64 %53, i32 6
  %tmp1054 = load float* %.61053, align 1
  %64 = bitcast %struct.Photon* %54 to i8*
  %65 = bitcast %struct.Photon* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 52, i32 1, i1 false)
  %.01073 = getelementptr inbounds %struct.Photon* %photons, i64 %58, i32 0, i32 0
  store float %tmp1068, float* %.01073, align 1
  %.11075 = getelementptr inbounds %struct.Photon* %photons, i64 %58, i32 0, i32 1
  store float %tmp1070, float* %.11075, align 1
  %.21077 = getelementptr inbounds %struct.Photon* %photons, i64 %58, i32 0, i32 2
  store float %tmp1072, float* %.21077, align 1
  %.11034.0 = getelementptr inbounds %struct.Photon* %photons, i64 %58, i32 1, i32 0
  store float %tmp1061, float* %.11034.0, align 1
  %.11034.1 = getelementptr inbounds %struct.Photon* %photons, i64 %58, i32 1, i32 1
  store float %tmp1062, float* %.11034.1, align 1
  %.11034.2 = getelementptr inbounds %struct.Photon* %photons, i64 %58, i32 1, i32 2
  store float %tmp1063, float* %.11034.2, align 1
  %.21035.0 = getelementptr inbounds %struct.Photon* %photons, i64 %58, i32 2, i64 0
  store float %tmp1055, float* %.21035.0, align 1
  %.21035.1 = getelementptr inbounds %struct.Photon* %photons, i64 %58, i32 2, i64 1
  store float %tmp1056, float* %.21035.1, align 1
  %.21035.2 = getelementptr inbounds %struct.Photon* %photons, i64 %58, i32 2, i64 2
  store float %tmp1057, float* %.21035.2, align 1
  %.31036 = getelementptr inbounds %struct.Photon* %photons, i64 %58, i32 3
  store float %tmp1048, float* %.31036, align 1
  %.41038 = getelementptr inbounds %struct.Photon* %photons, i64 %58, i32 4
  store float %tmp1050, float* %.41038, align 1
  %.51040 = getelementptr inbounds %struct.Photon* %photons, i64 %58, i32 5
  store i32 %tmp1052, i32* %.51040, align 1
  %.61042 = getelementptr inbounds %struct.Photon* %photons, i64 %58, i32 6
  store float %tmp1054, float* %.61042, align 1
  br label %bb18.i

bb18.i:                                           ; preds = %bb15.i, %bb14.i
  %66 = add nsw i32 %l2.i.0, 1
  %67 = add nsw i32 %r2.i.1, -1
  br label %bb19.i

bb19.i:                                           ; preds = %bb18.i, %bb13.i
  %l2.i.1 = phi i32 [ %l2.i.0, %bb13.i ], [ %66, %bb18.i ]
  %r2.i.2 = phi i32 [ %r2.i.1, %bb13.i ], [ %67, %bb18.i ]
  %68 = icmp slt i32 %l2.i.1, %r2.i.2
  br i1 %68, label %bb5.i.outer, label %bb20.i

bb20.i:                                           ; preds = %bb19.i
  %69 = sub nsw i32 %r2.i.2, %left_addr.i.0
  %70 = sub nsw i32 %right_addr.i.0, %l2.i.1
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %bb21.i, label %bb24.i

bb21.i:                                           ; preds = %bb20.i
  %72 = icmp slt i32 %left_addr.i.0, %r2.i.2
  br i1 %72, label %bb22.i, label %bb27.i

bb22.i:                                           ; preds = %bb21.i
  %73 = sext i32 %sp.i.0 to i64
  %74 = getelementptr inbounds [0 x i32]* %34, i64 0, i64 %73
  store i32 %left_addr.i.0, i32* %74, align 4
  %75 = add nsw i32 %sp.i.0, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [0 x i32]* %34, i64 0, i64 %76
  store i32 %r2.i.2, i32* %77, align 4
  %78 = add i32 %sp.i.0, 2
  br label %bb27.i

bb24.i:                                           ; preds = %bb20.i
  %79 = icmp slt i32 %l2.i.1, %right_addr.i.0
  br i1 %79, label %bb25.i, label %bb27.i

bb25.i:                                           ; preds = %bb24.i
  %80 = sext i32 %sp.i.0 to i64
  %81 = getelementptr inbounds [0 x i32]* %34, i64 0, i64 %80
  store i32 %l2.i.1, i32* %81, align 4
  %82 = add nsw i32 %sp.i.0, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [0 x i32]* %34, i64 0, i64 %83
  store i32 %right_addr.i.0, i32* %84, align 4
  %85 = add i32 %sp.i.0, 2
  br label %bb27.i

bb27.i:                                           ; preds = %bb25.i, %bb24.i, %bb22.i, %bb21.i
  %right_addr.i.1 = phi i32 [ %right_addr.i.0, %bb22.i ], [ %right_addr.i.0, %bb21.i ], [ %r2.i.2, %bb25.i ], [ %r2.i.2, %bb24.i ]
  %left_addr.i.1 = phi i32 [ %l2.i.1, %bb22.i ], [ %l2.i.1, %bb21.i ], [ %left_addr.i.0, %bb25.i ], [ %left_addr.i.0, %bb24.i ]
  %sp.i.3 = phi i32 [ %78, %bb22.i ], [ %sp.i.0, %bb21.i ], [ %85, %bb25.i ], [ %sp.i.0, %bb24.i ]
  %86 = icmp slt i32 %left_addr.i.1, %right_addr.i.1
  br i1 %86, label %bb1.i53, label %bb28.i

bb28.i:                                           ; preds = %bb27.i, %bb127
  %sp.i.4 = phi i32 [ 2, %bb127 ], [ %sp.i.3, %bb27.i ]
  %87 = icmp sgt i32 %sp.i.4, 0
  br i1 %87, label %bb.i52, label %invcont128

invcont128:                                       ; preds = %bb28.i
  call void @llvm.stackrestore(i8* %savedstack)
  %88 = sext i32 %count to i64
  %89 = add nsw i64 %88, -1
  %90 = mul i32 %count, 52
  %91 = zext i32 %90 to i64
  %92 = alloca i8, i64 %91, align 1
  %93 = bitcast i8* %92 to [0 x %struct.Photon]*
  %94 = bitcast i8* %92 to %struct.Photon*
  br label %bb130

bb129:                                            ; preds = %bb130
  %95 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i32 1
  %96 = bitcast %struct.Photon* %.0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %96, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %95, align 4
  %97 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %97, align 4
  %98 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2, i64 0
  store float 1.000000e+00, float* %98, align 4
  %99 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %99, align 4
  %100 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %100, align 4
  %101 = getelementptr inbounds %struct.Photon* %.0, i64 1
  %102 = add nsw i64 %storemerge1, -1
  br label %bb130

bb130:                                            ; preds = %bb129, %invcont128
  %.0 = phi %struct.Photon* [ %94, %invcont128 ], [ %101, %bb129 ]
  %storemerge1 = phi i64 [ %89, %invcont128 ], [ %102, %bb129 ]
  %103 = icmp eq i64 %storemerge1, -1
  br i1 %103, label %bb131, label %bb129

bb131:                                            ; preds = %bb130
  %104 = alloca i8, i64 %91, align 1
  %105 = bitcast i8* %104 to [0 x %struct.Photon]*
  %106 = bitcast i8* %104 to %struct.Photon*
  br label %bb133

bb132:                                            ; preds = %bb133
  %107 = getelementptr inbounds %struct.Photon* %.0150, i64 0, i32 1, i32 1
  %108 = bitcast %struct.Photon* %.0150 to i8*
  call void @llvm.memset.p0i8.i64(i8* %108, i8 0, i64 16, i32 4, i1 false)
  store float 0.000000e+00, float* %107, align 4
  %109 = getelementptr inbounds %struct.Photon* %.0150, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %109, align 4
  %110 = getelementptr inbounds %struct.Photon* %.0150, i64 0, i32 2, i64 0
  store float 1.000000e+00, float* %110, align 4
  %111 = getelementptr inbounds %struct.Photon* %.0150, i64 0, i32 2, i64 1
  store float 1.000000e+00, float* %111, align 4
  %112 = getelementptr inbounds %struct.Photon* %.0150, i64 0, i32 2, i64 2
  store float 1.000000e+00, float* %112, align 4
  %113 = getelementptr inbounds %struct.Photon* %.0150, i64 1
  %114 = add nsw i64 %storemerge2, -1
  br label %bb133

bb133:                                            ; preds = %bb132, %bb131
  %.0150 = phi %struct.Photon* [ %106, %bb131 ], [ %113, %bb132 ]
  %storemerge2 = phi i64 [ %89, %bb131 ], [ %114, %bb132 ]
  %115 = icmp eq i64 %storemerge2, -1
  br i1 %115, label %bb134, label %bb132

bb134:                                            ; preds = %bb133
  %116 = sitofp i32 %count to double
  %117 = call double @llvm.log.f64(double %116) nounwind
  %118 = call double @llvm.log.f64(double 2.000000e+00) nounwind
  %119 = fdiv double %117, %118
  %120 = fptosi double %119 to i32
  %121 = add i32 %120, -1
  %122 = sitofp i32 %121 to double
  %123 = call double @llvm.pow.f64(double 2.000000e+00, double %122)
  %124 = sitofp i32 %120 to double
  %125 = call double @llvm.pow.f64(double 2.000000e+00, double %124)
  %126 = fadd double %125, -1.000000e+00
  %127 = fsub double %116, %126
  %128 = fptosi double %127 to i32
  %129 = add i32 %120, -1
  %130 = sitofp i32 %129 to double
  %131 = call double @llvm.pow.f64(double 2.000000e+00, double %130)
  %132 = fptosi double %131 to i32
  %133 = icmp slt i32 %132, %128
  %storemerge.i = select i1 %133, i32 %132, i32 %128
  %134 = sitofp i32 %storemerge.i to double
  %135 = fadd double %123, %134
  %136 = fptosi double %135 to i32
  %137 = sext i32 %currentPos to i64
  %138 = getelementptr inbounds %struct.Photon* %photonHeap, i64 %137, i32 5
  %139 = getelementptr inbounds %struct.Photon* %photonHeap, i64 %137, i32 1, i32 0
  %140 = getelementptr inbounds %struct.Photon* %photonHeap, i64 %137, i32 1, i32 1
  %141 = getelementptr inbounds %struct.Photon* %photonHeap, i64 %137, i32 1, i32 2
  %142 = getelementptr inbounds %struct.Photon* %photonHeap, i64 %137, i32 0, i32 0
  %143 = getelementptr inbounds %struct.Photon* %photonHeap, i64 %137, i32 0, i32 1
  %144 = getelementptr inbounds %struct.Photon* %photonHeap, i64 %137, i32 0, i32 2
  br label %bb192

invcont159:                                       ; preds = %bb192
  %145 = sext i32 %it.0 to i64
  %146 = getelementptr inbounds %struct.Photon* %photons, i64 %145, i32 0, i32 0
  %147 = load float* %146, align 4
  %148 = getelementptr inbounds %struct.Photon* %photons, i64 %145, i32 0, i32 1
  %149 = load float* %148, align 4
  %150 = getelementptr inbounds %struct.Photon* %photons, i64 %145, i32 0, i32 2
  %151 = load float* %150, align 4
  %152 = getelementptr inbounds %struct.Photon* %photons, i64 %145, i32 1, i32 0
  %153 = load float* %152, align 4
  %154 = getelementptr inbounds %struct.Photon* %photons, i64 %145, i32 1, i32 1
  %155 = load float* %154, align 4
  %156 = getelementptr inbounds %struct.Photon* %photons, i64 %145, i32 1, i32 2
  %157 = load float* %156, align 4
  %158 = icmp slt i32 %i.0, %136
  br i1 %158, label %bb160, label %bb162

bb160:                                            ; preds = %invcont159
  %159 = sext i32 %count_lower.1 to i64
  %.0576 = getelementptr inbounds [0 x %struct.Photon]* %105, i64 0, i64 %159, i32 0, i32 0
  store float %147, float* %.0576, align 4
  %.1578 = getelementptr inbounds [0 x %struct.Photon]* %105, i64 0, i64 %159, i32 0, i32 1
  store float %149, float* %.1578, align 4
  %.2580 = getelementptr inbounds [0 x %struct.Photon]* %105, i64 0, i64 %159, i32 0, i32 2
  store float %151, float* %.2580, align 4
  %.1554.0 = getelementptr inbounds [0 x %struct.Photon]* %105, i64 0, i64 %159, i32 1, i32 0
  store float %153, float* %.1554.0, align 4
  %.1554.1 = getelementptr inbounds [0 x %struct.Photon]* %105, i64 0, i64 %159, i32 1, i32 1
  store float %155, float* %.1554.1, align 4
  %.1554.2 = getelementptr inbounds [0 x %struct.Photon]* %105, i64 0, i64 %159, i32 1, i32 2
  store float %157, float* %.1554.2, align 4
  %.2555.0 = getelementptr inbounds [0 x %struct.Photon]* %105, i64 0, i64 %159, i32 2, i64 0
  store float 1.000000e+00, float* %.2555.0, align 4
  %.2555.1 = getelementptr inbounds [0 x %struct.Photon]* %105, i64 0, i64 %159, i32 2, i64 1
  store float 1.000000e+00, float* %.2555.1, align 4
  %.2555.2 = getelementptr inbounds [0 x %struct.Photon]* %105, i64 0, i64 %159, i32 2, i64 2
  store float 1.000000e+00, float* %.2555.2, align 4
  %160 = add nsw i32 %count_lower.1, 1
  br label %bb191

bb162:                                            ; preds = %invcont159
  %161 = icmp eq i32 %i.0, %136
  br i1 %161, label %invcont188, label %bb189

invcont188:                                       ; preds = %bb162
  store i32 %24, i32* %138, align 4
  %162 = load float* %152, align 4
  %163 = load float* %154, align 4
  %164 = load float* %156, align 4
  %tmp891 = bitcast float %162 to i32
  %tmp892 = zext i32 %tmp891 to i96
  %tmp885 = bitcast float %163 to i32
  %tmp886 = zext i32 %tmp885 to i96
  %tmp887 = shl nuw nsw i96 %tmp886, 32
  %ins889 = or i96 %tmp892, %tmp887
  %tmp879 = bitcast float %164 to i32
  %tmp188 = zext i96 %ins889 to i128
  %mask189 = and i128 %memtmp166.1, -79228162514264337593543950336
  %tmp182 = zext i32 %tmp879 to i128
  %tmp183 = shl nuw nsw i128 %tmp182, 64
  %mask184 = or i128 %mask189, %tmp188
  %ins185 = or i128 %mask184, %tmp183
  %ins185.tr = trunc i128 %ins185 to i96
  store float %162, float* %139, align 4
  store float %163, float* %140, align 4
  %tmp851 = lshr i96 %ins185.tr, 64
  %tmp852 = trunc i96 %tmp851 to i32
  %tmp853 = bitcast i32 %tmp852 to float
  store float %tmp853, float* %141, align 4
  %165 = load float* %146, align 4
  %166 = load float* %148, align 4
  %167 = load float* %150, align 4
  %tmp846 = bitcast float %165 to i32
  %tmp847 = zext i32 %tmp846 to i96
  %tmp840 = bitcast float %166 to i32
  %tmp841 = zext i32 %tmp840 to i96
  %tmp842 = shl nuw nsw i96 %tmp841, 32
  %ins844 = or i96 %tmp847, %tmp842
  %tmp834 = bitcast float %167 to i32
  %tmp166 = zext i96 %ins844 to i128
  %mask167 = and i128 %memtmp178.1, -79228162514264337593543950336
  %tmp162 = zext i32 %tmp834 to i128
  %tmp163 = shl nuw nsw i128 %tmp162, 64
  %mask = or i128 %mask167, %tmp166
  %ins = or i128 %mask, %tmp163
  %ins.tr = trunc i128 %ins to i96
  store float %165, float* %142, align 4
  store float %166, float* %143, align 4
  %tmp806 = lshr i96 %ins.tr, 64
  %tmp807 = trunc i96 %tmp806 to i32
  %tmp808 = bitcast i32 %tmp807 to float
  store float %tmp808, float* %144, align 4
  br label %bb191

bb189:                                            ; preds = %bb162
  %168 = sext i32 %count_upper.1 to i64
  %.0582 = getelementptr inbounds [0 x %struct.Photon]* %93, i64 0, i64 %168, i32 0, i32 0
  store float %147, float* %.0582, align 4
  %.1584 = getelementptr inbounds [0 x %struct.Photon]* %93, i64 0, i64 %168, i32 0, i32 1
  store float %149, float* %.1584, align 4
  %.2586 = getelementptr inbounds [0 x %struct.Photon]* %93, i64 0, i64 %168, i32 0, i32 2
  store float %151, float* %.2586, align 4
  %.1.0 = getelementptr inbounds [0 x %struct.Photon]* %93, i64 0, i64 %168, i32 1, i32 0
  store float %153, float* %.1.0, align 4
  %.1.1 = getelementptr inbounds [0 x %struct.Photon]* %93, i64 0, i64 %168, i32 1, i32 1
  store float %155, float* %.1.1, align 4
  %.1.2 = getelementptr inbounds [0 x %struct.Photon]* %93, i64 0, i64 %168, i32 1, i32 2
  store float %157, float* %.1.2, align 4
  %.2.0 = getelementptr inbounds [0 x %struct.Photon]* %93, i64 0, i64 %168, i32 2, i64 0
  store float 1.000000e+00, float* %.2.0, align 4
  %.2.1 = getelementptr inbounds [0 x %struct.Photon]* %93, i64 0, i64 %168, i32 2, i64 1
  store float 1.000000e+00, float* %.2.1, align 4
  %.2.2 = getelementptr inbounds [0 x %struct.Photon]* %93, i64 0, i64 %168, i32 2, i64 2
  store float 1.000000e+00, float* %.2.2, align 4
  %169 = add nsw i32 %count_upper.1, 1
  br label %bb191

bb191:                                            ; preds = %bb189, %invcont188, %bb160
  %memtmp178.0 = phi i128 [ %memtmp178.1, %bb160 ], [ %ins, %invcont188 ], [ %memtmp178.1, %bb189 ]
  %memtmp166.0 = phi i128 [ %memtmp166.1, %bb160 ], [ %ins185, %invcont188 ], [ %memtmp166.1, %bb189 ]
  %count_upper.0 = phi i32 [ %count_upper.1, %bb160 ], [ %count_upper.1, %invcont188 ], [ %169, %bb189 ]
  %count_lower.0 = phi i32 [ %160, %bb160 ], [ %count_lower.1, %invcont188 ], [ %count_lower.1, %bb189 ]
  %170 = add nsw i32 %it.0, 1
  %171 = add nsw i32 %i.0, 1
  br label %bb192

bb192:                                            ; preds = %bb191, %bb134
  %memtmp178.1 = phi i128 [ undef, %bb134 ], [ %memtmp178.0, %bb191 ]
  %memtmp166.1 = phi i128 [ undef, %bb134 ], [ %memtmp166.0, %bb191 ]
  %i.0 = phi i32 [ 1, %bb134 ], [ %171, %bb191 ]
  %count_upper.1 = phi i32 [ 0, %bb134 ], [ %count_upper.0, %bb191 ]
  %count_lower.1 = phi i32 [ 0, %bb134 ], [ %count_lower.0, %bb191 ]
  %it.0 = phi i32 [ 0, %bb134 ], [ %170, %bb191 ]
  %172 = icmp eq i32 %it.0, %count
  br i1 %172, label %bb193, label %invcont159

bb193:                                            ; preds = %bb192
  %173 = shl nsw i32 %currentPos, 1
  %174 = or i32 %173, 1
  %175 = bitcast i8* %104 to %struct.Photon*
  invoke fastcc void @_ZN9PhotonMap8generateEP6PhotonS1_ii(%struct.PhotonMap* %this, %struct.Photon* %175, %struct.Photon* %photonHeap, i32 %count_lower.1, i32 %174) ssp
          to label %invcont194 unwind label %Unwind

invcont194:                                       ; preds = %bb193
  %176 = add i32 %173, 2
  %177 = bitcast i8* %92 to %struct.Photon*
  invoke fastcc void @_ZN9PhotonMap8generateEP6PhotonS1_ii(%struct.PhotonMap* %this, %struct.Photon* %177, %struct.Photon* %photonHeap, i32 %count_upper.1, i32 %176) ssp
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

declare double @llvm.pow.f64(double, double) nounwind readonly

define internal fastcc void @_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi(%struct.PhotonMap* %this, double %position.0, float %position.1, float %dSquare, i32 %p, %struct.Photon* %nearest, %struct.Photon* %heap, i32 %sizeHeap, i32* %size_nearest) nounwind ssp align 2 {
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
    i32 0, label %bb1
    i32 1, label %bb3
  ]

bb1:                                              ; preds = %bb
  %tmp99 = trunc i64 %tmp143 to i32
  %tmp100 = bitcast i32 %tmp99 to float
  %6 = getelementptr inbounds %struct.Photon* %heap, i64 %3
  %7 = call fastcc float @_ZN6Photon8get_axisEi(%struct.Photon* %6, i32 %5)
  %8 = fsub float %tmp100, %7
  br label %bb5

bb3:                                              ; preds = %bb
  %tmp95 = lshr i64 %tmp143, 32
  %tmp96 = trunc i64 %tmp95 to i32
  %tmp97 = bitcast i32 %tmp96 to float
  %9 = getelementptr inbounds %struct.Photon* %heap, i64 %3
  %10 = call fastcc float @_ZN6Photon8get_axisEi(%struct.Photon* %9, i32 %5)
  %11 = fsub float %tmp97, %10
  br label %bb5

bb4:                                              ; preds = %bb
  %12 = getelementptr inbounds %struct.Photon* %heap, i64 %3
  %13 = call fastcc float @_ZN6Photon8get_axisEi(%struct.Photon* %12, i32 %5)
  %14 = fsub float %position.1, %13
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3, %bb1
  %phi.0 = phi float [ %8, %bb1 ], [ %11, %bb3 ], [ %14, %bb4 ]
  %15 = fcmp olt float %phi.0, 0.000000e+00
  br i1 %15, label %bb6, label %bb15

bb6:                                              ; preds = %bb5
  %16 = or i32 %0, 1
  call fastcc void @_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi(%struct.PhotonMap* %this, double %position.0, float %position.1, float %dSquare, i32 %16, %struct.Photon* %nearest, %struct.Photon* %heap, i32 %sizeHeap, i32* %size_nearest) ssp
  %17 = fmul float %phi.0, %phi.0
  %18 = fcmp olt float %17, %dSquare
  br i1 %18, label %bb9, label %bb25

bb9:                                              ; preds = %bb6
  call fastcc void @_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi(%struct.PhotonMap* %this, double %position.0, float %position.1, float %dSquare, i32 %1, %struct.Photon* %nearest, %struct.Photon* %heap, i32 %sizeHeap, i32* %size_nearest) ssp
  br label %bb25

bb15:                                             ; preds = %bb5
  call fastcc void @_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi(%struct.PhotonMap* %this, double %position.0, float %position.1, float %dSquare, i32 %1, %struct.Photon* %nearest, %struct.Photon* %heap, i32 %sizeHeap, i32* %size_nearest) ssp
  %19 = fmul float %phi.0, %phi.0
  %20 = fcmp olt float %19, %dSquare
  br i1 %20, label %bb20, label %bb25

bb20:                                             ; preds = %bb15
  %21 = or i32 %0, 1
  call fastcc void @_ZN9PhotonMap14locate_photonsE6VectorfiP6PhotonS2_iRi(%struct.PhotonMap* %this, double %position.0, float %position.1, float %dSquare, i32 %21, %struct.Photon* %nearest, %struct.Photon* %heap, i32 %sizeHeap, i32* %size_nearest) ssp
  br label %bb25

bb25:                                             ; preds = %bb20, %bb15, %bb9, %bb6, %entry
  %22 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 0, i32 0
  %23 = load float* %22, align 4
  %24 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 0, i32 1
  %25 = load float* %24, align 4
  %26 = getelementptr inbounds %struct.Photon* %heap, i64 %3, i32 0, i32 2
  %27 = load float* %26, align 4
  %tmp187 = bitcast double %position.0 to i64
  %tmp178 = trunc i64 %tmp187 to i32
  %tmp179 = bitcast i32 %tmp178 to float
  %28 = fsub float %23, %tmp179
  %29 = fmul float %28, %28
  %tmp174 = lshr i64 %tmp187, 32
  %tmp175 = trunc i64 %tmp174 to i32
  %tmp176 = bitcast i32 %tmp175 to float
  %30 = fsub float %25, %tmp176
  %31 = fmul float %30, %30
  %32 = fadd float %29, %31
  %33 = fsub float %27, %position.1
  %34 = fmul float %33, %33
  %35 = fadd float %32, %34
  %36 = fcmp olt float %35, %dSquare
  br i1 %36, label %bb37, label %return

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
  %37 = load i32* %size_nearest, align 4
  %38 = sext i32 %37 to i64
  %.045 = getelementptr inbounds %struct.Photon* %nearest, i64 %38, i32 0, i32 0
  store float %23, float* %.045, align 1
  %.147 = getelementptr inbounds %struct.Photon* %nearest, i64 %38, i32 0, i32 1
  store float %25, float* %.147, align 1
  %.249 = getelementptr inbounds %struct.Photon* %nearest, i64 %38, i32 0, i32 2
  store float %27, float* %.249, align 1
  %.1.0 = getelementptr inbounds %struct.Photon* %nearest, i64 %38, i32 1, i32 0
  store float %tmp33, float* %.1.0, align 1
  %.1.1 = getelementptr inbounds %struct.Photon* %nearest, i64 %38, i32 1, i32 1
  store float %tmp34, float* %.1.1, align 1
  %.1.2 = getelementptr inbounds %struct.Photon* %nearest, i64 %38, i32 1, i32 2
  store float %tmp35, float* %.1.2, align 1
  %.2.0 = getelementptr inbounds %struct.Photon* %nearest, i64 %38, i32 2, i64 0
  store float %tmp27, float* %.2.0, align 1
  %.2.1 = getelementptr inbounds %struct.Photon* %nearest, i64 %38, i32 2, i64 1
  store float %tmp28, float* %.2.1, align 1
  %.2.2 = getelementptr inbounds %struct.Photon* %nearest, i64 %38, i32 2, i64 2
  store float %tmp29, float* %.2.2, align 1
  %.3 = getelementptr inbounds %struct.Photon* %nearest, i64 %38, i32 3
  store float %tmp20, float* %.3, align 1
  %.4 = getelementptr inbounds %struct.Photon* %nearest, i64 %38, i32 4
  store float %tmp22, float* %.4, align 1
  %.5 = getelementptr inbounds %struct.Photon* %nearest, i64 %38, i32 5
  store i32 %tmp24, i32* %.5, align 1
  %.6 = getelementptr inbounds %struct.Photon* %nearest, i64 %38, i32 6
  store float %tmp26, float* %.6, align 1
  %39 = add nsw i32 %37, 1
  store i32 %39, i32* %size_nearest, align 4
  %40 = icmp sgt i32 %39, 50
  br i1 %40, label %bb41, label %return

bb41:                                             ; preds = %bb37
  store i32 %37, i32* %size_nearest, align 4
  br label %return

return:                                           ; preds = %bb41, %bb37, %bb25
  ret void
}

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
