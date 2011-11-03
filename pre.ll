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

declare void @llvm.trax.storef(float, i32, i32) nounwind

declare float @llvm.trax.invsqrt(float) nounwind

declare float @llvm.trax.rand() nounwind

define i32 @main() ssp {
entry:
  %0 = alloca %struct.Color, align 8
  %1 = alloca %struct.Color, align 8
  %edge1.i.i155 = alloca %struct.Color, align 8
  %n.i.i157 = alloca %struct.Color, align 8
  %ray_to_light_source16.i = alloca %struct.Box, align 8
  %2 = alloca %struct.Color, align 8
  %3 = alloca %struct.Color, align 8
  %4 = alloca %struct.Color, align 8
  %light.i = alloca %struct.Color, align 8
  %L.i = alloca %struct.Color, align 8
  %hit_record142 = alloca %struct.HitRecord, align 8
  %5 = alloca %struct.Color, align 8
  %V.i = alloca %struct.Color, align 8
  %ln.i = alloca %struct.Color, align 8
  %6 = alloca %struct.Color, align 8
  %7 = alloca %struct.Color, align 8
  %edge1.i.i = alloca %struct.Color, align 8
  %n.i.i = alloca %struct.Color, align 8
  %8 = alloca %struct.Color, align 8
  %9 = alloca %struct.Color, align 8
  %10 = alloca %struct.Color, align 8
  %11 = alloca %struct.Color, align 8
  %12 = alloca %struct.Color, align 8
  %hit_position.i = alloca %struct.Color, align 8
  %normal.i = alloca %struct.Color, align 8
  %13 = alloca %struct.Color, align 8
  %result = alloca %struct.Color, align 8
  %attenuation = alloca %struct.Color, align 8
  %ray = alloca %struct.Box, align 8
  %bvh = alloca %struct.BVH, align 8
  %hit_record = alloca %struct.HitRecord, align 8
  %14 = call i32 @llvm.trax.loadi(i32 0, i32 1)
  %15 = call i32 @llvm.trax.loadi(i32 0, i32 4)
  %16 = call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %17 = call float @llvm.trax.loadf(i32 0, i32 2)
  %18 = call float @llvm.trax.loadf(i32 0, i32 5)
  %19 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %20 = call float @llvm.trax.loadf(i32 %19, i32 0) nounwind
  %21 = call float @llvm.trax.loadf(i32 %19, i32 1) nounwind
  %22 = call float @llvm.trax.loadf(i32 %19, i32 2) nounwind
  %tmp842 = bitcast float %21 to i32
  %tmp843 = zext i32 %tmp842 to i96
  %23 = getelementptr inbounds %struct.Color* %result, i64 0, i32 0
  store float 0.000000e+00, float* %23, align 8
  %24 = getelementptr inbounds %struct.Color* %result, i64 0, i32 1
  store float 0.000000e+00, float* %24, align 4
  %25 = getelementptr inbounds %struct.Color* %result, i64 0, i32 2
  store float 0.000000e+00, float* %25, align 8
  %26 = getelementptr inbounds %struct.Color* %attenuation, i64 0, i32 0
  store float 0.000000e+00, float* %26, align 8
  %27 = getelementptr inbounds %struct.Color* %attenuation, i64 0, i32 1
  store float 0.000000e+00, float* %27, align 4
  %28 = getelementptr inbounds %struct.Color* %attenuation, i64 0, i32 2
  store float 0.000000e+00, float* %28, align 8
  %29 = call i32 @llvm.trax.loadi(i32 0, i32 10)
  %30 = call float @llvm.trax.loadf(i32 %29, i32 0) nounwind
  %31 = call float @llvm.trax.loadf(i32 %29, i32 1) nounwind
  %32 = call float @llvm.trax.loadf(i32 %29, i32 2) nounwind
  %33 = add nsw i32 %29, 9
  %34 = call float @llvm.trax.loadf(i32 %33, i32 0) nounwind
  %35 = call float @llvm.trax.loadf(i32 %33, i32 1) nounwind
  %36 = call float @llvm.trax.loadf(i32 %33, i32 2) nounwind
  %37 = add nsw i32 %29, 12
  %38 = call float @llvm.trax.loadf(i32 %37, i32 0) nounwind
  %39 = call float @llvm.trax.loadf(i32 %37, i32 1) nounwind
  %40 = call float @llvm.trax.loadf(i32 %37, i32 2) nounwind
  %41 = add nsw i32 %29, 15
  %42 = call float @llvm.trax.loadf(i32 %41, i32 0) nounwind
  %43 = call float @llvm.trax.loadf(i32 %41, i32 1) nounwind
  %44 = call float @llvm.trax.loadf(i32 %41, i32 2) nounwind
  %45 = add nsw i32 %29, 18
  %46 = call float @llvm.trax.loadf(i32 %45, i32 0) nounwind
  %47 = call float @llvm.trax.loadf(i32 %45, i32 1) nounwind
  %48 = call float @llvm.trax.loadf(i32 %45, i32 2) nounwind
  %49 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %50 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %51 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %52 = bitcast %struct.Box* %ray to i8*
  call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %51, align 4
  %53 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %53, align 4
  %54 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %55 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %56 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %57 = getelementptr inbounds %struct.BVH* %bvh, i64 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = call i32 @llvm.trax.atominc(i32 0)
  %59 = mul nsw i32 %14, %15
  %60 = sitofp i32 %14 to float
  %61 = fdiv float %60, -2.000000e+00
  %62 = sitofp i32 %15 to float
  %63 = fdiv float %62, -2.000000e+00
  %64 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 0
  %65 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 1
  %66 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 2
  %67 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 0
  %68 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 1
  %69 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 2
  %70 = getelementptr inbounds %struct.Color* %5, i64 0, i32 0
  %71 = getelementptr inbounds %struct.Color* %5, i64 0, i32 1
  %72 = getelementptr inbounds %struct.Color* %5, i64 0, i32 2
  %73 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %74 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %75 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %76 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %77 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 0
  %78 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 1
  %79 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 2
  %80 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 0
  %81 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 1
  %82 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 2
  %83 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 0
  %84 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 1
  %85 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 2
  %86 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %87 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %88 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  %89 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %tmp143 = bitcast %struct.HitRecord* %hit_record142 to i8*
  %tmp144 = bitcast %struct.HitRecord* %hit_record to i8*
  %ray2838.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray2838.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray2838.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.12834.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.12834.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.12834.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %90 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 0
  %.03310 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 1, i32 0, i32 0
  %.13312 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 1, i32 0, i32 1
  %.23314 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 1, i32 0, i32 2
  %.13280.0 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 1, i32 1, i32 0
  %.13280.1 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 1, i32 1, i32 1
  %.13280.2 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 1, i32 1, i32 2
  %.23281.0 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 1, i32 2, i32 0
  %.23281.1 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 1, i32 2, i32 1
  %.23281.2 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 1, i32 2, i32 2
  %.43294.0 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 1, i32 4, i32 0, i32 0
  %.43294.1 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 1, i32 4, i32 0, i32 1
  %.43294.2 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 1, i32 4, i32 0, i32 2
  %.4.13284 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 1, i32 4, i32 1
  %.4.23286 = getelementptr inbounds %struct.HitRecord* %hit_record142, i64 0, i32 1, i32 4, i32 2
  %91 = getelementptr inbounds %struct.Color* %4, i64 0, i32 0
  %92 = getelementptr inbounds %struct.Color* %4, i64 0, i32 1
  %93 = getelementptr inbounds %struct.Color* %4, i64 0, i32 2
  %94 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %95 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %96 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %97 = getelementptr inbounds %struct.Color* %edge1.i.i155, i64 0, i32 0
  %98 = getelementptr inbounds %struct.Color* %edge1.i.i155, i64 0, i32 1
  %99 = getelementptr inbounds %struct.Color* %edge1.i.i155, i64 0, i32 2
  %100 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %101 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %102 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %103 = getelementptr inbounds %struct.Color* %n.i.i157, i64 0, i32 0
  %104 = getelementptr inbounds %struct.Color* %n.i.i157, i64 0, i32 1
  %105 = getelementptr inbounds %struct.Color* %n.i.i157, i64 0, i32 2
  %106 = getelementptr inbounds %struct.Color* %3, i64 0, i32 0
  %107 = getelementptr inbounds %struct.Color* %3, i64 0, i32 1
  %108 = getelementptr inbounds %struct.Color* %3, i64 0, i32 2
  %109 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 0
  %110 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 1
  %111 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 2
  %tmp3734 = bitcast float %20 to i32
  %tmp3735 = zext i32 %tmp3734 to i96
  %tmp3730 = shl nuw nsw i96 %tmp843, 32
  %tmp3722 = bitcast float %22 to i32
  %tmp3012 = zext i32 %tmp3722 to i128
  %tmp3013 = shl nuw nsw i128 %tmp3012, 64
  %112 = getelementptr inbounds %struct.Color* %2, i64 0, i32 0
  %113 = getelementptr inbounds %struct.Color* %2, i64 0, i32 1
  %114 = getelementptr inbounds %struct.Color* %2, i64 0, i32 2
  %115 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 0
  %116 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 1
  %117 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 2
  %ray_to_light_source16.i3327.0 = getelementptr inbounds %struct.Box* %ray_to_light_source16.i, i64 0, i32 0, i32 0
  %ray_to_light_source16.i3327.1 = getelementptr inbounds %struct.Box* %ray_to_light_source16.i, i64 0, i32 0, i32 1
  %ray_to_light_source16.i3327.2 = getelementptr inbounds %struct.Box* %ray_to_light_source16.i, i64 0, i32 0, i32 2
  %ray_to_light_source16.i.1.0 = getelementptr inbounds %struct.Box* %ray_to_light_source16.i, i64 0, i32 1, i32 0
  %ray_to_light_source16.i.1.1 = getelementptr inbounds %struct.Box* %ray_to_light_source16.i, i64 0, i32 1, i32 1
  %ray_to_light_source16.i.1.2 = getelementptr inbounds %struct.Box* %ray_to_light_source16.i, i64 0, i32 1, i32 2
  %118 = getelementptr inbounds %struct.Color* %13, i64 0, i32 0
  %119 = getelementptr inbounds %struct.Color* %13, i64 0, i32 1
  %120 = getelementptr inbounds %struct.Color* %13, i64 0, i32 2
  %elt9 = bitcast %struct.Color* %attenuation to double*
  %.4731734.0 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %.4731734.1 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %.4731734.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  %hit_record.1975.0 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 0
  %hit_record.1975.1 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 1
  %hit_record.1975.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 2
  %hit_record.1.1.0 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 0
  %hit_record.1.1.1 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 1
  %hit_record.1.1.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 2
  %hit_record.1.2.0 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 0
  %hit_record.1.2.1 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 1
  %hit_record.1.2.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 2
  %121 = getelementptr inbounds %struct.Color* %12, i64 0, i32 0
  %122 = getelementptr inbounds %struct.Color* %12, i64 0, i32 1
  %123 = getelementptr inbounds %struct.Color* %12, i64 0, i32 2
  %124 = getelementptr inbounds %struct.Color* %hit_position.i, i64 0, i32 0
  %125 = getelementptr inbounds %struct.Color* %hit_position.i, i64 0, i32 1
  %126 = getelementptr inbounds %struct.Color* %hit_position.i, i64 0, i32 2
  %127 = getelementptr inbounds %struct.Color* %7, i64 0, i32 0
  %128 = getelementptr inbounds %struct.Color* %7, i64 0, i32 1
  %129 = getelementptr inbounds %struct.Color* %7, i64 0, i32 2
  %130 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 0
  %131 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 1
  %132 = getelementptr inbounds %struct.Color* %edge1.i.i, i64 0, i32 2
  %133 = getelementptr inbounds %struct.Color* %6, i64 0, i32 0
  %134 = getelementptr inbounds %struct.Color* %6, i64 0, i32 1
  %135 = getelementptr inbounds %struct.Color* %6, i64 0, i32 2
  %136 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 0
  %137 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 1
  %138 = getelementptr inbounds %struct.Color* %n.i.i, i64 0, i32 2
  %139 = getelementptr inbounds %struct.Color* %normal.i, i64 0, i32 0
  %140 = getelementptr inbounds %struct.Color* %normal.i, i64 0, i32 1
  %141 = getelementptr inbounds %struct.Color* %normal.i, i64 0, i32 2
  %142 = getelementptr inbounds %struct.Color* %11, i64 0, i32 0
  %143 = getelementptr inbounds %struct.Color* %11, i64 0, i32 1
  %144 = getelementptr inbounds %struct.Color* %11, i64 0, i32 2
  %145 = getelementptr inbounds %struct.Color* %10, i64 0, i32 0
  %146 = getelementptr inbounds %struct.Color* %10, i64 0, i32 1
  %147 = getelementptr inbounds %struct.Color* %10, i64 0, i32 2
  %148 = getelementptr inbounds %struct.Color* %8, i64 0, i32 0
  %149 = getelementptr inbounds %struct.Color* %8, i64 0, i32 1
  %150 = getelementptr inbounds %struct.Color* %8, i64 0, i32 2
  %151 = getelementptr inbounds %struct.Color* %9, i64 0, i32 0
  %152 = getelementptr inbounds %struct.Color* %9, i64 0, i32 1
  %153 = getelementptr inbounds %struct.Color* %9, i64 0, i32 2
  %elt59 = bitcast %struct.Color* %result to double*
  br label %bb63

bb:                                               ; preds = %bb63
  %154 = sdiv i32 %storemerge, %14
  %155 = srem i32 %storemerge, %14
  %156 = sitofp i32 %155 to float
  %157 = fadd float %156, %61
  %158 = fadd float %157, 5.000000e-01
  %159 = fmul float %158, 2.000000e+00
  %160 = fdiv float %159, %60
  %161 = sitofp i32 %154 to float
  %162 = fadd float %161, %63
  %163 = fadd float %162, 5.000000e-01
  %164 = fmul float %163, 2.000000e+00
  %165 = fdiv float %164, %62
  store float 0.000000e+00, float* %23, align 8
  store float 0.000000e+00, float* %24, align 4
  store float 0.000000e+00, float* %25, align 8
  br label %bb51

bb2:                                              ; preds = %bb51
  store float 1.000000e+00, float* %26, align 8
  store float 1.000000e+00, float* %27, align 4
  store float 1.000000e+00, float* %28, align 8
  %166 = call float @llvm.trax.rand()
  %167 = fadd float %166, -5.000000e-01
  %168 = fmul float %167, 2.000000e+00
  %169 = call float @llvm.trax.rand()
  %170 = fadd float %169, -5.000000e-01
  %171 = fmul float %170, 2.000000e+00
  %172 = fmul float %168, %17
  %173 = fmul float %171, %18
  %174 = fadd float %165, %173
  %175 = fadd float %160, %172
  store float %38, float* %67, align 8
  store float %39, float* %68, align 4
  store float %40, float* %69, align 8
  %176 = fmul float %46, %174
  %177 = fmul float %47, %174
  %178 = fmul float %48, %174
  %tmp2804 = bitcast float %176 to i32
  %tmp2805 = zext i32 %tmp2804 to i96
  %tmp2798 = bitcast float %177 to i32
  %tmp2799 = zext i32 %tmp2798 to i96
  %tmp2800 = shl nuw nsw i96 %tmp2799, 32
  %ins2802 = or i96 %tmp2805, %tmp2800
  %tmp2792 = bitcast float %178 to i32
  %tmp2662 = zext i96 %ins2802 to i128
  %mask2663 = and i128 %memtmp.i109.0, -79228162514264337593543950336
  %tmp2656 = zext i32 %tmp2792 to i128
  %tmp2657 = shl nuw nsw i128 %tmp2656, 64
  %mask2658 = or i128 %mask2663, %tmp2662
  %ins2659 = or i128 %mask2658, %tmp2657
  %tmp2705 = bitcast float %176 to i32
  %tmp2706 = zext i32 %tmp2705 to i64
  %tmp2699 = bitcast float %177 to i32
  %tmp2700 = zext i32 %tmp2699 to i64
  %tmp2701 = shl nuw i64 %tmp2700, 32
  %ins2703 = or i64 %tmp2706, %tmp2701
  %ins2659.tr = trunc i128 %ins2659 to i96
  %179 = fmul float %42, %175
  %180 = fmul float %43, %175
  %181 = fmul float %44, %175
  %tmp2827 = bitcast float %179 to i32
  %tmp2828 = zext i32 %tmp2827 to i96
  %tmp2821 = bitcast float %180 to i32
  %tmp2822 = zext i32 %tmp2821 to i96
  %tmp2823 = shl nuw nsw i96 %tmp2822, 32
  %ins2825 = or i96 %tmp2828, %tmp2823
  %tmp2815 = bitcast float %181 to i32
  %tmp2640 = zext i96 %ins2825 to i128
  %mask2641 = and i128 %memtmp4.i110.0, -79228162514264337593543950336
  %tmp2634 = zext i32 %tmp2815 to i128
  %tmp2635 = shl nuw nsw i128 %tmp2634, 64
  %mask2636 = or i128 %mask2641, %tmp2640
  %ins2637 = or i128 %mask2636, %tmp2635
  store float %179, float* %70, align 8
  store float %180, float* %71, align 4
  %tmp2622 = lshr i128 %ins2637, 64
  %tmp2623 = trunc i128 %tmp2622 to i32
  %tmp2624 = bitcast i32 %tmp2623 to float
  store float %tmp2624, float* %72, align 8
  %tmp2691 = bitcast i64 %ins2703 to double
  %tmp2686 = lshr i96 %ins2659.tr, 64
  %tmp2687 = trunc i96 %tmp2686 to i32
  %tmp2688 = bitcast i32 %tmp2687 to float
  %182 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %5, double %tmp2691, float %tmp2688) nounwind
  %mrv_gr14.i130 = extractvalue %0 %182, 0
  %mrv_gr16.i = extractvalue %0 %182, 1
  %183 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %ln.i, double %mrv_gr14.i130, float %mrv_gr16.i) nounwind
  %mrv_gr24.i132 = extractvalue %0 %183, 0
  %tmp2595 = bitcast double %mrv_gr24.i132 to i64
  %mrv_gr26.i134 = extractvalue %0 %183, 1
  %tmp2582 = trunc i64 %tmp2595 to i32
  %tmp2583 = bitcast i32 %tmp2582 to float
  store float %tmp2583, float* %64, align 8
  %tmp2585 = lshr i64 %tmp2595, 32
  %tmp2586 = trunc i64 %tmp2585 to i32
  %tmp2587 = bitcast i32 %tmp2586 to float
  store float %tmp2587, float* %65, align 4
  store float %mrv_gr26.i134, float* %66, align 8
  %184 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %V.i) nounwind
  %mrv_gr30.i = extractvalue %0 %184, 0
  %tmp2573 = bitcast double %mrv_gr30.i to i64
  %mrv_gr32.i137 = extractvalue %0 %184, 1
  %tmp2563 = lshr i64 %tmp2573, 32
  %tmp2750 = trunc i64 %tmp2573 to i32
  %tmp2751 = bitcast i32 %tmp2750 to float
  %tmp2747 = trunc i64 %tmp2563 to i32
  %tmp2748 = bitcast i32 %tmp2747 to float
  store float %30, float* %49, align 8
  store float %31, float* %73, align 4
  store float %32, float* %74, align 8
  store float %tmp2751, float* %50, align 4
  store float %tmp2748, float* %75, align 4
  store float %mrv_gr32.i137, float* %76, align 4
  br label %bb49

