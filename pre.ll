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

declare void @llvm.trax.storef(float, i32, i32) nounwind

declare float @llvm.trax.rand() nounwind

define i32 @main() ssp {
invcont8:
  %0 = alloca %struct.Color, align 8
  %tri.i272 = alloca %struct.Trigonum, align 8
  %light.i280 = alloca %struct.Color, align 8
  %ray_to_light_source15.i = alloca %struct.Box, align 8
  %1 = alloca %struct.Color, align 8
  %2 = alloca %struct.Color, align 8
  %3 = alloca %struct.Color, align 8
  %light.i = alloca %struct.Color, align 8
  %tri.i = alloca %struct.Trigonum, align 8
  %L.i = alloca %struct.Color, align 8
  %hit_record113182 = alloca %struct.HitRecord, align 8
  %4 = alloca %struct.Color, align 8
  %V.i = alloca %struct.Color, align 8
  %ln.i = alloca %struct.Color, align 8
  %direction.i = alloca %struct.Color, align 8
  %result = alloca %struct.Color, align 8
  %ray = alloca %struct.Box, align 8
  %map = alloca %struct.PhotonMap, align 8
  %bvh = alloca %struct.BVH, align 8
  %hit_record = alloca %struct.HitRecord, align 8
  %random_ray = alloca %struct.Box, align 8
  %hit_record113 = alloca %struct.HitRecord, align 8
  %5 = call i32 @llvm.trax.loadi(i32 0, i32 1)
  %6 = call i32 @llvm.trax.loadi(i32 0, i32 4)
  %7 = call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %8 = call float @llvm.trax.loadf(i32 0, i32 2)
  %9 = call float @llvm.trax.loadf(i32 0, i32 5)
  %10 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %11 = call float @llvm.trax.loadf(i32 %10, i32 0) nounwind
  %12 = call float @llvm.trax.loadf(i32 %10, i32 1) nounwind
  %13 = call float @llvm.trax.loadf(i32 %10, i32 2) nounwind
  %tmp1105 = bitcast float %12 to i32
  %tmp1106 = zext i32 %tmp1105 to i96
  %14 = getelementptr inbounds %struct.Color* %result, i64 0, i32 0
  store float 0.000000e+00, float* %14, align 8
  %15 = getelementptr inbounds %struct.Color* %result, i64 0, i32 1
  store float 0.000000e+00, float* %15, align 4
  %16 = getelementptr inbounds %struct.Color* %result, i64 0, i32 2
  store float 0.000000e+00, float* %16, align 8
  %17 = call i32 @llvm.trax.loadi(i32 0, i32 10)
  %18 = call float @llvm.trax.loadf(i32 %17, i32 0) nounwind
  %19 = call float @llvm.trax.loadf(i32 %17, i32 1) nounwind
  %20 = call float @llvm.trax.loadf(i32 %17, i32 2) nounwind
  %21 = add nsw i32 %17, 9
  %22 = call float @llvm.trax.loadf(i32 %21, i32 0) nounwind
  %23 = call float @llvm.trax.loadf(i32 %21, i32 1) nounwind
  %24 = call float @llvm.trax.loadf(i32 %21, i32 2) nounwind
  %25 = add nsw i32 %17, 12
  %26 = call float @llvm.trax.loadf(i32 %25, i32 0) nounwind
  %27 = call float @llvm.trax.loadf(i32 %25, i32 1) nounwind
  %28 = call float @llvm.trax.loadf(i32 %25, i32 2) nounwind
  %29 = add nsw i32 %17, 15
  %30 = call float @llvm.trax.loadf(i32 %29, i32 0) nounwind
  %31 = call float @llvm.trax.loadf(i32 %29, i32 1) nounwind
  %32 = call float @llvm.trax.loadf(i32 %29, i32 2) nounwind
  %33 = add nsw i32 %17, 18
  %34 = call float @llvm.trax.loadf(i32 %33, i32 0) nounwind
  %35 = call float @llvm.trax.loadf(i32 %33, i32 1) nounwind
  %36 = call float @llvm.trax.loadf(i32 %33, i32 2) nounwind
  %37 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %38 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %39 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %40 = bitcast %struct.Box* %ray to i8*
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %39, align 4
  %41 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %41, align 4
  %42 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 0, i64 0
  br label %bb1.i39

bb.i38:                                           ; preds = %bb1.i39
  %43 = getelementptr inbounds %struct.Photon* %.0365, i64 0, i32 0, i32 0
  store float 0.000000e+00, float* %43, align 4
  %44 = getelementptr inbounds %struct.Photon* %.0365, i64 0, i32 0, i32 1
  store float 0.000000e+00, float* %44, align 4
  %45 = getelementptr inbounds %struct.Photon* %.0365, i64 0, i32 0, i32 2
  store float 0.000000e+00, float* %45, align 4
  %46 = getelementptr inbounds %struct.Photon* %.0365, i64 0, i32 1, i64 0
  store float 1.000000e+00, float* %46, align 4
  %47 = getelementptr inbounds %struct.Photon* %.0365, i64 0, i32 1, i64 1
  store float 1.000000e+00, float* %47, align 4
  %48 = getelementptr inbounds %struct.Photon* %.0365, i64 0, i32 1, i64 2
  store float 1.000000e+00, float* %48, align 4
  %49 = getelementptr inbounds %struct.Photon* %.0365, i64 0, i32 2
  store i8 0, i8* %49, align 4
  %50 = getelementptr inbounds %struct.Photon* %.0365, i64 1
  %51 = add nsw i64 %storemerge.i, -1
  br label %bb1.i39

bb1.i39:                                          ; preds = %bb.i38, %invcont8
  %.0365 = phi %struct.Photon* [ %42, %invcont8 ], [ %50, %bb.i38 ]
  %storemerge.i = phi i64 [ 4999, %invcont8 ], [ %51, %bb.i38 ]
  %52 = icmp eq i64 %storemerge.i, -1
  br i1 %52, label %invcont11, label %bb.i38

invcont11:                                        ; preds = %bb1.i39
  %53 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 2
  store float 1.000000e+07, float* %53, align 8
  %54 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 1
  store float 1.000000e+07, float* %54, align 4
  %55 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 0
  store float 1.000000e+07, float* %55, align 8
  %56 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 2
  store float -1.000000e+07, float* %56, align 4
  %57 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 1
  store float -1.000000e+07, float* %57, align 4
  %58 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 0
  store float -1.000000e+07, float* %58, align 4
  %59 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %60 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %61 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %62 = getelementptr inbounds %struct.BVH* %bvh, i64 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = alloca [200000 x %struct.Photon], align 1
  %.sub = getelementptr inbounds [200000 x %struct.Photon]* %63, i64 0, i64 0
  br label %bb12

bb:                                               ; preds = %bb12
  %64 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 0, i32 0
  store float 0.000000e+00, float* %64, align 4
  %65 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 0, i32 1
  store float 0.000000e+00, float* %65, align 4
  %66 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 0, i32 2
  store float 0.000000e+00, float* %66, align 4
  %67 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i64 0
  store float 1.000000e+00, float* %67, align 4
  %68 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i64 1
  store float 1.000000e+00, float* %68, align 4
  %69 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i64 2
  store float 1.000000e+00, float* %69, align 4
  %70 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2
  store i8 0, i8* %70, align 4
  %71 = getelementptr inbounds %struct.Photon* %.0, i64 1
  %72 = add nsw i64 %storemerge, -1
  br label %bb12

bb12:                                             ; preds = %bb, %invcont11
  %.0 = phi %struct.Photon* [ %.sub, %invcont11 ], [ %71, %bb ]
  %storemerge = phi i64 [ 199999, %invcont11 ], [ %72, %bb ]
  %73 = icmp eq i64 %storemerge, -1
  br i1 %73, label %bb13, label %bb

bb13:                                             ; preds = %bb12
  %74 = alloca [100000 x %struct.Photon], align 1
  %.sub3534 = getelementptr inbounds [100000 x %struct.Photon]* %74, i64 0, i64 0
  br label %bb15

bb14:                                             ; preds = %bb15
  %storemerge1 = add nsw i64 %storemerge1.in, -1
  %75 = getelementptr inbounds %struct.Photon* %.0364, i64 0, i32 0, i32 0
  store float 0.000000e+00, float* %75, align 4
  %76 = getelementptr inbounds %struct.Photon* %.0364, i64 0, i32 0, i32 1
  store float 0.000000e+00, float* %76, align 4
  %77 = getelementptr inbounds %struct.Photon* %.0364, i64 0, i32 0, i32 2
  store float 0.000000e+00, float* %77, align 4
  %78 = getelementptr inbounds %struct.Photon* %.0364, i64 0, i32 1, i64 0
  store float 1.000000e+00, float* %78, align 4
  %79 = getelementptr inbounds %struct.Photon* %.0364, i64 0, i32 1, i64 1
  store float 1.000000e+00, float* %79, align 4
  %80 = getelementptr inbounds %struct.Photon* %.0364, i64 0, i32 1, i64 2
  store float 1.000000e+00, float* %80, align 4
  %81 = getelementptr inbounds %struct.Photon* %.0364, i64 0, i32 2
  store i8 0, i8* %81, align 4
  %82 = getelementptr inbounds %struct.Photon* %.0364, i64 1
  br label %bb15

bb15:                                             ; preds = %bb14, %bb13
  %.0364 = phi %struct.Photon* [ %.sub3534, %bb13 ], [ %82, %bb14 ]
  %storemerge1.in = phi i64 [ 100000, %bb13 ], [ %storemerge1, %bb14 ]
  %83 = icmp eq i64 %storemerge1.in, 0
  br i1 %83, label %invcont18, label %bb14

invcont18:                                        ; preds = %bb15
  %84 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %85 = call float @llvm.trax.loadf(i32 %84, i32 0) nounwind
  %86 = call float @llvm.trax.loadf(i32 %84, i32 1) nounwind
  %87 = call float @llvm.trax.loadf(i32 %84, i32 2) nounwind
  %tmp671 = bitcast float %85 to i32
  %tmp665 = bitcast float %86 to i32
  %tmp659 = bitcast float %87 to i32
  %88 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 0
  %89 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 1
  %90 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 2
  %91 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 0
  %92 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 1
  %93 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 2
  %94 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 0
  %95 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 1
  %96 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 2
  %97 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 0
  %98 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 1
  %99 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 2
  %100 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %101 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %102 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  %103 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %104 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 0, i32 0
  %105 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 0
  %106 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 1
  %107 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 2
  %108 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 0, i32 1
  %109 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 0, i32 2
  %110 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 1
  %111 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 2
  %.4877880.0 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %.4877880.1 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %.4877880.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  br label %bb103

bb26:                                             ; preds = %bb100
  %112 = add nsw i32 %bounces.0, 1
  br label %bb.i55

bb.i55:                                           ; preds = %bb.i55, %bb26
  %113 = call float @llvm.trax.rand() nounwind
  %114 = fadd float %113, -5.000000e-01
  %115 = fmul float %114, 2.000000e+00
  %116 = call float @llvm.trax.rand() nounwind
  %117 = fadd float %116, -5.000000e-01
  %118 = fmul float %117, 2.000000e+00
  %119 = call float @llvm.trax.rand() nounwind
  %120 = fadd float %119, -5.000000e-01
  %121 = fmul float %120, 2.000000e+00
  %122 = fmul float %115, %115
  %123 = fmul float %118, %118
  %124 = fadd float %122, %123
  %125 = fmul float %121, %121
  %126 = fadd float %124, %125
  %127 = fcmp ogt float %126, 1.000000e+00
  br i1 %127, label %bb.i55, label %invcont46

invcont46:                                        ; preds = %bb.i55
  store float %115, float* %88, align 8
  store float %118, float* %89, align 4
  store float %121, float* %90, align 8
  %128 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %direction.i) nounwind
  %mrv_gr.i57 = extractvalue %0 %128, 0
  %tmp1469 = bitcast double %mrv_gr.i57 to i64
  %mrv_gr3.i = extractvalue %0 %128, 1
  %tmp1463 = bitcast float %mrv_gr3.i to i32
  %tmp1459 = lshr i64 %tmp1469, 32
  %tmp1493 = zext i64 %tmp1469 to i96
  %tmp1487 = zext i64 %tmp1459 to i96
  %tmp1488 = shl nuw nsw i96 %tmp1487, 32
  %tmp1493.masked = and i96 %tmp1493, 4294967295
  %ins1490 = or i96 %tmp1493.masked, %tmp1488
  %tmp580 = zext i96 %ins1490 to i128
  %mask581 = and i128 %memtmp34.0, -79228162514264337593543950336
  %tmp574 = zext i32 %tmp1463 to i128
  %tmp575 = shl nuw nsw i128 %tmp574, 64
  %mask576 = or i128 %mask581, %tmp580
  %ins577 = or i128 %mask576, %tmp575
  %ins577.tr = trunc i128 %ins577 to i96
  %129 = fmul float %surface_color.0.2, 0x3FE6666660000000
  %130 = fmul float %surface_color.1.2, 0x3FE6666660000000
  %131 = fmul float %surface_color.2.2, 0x3FE6666660000000
  store float 0.000000e+00, float* %91, align 4
  store float 0.000000e+00, float* %92, align 4
  store float 0.000000e+00, float* %93, align 4
  store float 0.000000e+00, float* %94, align 4
  store float 0.000000e+00, float* %95, align 4
  store float 0.000000e+00, float* %96, align 4
  store float 0.000000e+00, float* %97, align 4
  store float 0.000000e+00, float* %98, align 4
  store float 0.000000e+00, float* %99, align 4
  store float 0.000000e+00, float* %100, align 4
  store float 0.000000e+00, float* %101, align 4
  store float 0.000000e+00, float* %102, align 4
  store float 1.000000e+10, float* %103, align 8
  %132 = bitcast %struct.Box* %random_ray to i8*
  call void @llvm.memset.p0i8.i64(i8* %132, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %106, align 4
  store float 0.000000e+00, float* %107, align 4
  %tmp1528 = bitcast i32 %ray_origin.1.off0 to float
  store float %tmp1528, float* %104, align 8
  %tmp1525 = bitcast i32 %ray_origin.1.off32 to float
  store float %tmp1525, float* %108, align 4
  %tmp1521 = bitcast i32 %ray_origin.1.off64 to float
  store float %tmp1521, float* %109, align 8
  %tmp1505 = trunc i64 %tmp1469 to i32
  %tmp1506 = bitcast i32 %tmp1505 to float
  store float %tmp1506, float* %105, align 4
  %tmp1502 = trunc i64 %tmp1459 to i32
  %tmp1503 = bitcast i32 %tmp1502 to float
  store float %tmp1503, float* %110, align 4
  %tmp1497 = lshr i96 %ins577.tr, 64
  %tmp1498 = trunc i96 %tmp1497 to i32
  %tmp1499 = bitcast i32 %tmp1498 to float
  store float %tmp1499, float* %111, align 4
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record, %struct.Box* %random_ray)
  %133 = load float* %103, align 8
  %134 = fcmp olt float %133, 1.000000e+10
  br i1 %134, label %invcont75, label %bb100