bb3:                                              ; preds = %bb49
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
  store float 0.000000e+00, float* %87, align 4
  store float 0.000000e+00, float* %88, align 4
  store float 1.000000e+10, float* %89, align 8
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record, %struct.Box* %ray)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp143, i8* %tmp144, i64 64, i32 8, i1 false)
  %185 = load float* %90, align 8
  %186 = fcmp olt float %185, 1.000000e+10
  br i1 %186, label %bb.i304, label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

bb.i304:                                          ; preds = %bb3
  %tmp2837 = load float* %ray.12834.2, align 4
  %tmp2836 = load float* %ray.12834.1, align 4
  %tmp2835 = load float* %ray.12834.0, align 4
  %tmp2841 = load float* %ray2838.2, align 8
  %tmp2840 = load float* %ray2838.1, align 4
  %tmp2839 = load float* %ray2838.0, align 8
  %tmp3311 = load float* %.03310, align 4
  %tmp3313 = load float* %.13312, align 4
  %tmp3315 = load float* %.23314, align 4
  %tmp3304 = load float* %.13280.0, align 4
  %tmp3305 = load float* %.13280.1, align 4
  %tmp3306 = load float* %.13280.2, align 4
  %tmp3298 = load float* %.23281.0, align 4
  %tmp3299 = load float* %.23281.1, align 4
  %tmp3300 = load float* %.23281.2, align 4
  %tmp3295 = load float* %.43294.0, align 4
  %tmp3296 = load float* %.43294.1, align 4
  %tmp3297 = load float* %.43294.2, align 4
  %tmp3285 = load float* %.4.13284, align 4
  %tmp3287 = load float* %.4.23286, align 4
  %tmp3599 = bitcast float %tmp2835 to i32
  %tmp3600 = zext i32 %tmp3599 to i96
  %tmp3593 = bitcast float %tmp2836 to i32
  %tmp3594 = zext i32 %tmp3593 to i96
  %tmp3595 = shl nuw nsw i96 %tmp3594, 32
  %ins3597 = or i96 %tmp3600, %tmp3595
  %tmp3587 = bitcast float %tmp2837 to i32
  %tmp3216 = zext i96 %ins3597 to i128
  %mask3217 = and i128 %memtmp.i194.1, -79228162514264337593543950336
  %tmp3210 = zext i32 %tmp3587 to i128
  %tmp3211 = shl nuw nsw i128 %tmp3210, 64
  %mask3212 = or i128 %mask3217, %tmp3216
  %ins3213 = or i128 %mask3212, %tmp3211
  %tmp3198 = lshr i128 %ins3213, 64
  %tmp3199 = trunc i128 %tmp3198 to i32
  %tmp3200 = bitcast i32 %tmp3199 to float
  %187 = fmul float %tmp2835, %185
  %188 = fmul float %tmp2836, %185
  %189 = fmul float %tmp3200, %185
  %tmp3688 = bitcast float %187 to i32
  %tmp3689 = zext i32 %tmp3688 to i96
  %tmp3682 = bitcast float %188 to i32
  %tmp3683 = zext i32 %tmp3682 to i96
  %tmp3684 = shl nuw nsw i96 %tmp3683, 32
  %ins3686 = or i96 %tmp3689, %tmp3684
  %tmp3676 = bitcast float %189 to i32
  %tmp3194 = zext i96 %ins3686 to i128
  %mask3195 = and i128 %memtmp4.i195.1, -79228162514264337593543950336
  %tmp3188 = zext i32 %tmp3676 to i128
  %tmp3189 = shl nuw nsw i128 %tmp3188, 64
  %mask3190 = or i128 %mask3195, %tmp3194
  %ins3191 = or i128 %mask3190, %tmp3189
  %tmp3351 = bitcast float %187 to i32
  %tmp3352 = zext i32 %tmp3351 to i64
  %tmp3345 = bitcast float %188 to i32
  %tmp3346 = zext i32 %tmp3345 to i64
  %tmp3347 = shl nuw i64 %tmp3346, 32
  %ins3349 = or i64 %tmp3352, %tmp3347
  %ins3191.tr = trunc i128 %ins3191 to i96
  %tmp3711 = bitcast float %tmp2839 to i32
  %tmp3712 = zext i32 %tmp3711 to i96
  %tmp3705 = bitcast float %tmp2840 to i32
  %tmp3706 = zext i32 %tmp3705 to i96
  %tmp3707 = shl nuw nsw i96 %tmp3706, 32
  %ins3709 = or i96 %tmp3712, %tmp3707
  %tmp3699 = bitcast float %tmp2841 to i32
  %tmp3172 = zext i96 %ins3709 to i128
  %mask3173 = and i128 %memtmp10.i196.1, -79228162514264337593543950336
  %tmp3166 = zext i32 %tmp3699 to i128
  %tmp3167 = shl nuw nsw i128 %tmp3166, 64
  %mask3168 = or i128 %mask3173, %tmp3172
  %ins3169 = or i128 %mask3168, %tmp3167
  store float %tmp2839, float* %91, align 8
  store float %tmp2840, float* %92, align 4
  %tmp3154 = lshr i128 %ins3169, 64
  %tmp3155 = trunc i128 %tmp3154 to i32
  %tmp3156 = bitcast i32 %tmp3155 to float
  store float %tmp3156, float* %93, align 8
  %tmp3337 = bitcast i64 %ins3349 to double
  %tmp3332 = lshr i96 %ins3191.tr, 64
  %tmp3333 = trunc i96 %tmp3332 to i32
  %tmp3334 = bitcast i32 %tmp3333 to float
  %190 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %4, double %tmp3337, float %tmp3334) nounwind
  %mrv_gr20.i222 = extractvalue %0 %190, 0
  %tmp3149 = bitcast double %mrv_gr20.i222 to i64
  %mrv_gr22.i224 = extractvalue %0 %190, 1
  %tmp3139 = lshr i64 %tmp3149, 32
  %tmp4100 = bitcast float %tmp3304 to i32
  %tmp4101 = zext i32 %tmp4100 to i96
  %tmp4094 = bitcast float %tmp3305 to i32
  %tmp4095 = zext i32 %tmp4094 to i96
  %tmp4096 = shl nuw nsw i96 %tmp4095, 32
  %ins4098 = or i96 %tmp4101, %tmp4096
  %tmp4088 = bitcast float %tmp3306 to i32
  %tmp3987 = zext i96 %ins4098 to i128
  %mask3988 = and i128 %memtmp.i104.i.1, -79228162514264337593543950336
  %tmp3981 = zext i32 %tmp4088 to i128
  %tmp3982 = shl nuw nsw i128 %tmp3981, 64
  %mask3983 = or i128 %mask3988, %tmp3987
  %ins3984 = or i128 %mask3983, %tmp3982
  %tmp4030 = bitcast float %tmp3304 to i32
  %tmp4031 = zext i32 %tmp4030 to i64
  %tmp4024 = bitcast float %tmp3305 to i32
  %tmp4025 = zext i32 %tmp4024 to i64
  %tmp4026 = shl nuw i64 %tmp4025, 32
  %ins4028 = or i64 %tmp4031, %tmp4026
  %ins3984.tr = trunc i128 %ins3984 to i96
  %tmp4123 = bitcast float %tmp3311 to i32
  %tmp4124 = zext i32 %tmp4123 to i96
  %tmp4117 = bitcast float %tmp3313 to i32
  %tmp4118 = zext i32 %tmp4117 to i96
  %tmp4119 = shl nuw nsw i96 %tmp4118, 32
  %ins4121 = or i96 %tmp4124, %tmp4119
  %tmp4111 = bitcast float %tmp3315 to i32
  %tmp3965 = zext i96 %ins4121 to i128
  %mask3966 = and i128 %memtmp4.i.i158.1, -79228162514264337593543950336
  %tmp3959 = zext i32 %tmp4111 to i128
  %tmp3960 = shl nuw nsw i128 %tmp3959, 64
  %mask3961 = or i128 %mask3966, %tmp3965
  %ins3962 = or i128 %mask3961, %tmp3960
  store float %tmp3311, float* %94, align 8
  store float %tmp3313, float* %95, align 4
  %tmp3947 = lshr i128 %ins3962, 64
  %tmp3948 = trunc i128 %tmp3947 to i32
  %tmp3949 = bitcast i32 %tmp3948 to float
  store float %tmp3949, float* %96, align 8
  %tmp4016 = bitcast i64 %ins4028 to double
  %tmp4011 = lshr i96 %ins3984.tr, 64
  %tmp4012 = trunc i96 %tmp4011 to i32
  %tmp4013 = bitcast i32 %tmp4012 to float
  %191 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %1, double %tmp4016, float %tmp4013) nounwind
  %mrv_gr14.i.i239 = extractvalue %0 %191, 0
  %tmp3942 = bitcast double %mrv_gr14.i.i239 to i64
  %mrv_gr16.i.i241 = extractvalue %0 %191, 1
  %tmp3929 = trunc i64 %tmp3942 to i32
  %tmp3930 = bitcast i32 %tmp3929 to float
  store float %tmp3930, float* %97, align 8
  %tmp3932 = lshr i64 %tmp3942, 32
  %tmp3933 = trunc i64 %tmp3932 to i32
  %tmp3934 = bitcast i32 %tmp3933 to float
  store float %tmp3934, float* %98, align 4
  store float %mrv_gr16.i.i241, float* %99, align 8
  %tmp4146 = bitcast float %tmp3298 to i32
  %tmp4147 = zext i32 %tmp4146 to i96
  %tmp4140 = bitcast float %tmp3299 to i32
  %tmp4141 = zext i32 %tmp4140 to i96
  %tmp4142 = shl nuw nsw i96 %tmp4141, 32
  %ins4144 = or i96 %tmp4147, %tmp4142
  %tmp4134 = bitcast float %tmp3300 to i32
  %tmp3921 = zext i96 %ins4144 to i128
  %mask3922 = and i128 %memtmp18.i.i160.1, -79228162514264337593543950336
  %tmp3915 = zext i32 %tmp4134 to i128
  %tmp3916 = shl nuw nsw i128 %tmp3915, 64
  %mask3917 = or i128 %mask3922, %tmp3921
  %ins3918 = or i128 %mask3917, %tmp3916
  %tmp4054 = bitcast float %tmp3298 to i32
  %tmp4055 = zext i32 %tmp4054 to i64
  %tmp4048 = bitcast float %tmp3299 to i32
  %tmp4049 = zext i32 %tmp4048 to i64
  %tmp4050 = shl nuw i64 %tmp4049, 32
  %ins4052 = or i64 %tmp4055, %tmp4050
  %ins3918.tr = trunc i128 %ins3918 to i96
  %ins4167 = or i96 %tmp4101, %tmp4096
  %tmp3899 = zext i96 %ins4167 to i128
  %mask3900 = and i128 %memtmp24.i.i161.1, -79228162514264337593543950336
  %mask3895 = or i128 %mask3900, %tmp3899
  %ins3896 = or i128 %mask3895, %tmp3982
  store float %tmp3304, float* %100, align 8
  store float %tmp3305, float* %101, align 4
  %tmp3881 = lshr i128 %ins3896, 64
  %tmp3882 = trunc i128 %tmp3881 to i32
  %tmp3883 = bitcast i32 %tmp3882 to float
  store float %tmp3883, float* %102, align 8
  %tmp4040 = bitcast i64 %ins4052 to double
  %tmp4035 = lshr i96 %ins3918.tr, 64
  %tmp4036 = trunc i96 %tmp4035 to i32
  %tmp4037 = bitcast i32 %tmp4036 to float
  %192 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %0, double %tmp4040, float %tmp4037) nounwind
  %mrv_gr36.i.i267 = extractvalue %0 %192, 0
  %mrv_gr38.i.i269 = extractvalue %0 %192, 1
  %193 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %edge1.i.i155, double %mrv_gr36.i.i267, float %mrv_gr38.i.i269) nounwind
  %mrv_gr46.i.i274 = extractvalue %0 %193, 0
  %tmp3854 = bitcast double %mrv_gr46.i.i274 to i64
  %mrv_gr48.i.i276 = extractvalue %0 %193, 1
  %tmp3841 = trunc i64 %tmp3854 to i32
  %tmp3842 = bitcast i32 %tmp3841 to float
  store float %tmp3842, float* %103, align 8
  %tmp3844 = lshr i64 %tmp3854, 32
  %tmp3845 = trunc i64 %tmp3844 to i32
  %tmp3846 = bitcast i32 %tmp3845 to float
  store float %tmp3846, float* %104, align 4
  store float %mrv_gr48.i.i276, float* %105, align 8
  %194 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %n.i.i157) nounwind
  %mrv_gr52.i.i279 = extractvalue %0 %194, 0
  %tmp3832 = bitcast double %mrv_gr52.i.i279 to i64
  %mrv_gr54.i.i281 = extractvalue %0 %194, 1
  %tmp3826 = bitcast float %mrv_gr54.i.i281 to i32
  %tmp3822 = lshr i64 %tmp3832, 32
  %tmp4078 = zext i64 %tmp3832 to i96
  %tmp4072 = zext i64 %tmp3822 to i96
  %tmp4073 = shl nuw nsw i96 %tmp4072, 32
  %tmp4078.masked = and i96 %tmp4078, 4294967295
  %ins4075 = or i96 %tmp4078.masked, %tmp4073
  %tmp3128 = zext i96 %ins4075 to i128
  %mask3129 = and i128 %memtmp24.i198.1, -79228162514264337593543950336
  %tmp3122 = zext i32 %tmp3826 to i128
  %tmp3123 = shl nuw nsw i128 %tmp3122, 64
  %mask3124 = or i128 %mask3129, %tmp3128
  %ins3125 = or i128 %mask3124, %tmp3123
  %tmp3114 = trunc i64 %tmp3832 to i32
  %tmp3115 = bitcast i32 %tmp3114 to float
  %tmp3118 = trunc i64 %tmp3822 to i32
  %tmp3119 = bitcast i32 %tmp3118 to float
  %tmp3110 = lshr i128 %ins3125, 64
  %tmp3111 = trunc i128 %tmp3110 to i32
  %tmp3112 = bitcast i32 %tmp3111 to float
  %ins4190 = or i96 %tmp3600, %tmp3595
  %tmp3106 = zext i96 %ins4190 to i128
  %mask3107 = and i128 %memtmp30.i199.1, -79228162514264337593543950336
  %mask3102 = or i128 %mask3107, %tmp3106
  %ins3103 = or i128 %mask3102, %tmp3211
  store float %tmp2835, float* %106, align 8
  store float %tmp2836, float* %107, align 4
  %tmp3088 = lshr i128 %ins3103, 64
  %tmp3089 = trunc i128 %tmp3088 to i32
  %tmp3090 = bitcast i32 %tmp3089 to float
  store float %tmp3090, float* %108, align 8
  %195 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %3) nounwind
  %mrv_gr38.i298 = extractvalue %0 %195, 0
  %tmp3083 = bitcast double %mrv_gr38.i298 to i64
  %mrv_gr40.i300 = extractvalue %0 %195, 1
  %tmp3073 = lshr i64 %tmp3083, 32
  %tmp3793 = trunc i64 %tmp3083 to i32
  %tmp3794 = bitcast i32 %tmp3793 to float
  %196 = fmul float %tmp3794, %tmp3115
  %197 = fadd float %196, 0.000000e+00
  %tmp3790 = trunc i64 %tmp3073 to i32
  %tmp3791 = bitcast i32 %tmp3790 to float
  %198 = fmul float %tmp3791, %tmp3119
  %199 = fadd float %198, %197
  %200 = fmul float %mrv_gr40.i300, %tmp3112
  %201 = fadd float %200, %199
  %202 = fcmp ogt float %201, 0.000000e+00
  br i1 %202, label %bb46.i, label %bb53.i305

bb46.i:                                           ; preds = %bb.i304
  %203 = fmul float %tmp3115, -1.000000e+00
  %204 = fmul float %tmp3119, -1.000000e+00
  %205 = fmul float %tmp3112, -1.000000e+00
  %tmp3780 = bitcast float %203 to i32
  %tmp3781 = zext i32 %tmp3780 to i96
  %tmp3774 = bitcast float %204 to i32
  %tmp3775 = zext i32 %tmp3774 to i96
  %tmp3776 = shl nuw nsw i96 %tmp3775, 32
  %ins3778 = or i96 %tmp3781, %tmp3776
  %tmp3768 = bitcast float %205 to i32
  %tmp3062 = zext i96 %ins3778 to i128
  %mask3063 = and i128 %memtmp47.i.2, -79228162514264337593543950336
  %tmp3056 = zext i32 %tmp3768 to i128
  %tmp3057 = shl nuw nsw i128 %tmp3056, 64
  %mask3058 = or i128 %mask3063, %tmp3062
  %ins3059 = or i128 %mask3058, %tmp3057
  %tmp3044 = lshr i128 %ins3059, 64
  %tmp3045 = trunc i128 %tmp3044 to i32
  %tmp3046 = bitcast i32 %tmp3045 to float
  br label %bb53.i305

bb53.i305:                                        ; preds = %bb46.i, %bb.i304
  %N.i.0.0 = phi float [ %203, %bb46.i ], [ %tmp3115, %bb.i304 ]
  %N.i.1.0 = phi float [ %204, %bb46.i ], [ %tmp3119, %bb.i304 ]
  %N.i.2.0 = phi float [ %tmp3046, %bb46.i ], [ %tmp3112, %bb.i304 ]
  %memtmp47.i.0 = phi i128 [ %ins3059, %bb46.i ], [ %memtmp47.i.2, %bb.i304 ]
  %206 = fmul float %tmp3285, 0.000000e+00
  %tmp3757 = bitcast float %206 to i32
  %tmp3758 = zext i32 %tmp3757 to i96
  %tmp3753 = shl nuw nsw i96 %tmp3758, 32
  %ins3755 = or i96 %tmp3758, %tmp3753
  %tmp3040 = zext i96 %ins3755 to i128
  %mask3041 = and i128 %memtmp54.i.1, -79228162514264337593543950336
  %tmp3034 = zext i32 %tmp3757 to i128
  %tmp3035 = shl nuw nsw i128 %tmp3034, 64
  %mask3036 = or i128 %mask3041, %tmp3040
  %ins3037 = or i128 %mask3036, %tmp3035
  store float %206, float* %109, align 8
  store float %206, float* %110, align 4
  %tmp3022 = lshr i128 %ins3037, 64
  %tmp3023 = trunc i128 %tmp3022 to i32
  %tmp3024 = bitcast i32 %tmp3023 to float
  store float %tmp3024, float* %111, align 8
  %ins3732 = or i96 %tmp3735, %tmp3730
  %tmp3018 = zext i96 %ins3732 to i128
  %mask3019 = and i128 %memtmp60.i.1, -79228162514264337593543950336
  %mask3014 = or i128 %mask3019, %tmp3018
  %ins3015 = or i128 %mask3014, %tmp3013
  store float %20, float* %112, align 8
  store float %21, float* %113, align 4
  %tmp3000 = lshr i128 %ins3015, 64
  %tmp3001 = trunc i128 %tmp3000 to i32
  %tmp3002 = bitcast i32 %tmp3001 to float
  store float %tmp3002, float* %114, align 8
  %207 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %2, double %mrv_gr20.i222, float %mrv_gr22.i224) nounwind
  %mrv_gr72.i = extractvalue %0 %207, 0
  %tmp2995 = bitcast double %mrv_gr72.i to i64
  %mrv_gr74.i = extractvalue %0 %207, 1
  %tmp2982 = trunc i64 %tmp2995 to i32
  %tmp2983 = bitcast i32 %tmp2982 to float
  store float %tmp2983, float* %115, align 8
  %tmp2985 = lshr i64 %tmp2995, 32
  %tmp2986 = trunc i64 %tmp2985 to i32
  %tmp2987 = bitcast i32 %tmp2986 to float
  store float %tmp2987, float* %116, align 4
  store float %mrv_gr74.i, float* %117, align 8
  %208 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %L.i) nounwind
  %mrv_gr78.i = extractvalue %0 %208, 0
  %tmp2973 = bitcast double %mrv_gr78.i to i64
  %mrv_gr80.i = extractvalue %0 %208, 1
  %tmp2963 = lshr i64 %tmp2973, 32
  %tmp3656 = trunc i64 %tmp2973 to i32
  %tmp3657 = bitcast i32 %tmp3656 to float
  %209 = fmul float %tmp3657, %N.i.0.0
  %210 = fadd float %209, 0.000000e+00
  %tmp3653 = trunc i64 %tmp2963 to i32
  %tmp3654 = bitcast i32 %tmp3653 to float
  %211 = fmul float %tmp3654, %N.i.1.0
  %212 = fadd float %211, %210
  %213 = fmul float %mrv_gr80.i, %N.i.2.0
  %214 = fadd float %213, %212
  %215 = fcmp ogt float %214, 0.000000e+00
  br i1 %215, label %bb94.i, label %bb121.i