invcont75:                                        ; preds = %invcont46
  %tmp881 = load float* %.4877880.0, align 4
  %tmp882 = load float* %.4877880.1, align 4
  %tmp883 = load float* %.4877880.2, align 4
  %tmp1604 = bitcast float %tmp881 to i32
  %tmp1605 = zext i32 %tmp1604 to i96
  %tmp1598 = bitcast float %tmp882 to i32
  %tmp1599 = zext i32 %tmp1598 to i96
  %tmp1600 = shl nuw nsw i96 %tmp1599, 32
  %tmp1592 = bitcast float %tmp883 to i32
  %tmp1553 = zext i32 %tmp1592 to i128
  %tmp1554 = shl nuw nsw i128 %tmp1553, 64
  %ins1738 = or i96 %tmp1605, %tmp1600
  %tmp1695 = zext i96 %ins1738 to i128
  %mask1696 = and i128 %memtmp.i118.1, -79228162514264337593543950336
  %mask1691 = or i128 %mask1696, %tmp1695
  %ins1692 = or i128 %mask1691, %tmp1554
  %tmp1717 = bitcast float %tmp881 to i32
  %tmp1718 = zext i32 %tmp1717 to i96
  %tmp1711 = bitcast float %tmp882 to i32
  %tmp1712 = zext i32 %tmp1711 to i96
  %tmp1713 = shl nuw nsw i96 %tmp1712, 32
  %ins1715 = or i96 %tmp1718, %tmp1713
  %tmp514 = zext i96 %ins1715 to i128
  %mask515 = and i128 %memtmp69.1, -79228162514264337593543950336
  %tmp509 = and i128 %ins1692, 79228162495817593519834398720
  %mask510 = or i128 %mask515, %tmp514
  %ins511 = or i128 %mask510, %tmp509
  %tmp496 = lshr i128 %ins511, 64
  %tmp497 = trunc i128 %tmp496 to i32
  %tmp498 = bitcast i32 %tmp497 to float
  %135 = fadd float %tmp881, %tmp882
  %136 = fadd float %135, %tmp498
  %137 = fcmp ogt float %136, 3.000000e+00
  br i1 %137, label %bb76, label %invcont89

bb76:                                             ; preds = %invcont75
  %138 = fmul float %tmp881, 0x3F50624DE0000000
  %139 = fmul float %tmp882, 0x3F50624DE0000000
  %140 = fmul float %tmp498, 0x3F50624DE0000000
  br label %invcont89

invcont89:                                        ; preds = %bb76, %invcont75
  %surface_color.0.0 = phi float [ %138, %bb76 ], [ %tmp881, %invcont75 ]
  %surface_color.1.0 = phi float [ %139, %bb76 ], [ %tmp882, %invcont75 ]
  %surface_color.2.0 = phi float [ %140, %bb76 ], [ %tmp498, %invcont75 ]
  %141 = call fastcc %0 @_ZN9HitRecord12hit_positionE3Ray(float %133, %struct.Box* byval %random_ray)
  %mrv_gr81 = extractvalue %0 %141, 0
  %tmp491 = bitcast double %mrv_gr81 to i64
  %mrv_gr83 = extractvalue %0 %141, 1
  %tmp485 = bitcast float %mrv_gr83 to i32
  %142 = icmp sgt i32 %bounces.0, 0
  br i1 %142, label %bb90, label %invcont92