bb94.i:                                           ; preds = %bb53.i305
  %tmp3609 = trunc i64 %tmp2963 to i32
  %tmp3612 = trunc i64 %tmp2973 to i32
  %tmp3631 = trunc i64 %tmp3139 to i32
  %tmp3634 = trunc i64 %tmp3149 to i32
  %tmp3610 = bitcast i32 %tmp3609 to float
  %tmp3613 = bitcast i32 %tmp3612 to float
  %tmp3632 = bitcast i32 %tmp3631 to float
  %tmp3635 = bitcast i32 %tmp3634 to float
  %216 = load float* %115, align 8
  %217 = fmul float %216, %216
  %218 = load float* %116, align 4
  %219 = fmul float %218, %218
  %220 = fadd float %217, %219
  %221 = load float* %117, align 8
  %222 = fmul float %221, %221
  %223 = fadd float %220, %222
  %224 = call float @llvm.trax.invsqrt(float %223) nounwind
  %225 = fdiv float 1.000000e+00, %224
  store float %tmp3635, float* %ray_to_light_source16.i3327.0, align 8
  store float %tmp3632, float* %ray_to_light_source16.i3327.1, align 4
  store float %mrv_gr22.i224, float* %ray_to_light_source16.i3327.2, align 8
  store float %tmp3613, float* %ray_to_light_source16.i.1.0, align 4
  store float %tmp3610, float* %ray_to_light_source16.i.1.1, align 4
  store float %mrv_gr80.i, float* %ray_to_light_source16.i.1.2, align 4
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record142, %struct.Box* %ray_to_light_source16.i) nounwind
  %226 = load float* %90, align 8
  %227 = fcmp uge float %226, %225
  %228 = fcmp ule float %226, 0x3F847AE140000000
  %or.cond = or i1 %227, %228
  br i1 %or.cond, label %bb98.i, label %bb121.i

bb98.i:                                           ; preds = %bb94.i
  %229 = fmul float %tmp3287, %214
  %tmp3553 = bitcast float %229 to i32
  %tmp3554 = zext i32 %tmp3553 to i96
  %tmp3547 = bitcast float %229 to i32
  %tmp3548 = zext i32 %tmp3547 to i96
  %tmp3549 = shl nuw nsw i96 %tmp3548, 32
  %ins3551 = or i96 %tmp3554, %tmp3549
  %tmp3541 = bitcast float %229 to i32
  %tmp2930 = zext i96 %ins3551 to i128
  %mask2931 = and i128 %memtmp105.i.2, -79228162514264337593543950336
  %tmp2924 = zext i32 %tmp3541 to i128
  %tmp2925 = shl nuw nsw i128 %tmp2924, 64
  %mask2926 = or i128 %mask2931, %tmp2930
  %ins2927 = or i128 %mask2926, %tmp2925
  %tmp3394 = bitcast float %229 to i32
  %tmp3395 = zext i32 %tmp3394 to i64
  %tmp3388 = bitcast float %229 to i32
  %tmp3389 = zext i32 %tmp3388 to i64
  %tmp3390 = shl nuw i64 %tmp3389, 32
  %ins3392 = or i64 %tmp3395, %tmp3390
  %tmp2912 = lshr i128 %ins2927, 64
  %tmp2913 = trunc i128 %tmp2912 to i32
  %tmp2914 = bitcast i32 %tmp2913 to float
  %tmp3380 = bitcast i64 %ins3392 to double
  %230 = call fastcc %0 @_ZN5Color3addES_(%struct.Color* %light.i, double %tmp3380, float %tmp2914) nounwind
  %mrv_gr117.i317 = extractvalue %0 %230, 0
  %tmp2907 = bitcast double %mrv_gr117.i317 to i64
  %mrv_gr119.i = extractvalue %0 %230, 1
  %tmp2894 = trunc i64 %tmp2907 to i32
  %tmp2895 = bitcast i32 %tmp2894 to float
  store float %tmp2895, float* %109, align 8
  %tmp2897 = lshr i64 %tmp2907, 32
  %tmp2898 = trunc i64 %tmp2897 to i32
  %tmp2899 = bitcast i32 %tmp2898 to float
  store float %tmp2899, float* %110, align 4
  store float %mrv_gr119.i, float* %111, align 8
  br label %bb121.i

bb121.i:                                          ; preds = %bb98.i, %bb94.i, %bb53.i305
  %memtmp105.i.0 = phi i128 [ %ins2927, %bb98.i ], [ %memtmp105.i.2, %bb53.i305 ], [ %memtmp105.i.2, %bb94.i ]
  %tmp3530 = bitcast float %tmp3295 to i32
  %tmp3531 = zext i32 %tmp3530 to i96
  %tmp3524 = bitcast float %tmp3296 to i32
  %tmp3525 = zext i32 %tmp3524 to i96
  %tmp3526 = shl nuw nsw i96 %tmp3525, 32
  %ins3528 = or i96 %tmp3531, %tmp3526
  %tmp3518 = bitcast float %tmp3297 to i32
  %tmp3485 = zext i96 %ins3528 to i128
  %mask3486 = and i128 %memtmp.i.i186.1, -79228162514264337593543950336
  %tmp3479 = zext i32 %tmp3518 to i128
  %tmp3480 = shl nuw nsw i128 %tmp3479, 64
  %mask3481 = or i128 %mask3486, %tmp3485
  %ins3482 = or i128 %mask3481, %tmp3480
  %tmp3507 = bitcast float %tmp3295 to i32
  %tmp3508 = zext i32 %tmp3507 to i96
  %tmp3501 = bitcast float %tmp3296 to i32
  %tmp3502 = zext i32 %tmp3501 to i96
  %tmp3503 = shl nuw nsw i96 %tmp3502, 32
  %ins3505 = or i96 %tmp3508, %tmp3503
  %tmp2886 = zext i96 %ins3505 to i128
  %mask2887 = and i128 %memtmp122.i.1, -79228162514264337593543950336
  %tmp2881 = and i128 %ins3482, 79228162495817593519834398720
  %mask2882 = or i128 %mask2887, %tmp2886
  %ins2883 = or i128 %mask2882, %tmp2881
  %tmp3417 = bitcast float %tmp3295 to i32
  %tmp3418 = zext i32 %tmp3417 to i64
  %tmp3411 = bitcast float %tmp3296 to i32
  %tmp3412 = zext i32 %tmp3411 to i64
  %tmp3413 = shl nuw i64 %tmp3412, 32
  %ins3415 = or i64 %tmp3418, %tmp3413
  %tmp2868 = lshr i128 %ins2883, 64
  %tmp2869 = trunc i128 %tmp2868 to i32
  %tmp2870 = bitcast i32 %tmp2869 to float
  %tmp3403 = bitcast i64 %ins3415 to double
  %231 = call fastcc %0 @_ZN5Color5timesES_(%struct.Color* %light.i, double %tmp3403, float %tmp2870) nounwind
  %mrv_gr134.i = extractvalue %0 %231, 0
  %tmp2863 = bitcast double %mrv_gr134.i to i64
  %mrv_gr136.i = extractvalue %0 %231, 1
  %tmp2857 = bitcast float %mrv_gr136.i to i32
  %tmp2858 = zext i32 %tmp2857 to i128
  %tmp2859 = shl nuw nsw i128 %tmp2858, 64
  %tmp2850 = trunc i64 %tmp2863 to i32
  %tmp2851 = bitcast i32 %tmp2850 to float
  store float %tmp2851, float* %109, align 8
  %tmp2853 = lshr i64 %tmp2863, 32
  %tmp2854 = trunc i64 %tmp2853 to i32
  %tmp2855 = bitcast i32 %tmp2854 to float
  store float %tmp2855, float* %110, align 4
  store float %mrv_gr136.i, float* %111, align 8
  %tmp4349 = zext i64 %tmp2863 to i96
  %phitmp4348 = and i96 %tmp4349, 4294967295
  %phitmp4351 = zext i64 %tmp2863 to i96
  %phitmp4353 = and i96 %phitmp4351, 18446744069414584320
  br label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit: ; preds = %bb121.i, %bb3
  %.03421.0 = phi i96 [ %phitmp4348, %bb121.i ], [ 1057988018, %bb3 ]
  %.13422.0 = phi i96 [ %phitmp4353, %bb121.i ], [ 4556129611431280640, %bb3 ]
  %.23423.0 = phi i128 [ %tmp2859, %bb121.i ], [ 19648584296011284141125402624, %bb3 ]
  %memtmp122.i.0 = phi i128 [ %ins2883, %bb121.i ], [ %memtmp122.i.1, %bb3 ]
  %memtmp105.i.1 = phi i128 [ %memtmp105.i.0, %bb121.i ], [ %memtmp105.i.2, %bb3 ]
  %memtmp60.i.0 = phi i128 [ %ins3015, %bb121.i ], [ %memtmp60.i.1, %bb3 ]
  %memtmp54.i.0 = phi i128 [ %ins3037, %bb121.i ], [ %memtmp54.i.1, %bb3 ]
  %memtmp47.i.1 = phi i128 [ %memtmp47.i.0, %bb121.i ], [ %memtmp47.i.2, %bb3 ]
  %memtmp30.i199.0 = phi i128 [ %ins3103, %bb121.i ], [ %memtmp30.i199.1, %bb3 ]
  %memtmp24.i198.0 = phi i128 [ %ins3125, %bb121.i ], [ %memtmp24.i198.1, %bb3 ]
  %memtmp10.i196.0 = phi i128 [ %ins3169, %bb121.i ], [ %memtmp10.i196.1, %bb3 ]
  %memtmp4.i195.0 = phi i128 [ %ins3191, %bb121.i ], [ %memtmp4.i195.1, %bb3 ]
  %memtmp.i194.0 = phi i128 [ %ins3213, %bb121.i ], [ %memtmp.i194.1, %bb3 ]
  %memtmp.i.i186.0 = phi i128 [ %ins3482, %bb121.i ], [ %memtmp.i.i186.1, %bb3 ]
  %memtmp24.i.i161.0 = phi i128 [ %ins3896, %bb121.i ], [ %memtmp24.i.i161.1, %bb3 ]
  %memtmp18.i.i160.0 = phi i128 [ %ins3918, %bb121.i ], [ %memtmp18.i.i160.1, %bb3 ]
  %memtmp4.i.i158.0 = phi i128 [ %ins3962, %bb121.i ], [ %memtmp4.i.i158.1, %bb3 ]
  %memtmp.i104.i.0 = phi i128 [ %ins3984, %bb121.i ], [ %memtmp.i104.i.1, %bb3 ]
  %ins3438 = or i96 %.03421.0, %.13422.0
  %tmp487 = zext i96 %ins3438 to i128
  %mask488 = and i128 %memtmp.0, -79228162514264337593543950336
  %mask483 = or i128 %mask488, %tmp487
  %ins484 = or i128 %mask483, %.23423.0
  %tmp473 = trunc i96 %.03421.0 to i32
  %tmp474 = bitcast i32 %tmp473 to float
  store float %tmp474, float* %118, align 8
  %tmp476 = lshr exact i96 %.13422.0, 32
  %tmp477 = trunc i96 %tmp476 to i32
  %tmp478 = bitcast i32 %tmp477 to float
  store float %tmp478, float* %119, align 4
  %tmp469 = lshr i128 %ins484, 64
  %tmp470 = trunc i128 %tmp469 to i32
  %tmp471 = bitcast i32 %tmp470 to float
  store float %tmp471, float* %120, align 8
  %val10 = load double* %elt9, align 8
  %232 = call fastcc %0 @_ZN5Color5timesES_(%struct.Color* %13, double %val10, float %val12)
  %mrv_gr15 = extractvalue %0 %232, 0
  %mrv_gr17 = extractvalue %0 %232, 1
  %233 = call fastcc %0 @_ZN5Color3addES_(%struct.Color* %result, double %mrv_gr15, float %mrv_gr17)
  %mrv_gr25 = extractvalue %0 %233, 0
  %tmp442 = bitcast double %mrv_gr25 to i64
  %mrv_gr27 = extractvalue %0 %233, 1
  %tmp429 = trunc i64 %tmp442 to i32
  %tmp430 = bitcast i32 %tmp429 to float
  store float %tmp430, float* %23, align 8
  %tmp432 = lshr i64 %tmp442, 32
  %tmp433 = trunc i64 %tmp432 to i32
  %tmp434 = bitcast i32 %tmp433 to float
  store float %tmp434, float* %24, align 4
  store float %mrv_gr27, float* %25, align 8
  %234 = load float* %89, align 8
  %235 = fcmp olt float %234, 1.000000e+10
  br i1 %235, label %bb31, label %bb50

bb31:                                             ; preds = %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit
  %tmp735 = load float* %.4731734.0, align 4
  %tmp736 = load float* %.4731734.1, align 4
  %tmp737 = load float* %.4731734.2, align 4
  %tmp4260 = bitcast float %tmp735 to i32
  %tmp4261 = zext i32 %tmp4260 to i96
  %tmp4254 = bitcast float %tmp736 to i32
  %tmp4255 = zext i32 %tmp4254 to i96
  %tmp4256 = shl nuw nsw i96 %tmp4255, 32
  %ins4258 = or i96 %tmp4261, %tmp4256
  %tmp4248 = bitcast float %tmp737 to i32
  %tmp4215 = zext i96 %ins4258 to i128
  %mask4216 = and i128 %memtmp.i337.0, -79228162514264337593543950336
  %tmp4209 = zext i32 %tmp4248 to i128
  %tmp4210 = shl nuw nsw i128 %tmp4209, 64
  %mask4211 = or i128 %mask4216, %tmp4215
  %ins4212 = or i128 %mask4211, %tmp4210
  %tmp4237 = bitcast float %tmp735 to i32
  %tmp4238 = zext i32 %tmp4237 to i96
  %tmp4231 = bitcast float %tmp736 to i32
  %tmp4232 = zext i32 %tmp4231 to i96
  %tmp4233 = shl nuw nsw i96 %tmp4232, 32
  %ins4235 = or i96 %tmp4238, %tmp4233
  %tmp421 = zext i96 %ins4235 to i128
  %mask422 = and i128 %memtmp32.0, -79228162514264337593543950336
  %tmp416 = and i128 %ins4212, 79228162495817593519834398720
  %mask417 = or i128 %mask422, %tmp421
  %ins418 = or i128 %mask417, %tmp416
  %tmp718 = bitcast float %tmp735 to i32
  %tmp719 = zext i32 %tmp718 to i64
  %tmp712 = bitcast float %tmp736 to i32
  %tmp713 = zext i32 %tmp712 to i64
  %tmp714 = shl nuw i64 %tmp713, 32
  %ins716 = or i64 %tmp719, %tmp714
  %tmp403 = lshr i128 %ins418, 64
  %tmp404 = trunc i128 %tmp403 to i32
  %tmp405 = bitcast i32 %tmp404 to float
  %tmp704 = bitcast i64 %ins716 to double
  %236 = call fastcc %0 @_ZN5Color5timesES_(%struct.Color* %attenuation, double %tmp704, float %tmp405)
  %mrv_gr44 = extractvalue %0 %236, 0
  %tmp398 = bitcast double %mrv_gr44 to i64
  %mrv_gr46 = extractvalue %0 %236, 1
  %tmp385 = trunc i64 %tmp398 to i32
  %tmp386 = bitcast i32 %tmp385 to float
  store float %tmp386, float* %26, align 8
  %tmp388 = lshr i64 %tmp398, 32
  %tmp389 = trunc i64 %tmp388 to i32
  %tmp390 = bitcast i32 %tmp389 to float
  store float %tmp390, float* %27, align 4
  store float %mrv_gr46, float* %28, align 8
  %tmp976 = load float* %hit_record.1975.0, align 4
  %tmp977 = load float* %hit_record.1975.1, align 4
  %tmp978 = load float* %hit_record.1975.2, align 4
  %tmp968 = load float* %hit_record.1.1.0, align 4
  %tmp969 = load float* %hit_record.1.1.1, align 4
  %tmp970 = load float* %hit_record.1.1.2, align 4
  %tmp962 = load float* %hit_record.1.2.0, align 4
  %tmp963 = load float* %hit_record.1.2.1, align 4
  %tmp964 = load float* %hit_record.1.2.2, align 4
  %tmp986 = load float* %ray2838.0, align 8
  %tmp987 = load float* %ray2838.1, align 4
  %tmp988 = load float* %ray2838.2, align 8
  %tmp982 = load float* %ray.12834.0, align 4
  %tmp983 = load float* %ray.12834.1, align 4
  %tmp984 = load float* %ray.12834.2, align 4
  %tmp1738 = bitcast float %tmp982 to i32
  %tmp1739 = zext i32 %tmp1738 to i96
  %tmp1732 = bitcast float %tmp983 to i32
  %tmp1733 = zext i32 %tmp1732 to i96
  %tmp1734 = shl nuw nsw i96 %tmp1733, 32
  %ins1736 = or i96 %tmp1739, %tmp1734
  %tmp1726 = bitcast float %tmp984 to i32
  %tmp1382 = zext i96 %ins1736 to i128
  %mask1383 = and i128 %memtmp.i28.0, -79228162514264337593543950336
  %tmp1376 = zext i32 %tmp1726 to i128
  %tmp1377 = shl nuw nsw i128 %tmp1376, 64
  %mask1378 = or i128 %mask1383, %tmp1382
  %ins1379 = or i128 %mask1378, %tmp1377
  %tmp1364 = lshr i128 %ins1379, 64
  %tmp1365 = trunc i128 %tmp1364 to i32
  %tmp1366 = bitcast i32 %tmp1365 to float
  %237 = fmul float %tmp982, %234
  %238 = fmul float %tmp983, %234
  %239 = fmul float %tmp1366, %234
  %tmp1784 = bitcast float %237 to i32
  %tmp1785 = zext i32 %tmp1784 to i96
  %tmp1778 = bitcast float %238 to i32
  %tmp1779 = zext i32 %tmp1778 to i96
  %tmp1780 = shl nuw nsw i96 %tmp1779, 32
  %ins1782 = or i96 %tmp1785, %tmp1780
  %tmp1772 = bitcast float %239 to i32
  %tmp1360 = zext i96 %ins1782 to i128
  %mask1361 = and i128 %memtmp4.i.0, -79228162514264337593543950336
  %tmp1354 = zext i32 %tmp1772 to i128
  %tmp1355 = shl nuw nsw i128 %tmp1354, 64
  %mask1356 = or i128 %mask1361, %tmp1360
  %ins1357 = or i128 %mask1356, %tmp1355
  %tmp1527 = bitcast float %237 to i32
  %tmp1528 = zext i32 %tmp1527 to i64
  %tmp1521 = bitcast float %238 to i32
  %tmp1522 = zext i32 %tmp1521 to i64
  %tmp1523 = shl nuw i64 %tmp1522, 32
  %ins1525 = or i64 %tmp1528, %tmp1523
  %ins1357.tr = trunc i128 %ins1357 to i96
  %tmp1807 = bitcast float %tmp986 to i32
  %tmp1808 = zext i32 %tmp1807 to i96
  %tmp1801 = bitcast float %tmp987 to i32
  %tmp1802 = zext i32 %tmp1801 to i96
  %tmp1803 = shl nuw nsw i96 %tmp1802, 32
  %ins1805 = or i96 %tmp1808, %tmp1803
  %tmp1795 = bitcast float %tmp988 to i32
  %tmp1338 = zext i96 %ins1805 to i128
  %mask1339 = and i128 %memtmp10.i.0, -79228162514264337593543950336
  %tmp1332 = zext i32 %tmp1795 to i128
  %tmp1333 = shl nuw nsw i128 %tmp1332, 64
  %mask1334 = or i128 %mask1339, %tmp1338
  %ins1335 = or i128 %mask1334, %tmp1333
  store float %tmp986, float* %121, align 8
  store float %tmp987, float* %122, align 4
  %tmp1320 = lshr i128 %ins1335, 64
  %tmp1321 = trunc i128 %tmp1320 to i32
  %tmp1322 = bitcast i32 %tmp1321 to float
  store float %tmp1322, float* %123, align 8
  %tmp1513 = bitcast i64 %ins1525 to double
  %tmp1508 = lshr i96 %ins1357.tr, 64
  %tmp1509 = trunc i96 %tmp1508 to i32
  %tmp1510 = bitcast i32 %tmp1509 to float
  %240 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %12, double %tmp1513, float %tmp1510)
  %mrv_gr20.i = extractvalue %0 %240, 0
  %tmp1315 = bitcast double %mrv_gr20.i to i64
  %mrv_gr22.i = extractvalue %0 %240, 1
  %tmp1302 = trunc i64 %tmp1315 to i32
  %tmp1303 = bitcast i32 %tmp1302 to float
  store float %tmp1303, float* %124, align 8
  %tmp1305 = lshr i64 %tmp1315, 32
  %tmp1306 = trunc i64 %tmp1305 to i32
  %tmp1307 = bitcast i32 %tmp1306 to float
  store float %tmp1307, float* %125, align 4
  store float %mrv_gr22.i, float* %126, align 8
  %tmp2174 = bitcast float %tmp968 to i32
  %tmp2175 = zext i32 %tmp2174 to i96
  %tmp2168 = bitcast float %tmp969 to i32
  %tmp2169 = zext i32 %tmp2168 to i96
  %tmp2170 = shl nuw nsw i96 %tmp2169, 32
  %ins2172 = or i96 %tmp2175, %tmp2170
  %tmp2162 = bitcast float %tmp970 to i32
  %tmp2061 = zext i96 %ins2172 to i128
  %mask2062 = and i128 %memtmp.i.i.0, -79228162514264337593543950336
  %tmp2055 = zext i32 %tmp2162 to i128
  %tmp2056 = shl nuw nsw i128 %tmp2055, 64
  %mask2057 = or i128 %mask2062, %tmp2061
  %ins2058 = or i128 %mask2057, %tmp2056
  %tmp2104 = bitcast float %tmp968 to i32
  %tmp2105 = zext i32 %tmp2104 to i64
  %tmp2098 = bitcast float %tmp969 to i32
  %tmp2099 = zext i32 %tmp2098 to i64
  %tmp2100 = shl nuw i64 %tmp2099, 32
  %ins2102 = or i64 %tmp2105, %tmp2100
  %ins2058.tr = trunc i128 %ins2058 to i96
  %tmp2197 = bitcast float %tmp976 to i32
  %tmp2198 = zext i32 %tmp2197 to i96
  %tmp2191 = bitcast float %tmp977 to i32
  %tmp2192 = zext i32 %tmp2191 to i96
  %tmp2193 = shl nuw nsw i96 %tmp2192, 32
  %ins2195 = or i96 %tmp2198, %tmp2193
  %tmp2185 = bitcast float %tmp978 to i32
  %tmp2039 = zext i96 %ins2195 to i128
  %mask2040 = and i128 %memtmp4.i.i.0, -79228162514264337593543950336
  %tmp2033 = zext i32 %tmp2185 to i128
  %tmp2034 = shl nuw nsw i128 %tmp2033, 64
  %mask2035 = or i128 %mask2040, %tmp2039
  %ins2036 = or i128 %mask2035, %tmp2034
  store float %tmp976, float* %127, align 8
  store float %tmp977, float* %128, align 4
  %tmp2021 = lshr i128 %ins2036, 64
  %tmp2022 = trunc i128 %tmp2021 to i32
  %tmp2023 = bitcast i32 %tmp2022 to float
  store float %tmp2023, float* %129, align 8
  %tmp2090 = bitcast i64 %ins2102 to double
  %tmp2085 = lshr i96 %ins2058.tr, 64
  %tmp2086 = trunc i96 %tmp2085 to i32
  %tmp2087 = bitcast i32 %tmp2086 to float
  %241 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %7, double %tmp2090, float %tmp2087) nounwind
  %mrv_gr14.i.i = extractvalue %0 %241, 0
  %tmp2016 = bitcast double %mrv_gr14.i.i to i64
  %mrv_gr16.i.i = extractvalue %0 %241, 1
  %tmp2003 = trunc i64 %tmp2016 to i32
  %tmp2004 = bitcast i32 %tmp2003 to float
  store float %tmp2004, float* %130, align 8
  %tmp2006 = lshr i64 %tmp2016, 32
  %tmp2007 = trunc i64 %tmp2006 to i32
  %tmp2008 = bitcast i32 %tmp2007 to float
  store float %tmp2008, float* %131, align 4
  store float %mrv_gr16.i.i, float* %132, align 8
  %tmp2220 = bitcast float %tmp962 to i32
  %tmp2221 = zext i32 %tmp2220 to i96
  %tmp2214 = bitcast float %tmp963 to i32
  %tmp2215 = zext i32 %tmp2214 to i96
  %tmp2216 = shl nuw nsw i96 %tmp2215, 32
  %ins2218 = or i96 %tmp2221, %tmp2216
  %tmp2208 = bitcast float %tmp964 to i32
  %tmp1995 = zext i96 %ins2218 to i128
  %mask1996 = and i128 %memtmp18.i.i.0, -79228162514264337593543950336
  %tmp1989 = zext i32 %tmp2208 to i128
  %tmp1990 = shl nuw nsw i128 %tmp1989, 64
  %mask1991 = or i128 %mask1996, %tmp1995
  %ins1992 = or i128 %mask1991, %tmp1990
  %tmp2128 = bitcast float %tmp962 to i32
  %tmp2129 = zext i32 %tmp2128 to i64
  %tmp2122 = bitcast float %tmp963 to i32
  %tmp2123 = zext i32 %tmp2122 to i64
  %tmp2124 = shl nuw i64 %tmp2123, 32
  %ins2126 = or i64 %tmp2129, %tmp2124
  %ins1992.tr = trunc i128 %ins1992 to i96
  %ins2241 = or i96 %tmp2175, %tmp2170
  %tmp1973 = zext i96 %ins2241 to i128
  %mask1974 = and i128 %memtmp24.i.i.0, -79228162514264337593543950336
  %mask1969 = or i128 %mask1974, %tmp1973
  %ins1970 = or i128 %mask1969, %tmp2056
  store float %tmp968, float* %133, align 8
  store float %tmp969, float* %134, align 4
  %tmp1955 = lshr i128 %ins1970, 64
  %tmp1956 = trunc i128 %tmp1955 to i32
  %tmp1957 = bitcast i32 %tmp1956 to float
  store float %tmp1957, float* %135, align 8
  %tmp2114 = bitcast i64 %ins2126 to double
  %tmp2109 = lshr i96 %ins1992.tr, 64
  %tmp2110 = trunc i96 %tmp2109 to i32
  %tmp2111 = bitcast i32 %tmp2110 to float
  %242 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %6, double %tmp2114, float %tmp2111) nounwind
  %mrv_gr36.i.i = extractvalue %0 %242, 0
  %mrv_gr38.i.i = extractvalue %0 %242, 1
  %243 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %edge1.i.i, double %mrv_gr36.i.i, float %mrv_gr38.i.i) nounwind
  %mrv_gr46.i.i = extractvalue %0 %243, 0
  %tmp1928 = bitcast double %mrv_gr46.i.i to i64
  %mrv_gr48.i.i = extractvalue %0 %243, 1
  %tmp1915 = trunc i64 %tmp1928 to i32
  %tmp1916 = bitcast i32 %tmp1915 to float
  store float %tmp1916, float* %136, align 8
  %tmp1918 = lshr i64 %tmp1928, 32
  %tmp1919 = trunc i64 %tmp1918 to i32
  %tmp1920 = bitcast i32 %tmp1919 to float
  store float %tmp1920, float* %137, align 4
  store float %mrv_gr48.i.i, float* %138, align 8
  %244 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %n.i.i) nounwind
  %mrv_gr52.i.i = extractvalue %0 %244, 0
  %tmp1906 = bitcast double %mrv_gr52.i.i to i64
  %mrv_gr54.i.i = extractvalue %0 %244, 1
  %tmp1900 = bitcast float %mrv_gr54.i.i to i32
  %tmp1896 = lshr i64 %tmp1906, 32
  %tmp2152 = zext i64 %tmp1906 to i96
  %tmp2146 = zext i64 %tmp1896 to i96
  %tmp2147 = shl nuw nsw i96 %tmp2146, 32
  %tmp2152.masked = and i96 %tmp2152, 4294967295
  %ins2149 = or i96 %tmp2152.masked, %tmp2147
  %tmp1294 = zext i96 %ins2149 to i128
  %mask1295 = and i128 %memtmp24.i.0, -79228162514264337593543950336
  %tmp1288 = zext i32 %tmp1900 to i128
  %tmp1289 = shl nuw nsw i128 %tmp1288, 64
  %mask1290 = or i128 %mask1295, %tmp1294
  %ins1291 = or i128 %mask1290, %tmp1289
  %tmp1280 = trunc i64 %tmp1906 to i32
  %tmp1281 = bitcast i32 %tmp1280 to float
  store float %tmp1281, float* %139, align 8
  %tmp1284 = trunc i64 %tmp1896 to i32
  %tmp1285 = bitcast i32 %tmp1284 to float
  store float %tmp1285, float* %140, align 4
  %tmp1276 = lshr i128 %ins1291, 64
  %tmp1277 = trunc i128 %tmp1276 to i32
  %tmp1278 = bitcast i32 %tmp1277 to float
  store float %tmp1278, float* %141, align 8
  %ins2264 = or i96 %tmp1739, %tmp1734
  %tmp1272 = zext i96 %ins2264 to i128
  %mask1273 = and i128 %memtmp30.i.0, -79228162514264337593543950336
  %mask1268 = or i128 %mask1273, %tmp1272
  %ins1269 = or i128 %mask1268, %tmp1377
  store float %tmp982, float* %142, align 8
  store float %tmp983, float* %143, align 4
  %tmp1254 = lshr i128 %ins1269, 64
  %tmp1255 = trunc i128 %tmp1254 to i32
  %tmp1256 = bitcast i32 %tmp1255 to float
  store float %tmp1256, float* %144, align 8
  %245 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %11)
  %mrv_gr38.i = extractvalue %0 %245, 0
  %tmp1249 = bitcast double %mrv_gr38.i to i64
  %mrv_gr40.i = extractvalue %0 %245, 1
  %tmp1239 = lshr i64 %tmp1249, 32
  %tmp2279 = trunc i64 %tmp1249 to i32
  %tmp2280 = bitcast i32 %tmp2279 to float
  %246 = fmul float %tmp2280, %tmp1281
  %247 = fadd float %246, 0.000000e+00
  %tmp2276 = trunc i64 %tmp1239 to i32
  %tmp2277 = bitcast i32 %tmp2276 to float
  %248 = fmul float %tmp2277, %tmp1285
  %249 = fadd float %248, %247
  %250 = fmul float %mrv_gr40.i, %tmp1278
  %251 = fadd float %250, %249
  %252 = fcmp ogt float %251, 0.000000e+00
  br i1 %252, label %bb.i42, label %bb52.i