bb90:                                             ; preds = %invcont89
  %tmp481 = lshr i64 %tmp491, 32
  %tmp1750 = trunc i64 %tmp481 to i32
  %tmp1753 = trunc i64 %tmp491 to i32
  %tmp1751 = bitcast i32 %tmp1750 to float
  %tmp1754 = bitcast i32 %tmp1753 to float
  %143 = sext i32 %count.2 to i64
  %144 = getelementptr inbounds [200000 x %struct.Photon]* %63, i64 0, i64 %143, i32 0, i32 0
  store float %tmp1754, float* %144, align 4
  %145 = getelementptr inbounds [200000 x %struct.Photon]* %63, i64 0, i64 %143, i32 0, i32 1
  store float %tmp1751, float* %145, align 4
  %146 = getelementptr inbounds [200000 x %struct.Photon]* %63, i64 0, i64 %143, i32 0, i32 2
  store float %mrv_gr83, float* %146, align 4
  %147 = getelementptr inbounds [200000 x %struct.Photon]* %63, i64 0, i64 %143, i32 1, i64 0
  store float %129, float* %147, align 4
  %148 = getelementptr inbounds [200000 x %struct.Photon]* %63, i64 0, i64 %143, i32 1, i64 1
  store float %130, float* %148, align 4
  %149 = getelementptr inbounds [200000 x %struct.Photon]* %63, i64 0, i64 %143, i32 1, i64 2
  store float %131, float* %149, align 4
  %150 = getelementptr inbounds [200000 x %struct.Photon]* %63, i64 0, i64 %143, i32 2
  store i8 0, i8* %150, align 4
  %151 = add nsw i32 %count.2, 1
  br label %invcont92

invcont92:                                        ; preds = %bb90, %invcont89
  %count.0 = phi i32 [ %151, %bb90 ], [ %count.2, %invcont89 ]
  %tmp459 = lshr i64 %tmp491, 32
  %extract.t3660 = trunc i64 %tmp491 to i32
  %extract.t3667 = trunc i64 %tmp459 to i32
  br label %bb100

bb100:                                            ; preds = %bb103, %invcont92, %invcont46
  %surface_color.0.2 = phi float [ 0.000000e+00, %bb103 ], [ %surface_color.0.0, %invcont92 ], [ %surface_color.0.2, %invcont46 ]
  %surface_color.1.2 = phi float [ 0.000000e+00, %bb103 ], [ %surface_color.1.0, %invcont92 ], [ %surface_color.1.2, %invcont46 ]
  %surface_color.2.2 = phi float [ 0.000000e+00, %bb103 ], [ %surface_color.2.0, %invcont92 ], [ %surface_color.2.2, %invcont46 ]
  %memtmp69.1 = phi i128 [ %memtmp69.2, %bb103 ], [ %ins511, %invcont92 ], [ %memtmp69.1, %invcont46 ]
  %memtmp34.0 = phi i128 [ %memtmp34.1, %bb103 ], [ %ins577, %invcont92 ], [ %ins577, %invcont46 ]
  %ray_origin.1.off0 = phi i32 [ %ray_origin.2.off0, %bb103 ], [ %extract.t3660, %invcont92 ], [ %ray_origin.1.off0, %invcont46 ]
  %ray_origin.1.off32 = phi i32 [ %ray_origin.2.off32, %bb103 ], [ %extract.t3667, %invcont92 ], [ %ray_origin.1.off32, %invcont46 ]
  %ray_origin.1.off64 = phi i32 [ %ray_origin.2.off64, %bb103 ], [ %tmp485, %invcont92 ], [ %ray_origin.1.off64, %invcont46 ]
  %memtmp.i118.1 = phi i128 [ %memtmp.i118.2, %bb103 ], [ %ins1692, %invcont92 ], [ %memtmp.i118.1, %invcont46 ]
  %bounces.0 = phi i32 [ 0, %bb103 ], [ %112, %invcont92 ], [ %112, %invcont46 ]
  %count.2 = phi i32 [ %count.3, %bb103 ], [ %count.0, %invcont92 ], [ %count.2, %invcont46 ]
  %152 = icmp slt i32 %bounces.0, 3
  br i1 %152, label %bb26, label %bb102

bb102:                                            ; preds = %bb100
  %153 = add nsw i32 %iterator.0, 1
  br label %bb103

bb103:                                            ; preds = %bb102, %invcont18
  %memtmp69.2 = phi i128 [ undef, %invcont18 ], [ %memtmp69.1, %bb102 ]
  %memtmp34.1 = phi i128 [ undef, %invcont18 ], [ %memtmp34.0, %bb102 ]
  %ray_origin.2.off0 = phi i32 [ %tmp671, %invcont18 ], [ %ray_origin.1.off0, %bb102 ]
  %ray_origin.2.off32 = phi i32 [ %tmp665, %invcont18 ], [ %ray_origin.1.off32, %bb102 ]
  %ray_origin.2.off64 = phi i32 [ %tmp659, %invcont18 ], [ %ray_origin.1.off64, %bb102 ]
  %memtmp.i118.2 = phi i128 [ undef, %invcont18 ], [ %memtmp.i118.1, %bb102 ]
  %count.3 = phi i32 [ 0, %invcont18 ], [ %count.2, %bb102 ]
  %iterator.0 = phi i32 [ 0, %invcont18 ], [ %153, %bb102 ]
  %154 = icmp slt i32 %iterator.0, 100000
  br i1 %154, label %bb100, label %invcont106

invcont106:                                       ; preds = %bb103
  %155 = call i32 @llvm.trax.atominc(i32 0)
  %156 = mul nsw i32 %5, %6
  %157 = sitofp i32 %5 to float
  %158 = fdiv float %157, -2.000000e+00
  %159 = sitofp i32 %6 to float
  %160 = fdiv float %159, -2.000000e+00
  %161 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 0
  %162 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 1
  %163 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 2
  %164 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 0
  %165 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 1
  %166 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 2
  %167 = getelementptr inbounds %struct.Color* %4, i64 0, i32 0
  %168 = getelementptr inbounds %struct.Color* %4, i64 0, i32 1
  %169 = getelementptr inbounds %struct.Color* %4, i64 0, i32 2
  %170 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %171 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %172 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %173 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %174 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 0, i32 0
  %175 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 0, i32 1
  %176 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 0, i32 2
  %177 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 1, i32 0
  %178 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 1, i32 1
  %179 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 1, i32 2
  %180 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 2, i32 0
  %181 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 2, i32 1
  %182 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 2, i32 2
  %183 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 4, i32 0, i32 0
  %184 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 4, i32 0, i32 1
  %185 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 4, i32 0, i32 2
  %186 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 0
  %tmp = bitcast %struct.HitRecord* %hit_record113182 to i8*
  %tmp183 = bitcast %struct.HitRecord* %hit_record113 to i8*
  %ray2048.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray2048.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray2048.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.1.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.1.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.1.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %187 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 0
  %188 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 1
  %189 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 2
  %190 = getelementptr inbounds %struct.HitRecord* %hit_record113182, i64 0, i32 0
  %191 = getelementptr inbounds %struct.HitRecord* %hit_record113182, i64 0, i32 1
  %agg.result1.i.i = bitcast %struct.Trigonum* %tri.i to i8*
  %192 = bitcast %struct.Trigonum* %191 to i8*
  %193 = getelementptr inbounds %struct.Color* %3, i64 0, i32 0
  %194 = getelementptr inbounds %struct.Color* %3, i64 0, i32 1
  %195 = getelementptr inbounds %struct.Color* %3, i64 0, i32 2
  %196 = getelementptr inbounds %struct.Color* %2, i64 0, i32 0
  %197 = getelementptr inbounds %struct.Color* %2, i64 0, i32 1
  %198 = getelementptr inbounds %struct.Color* %2, i64 0, i32 2
  %tmp2822 = bitcast float %11 to i32
  %tmp2823 = zext i32 %tmp2822 to i96
  %tmp2818 = shl nuw nsw i96 %tmp1106, 32
  %tmp2810 = bitcast float %13 to i32
  %tmp2222 = zext i32 %tmp2810 to i128
  %tmp2223 = shl nuw nsw i128 %tmp2222, 64
  %199 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %200 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %201 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %202 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 0
  %203 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 1
  %204 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 2
  %ray_to_light_source15.i2472.0 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 0, i32 0
  %ray_to_light_source15.i2472.1 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 0, i32 1
  %ray_to_light_source15.i2472.2 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 0, i32 2
  %ray_to_light_source15.i.1.0 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 1, i32 0
  %ray_to_light_source15.i.1.1 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 1, i32 1
  %ray_to_light_source15.i.1.2 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 1, i32 2
  %205 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 2
  %206 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 0, i32 0
  %207 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 0, i32 1
  %208 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 0, i32 2
  %hit_record113.0 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 0
  %hit_record113.12971.0 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 0, i32 0
  %hit_record113.12971.1 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 0, i32 1
  %hit_record113.12971.2 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 0, i32 2
  %hit_record113.1.1.0 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 1, i32 0
  %hit_record113.1.1.1 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 1, i32 1
  %hit_record113.1.1.2 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 1, i32 2
  %hit_record113.1.2.0 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 2, i32 0
  %hit_record113.1.2.1 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 2, i32 1
  %hit_record113.1.2.2 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 2, i32 2
  %hit_record113.1.3 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 3
  %hit_record113.1.42947.0 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 4, i32 0, i32 0
  %hit_record113.1.42947.1 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 4, i32 0, i32 1
  %hit_record113.1.42947.2 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 4, i32 0, i32 2
  %hit_record113.1.4.1 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 4, i32 1
  %hit_record113.1.4.2 = getelementptr inbounds %struct.HitRecord* %hit_record113, i64 0, i32 1, i32 4, i32 2
  %tri.i2722967.0 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 0, i32 0
  %tri.i2722967.1 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 0, i32 1
  %tri.i2722967.2 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 0, i32 2
  %tri.i272.1.0 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 1, i32 0
  %tri.i272.1.1 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 1, i32 1
  %tri.i272.1.2 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 1, i32 2
  %tri.i272.2.0 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 2, i32 0
  %tri.i272.2.1 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 2, i32 1
  %tri.i272.2.2 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 2, i32 2
  %tri.i272.3 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 3
  %tri.i272.42951.0 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 4, i32 0, i32 0
  %tri.i272.42951.1 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 4, i32 0, i32 1
  %tri.i272.42951.2 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 4, i32 0, i32 2
  %tri.i272.4.1 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 4, i32 1
  %tri.i272.4.2 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 4, i32 2
  %209 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %210 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %211 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %212 = getelementptr inbounds %struct.Color* %light.i280, i64 0, i32 0
  %213 = getelementptr inbounds %struct.Color* %light.i280, i64 0, i32 1
  %214 = getelementptr inbounds %struct.Color* %light.i280, i64 0, i32 2
  %215 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 4, i32 0, i32 0
  %216 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 4, i32 0, i32 1
  %217 = getelementptr inbounds %struct.Trigonum* %tri.i272, i64 0, i32 4, i32 0, i32 2
  %elt153 = bitcast %struct.Color* %result to double*
  br label %bb159