bb.i42:                                           ; preds = %bb31
  %253 = fmul float %tmp1281, -1.000000e+00
  %254 = fmul float %tmp1285, -1.000000e+00
  %255 = fmul float %tmp1278, -1.000000e+00
  %tmp2311 = bitcast float %253 to i32
  %tmp2312 = zext i32 %tmp2311 to i96
  %tmp2305 = bitcast float %254 to i32
  %tmp2306 = zext i32 %tmp2305 to i96
  %tmp2307 = shl nuw nsw i96 %tmp2306, 32
  %ins2309 = or i96 %tmp2312, %tmp2307
  %tmp2299 = bitcast float %255 to i32
  %tmp1228 = zext i96 %ins2309 to i128
  %mask1229 = and i128 %memtmp46.i.1, -79228162514264337593543950336
  %tmp1222 = zext i32 %tmp2299 to i128
  %tmp1223 = shl nuw nsw i128 %tmp1222, 64
  %mask1224 = or i128 %mask1229, %tmp1228
  %ins1225 = or i128 %mask1224, %tmp1223
  store float %253, float* %139, align 8
  store float %254, float* %140, align 4
  %tmp1210 = lshr i128 %ins1225, 64
  %tmp1211 = trunc i128 %tmp1210 to i32
  %tmp1212 = bitcast i32 %tmp1211 to float
  store float %tmp1212, float* %141, align 8
  br label %bb52.i

bb52.i:                                           ; preds = %bb.i42, %bb31
  %256 = phi float [ %tmp1212, %bb.i42 ], [ %tmp1278, %bb31 ]
  %257 = phi float [ %254, %bb.i42 ], [ %tmp1285, %bb31 ]
  %258 = phi float [ %253, %bb.i42 ], [ %tmp1281, %bb31 ]
  %memtmp46.i.0 = phi i128 [ %ins1225, %bb.i42 ], [ %memtmp46.i.1, %bb31 ]
  %259 = fcmp olt float %258, 0.000000e+00
  br i1 %259, label %bb.i145.i, label %_Z4fabsf.exit147.i

bb.i145.i:                                        ; preds = %bb52.i
  %260 = fsub float -0.000000e+00, %258
  br label %_Z4fabsf.exit147.i

_Z4fabsf.exit147.i:                               ; preds = %bb.i145.i, %bb52.i
  %value_addr.i143.i.0 = phi float [ %260, %bb.i145.i ], [ %258, %bb52.i ]
  %261 = fcmp olt float %257, 0.000000e+00
  br i1 %261, label %bb.i138.i, label %_Z4fabsf.exit140.i

bb.i138.i:                                        ; preds = %_Z4fabsf.exit147.i
  %262 = fsub float -0.000000e+00, %257
  br label %_Z4fabsf.exit140.i

_Z4fabsf.exit140.i:                               ; preds = %bb.i138.i, %_Z4fabsf.exit147.i
  %value_addr.i136.i.0 = phi float [ %262, %bb.i138.i ], [ %257, %_Z4fabsf.exit147.i ]
  %263 = fcmp uge float %value_addr.i143.i.0, %value_addr.i136.i.0
  br i1 %263, label %bb58.i, label %bb53.i

bb53.i:                                           ; preds = %_Z4fabsf.exit140.i
  br i1 %259, label %bb.i131.i, label %_Z4fabsf.exit133.i

bb.i131.i:                                        ; preds = %bb53.i
  %264 = fsub float -0.000000e+00, %258
  br label %_Z4fabsf.exit133.i

_Z4fabsf.exit133.i:                               ; preds = %bb.i131.i, %bb53.i
  %value_addr.i129.i.0 = phi float [ %264, %bb.i131.i ], [ %258, %bb53.i ]
  %265 = fcmp olt float %256, 0.000000e+00
  br i1 %265, label %bb.i124.i, label %_Z4fabsf.exit126.i

bb.i124.i:                                        ; preds = %_Z4fabsf.exit133.i
  %266 = fsub float -0.000000e+00, %256
  br label %_Z4fabsf.exit126.i

_Z4fabsf.exit126.i:                               ; preds = %bb.i124.i, %_Z4fabsf.exit133.i
  %value_addr.i122.i.0 = phi float [ %266, %bb.i124.i ], [ %256, %_Z4fabsf.exit133.i ]
  %267 = fcmp uge float %value_addr.i129.i.0, %value_addr.i122.i.0
  br i1 %267, label %bb58.i, label %bb62.i

bb58.i:                                           ; preds = %_Z4fabsf.exit126.i, %_Z4fabsf.exit140.i
  br i1 %261, label %bb.i114.i, label %_Z4fabsf.exit116.i

bb.i114.i:                                        ; preds = %bb58.i
  %268 = fsub float -0.000000e+00, %257
  br label %_Z4fabsf.exit116.i

_Z4fabsf.exit116.i:                               ; preds = %bb.i114.i, %bb58.i
  %value_addr.i112.i.0 = phi float [ %268, %bb.i114.i ], [ %257, %bb58.i ]
  %269 = fcmp olt float %256, 0.000000e+00
  br i1 %269, label %bb.i.i, label %_Z4fabsf.exit.i

bb.i.i:                                           ; preds = %_Z4fabsf.exit116.i
  %270 = fsub float -0.000000e+00, %256
  br label %_Z4fabsf.exit.i

_Z4fabsf.exit.i:                                  ; preds = %bb.i.i, %_Z4fabsf.exit116.i
  %value_addr.i.i.0 = phi float [ %270, %bb.i.i ], [ %256, %_Z4fabsf.exit116.i ]
  %271 = fcmp olt float %value_addr.i112.i.0, %value_addr.i.i.0
  br i1 %271, label %bb62.i, label %bb61.i

bb61.i:                                           ; preds = %_Z4fabsf.exit.i
  br label %bb62.i

bb62.i:                                           ; preds = %bb61.i, %_Z4fabsf.exit.i, %_Z4fabsf.exit126.i
  %axis.i.0.off0 = phi double [ 0.000000e+00, %bb61.i ], [ 0x3F800000, %_Z4fabsf.exit126.i ], [ 7.812500e-03, %_Z4fabsf.exit.i ]
  %axis.i.0.off64 = phi float [ 1.000000e+00, %bb61.i ], [ 0.000000e+00, %_Z4fabsf.exit126.i ], [ 0.000000e+00, %_Z4fabsf.exit.i ]
  %272 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %normal.i, double %axis.i.0.off0, float %axis.i.0.off64)
  %mrv_gr69.i = extractvalue %0 %272, 0
  %tmp1205 = bitcast double %mrv_gr69.i to i64
  %mrv_gr71.i = extractvalue %0 %272, 1
  %tmp1192 = trunc i64 %tmp1205 to i32
  %tmp1193 = bitcast i32 %tmp1192 to float
  store float %tmp1193, float* %145, align 8
  %tmp1195 = lshr i64 %tmp1205, 32
  %tmp1196 = trunc i64 %tmp1195 to i32
  %tmp1197 = bitcast i32 %tmp1196 to float
  store float %tmp1197, float* %146, align 4
  store float %mrv_gr71.i, float* %147, align 8
  %273 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %10)
  %mrv_gr75.i = extractvalue %0 %273, 0
  %tmp1183 = bitcast double %mrv_gr75.i to i64
  %mrv_gr77.i = extractvalue %0 %273, 1
  %tmp1173 = lshr i64 %tmp1183, 32
  %274 = call fastcc %0 @_ZN6Vector5crossES_(%struct.Color* %normal.i, double %mrv_gr75.i, float %mrv_gr77.i)
  %mrv_gr85.i = extractvalue %0 %274, 0
  %tmp1161 = bitcast double %mrv_gr85.i to i64
  %mrv_gr87.i = extractvalue %0 %274, 1
  %tmp1148 = trunc i64 %tmp1161 to i32
  %tmp1149 = bitcast i32 %tmp1148 to float
  %tmp1151 = lshr i64 %tmp1161, 32
  %tmp1152 = trunc i64 %tmp1151 to i32
  %tmp1153 = bitcast i32 %tmp1152 to float
  br label %bb89.i

bb89.i:                                           ; preds = %bb89.i, %bb62.i
  %275 = call float @llvm.trax.rand()
  %276 = call float @llvm.trax.rand()
  %277 = fmul float %275, 2.000000e+00
  %278 = fadd float %277, -1.000000e+00
  %279 = fmul float %276, 2.000000e+00
  %280 = fadd float %279, -1.000000e+00
  %281 = fmul float %278, %278
  %282 = fmul float %280, %280
  %283 = fadd float %281, %282
  %284 = fcmp ult float %283, 1.000000e+00
  br i1 %284, label %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit, label %bb89.i

_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit: ; preds = %bb89.i
  %285 = fsub float 1.000000e+00, %281
  %286 = fsub float %285, %282
  %287 = call float @llvm.trax.invsqrt(float %286) nounwind
  %288 = fdiv float 1.000000e+00, %287
  %289 = fmul float %258, %288
  %290 = fmul float %257, %288
  %291 = fmul float %256, %288
  %tmp1876 = bitcast float %289 to i32
  %tmp1877 = zext i32 %tmp1876 to i96
  %tmp1870 = bitcast float %290 to i32
  %tmp1871 = zext i32 %tmp1870 to i96
  %tmp1872 = shl nuw nsw i96 %tmp1871, 32
  %ins1874 = or i96 %tmp1877, %tmp1872
  %tmp1864 = bitcast float %291 to i32
  %tmp1140 = zext i96 %ins1874 to i128
  %mask1141 = and i128 %memtmp91.i.0, -79228162514264337593543950336
  %tmp1134 = zext i32 %tmp1864 to i128
  %tmp1135 = shl nuw nsw i128 %tmp1134, 64
  %mask1136 = or i128 %mask1141, %tmp1140
  %ins1137 = or i128 %mask1136, %tmp1135
  %tmp1607 = bitcast float %289 to i32
  %tmp1608 = zext i32 %tmp1607 to i64
  %tmp1601 = bitcast float %290 to i32
  %tmp1602 = zext i32 %tmp1601 to i64
  %tmp1603 = shl nuw i64 %tmp1602, 32
  %ins1605 = or i64 %tmp1608, %tmp1603
  %ins1137.tr = trunc i128 %ins1137 to i96
  %292 = fmul float %tmp1149, %280
  %293 = fmul float %tmp1153, %280
  %294 = fmul float %mrv_gr87.i, %280
  %tmp1853 = bitcast float %292 to i32
  %tmp1854 = zext i32 %tmp1853 to i96
  %tmp1847 = bitcast float %293 to i32
  %tmp1848 = zext i32 %tmp1847 to i96
  %tmp1849 = shl nuw nsw i96 %tmp1848, 32
  %ins1851 = or i96 %tmp1854, %tmp1849
  %tmp1841 = bitcast float %294 to i32
  %tmp1118 = zext i96 %ins1851 to i128
  %mask1119 = and i128 %memtmp97.i.0, -79228162514264337593543950336
  %tmp1112 = zext i32 %tmp1841 to i128
  %tmp1113 = shl nuw nsw i128 %tmp1112, 64
  %mask1114 = or i128 %mask1119, %tmp1118
  %ins1115 = or i128 %mask1114, %tmp1113
  %tmp1631 = bitcast float %292 to i32
  %tmp1632 = zext i32 %tmp1631 to i64
  %tmp1625 = bitcast float %293 to i32
  %tmp1626 = zext i32 %tmp1625 to i64
  %tmp1627 = shl nuw i64 %tmp1626, 32
  %ins1629 = or i64 %tmp1632, %tmp1627
  %ins1115.tr = trunc i128 %ins1115 to i96
  %tmp1398 = trunc i64 %tmp1183 to i32
  %tmp1399 = bitcast i32 %tmp1398 to float
  %295 = fmul float %tmp1399, %278
  %tmp1395 = trunc i64 %tmp1173 to i32
  %tmp1396 = bitcast i32 %tmp1395 to float
  %296 = fmul float %tmp1396, %278
  %297 = fmul float %mrv_gr77.i, %278
  %tmp1830 = bitcast float %295 to i32
  %tmp1831 = zext i32 %tmp1830 to i96
  %tmp1824 = bitcast float %296 to i32
  %tmp1825 = zext i32 %tmp1824 to i96
  %tmp1826 = shl nuw nsw i96 %tmp1825, 32
  %ins1828 = or i96 %tmp1831, %tmp1826
  %tmp1818 = bitcast float %297 to i32
  %tmp1096 = zext i96 %ins1828 to i128
  %mask1097 = and i128 %memtmp103.i.0, -79228162514264337593543950336
  %tmp1090 = zext i32 %tmp1818 to i128
  %tmp1091 = shl nuw nsw i128 %tmp1090, 64
  %mask1092 = or i128 %mask1097, %tmp1096
  %ins1093 = or i128 %mask1092, %tmp1091
  store float %295, float* %148, align 8
  store float %296, float* %149, align 4
  %tmp1078 = lshr i128 %ins1093, 64
  %tmp1079 = trunc i128 %tmp1078 to i32
  %tmp1080 = bitcast i32 %tmp1079 to float
  store float %tmp1080, float* %150, align 8
  %tmp1617 = bitcast i64 %ins1629 to double
  %tmp1612 = lshr i96 %ins1115.tr, 64
  %tmp1613 = trunc i96 %tmp1612 to i32
  %tmp1614 = bitcast i32 %tmp1613 to float
  %298 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %8, double %tmp1617, float %tmp1614)
  %mrv_gr115.i = extractvalue %0 %298, 0
  %tmp1073 = bitcast double %mrv_gr115.i to i64
  %mrv_gr117.i = extractvalue %0 %298, 1
  %tmp1060 = trunc i64 %tmp1073 to i32
  %tmp1061 = bitcast i32 %tmp1060 to float
  store float %tmp1061, float* %151, align 8
  %tmp1063 = lshr i64 %tmp1073, 32
  %tmp1064 = trunc i64 %tmp1063 to i32
  %tmp1065 = bitcast i32 %tmp1064 to float
  store float %tmp1065, float* %152, align 4
  store float %mrv_gr117.i, float* %153, align 8
  %tmp1593 = bitcast i64 %ins1605 to double
  %tmp1588 = lshr i96 %ins1137.tr, 64
  %tmp1589 = trunc i96 %tmp1588 to i32
  %tmp1590 = bitcast i32 %tmp1589 to float
  %299 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %9, double %tmp1593, float %tmp1590)
  %mrv_gr125.i = extractvalue %0 %299, 0
  %tmp1051 = bitcast double %mrv_gr125.i to i64
  %mrv_gr127.i = extractvalue %0 %299, 1
  %tmp1041 = lshr i64 %tmp1051, 32
  %300 = fmul float %258, 0x3F50624DE0000000
  %301 = fmul float %257, 0x3F50624DE0000000
  %302 = fmul float %256, 0x3F50624DE0000000
  %tmp1761 = bitcast float %300 to i32
  %tmp1762 = zext i32 %tmp1761 to i96
  %tmp1755 = bitcast float %301 to i32
  %tmp1756 = zext i32 %tmp1755 to i96
  %tmp1757 = shl nuw nsw i96 %tmp1756, 32
  %ins1759 = or i96 %tmp1762, %tmp1757
  %tmp1749 = bitcast float %302 to i32
  %tmp1030 = zext i96 %ins1759 to i128
  %mask1031 = and i128 %memtmp129.i.0, -79228162514264337593543950336
  %tmp1024 = zext i32 %tmp1749 to i128
  %tmp1025 = shl nuw nsw i128 %tmp1024, 64
  %mask1026 = or i128 %mask1031, %tmp1030
  %ins1027 = or i128 %mask1026, %tmp1025
  %tmp1671 = bitcast float %300 to i32
  %tmp1672 = zext i32 %tmp1671 to i64
  %tmp1665 = bitcast float %301 to i32
  %tmp1666 = zext i32 %tmp1665 to i64
  %tmp1667 = shl nuw i64 %tmp1666, 32
  %ins1669 = or i64 %tmp1672, %tmp1667
  %tmp1012 = lshr i128 %ins1027, 64
  %tmp1013 = trunc i128 %tmp1012 to i32
  %tmp1014 = bitcast i32 %tmp1013 to float
  %tmp1657 = bitcast i64 %ins1669 to double
  %303 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %hit_position.i, double %tmp1657, float %tmp1014)
  %mrv_gr141.i = extractvalue %0 %303, 0
  %tmp1007 = bitcast double %mrv_gr141.i to i64
  %mrv_gr143.i = extractvalue %0 %303, 1
  %tmp997 = lshr i64 %tmp1007, 32
  %tmp1706 = trunc i64 %tmp1007 to i32
  %tmp1707 = bitcast i32 %tmp1706 to float
  %tmp1703 = trunc i64 %tmp997 to i32
  %tmp1704 = bitcast i32 %tmp1703 to float
  %tmp1684 = trunc i64 %tmp1051 to i32
  %tmp1685 = bitcast i32 %tmp1684 to float
  %tmp1681 = trunc i64 %tmp1041 to i32
  %tmp1682 = bitcast i32 %tmp1681 to float
  store float %tmp1707, float* %49, align 8
  store float %tmp1704, float* %73, align 4
  store float %mrv_gr143.i, float* %74, align 8
  store float %tmp1685, float* %50, align 4
  store float %tmp1682, float* %75, align 4
  store float %mrv_gr127.i, float* %76, align 4
  %304 = add nsw i32 %storemerge2, 1
  br label %bb49