invcont116:                                       ; preds = %bb159
  %218 = sdiv i32 %storemerge2, %5
  %219 = srem i32 %storemerge2, %5
  %220 = sitofp i32 %219 to float
  %221 = fadd float %220, %158
  %222 = fadd float %221, 5.000000e-01
  %223 = fmul float %222, 2.000000e+00
  %224 = fdiv float %223, %157
  %225 = sitofp i32 %218 to float
  %226 = fadd float %225, %160
  %227 = fadd float %226, 5.000000e-01
  %228 = fmul float %227, 2.000000e+00
  %229 = fdiv float %228, %159
  store float 0.000000e+00, float* %14, align 8
  store float 0.000000e+00, float* %15, align 4
  store float 0.000000e+00, float* %16, align 8
  store float %26, float* %164, align 8
  store float %27, float* %165, align 4
  store float %28, float* %166, align 8
  %230 = fmul float %34, %229
  %231 = fmul float %35, %229
  %232 = fmul float %36, %229
  %tmp1916 = bitcast float %230 to i32
  %tmp1917 = zext i32 %tmp1916 to i64
  %tmp1910 = bitcast float %231 to i32
  %tmp1911 = zext i32 %tmp1910 to i64
  %tmp1912 = shl nuw i64 %tmp1911, 32
  %ins1914 = or i64 %tmp1917, %tmp1912
  %233 = fmul float %30, %224
  %234 = fmul float %31, %224
  %235 = fmul float %32, %224
  store float %233, float* %167, align 8
  store float %234, float* %168, align 4
  store float %235, float* %169, align 8
  %tmp1902 = bitcast i64 %ins1914 to double
  %236 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %4, double %tmp1902, float %232) nounwind
  %mrv_gr14.i170 = extractvalue %0 %236, 0
  %mrv_gr16.i = extractvalue %0 %236, 1
  %237 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %ln.i, double %mrv_gr14.i170, float %mrv_gr16.i) nounwind
  %mrv_gr24.i172 = extractvalue %0 %237, 0
  %tmp1806 = bitcast double %mrv_gr24.i172 to i64
  %mrv_gr26.i174 = extractvalue %0 %237, 1
  %tmp1793 = trunc i64 %tmp1806 to i32
  %tmp1794 = bitcast i32 %tmp1793 to float
  store float %tmp1794, float* %161, align 8
  %tmp1796 = lshr i64 %tmp1806, 32
  %tmp1797 = trunc i64 %tmp1796 to i32
  %tmp1798 = bitcast i32 %tmp1797 to float
  store float %tmp1798, float* %162, align 4
  store float %mrv_gr26.i174, float* %163, align 8
  %238 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %V.i) nounwind
  %mrv_gr30.i = extractvalue %0 %238, 0
  %tmp1784 = bitcast double %mrv_gr30.i to i64
  %mrv_gr32.i = extractvalue %0 %238, 1
  %tmp1774 = lshr i64 %tmp1784, 32
  %tmp1961 = trunc i64 %tmp1784 to i32
  %tmp1962 = bitcast i32 %tmp1961 to float
  %tmp1958 = trunc i64 %tmp1774 to i32
  %tmp1959 = bitcast i32 %tmp1958 to float
  store float %18, float* %37, align 8
  store float %19, float* %170, align 4
  store float %20, float* %171, align 8
  store float %tmp1962, float* %38, align 4
  store float %tmp1959, float* %172, align 4
  store float %mrv_gr32.i, float* %173, align 4
  store float 0.000000e+00, float* %174, align 4
  store float 0.000000e+00, float* %175, align 4
  store float 0.000000e+00, float* %176, align 4
  store float 0.000000e+00, float* %177, align 4
  store float 0.000000e+00, float* %178, align 4
  store float 0.000000e+00, float* %179, align 4
  store float 0.000000e+00, float* %180, align 4
  store float 0.000000e+00, float* %181, align 4
  store float 0.000000e+00, float* %182, align 4
  store float 0.000000e+00, float* %183, align 4
  store float 0.000000e+00, float* %184, align 4
  store float 0.000000e+00, float* %185, align 4
  store float 1.000000e+10, float* %186, align 8
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record113, %struct.Box* %ray)
  %239 = sitofp i32 %foo.0 to float
  %240 = add nsw i32 %foo.0, 1
  call void @llvm.trax.printf(float %239)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp, i8* %tmp183, i64 64, i32 8, i1 false)
  %tmp2049 = load float* %ray2048.0, align 8
  %tmp2050 = load float* %ray2048.1, align 4
  %tmp2051 = load float* %ray2048.2, align 8
  %tmp2045 = load float* %ray.1.0, align 4
  %tmp2046 = load float* %ray.1.1, align 4
  %tmp2047 = load float* %ray.1.2, align 4
  store float 0.000000e+00, float* %187, align 8
  store float 0.000000e+00, float* %188, align 4
  store float 0.000000e+00, float* %189, align 8
  %241 = load float* %190, align 8
  %242 = fcmp olt float %241, 1.000000e+10
  br i1 %242, label %bb.i233, label %invcont121

bb.i233:                                          ; preds = %invcont116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %agg.result1.i.i, i8* %192, i64 60, i32 4, i1 false) nounwind
  %tmp2799 = bitcast float %tmp2045 to i32
  %tmp2800 = zext i32 %tmp2799 to i96
  %tmp2793 = bitcast float %tmp2046 to i32
  %tmp2794 = zext i32 %tmp2793 to i96
  %tmp2795 = shl nuw nsw i96 %tmp2794, 32
  %ins2797 = or i96 %tmp2800, %tmp2795
  %tmp2787 = bitcast float %tmp2047 to i32
  %tmp2404 = zext i96 %ins2797 to i128
  %mask2405 = and i128 %memtmp.i207.1, -79228162514264337593543950336
  %tmp2398 = zext i32 %tmp2787 to i128
  %tmp2399 = shl nuw nsw i128 %tmp2398, 64
  %mask2400 = or i128 %mask2405, %tmp2404
  %ins2401 = or i128 %mask2400, %tmp2399
  %tmp2386 = lshr i128 %ins2401, 64
  %tmp2387 = trunc i128 %tmp2386 to i32
  %tmp2388 = bitcast i32 %tmp2387 to float
  %243 = fmul float %tmp2045, %241
  %244 = fmul float %tmp2046, %241
  %245 = fmul float %tmp2388, %241
  %tmp2890 = bitcast float %243 to i32
  %tmp2891 = zext i32 %tmp2890 to i96
  %tmp2884 = bitcast float %244 to i32
  %tmp2885 = zext i32 %tmp2884 to i96
  %tmp2886 = shl nuw nsw i96 %tmp2885, 32
  %ins2888 = or i96 %tmp2891, %tmp2886
  %tmp2878 = bitcast float %245 to i32
  %tmp2382 = zext i96 %ins2888 to i128
  %mask2383 = and i128 %memtmp4.i208.1, -79228162514264337593543950336
  %tmp2376 = zext i32 %tmp2878 to i128
  %tmp2377 = shl nuw nsw i128 %tmp2376, 64
  %mask2378 = or i128 %mask2383, %tmp2382
  %ins2379 = or i128 %mask2378, %tmp2377
  %tmp2496 = bitcast float %243 to i32
  %tmp2497 = zext i32 %tmp2496 to i64
  %tmp2490 = bitcast float %244 to i32
  %tmp2491 = zext i32 %tmp2490 to i64
  %tmp2492 = shl nuw i64 %tmp2491, 32
  %ins2494 = or i64 %tmp2497, %tmp2492
  %ins2379.tr = trunc i128 %ins2379 to i96
  %tmp2936 = bitcast float %tmp2049 to i32
  %tmp2937 = zext i32 %tmp2936 to i96
  %tmp2930 = bitcast float %tmp2050 to i32
  %tmp2931 = zext i32 %tmp2930 to i96
  %tmp2932 = shl nuw nsw i96 %tmp2931, 32
  %ins2934 = or i96 %tmp2937, %tmp2932
  %tmp2924 = bitcast float %tmp2051 to i32
  %tmp2360 = zext i96 %ins2934 to i128
  %mask2361 = and i128 %memtmp10.i209.1, -79228162514264337593543950336
  %tmp2354 = zext i32 %tmp2924 to i128
  %tmp2355 = shl nuw nsw i128 %tmp2354, 64
  %mask2356 = or i128 %mask2361, %tmp2360
  %ins2357 = or i128 %mask2356, %tmp2355
  store float %tmp2049, float* %193, align 8
  store float %tmp2050, float* %194, align 4
  %tmp2342 = lshr i128 %ins2357, 64
  %tmp2343 = trunc i128 %tmp2342 to i32
  %tmp2344 = bitcast i32 %tmp2343 to float
  store float %tmp2344, float* %195, align 8
  %tmp2482 = bitcast i64 %ins2494 to double
  %tmp2477 = lshr i96 %ins2379.tr, 64
  %tmp2478 = trunc i96 %tmp2477 to i32
  %tmp2479 = bitcast i32 %tmp2478 to float
  %246 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %3, double %tmp2482, float %tmp2479) nounwind
  %mrv_gr20.i228 = extractvalue %0 %246, 0
  %tmp2337 = bitcast double %mrv_gr20.i228 to i64
  %mrv_gr22.i = extractvalue %0 %246, 1
  %tmp2327 = lshr i64 %tmp2337, 32
  %247 = call fastcc %0 @_Z6normal8Trigonum(%struct.Trigonum* byval %tri.i) nounwind
  %mrv_gr26.i230 = extractvalue %0 %247, 0
  %tmp2315 = bitcast double %mrv_gr26.i230 to i64
  %mrv_gr28.i = extractvalue %0 %247, 1
  %tmp2302 = trunc i64 %tmp2315 to i32
  %tmp2303 = bitcast i32 %tmp2302 to float
  %tmp2305 = lshr i64 %tmp2315, 32
  %tmp2306 = trunc i64 %tmp2305 to i32
  %tmp2307 = bitcast i32 %tmp2306 to float
  %ins2911 = or i96 %tmp2800, %tmp2795
  %tmp2294 = zext i96 %ins2911 to i128
  %mask2295 = and i128 %memtmp30.i.1, -79228162514264337593543950336
  %mask2290 = or i128 %mask2295, %tmp2294
  %ins2291 = or i128 %mask2290, %tmp2399
  store float %tmp2045, float* %196, align 8
  store float %tmp2046, float* %197, align 4
  %tmp2276 = lshr i128 %ins2291, 64
  %tmp2277 = trunc i128 %tmp2276 to i32
  %tmp2278 = bitcast i32 %tmp2277 to float
  store float %tmp2278, float* %198, align 8
  %248 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %2) nounwind
  %mrv_gr38.i = extractvalue %0 %248, 0
  %tmp2271 = bitcast double %mrv_gr38.i to i64
  %mrv_gr40.i = extractvalue %0 %248, 1
  %tmp2261 = lshr i64 %tmp2271, 32
  %tmp2858 = trunc i64 %tmp2271 to i32
  %tmp2859 = bitcast i32 %tmp2858 to float
  %249 = fmul float %tmp2859, %tmp2303
  %250 = fadd float %249, 0.000000e+00
  %tmp2855 = trunc i64 %tmp2261 to i32
  %tmp2856 = bitcast i32 %tmp2855 to float
  %251 = fmul float %tmp2856, %tmp2307
  %252 = fadd float %251, %250
  %253 = fmul float %mrv_gr40.i, %mrv_gr28.i
  %254 = fadd float %253, %252
  %255 = fcmp ogt float %254, 0.000000e+00
  br i1 %255, label %bb46.i, label %bb53.i

bb46.i:                                           ; preds = %bb.i233
  %256 = fmul float %tmp2303, -1.000000e+00
  %257 = fmul float %tmp2307, -1.000000e+00
  %258 = fmul float %mrv_gr28.i, -1.000000e+00
  %tmp2845 = bitcast float %256 to i32
  %tmp2846 = zext i32 %tmp2845 to i96
  %tmp2839 = bitcast float %257 to i32
  %tmp2840 = zext i32 %tmp2839 to i96
  %tmp2841 = shl nuw nsw i96 %tmp2840, 32
  %ins2843 = or i96 %tmp2846, %tmp2841
  %tmp2833 = bitcast float %258 to i32
  %tmp2250 = zext i96 %ins2843 to i128
  %mask2251 = and i128 %memtmp47.i.2, -79228162514264337593543950336
  %tmp2244 = zext i32 %tmp2833 to i128
  %tmp2245 = shl nuw nsw i128 %tmp2244, 64
  %mask2246 = or i128 %mask2251, %tmp2250
  %ins2247 = or i128 %mask2246, %tmp2245
  %tmp2232 = lshr i128 %ins2247, 64
  %tmp2233 = trunc i128 %tmp2232 to i32
  %tmp2234 = bitcast i32 %tmp2233 to float
  br label %bb53.i

bb53.i:                                           ; preds = %bb46.i, %bb.i233
  %N.i.0.0 = phi float [ %256, %bb46.i ], [ %tmp2303, %bb.i233 ]
  %N.i.1.0 = phi float [ %257, %bb46.i ], [ %tmp2307, %bb.i233 ]
  %N.i.2.0 = phi float [ %tmp2234, %bb46.i ], [ %mrv_gr28.i, %bb.i233 ]
  %memtmp47.i.0 = phi i128 [ %ins2247, %bb46.i ], [ %memtmp47.i.2, %bb.i233 ]
  %ins2820 = or i96 %tmp2823, %tmp2818
  %tmp2228 = zext i96 %ins2820 to i128
  %mask2229 = and i128 %memtmp54.i.1, -79228162514264337593543950336
  %mask2224 = or i128 %mask2229, %tmp2228
  %ins2225 = or i128 %mask2224, %tmp2223
  store float %11, float* %199, align 8
  store float %12, float* %200, align 4
  %tmp2210 = lshr i128 %ins2225, 64
  %tmp2211 = trunc i128 %tmp2210 to i32
  %tmp2212 = bitcast i32 %tmp2211 to float
  store float %tmp2212, float* %201, align 8
  %259 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %1, double %mrv_gr20.i228, float %mrv_gr22.i) nounwind
  %mrv_gr66.i = extractvalue %0 %259, 0
  %tmp2205 = bitcast double %mrv_gr66.i to i64
  %mrv_gr68.i = extractvalue %0 %259, 1
  %tmp2192 = trunc i64 %tmp2205 to i32
  %tmp2193 = bitcast i32 %tmp2192 to float
  store float %tmp2193, float* %202, align 8
  %tmp2195 = lshr i64 %tmp2205, 32
  %tmp2196 = trunc i64 %tmp2195 to i32
  %tmp2197 = bitcast i32 %tmp2196 to float
  store float %tmp2197, float* %203, align 4
  store float %mrv_gr68.i, float* %204, align 8
  %260 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %L.i) nounwind
  %mrv_gr72.i = extractvalue %0 %260, 0
  %tmp2183 = bitcast double %mrv_gr72.i to i64
  %mrv_gr74.i = extractvalue %0 %260, 1
  %tmp2173 = lshr i64 %tmp2183, 32
  %tmp2767 = trunc i64 %tmp2183 to i32
  %tmp2768 = bitcast i32 %tmp2767 to float
  %261 = fmul float %tmp2768, %N.i.0.0
  %262 = fadd float %261, 0.000000e+00
  %tmp2764 = trunc i64 %tmp2173 to i32
  %tmp2765 = bitcast i32 %tmp2764 to float
  %263 = fmul float %tmp2765, %N.i.1.0
  %264 = fadd float %263, %262
  %265 = fmul float %mrv_gr74.i, %N.i.2.0
  %266 = fadd float %265, %264
  %267 = fcmp ogt float %266, 0.000000e+00
  br i1 %267, label %bb88.i, label %bb115.i

bb88.i:                                           ; preds = %bb53.i
  %tmp2720 = trunc i64 %tmp2173 to i32
  %tmp2723 = trunc i64 %tmp2183 to i32
  %tmp2742 = trunc i64 %tmp2327 to i32
  %tmp2745 = trunc i64 %tmp2337 to i32
  %tmp2721 = bitcast i32 %tmp2720 to float
  %tmp2724 = bitcast i32 %tmp2723 to float
  %tmp2743 = bitcast i32 %tmp2742 to float
  %tmp2746 = bitcast i32 %tmp2745 to float
  %268 = load float* %202, align 8
  %269 = fmul float %268, %268
  %270 = load float* %203, align 4
  %271 = fmul float %270, %270
  %272 = fadd float %269, %271
  %273 = load float* %204, align 8
  %274 = fmul float %273, %273
  %275 = fadd float %272, %274
  %276 = call float @llvm.trax.invsqrt(float %275) nounwind
  %277 = fdiv float 1.000000e+00, %276
  store float %tmp2746, float* %ray_to_light_source15.i2472.0, align 8
  store float %tmp2743, float* %ray_to_light_source15.i2472.1, align 4
  store float %mrv_gr22.i, float* %ray_to_light_source15.i2472.2, align 8
  store float %tmp2724, float* %ray_to_light_source15.i.1.0, align 4
  store float %tmp2721, float* %ray_to_light_source15.i.1.1, align 4
  store float %mrv_gr74.i, float* %ray_to_light_source15.i.1.2, align 4
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record113182, %struct.Box* %ray_to_light_source15.i) nounwind
  %278 = load float* %190, align 8
  %279 = fcmp uge float %278, %277
  %280 = fcmp ule float %278, 0x3F847AE140000000
  %or.cond = or i1 %279, %280
  br i1 %or.cond, label %bb92.i, label %bb115.i