bb49:                                             ; preds = %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit, %bb2
  %305 = phi float [ %313, %bb2 ], [ %mrv_gr27, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %306 = phi float [ %314, %bb2 ], [ %tmp434, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %307 = phi float [ %315, %bb2 ], [ %tmp430, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %val12 = phi float [ 1.000000e+00, %bb2 ], [ %mrv_gr46, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp32.0 = phi i128 [ %memtmp32.1, %bb2 ], [ %ins418, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp.0 = phi i128 [ %memtmp.2, %bb2 ], [ %ins484, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp129.i.0 = phi i128 [ %memtmp129.i.1, %bb2 ], [ %ins1027, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp103.i.0 = phi i128 [ %memtmp103.i.1, %bb2 ], [ %ins1093, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp97.i.0 = phi i128 [ %memtmp97.i.1, %bb2 ], [ %ins1115, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp91.i.0 = phi i128 [ %memtmp91.i.1, %bb2 ], [ %ins1137, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp46.i.1 = phi i128 [ %memtmp46.i.2, %bb2 ], [ %memtmp46.i.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp30.i.0 = phi i128 [ %memtmp30.i.1, %bb2 ], [ %ins1269, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp24.i.0 = phi i128 [ %memtmp24.i.1, %bb2 ], [ %ins1291, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp10.i.0 = phi i128 [ %memtmp10.i.1, %bb2 ], [ %ins1335, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp4.i.0 = phi i128 [ %memtmp4.i.1, %bb2 ], [ %ins1357, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp.i28.0 = phi i128 [ %memtmp.i28.1, %bb2 ], [ %ins1379, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp24.i.i.0 = phi i128 [ %memtmp24.i.i.1, %bb2 ], [ %ins1970, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp18.i.i.0 = phi i128 [ %memtmp18.i.i.1, %bb2 ], [ %ins1992, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp4.i.i.0 = phi i128 [ %memtmp4.i.i.1, %bb2 ], [ %ins2036, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp.i.i.0 = phi i128 [ %memtmp.i.i.1, %bb2 ], [ %ins2058, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp122.i.1 = phi i128 [ %memtmp122.i.3, %bb2 ], [ %memtmp122.i.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp105.i.2 = phi i128 [ %memtmp105.i.4, %bb2 ], [ %memtmp105.i.1, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp60.i.1 = phi i128 [ %memtmp60.i.3, %bb2 ], [ %memtmp60.i.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp54.i.1 = phi i128 [ %memtmp54.i.3, %bb2 ], [ %memtmp54.i.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp47.i.2 = phi i128 [ %memtmp47.i.4, %bb2 ], [ %memtmp47.i.1, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp30.i199.1 = phi i128 [ %memtmp30.i199.3, %bb2 ], [ %memtmp30.i199.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp24.i198.1 = phi i128 [ %memtmp24.i198.3, %bb2 ], [ %memtmp24.i198.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp10.i196.1 = phi i128 [ %memtmp10.i196.3, %bb2 ], [ %memtmp10.i196.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp4.i195.1 = phi i128 [ %memtmp4.i195.3, %bb2 ], [ %memtmp4.i195.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp.i194.1 = phi i128 [ %memtmp.i194.3, %bb2 ], [ %memtmp.i194.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp.i.i186.1 = phi i128 [ %memtmp.i.i186.3, %bb2 ], [ %memtmp.i.i186.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp24.i.i161.1 = phi i128 [ %memtmp24.i.i161.3, %bb2 ], [ %memtmp24.i.i161.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp18.i.i160.1 = phi i128 [ %memtmp18.i.i160.3, %bb2 ], [ %memtmp18.i.i160.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp4.i.i158.1 = phi i128 [ %memtmp4.i.i158.3, %bb2 ], [ %memtmp4.i.i158.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp.i104.i.1 = phi i128 [ %memtmp.i104.i.3, %bb2 ], [ %memtmp.i104.i.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp.i337.0 = phi i128 [ %memtmp.i337.1, %bb2 ], [ %ins4212, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %storemerge2 = phi i32 [ 0, %bb2 ], [ %304, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %308 = icmp slt i32 %storemerge2, 5
  br i1 %308, label %bb3, label %bb50

bb50:                                             ; preds = %bb49, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit
  %309 = phi float [ %mrv_gr27, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %305, %bb49 ]
  %310 = phi float [ %tmp434, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %306, %bb49 ]
  %311 = phi float [ %tmp430, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %307, %bb49 ]
  %memtmp.1 = phi i128 [ %ins484, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp.0, %bb49 ]
  %memtmp122.i.2 = phi i128 [ %memtmp122.i.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp122.i.1, %bb49 ]
  %memtmp105.i.3 = phi i128 [ %memtmp105.i.1, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp105.i.2, %bb49 ]
  %memtmp60.i.2 = phi i128 [ %memtmp60.i.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp60.i.1, %bb49 ]
  %memtmp54.i.2 = phi i128 [ %memtmp54.i.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp54.i.1, %bb49 ]
  %memtmp47.i.3 = phi i128 [ %memtmp47.i.1, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp47.i.2, %bb49 ]
  %memtmp30.i199.2 = phi i128 [ %memtmp30.i199.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp30.i199.1, %bb49 ]
  %memtmp24.i198.2 = phi i128 [ %memtmp24.i198.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp24.i198.1, %bb49 ]
  %memtmp10.i196.2 = phi i128 [ %memtmp10.i196.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp10.i196.1, %bb49 ]
  %memtmp4.i195.2 = phi i128 [ %memtmp4.i195.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp4.i195.1, %bb49 ]
  %memtmp.i194.2 = phi i128 [ %memtmp.i194.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp.i194.1, %bb49 ]
  %memtmp.i.i186.2 = phi i128 [ %memtmp.i.i186.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp.i.i186.1, %bb49 ]
  %memtmp24.i.i161.2 = phi i128 [ %memtmp24.i.i161.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp24.i.i161.1, %bb49 ]
  %memtmp18.i.i160.2 = phi i128 [ %memtmp18.i.i160.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp18.i.i160.1, %bb49 ]
  %memtmp4.i.i158.2 = phi i128 [ %memtmp4.i.i158.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp4.i.i158.1, %bb49 ]
  %memtmp.i104.i.2 = phi i128 [ %memtmp.i104.i.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp.i104.i.1, %bb49 ]
  %312 = add nsw i32 %storemerge1, 1
  br label %bb51

bb51:                                             ; preds = %bb50, %bb
  %313 = phi float [ 0.000000e+00, %bb ], [ %309, %bb50 ]
  %314 = phi float [ 0.000000e+00, %bb ], [ %310, %bb50 ]
  %315 = phi float [ 0.000000e+00, %bb ], [ %311, %bb50 ]
  %memtmp32.1 = phi i128 [ %memtmp32.2, %bb ], [ %memtmp32.0, %bb50 ]
  %memtmp.2 = phi i128 [ %memtmp.3, %bb ], [ %memtmp.1, %bb50 ]
  %memtmp129.i.1 = phi i128 [ %memtmp129.i.2, %bb ], [ %memtmp129.i.0, %bb50 ]
  %memtmp103.i.1 = phi i128 [ %memtmp103.i.2, %bb ], [ %memtmp103.i.0, %bb50 ]
  %memtmp97.i.1 = phi i128 [ %memtmp97.i.2, %bb ], [ %memtmp97.i.0, %bb50 ]
  %memtmp91.i.1 = phi i128 [ %memtmp91.i.2, %bb ], [ %memtmp91.i.0, %bb50 ]
  %memtmp46.i.2 = phi i128 [ %memtmp46.i.3, %bb ], [ %memtmp46.i.1, %bb50 ]
  %memtmp30.i.1 = phi i128 [ %memtmp30.i.2, %bb ], [ %memtmp30.i.0, %bb50 ]
  %memtmp24.i.1 = phi i128 [ %memtmp24.i.2, %bb ], [ %memtmp24.i.0, %bb50 ]
  %memtmp10.i.1 = phi i128 [ %memtmp10.i.2, %bb ], [ %memtmp10.i.0, %bb50 ]
  %memtmp4.i.1 = phi i128 [ %memtmp4.i.2, %bb ], [ %memtmp4.i.0, %bb50 ]
  %memtmp.i28.1 = phi i128 [ %memtmp.i28.2, %bb ], [ %memtmp.i28.0, %bb50 ]
  %memtmp24.i.i.1 = phi i128 [ %memtmp24.i.i.2, %bb ], [ %memtmp24.i.i.0, %bb50 ]
  %memtmp18.i.i.1 = phi i128 [ %memtmp18.i.i.2, %bb ], [ %memtmp18.i.i.0, %bb50 ]
  %memtmp4.i.i.1 = phi i128 [ %memtmp4.i.i.2, %bb ], [ %memtmp4.i.i.0, %bb50 ]
  %memtmp.i.i.1 = phi i128 [ %memtmp.i.i.2, %bb ], [ %memtmp.i.i.0, %bb50 ]
  %memtmp4.i110.0 = phi i128 [ %memtmp4.i110.1, %bb ], [ %ins2637, %bb50 ]
  %memtmp.i109.0 = phi i128 [ %memtmp.i109.1, %bb ], [ %ins2659, %bb50 ]
  %memtmp122.i.3 = phi i128 [ %memtmp122.i.4, %bb ], [ %memtmp122.i.2, %bb50 ]
  %memtmp105.i.4 = phi i128 [ %memtmp105.i.5, %bb ], [ %memtmp105.i.3, %bb50 ]
  %memtmp60.i.3 = phi i128 [ %memtmp60.i.4, %bb ], [ %memtmp60.i.2, %bb50 ]
  %memtmp54.i.3 = phi i128 [ %memtmp54.i.4, %bb ], [ %memtmp54.i.2, %bb50 ]
  %memtmp47.i.4 = phi i128 [ %memtmp47.i.5, %bb ], [ %memtmp47.i.3, %bb50 ]
  %memtmp30.i199.3 = phi i128 [ %memtmp30.i199.4, %bb ], [ %memtmp30.i199.2, %bb50 ]
  %memtmp24.i198.3 = phi i128 [ %memtmp24.i198.4, %bb ], [ %memtmp24.i198.2, %bb50 ]
  %memtmp10.i196.3 = phi i128 [ %memtmp10.i196.4, %bb ], [ %memtmp10.i196.2, %bb50 ]
  %memtmp4.i195.3 = phi i128 [ %memtmp4.i195.4, %bb ], [ %memtmp4.i195.2, %bb50 ]
  %memtmp.i194.3 = phi i128 [ %memtmp.i194.4, %bb ], [ %memtmp.i194.2, %bb50 ]
  %memtmp.i.i186.3 = phi i128 [ %memtmp.i.i186.4, %bb ], [ %memtmp.i.i186.2, %bb50 ]
  %memtmp24.i.i161.3 = phi i128 [ %memtmp24.i.i161.4, %bb ], [ %memtmp24.i.i161.2, %bb50 ]
  %memtmp18.i.i160.3 = phi i128 [ %memtmp18.i.i160.4, %bb ], [ %memtmp18.i.i160.2, %bb50 ]
  %memtmp4.i.i158.3 = phi i128 [ %memtmp4.i.i158.4, %bb ], [ %memtmp4.i.i158.2, %bb50 ]
  %memtmp.i104.i.3 = phi i128 [ %memtmp.i104.i.4, %bb ], [ %memtmp.i104.i.2, %bb50 ]
  %memtmp.i337.1 = phi i128 [ %memtmp.i337.2, %bb ], [ %memtmp.i337.0, %bb50 ]
  %storemerge1 = phi i32 [ 0, %bb ], [ %312, %bb50 ]
  %316 = icmp slt i32 %storemerge1, 5
  br i1 %316, label %bb2, label %bb52

bb52:                                             ; preds = %bb51
  %317 = fmul float %315, 0x3FC99999A0000000
  %318 = fmul float %314, 0x3FC99999A0000000
  %319 = fmul float %313, 0x3FC99999A0000000
  store float %317, float* %23, align 8
  store float %318, float* %24, align 4
  store float %319, float* %25, align 8
  %val60 = load double* %elt59, align 8
  %tmp790 = bitcast double %val60 to i64
  %tmp781 = trunc i64 %tmp790 to i32
  %tmp782 = bitcast i32 %tmp781 to float
  %320 = fcmp olt float %tmp782, 0.000000e+00
  br i1 %320, label %bb5.i, label %bb1.i

bb1.i:                                            ; preds = %bb52
  %321 = fcmp ogt float %tmp782, 1.000000e+00
  br i1 %321, label %bb5.i, label %bb4.i

bb4.i:                                            ; preds = %bb1.i
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb1.i, %bb52
  %r.i.0 = phi float [ %tmp782, %bb4.i ], [ 0.000000e+00, %bb52 ], [ 1.000000e+00, %bb1.i ]
  %322 = fcmp olt float %319, 0.000000e+00
  br i1 %322, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i
  %323 = fcmp ogt float %319, 1.000000e+00
  br i1 %323, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i
  %b.i.0 = phi float [ %319, %bb11.i ], [ 0.000000e+00, %bb5.i ], [ 1.000000e+00, %bb8.i ]
  %tmp759 = lshr i64 %tmp790, 32
  %tmp760 = trunc i64 %tmp759 to i32
  %tmp761 = bitcast i32 %tmp760 to float
  %324 = fcmp olt float %tmp761, 0.000000e+00
  br i1 %324, label %_ZN5Image3setEii5Color.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %325 = fcmp ogt float %tmp761, 1.000000e+00
  br i1 %325, label %_ZN5Image3setEii5Color.exit, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %_ZN5Image3setEii5Color.exit

_ZN5Image3setEii5Color.exit:                      ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.i.0 = phi float [ %tmp761, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %326 = mul nsw i32 %14, %154
  %327 = add nsw i32 %326, %155
  %328 = mul nsw i32 %327, 3
  %329 = add nsw i32 %16, %328
  call void @llvm.trax.storef(float %r.i.0, i32 %329, i32 0) nounwind
  call void @llvm.trax.storef(float %g.i.0, i32 %329, i32 1) nounwind
  call void @llvm.trax.storef(float %b.i.0, i32 %329, i32 2) nounwind
  %330 = call i32 @llvm.trax.atominc(i32 0)
  br label %bb63

bb63:                                             ; preds = %_ZN5Image3setEii5Color.exit, %entry
  %memtmp32.2 = phi i128 [ undef, %entry ], [ %memtmp32.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp.3 = phi i128 [ undef, %entry ], [ %memtmp.2, %_ZN5Image3setEii5Color.exit ]
  %memtmp129.i.2 = phi i128 [ undef, %entry ], [ %memtmp129.i.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp103.i.2 = phi i128 [ undef, %entry ], [ %memtmp103.i.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp97.i.2 = phi i128 [ undef, %entry ], [ %memtmp97.i.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp91.i.2 = phi i128 [ undef, %entry ], [ %memtmp91.i.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp46.i.3 = phi i128 [ undef, %entry ], [ %memtmp46.i.2, %_ZN5Image3setEii5Color.exit ]
  %memtmp30.i.2 = phi i128 [ undef, %entry ], [ %memtmp30.i.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp24.i.2 = phi i128 [ undef, %entry ], [ %memtmp24.i.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp10.i.2 = phi i128 [ undef, %entry ], [ %memtmp10.i.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp4.i.2 = phi i128 [ undef, %entry ], [ %memtmp4.i.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp.i28.2 = phi i128 [ undef, %entry ], [ %memtmp.i28.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp24.i.i.2 = phi i128 [ undef, %entry ], [ %memtmp24.i.i.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp18.i.i.2 = phi i128 [ undef, %entry ], [ %memtmp18.i.i.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp4.i.i.2 = phi i128 [ undef, %entry ], [ %memtmp4.i.i.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp.i.i.2 = phi i128 [ undef, %entry ], [ %memtmp.i.i.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp4.i110.1 = phi i128 [ undef, %entry ], [ %memtmp4.i110.0, %_ZN5Image3setEii5Color.exit ]
  %memtmp.i109.1 = phi i128 [ undef, %entry ], [ %memtmp.i109.0, %_ZN5Image3setEii5Color.exit ]
  %memtmp122.i.4 = phi i128 [ undef, %entry ], [ %memtmp122.i.3, %_ZN5Image3setEii5Color.exit ]
  %memtmp105.i.5 = phi i128 [ undef, %entry ], [ %memtmp105.i.4, %_ZN5Image3setEii5Color.exit ]
  %memtmp60.i.4 = phi i128 [ undef, %entry ], [ %memtmp60.i.3, %_ZN5Image3setEii5Color.exit ]
  %memtmp54.i.4 = phi i128 [ undef, %entry ], [ %memtmp54.i.3, %_ZN5Image3setEii5Color.exit ]
  %memtmp47.i.5 = phi i128 [ undef, %entry ], [ %memtmp47.i.4, %_ZN5Image3setEii5Color.exit ]
  %memtmp30.i199.4 = phi i128 [ undef, %entry ], [ %memtmp30.i199.3, %_ZN5Image3setEii5Color.exit ]
  %memtmp24.i198.4 = phi i128 [ undef, %entry ], [ %memtmp24.i198.3, %_ZN5Image3setEii5Color.exit ]
  %memtmp10.i196.4 = phi i128 [ undef, %entry ], [ %memtmp10.i196.3, %_ZN5Image3setEii5Color.exit ]
  %memtmp4.i195.4 = phi i128 [ undef, %entry ], [ %memtmp4.i195.3, %_ZN5Image3setEii5Color.exit ]
  %memtmp.i194.4 = phi i128 [ undef, %entry ], [ %memtmp.i194.3, %_ZN5Image3setEii5Color.exit ]
  %memtmp.i.i186.4 = phi i128 [ undef, %entry ], [ %memtmp.i.i186.3, %_ZN5Image3setEii5Color.exit ]
  %memtmp24.i.i161.4 = phi i128 [ undef, %entry ], [ %memtmp24.i.i161.3, %_ZN5Image3setEii5Color.exit ]
  %memtmp18.i.i160.4 = phi i128 [ undef, %entry ], [ %memtmp18.i.i160.3, %_ZN5Image3setEii5Color.exit ]
  %memtmp4.i.i158.4 = phi i128 [ undef, %entry ], [ %memtmp4.i.i158.3, %_ZN5Image3setEii5Color.exit ]
  %memtmp.i104.i.4 = phi i128 [ undef, %entry ], [ %memtmp.i104.i.3, %_ZN5Image3setEii5Color.exit ]
  %memtmp.i337.2 = phi i128 [ undef, %entry ], [ %memtmp.i337.1, %_ZN5Image3setEii5Color.exit ]
  %storemerge = phi i32 [ %58, %entry ], [ %330, %_ZN5Image3setEii5Color.exit ]
  %331 = icmp sgt i32 %59, %storemerge
  br i1 %331, label %bb, label %return

return:                                           ; preds = %bb63
  ret i32 0
}

declare i32 @llvm.trax.atominc(i32) nounwind

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