bb92.i:                                           ; preds = %bb88.i
  %281 = load float* %205, align 8
  %282 = fmul float %281, %266
  %tmp2687 = bitcast float %282 to i32
  %tmp2688 = zext i32 %tmp2687 to i96
  %tmp2681 = bitcast float %282 to i32
  %tmp2682 = zext i32 %tmp2681 to i96
  %tmp2683 = shl nuw nsw i96 %tmp2682, 32
  %ins2685 = or i96 %tmp2688, %tmp2683
  %tmp2675 = bitcast float %282 to i32
  %tmp2140 = zext i96 %ins2685 to i128
  %mask2141 = and i128 %memtmp99.i.2, -79228162514264337593543950336
  %tmp2134 = zext i32 %tmp2675 to i128
  %tmp2135 = shl nuw nsw i128 %tmp2134, 64
  %mask2136 = or i128 %mask2141, %tmp2140
  %ins2137 = or i128 %mask2136, %tmp2135
  %tmp2539 = bitcast float %282 to i32
  %tmp2540 = zext i32 %tmp2539 to i64
  %tmp2533 = bitcast float %282 to i32
  %tmp2534 = zext i32 %tmp2533 to i64
  %tmp2535 = shl nuw i64 %tmp2534, 32
  %ins2537 = or i64 %tmp2540, %tmp2535
  %tmp2122 = lshr i128 %ins2137, 64
  %tmp2123 = trunc i128 %tmp2122 to i32
  %tmp2124 = bitcast i32 %tmp2123 to float
  %tmp2525 = bitcast i64 %ins2537 to double
  %283 = call fastcc %0 @_ZN5Color3addES_(%struct.Color* %light.i, double %tmp2525, float %tmp2124) nounwind
  %mrv_gr111.i = extractvalue %0 %283, 0
  %tmp2117 = bitcast double %mrv_gr111.i to i64
  %mrv_gr113.i = extractvalue %0 %283, 1
  %tmp2104 = trunc i64 %tmp2117 to i32
  %tmp2105 = bitcast i32 %tmp2104 to float
  store float %tmp2105, float* %187, align 8
  %tmp2107 = lshr i64 %tmp2117, 32
  %tmp2108 = trunc i64 %tmp2107 to i32
  %tmp2109 = bitcast i32 %tmp2108 to float
  store float %tmp2109, float* %188, align 4
  store float %mrv_gr113.i, float* %189, align 8
  br label %bb115.i

bb115.i:                                          ; preds = %bb92.i, %bb88.i, %bb53.i
  %memtmp99.i.0 = phi i128 [ %ins2137, %bb92.i ], [ %memtmp99.i.2, %bb53.i ], [ %memtmp99.i.2, %bb88.i ]
  %284 = load float* %206, align 8
  %285 = load float* %207, align 4
  %286 = load float* %208, align 8
  %tmp2664 = bitcast float %284 to i32
  %tmp2665 = zext i32 %tmp2664 to i96
  %tmp2658 = bitcast float %285 to i32
  %tmp2659 = zext i32 %tmp2658 to i96
  %tmp2660 = shl nuw nsw i96 %tmp2659, 32
  %ins2662 = or i96 %tmp2665, %tmp2660
  %tmp2652 = bitcast float %286 to i32
  %tmp2619 = zext i96 %ins2662 to i128
  %mask2620 = and i128 %memtmp.i.i.1, -79228162514264337593543950336
  %tmp2613 = zext i32 %tmp2652 to i128
  %tmp2614 = shl nuw nsw i128 %tmp2613, 64
  %mask2615 = or i128 %mask2620, %tmp2619
  %ins2616 = or i128 %mask2615, %tmp2614
  %tmp2641 = bitcast float %284 to i32
  %tmp2642 = zext i32 %tmp2641 to i96
  %tmp2635 = bitcast float %285 to i32
  %tmp2636 = zext i32 %tmp2635 to i96
  %tmp2637 = shl nuw nsw i96 %tmp2636, 32
  %ins2639 = or i96 %tmp2642, %tmp2637
  %tmp2096 = zext i96 %ins2639 to i128
  %mask2097 = and i128 %memtmp116.i.1, -79228162514264337593543950336
  %tmp2091 = and i128 %ins2616, 79228162495817593519834398720
  %mask2092 = or i128 %mask2097, %tmp2096
  %ins2093 = or i128 %mask2092, %tmp2091
  %tmp2562 = bitcast float %284 to i32
  %tmp2563 = zext i32 %tmp2562 to i64
  %tmp2556 = bitcast float %285 to i32
  %tmp2557 = zext i32 %tmp2556 to i64
  %tmp2558 = shl nuw i64 %tmp2557, 32
  %ins2560 = or i64 %tmp2563, %tmp2558
  %tmp2078 = lshr i128 %ins2093, 64
  %tmp2079 = trunc i128 %tmp2078 to i32
  %tmp2080 = bitcast i32 %tmp2079 to float
  %tmp2548 = bitcast i64 %ins2560 to double
  %287 = call fastcc %0 @_ZN5Color5timesES_(%struct.Color* %light.i, double %tmp2548, float %tmp2080) nounwind
  %mrv_gr128.i = extractvalue %0 %287, 0
  %tmp2073 = bitcast double %mrv_gr128.i to i64
  %mrv_gr130.i = extractvalue %0 %287, 1
  %tmp2060 = trunc i64 %tmp2073 to i32
  %tmp2061 = bitcast i32 %tmp2060 to float
  store float %tmp2061, float* %187, align 8
  %tmp2063 = lshr i64 %tmp2073, 32
  %tmp2064 = trunc i64 %tmp2063 to i32
  %tmp2065 = bitcast i32 %tmp2064 to float
  store float %tmp2065, float* %188, align 4
  store float %mrv_gr130.i, float* %189, align 8
  %tmp2982.pre = load float* %ray2048.0, align 8
  %tmp2983.pre = load float* %ray2048.1, align 4
  %tmp2984.pre = load float* %ray2048.2, align 8
  %tmp2978.pre = load float* %ray.1.0, align 4
  %tmp2979.pre = load float* %ray.1.1, align 4
  %tmp2980.pre = load float* %ray.1.2, align 4
  %extract = lshr i64 %tmp2073, 32
  %extract.t = trunc i64 %extract to i32
  %extract.t3680 = trunc i64 %tmp2073 to i32
  %phitmp = bitcast i32 %extract.t3680 to float
  %phitmp3681 = bitcast i32 %extract.t to float
  br label %invcont121

invcont121:                                       ; preds = %bb115.i, %invcont116
  %tmp2980 = phi float [ %tmp2980.pre, %bb115.i ], [ %tmp2047, %invcont116 ]
  %tmp2979 = phi float [ %tmp2979.pre, %bb115.i ], [ %tmp2046, %invcont116 ]
  %tmp2978 = phi float [ %tmp2978.pre, %bb115.i ], [ %tmp2045, %invcont116 ]
  %tmp2984 = phi float [ %tmp2984.pre, %bb115.i ], [ %tmp2051, %invcont116 ]
  %tmp2983 = phi float [ %tmp2983.pre, %bb115.i ], [ %tmp2050, %invcont116 ]
  %tmp2982 = phi float [ %tmp2982.pre, %bb115.i ], [ %tmp2049, %invcont116 ]
  %.02566.0.off0 = phi float [ %phitmp, %bb115.i ], [ 0x3FE1F3B640000000, %invcont116 ]
  %.12567.0.off32 = phi float [ %phitmp3681, %bb115.i ], [ 0x3FE753F7C0000000, %invcont116 ]
  %.22568.0 = phi float [ %mrv_gr130.i, %bb115.i ], [ 0x3FEF9DB220000000, %invcont116 ]
  %memtmp116.i.0 = phi i128 [ %ins2093, %bb115.i ], [ %memtmp116.i.1, %invcont116 ]
  %memtmp99.i.1 = phi i128 [ %memtmp99.i.0, %bb115.i ], [ %memtmp99.i.2, %invcont116 ]
  %memtmp54.i.0 = phi i128 [ %ins2225, %bb115.i ], [ %memtmp54.i.1, %invcont116 ]
  %memtmp47.i.1 = phi i128 [ %memtmp47.i.0, %bb115.i ], [ %memtmp47.i.2, %invcont116 ]
  %memtmp30.i.0 = phi i128 [ %ins2291, %bb115.i ], [ %memtmp30.i.1, %invcont116 ]
  %memtmp10.i209.0 = phi i128 [ %ins2357, %bb115.i ], [ %memtmp10.i209.1, %invcont116 ]
  %memtmp4.i208.0 = phi i128 [ %ins2379, %bb115.i ], [ %memtmp4.i208.1, %invcont116 ]
  %memtmp.i207.0 = phi i128 [ %ins2401, %bb115.i ], [ %memtmp.i207.1, %invcont116 ]
  %memtmp.i.i.0 = phi i128 [ %ins2616, %bb115.i ], [ %memtmp.i.i.1, %invcont116 ]
  store float %.02566.0.off0, float* %14, align 8
  store float %.12567.0.off32, float* %15, align 4
  store float %.22568.0, float* %16, align 8
  %tmp2940 = load float* %hit_record113.0, align 8
  %tmp2972 = load float* %hit_record113.12971.0, align 4
  %tmp2973 = load float* %hit_record113.12971.1, align 4
  %tmp2974 = load float* %hit_record113.12971.2, align 4
  %tmp2964 = load float* %hit_record113.1.1.0, align 4
  %tmp2965 = load float* %hit_record113.1.1.1, align 4
  %tmp2966 = load float* %hit_record113.1.1.2, align 4
  %tmp2958 = load float* %hit_record113.1.2.0, align 4
  %tmp2959 = load float* %hit_record113.1.2.1, align 4
  %tmp2960 = load float* %hit_record113.1.2.2, align 4
  %tmp2941 = load i32* %hit_record113.1.3, align 4
  %tmp2948 = load float* %hit_record113.1.42947.0, align 4
  %tmp2949 = load float* %hit_record113.1.42947.1, align 4
  %tmp2950 = load float* %hit_record113.1.42947.2, align 4
  %tmp2945 = load float* %hit_record113.1.4.1, align 4
  %tmp2946 = load float* %hit_record113.1.4.2, align 4
  store float %tmp2972, float* %tri.i2722967.0, align 8
  store float %tmp2973, float* %tri.i2722967.1, align 4
  store float %tmp2974, float* %tri.i2722967.2, align 8
  store float %tmp2964, float* %tri.i272.1.0, align 4
  store float %tmp2965, float* %tri.i272.1.1, align 4
  store float %tmp2966, float* %tri.i272.1.2, align 4
  store float %tmp2958, float* %tri.i272.2.0, align 8
  store float %tmp2959, float* %tri.i272.2.1, align 4
  store float %tmp2960, float* %tri.i272.2.2, align 8
  store i32 %tmp2941, i32* %tri.i272.3, align 4
  store float %tmp2948, float* %tri.i272.42951.0, align 8
  store float %tmp2949, float* %tri.i272.42951.1, align 4
  store float %tmp2950, float* %tri.i272.42951.2, align 8
  store float %tmp2945, float* %tri.i272.4.1, align 4
  store float %tmp2946, float* %tri.i272.4.2, align 8
  %288 = fmul float %tmp2978, %tmp2940
  %289 = fmul float %tmp2979, %tmp2940
  %290 = fmul float %tmp2980, %tmp2940
  %tmp3207 = bitcast float %288 to i32
  %tmp3208 = zext i32 %tmp3207 to i64
  %tmp3201 = bitcast float %289 to i32
  %tmp3202 = zext i32 %tmp3201 to i64
  %tmp3203 = shl nuw i64 %tmp3202, 32
  %ins3205 = or i64 %tmp3208, %tmp3203
  store float %tmp2982, float* %209, align 8
  store float %tmp2983, float* %210, align 4
  store float %tmp2984, float* %211, align 8
  %tmp3193 = bitcast i64 %ins3205 to double
  %291 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %0, double %tmp3193, float %290) nounwind
  %mrv_gr20.i307 = extractvalue %0 %291, 0
  %tmp3091 = bitcast double %mrv_gr20.i307 to i64
  %mrv_gr22.i309 = extractvalue %0 %291, 1
  %tmp3081 = lshr i64 %tmp3091, 32
  %292 = call fastcc %0 @_Z6normal8Trigonum(%struct.Trigonum* byval %tri.i272) nounwind
  br label %bb47.i

bb.i320:                                          ; preds = %bb47.i
  %293 = sext i32 %storemerge.i329 to i64
  %294 = getelementptr inbounds [200000 x %struct.Photon]* %63, i64 0, i64 %293, i32 0, i32 0
  %295 = load float* %294, align 4
  %296 = getelementptr inbounds [200000 x %struct.Photon]* %63, i64 0, i64 %293, i32 0, i32 1
  %297 = load float* %296, align 4
  %298 = getelementptr inbounds [200000 x %struct.Photon]* %63, i64 0, i64 %293, i32 0, i32 2
  %299 = load float* %298, align 4
  %tmp3408 = bitcast float %295 to i32
  %tmp3409 = zext i32 %tmp3408 to i96
  %tmp3402 = bitcast float %297 to i32
  %tmp3403 = zext i32 %tmp3402 to i96
  %tmp3404 = shl nuw nsw i96 %tmp3403, 32
  %ins3406 = or i96 %tmp3409, %tmp3404
  %tmp3396 = bitcast float %299 to i32
  %tmp3048 = zext i96 %ins3406 to i128
  %mask3049 = and i128 %memtmp31.i.0, -79228162514264337593543950336
  %tmp3042 = zext i32 %tmp3396 to i128
  %tmp3043 = shl nuw nsw i128 %tmp3042, 64
  %mask3044 = or i128 %mask3049, %tmp3048
  %ins3045 = or i128 %mask3044, %tmp3043
  %ins3045.tr = trunc i128 %ins3045 to i96
  %tmp3354 = trunc i64 %tmp3091 to i32
  %tmp3355 = bitcast i32 %tmp3354 to float
  %300 = fsub float %295, %tmp3355
  %tmp3351 = trunc i64 %tmp3081 to i32
  %tmp3352 = bitcast i32 %tmp3351 to float
  %301 = fsub float %297, %tmp3352
  %tmp3368 = lshr i96 %ins3045.tr, 64
  %tmp3369 = trunc i96 %tmp3368 to i32
  %tmp3370 = bitcast i32 %tmp3369 to float
  %302 = fsub float %tmp3370, %mrv_gr22.i309
  %303 = fmul float %300, %300
  %304 = fmul float %301, %301
  %305 = fadd float %303, %304
  %306 = fmul float %302, %302
  %307 = fadd float %305, %306
  %308 = fcmp olt float %307, 2.890000e+02
  br i1 %308, label %bb45.i, label %bb46.i328

bb45.i:                                           ; preds = %bb.i320
  %309 = add nsw i32 %num_of_photons.i.1, 1
  %310 = getelementptr inbounds [200000 x %struct.Photon]* %63, i64 0, i64 %293, i32 1, i64 0
  %311 = load float* %310, align 4
  %312 = fadd float %power.i.0.1, %311
  %313 = getelementptr inbounds [200000 x %struct.Photon]* %63, i64 0, i64 %293, i32 1, i64 1
  %314 = load float* %313, align 4
  %315 = fadd float %power.i.1.1, %314
  %316 = getelementptr inbounds [200000 x %struct.Photon]* %63, i64 0, i64 %293, i32 1, i64 2
  %317 = load float* %316, align 4
  %318 = fadd float %power.i.2.1, %317
  %319 = icmp sgt i32 %309, 10
  br i1 %319, label %bb49.i, label %bb46.i328

bb46.i328:                                        ; preds = %bb45.i, %bb.i320
  %power.i.0.0 = phi float [ %312, %bb45.i ], [ %power.i.0.1, %bb.i320 ]
  %power.i.1.0 = phi float [ %315, %bb45.i ], [ %power.i.1.1, %bb.i320 ]
  %power.i.2.0 = phi float [ %318, %bb45.i ], [ %power.i.2.1, %bb.i320 ]
  %num_of_photons.i.0 = phi i32 [ %309, %bb45.i ], [ %num_of_photons.i.1, %bb.i320 ]
  %320 = add nsw i32 %storemerge.i329, 1
  br label %bb47.i

bb47.i:                                           ; preds = %bb46.i328, %invcont121
  %power.i.0.1 = phi float [ 0.000000e+00, %invcont121 ], [ %power.i.0.0, %bb46.i328 ]
  %power.i.1.1 = phi float [ 0.000000e+00, %invcont121 ], [ %power.i.1.0, %bb46.i328 ]
  %power.i.2.1 = phi float [ 0.000000e+00, %invcont121 ], [ %power.i.2.0, %bb46.i328 ]
  %memtmp31.i.0 = phi i128 [ %memtmp31.i.3, %invcont121 ], [ %ins3045, %bb46.i328 ]
  %num_of_photons.i.1 = phi i32 [ 0, %invcont121 ], [ %num_of_photons.i.0, %bb46.i328 ]
  %storemerge.i329 = phi i32 [ 0, %invcont121 ], [ %320, %bb46.i328 ]
  %321 = icmp slt i32 %storemerge.i329, %count.3
  br i1 %321, label %bb.i320, label %bb48.i

bb48.i:                                           ; preds = %bb47.i
  %322 = icmp eq i32 %num_of_photons.i.1, 0
  br i1 %322, label %invcont146, label %bb49.i

bb49.i:                                           ; preds = %bb48.i, %bb45.i
  %power.i.0.2 = phi float [ %power.i.0.1, %bb48.i ], [ %312, %bb45.i ]
  %power.i.1.2 = phi float [ %power.i.1.1, %bb48.i ], [ %315, %bb45.i ]
  %power.i.2.2 = phi float [ %power.i.2.1, %bb48.i ], [ %318, %bb45.i ]
  %memtmp31.i.1 = phi i128 [ %memtmp31.i.0, %bb48.i ], [ %ins3045, %bb45.i ]
  %num_of_photons.i.2 = phi i32 [ %num_of_photons.i.1, %bb48.i ], [ %309, %bb45.i ]
  %323 = sitofp i32 %num_of_photons.i.2 to float
  %324 = fdiv float %power.i.0.2, %323
  %325 = fdiv float %power.i.1.2, %323
  %326 = fdiv float %power.i.2.2, %323
  store float %324, float* %212, align 8
  store float %325, float* %213, align 4
  store float %326, float* %214, align 8
  %327 = load float* %215, align 8
  %328 = load float* %216, align 4
  %329 = load float* %217, align 8
  %tmp3341 = bitcast float %327 to i32
  %tmp3342 = zext i32 %tmp3341 to i96
  %tmp3335 = bitcast float %328 to i32
  %tmp3336 = zext i32 %tmp3335 to i96
  %tmp3337 = shl nuw nsw i96 %tmp3336, 32
  %ins3339 = or i96 %tmp3342, %tmp3337
  %tmp3329 = bitcast float %329 to i32
  %tmp3296 = zext i96 %ins3339 to i128
  %mask3297 = and i128 %memtmp.i.i261.1, -79228162514264337593543950336
  %tmp3290 = zext i32 %tmp3329 to i128
  %tmp3291 = shl nuw nsw i128 %tmp3290, 64
  %mask3292 = or i128 %mask3297, %tmp3296
  %ins3293 = or i128 %mask3292, %tmp3291
  %tmp3318 = bitcast float %327 to i32
  %tmp3319 = zext i32 %tmp3318 to i96
  %tmp3312 = bitcast float %328 to i32
  %tmp3313 = zext i32 %tmp3312 to i96
  %tmp3314 = shl nuw nsw i96 %tmp3313, 32
  %ins3316 = or i96 %tmp3319, %tmp3314
  %tmp3026 = zext i96 %ins3316 to i128
  %mask3027 = and i128 %memtmp51.i.1, -79228162514264337593543950336
  %tmp3021 = and i128 %ins3293, 79228162495817593519834398720
  %mask3022 = or i128 %mask3027, %tmp3026
  %ins3023 = or i128 %mask3022, %tmp3021
  %tmp3250 = bitcast float %327 to i32
  %tmp3251 = zext i32 %tmp3250 to i64
  %tmp3244 = bitcast float %328 to i32
  %tmp3245 = zext i32 %tmp3244 to i64
  %tmp3246 = shl nuw i64 %tmp3245, 32
  %ins3248 = or i64 %tmp3251, %tmp3246
  %tmp3008 = lshr i128 %ins3023, 64
  %tmp3009 = trunc i128 %tmp3008 to i32
  %tmp3010 = bitcast i32 %tmp3009 to float
  %tmp3236 = bitcast i64 %ins3248 to double
  %330 = call fastcc %0 @_ZN5Color5timesES_(%struct.Color* %light.i280, double %tmp3236, float %tmp3010) nounwind
  %mrv_gr63.i = extractvalue %0 %330, 0
  %tmp3003 = bitcast double %mrv_gr63.i to i64
  %mrv_gr65.i = extractvalue %0 %330, 1
  %tmp2990 = trunc i64 %tmp3003 to i32
  %tmp2991 = bitcast i32 %tmp2990 to float
  store float %tmp2991, float* %212, align 8
  %tmp2993 = lshr i64 %tmp3003, 32
  %tmp2994 = trunc i64 %tmp2993 to i32
  %tmp2995 = bitcast i32 %tmp2994 to float
  store float %tmp2995, float* %213, align 4
  store float %mrv_gr65.i, float* %214, align 8
  %phitmp3600 = and i64 %tmp3003, -4294967296
  %phitmp3683 = and i64 %tmp3003, 4294967295
  br label %invcont146

invcont146:                                       ; preds = %bb49.i, %bb48.i
  %.23256.0 = phi float [ %mrv_gr65.i, %bb49.i ], [ 0.000000e+00, %bb48.i ]
  %.13255.0 = phi i64 [ %phitmp3600, %bb49.i ], [ 0, %bb48.i ]
  %.03254.0 = phi i64 [ %phitmp3683, %bb49.i ], [ 0, %bb48.i ]
  %memtmp51.i.0 = phi i128 [ %ins3023, %bb49.i ], [ %memtmp51.i.1, %bb48.i ]
  %memtmp31.i.2 = phi i128 [ %memtmp31.i.1, %bb49.i ], [ %memtmp31.i.0, %bb48.i ]
  %memtmp.i.i261.0 = phi i128 [ %ins3293, %bb49.i ], [ %memtmp.i.i261.1, %bb48.i ]
  %mask997 = or i64 %.03254.0, %.13255.0
  %tmp992 = bitcast i64 %mask997 to double
  %331 = call fastcc %0 @_ZN5Color3addES_(%struct.Color* %result, double %tmp992, float %.23256.0)
  %mrv_gr149 = extractvalue %0 %331, 0
  %tmp381 = bitcast double %mrv_gr149 to i64
  %mrv_gr151 = extractvalue %0 %331, 1
  %tmp371 = trunc i64 %tmp381 to i32
  %tmp372 = bitcast i32 %tmp371 to float
  store float %tmp372, float* %14, align 8
  %tmp374 = lshr i64 %tmp381, 32
  %tmp375 = trunc i64 %tmp374 to i32
  %tmp376 = bitcast i32 %tmp375 to float
  store float %tmp376, float* %15, align 4
  store float %mrv_gr151, float* %16, align 8
  %val154 = load double* %elt153, align 8
  %tmp1053 = bitcast double %val154 to i64
  %tmp1044 = trunc i64 %tmp1053 to i32
  %tmp1045 = bitcast i32 %tmp1044 to float
  %332 = fcmp olt float %tmp1045, 0.000000e+00
  br i1 %332, label %bb5.i, label %bb1.i

bb1.i:                                            ; preds = %invcont146
  %333 = fcmp ogt float %tmp1045, 1.000000e+00
  br i1 %333, label %bb5.i, label %bb4.i

bb4.i:                                            ; preds = %bb1.i
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb1.i, %invcont146
  %r.i.0 = phi float [ %tmp1045, %bb4.i ], [ 0.000000e+00, %invcont146 ], [ 1.000000e+00, %bb1.i ]
  %334 = fcmp olt float %mrv_gr151, 0.000000e+00
  br i1 %334, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i
  %335 = fcmp ogt float %mrv_gr151, 1.000000e+00
  br i1 %335, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i
  %b.i.0 = phi float [ %mrv_gr151, %bb11.i ], [ 0.000000e+00, %bb5.i ], [ 1.000000e+00, %bb8.i ]
  %tmp1022 = lshr i64 %tmp1053, 32
  %tmp1023 = trunc i64 %tmp1022 to i32
  %tmp1024 = bitcast i32 %tmp1023 to float
  %336 = fcmp olt float %tmp1024, 0.000000e+00
  br i1 %336, label %invcont158, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %337 = fcmp ogt float %tmp1024, 1.000000e+00
  br i1 %337, label %invcont158, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %invcont158

invcont158:                                       ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.i.0 = phi float [ %tmp1024, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %338 = mul nsw i32 %5, %218
  %339 = add nsw i32 %338, %219
  %340 = mul nsw i32 %339, 3
  %341 = add nsw i32 %7, %340
  call void @llvm.trax.storef(float %r.i.0, i32 %341, i32 0) nounwind
  call void @llvm.trax.storef(float %g.i.0, i32 %341, i32 1) nounwind
  call void @llvm.trax.storef(float %b.i.0, i32 %341, i32 2) nounwind
  %342 = call i32 @llvm.trax.atominc(i32 0)
  br label %bb159

bb159:                                            ; preds = %invcont158, %invcont106
  %memtmp116.i.1 = phi i128 [ undef, %invcont106 ], [ %memtmp116.i.0, %invcont158 ]
  %memtmp99.i.2 = phi i128 [ undef, %invcont106 ], [ %memtmp99.i.1, %invcont158 ]
  %memtmp54.i.1 = phi i128 [ undef, %invcont106 ], [ %memtmp54.i.0, %invcont158 ]
  %memtmp47.i.2 = phi i128 [ undef, %invcont106 ], [ %memtmp47.i.1, %invcont158 ]
  %memtmp30.i.1 = phi i128 [ undef, %invcont106 ], [ %memtmp30.i.0, %invcont158 ]
  %memtmp10.i209.1 = phi i128 [ undef, %invcont106 ], [ %memtmp10.i209.0, %invcont158 ]
  %memtmp4.i208.1 = phi i128 [ undef, %invcont106 ], [ %memtmp4.i208.0, %invcont158 ]
  %memtmp.i207.1 = phi i128 [ undef, %invcont106 ], [ %memtmp.i207.0, %invcont158 ]
  %memtmp.i.i.1 = phi i128 [ undef, %invcont106 ], [ %memtmp.i.i.0, %invcont158 ]
  %memtmp51.i.1 = phi i128 [ undef, %invcont106 ], [ %memtmp51.i.0, %invcont158 ]
  %memtmp31.i.3 = phi i128 [ undef, %invcont106 ], [ %memtmp31.i.2, %invcont158 ]
  %memtmp.i.i261.1 = phi i128 [ undef, %invcont106 ], [ %memtmp.i.i261.0, %invcont158 ]
  %foo.0 = phi i32 [ 0, %invcont106 ], [ %240, %invcont158 ]
  %storemerge2 = phi i32 [ %155, %invcont106 ], [ %342, %invcont158 ]
  %343 = icmp sgt i32 %156, %storemerge2
  br i1 %343, label %invcont116, label %return

return:                                           ; preds = %bb159
  ret i32 0
}

declare i32 @llvm.trax.atominc(i32) nounwind

declare void @llvm.trax.printf(float) nounwind

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
