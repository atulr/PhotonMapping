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
  %tri.i303 = alloca %struct.Trigonum, align 8
  %light.i311 = alloca %struct.Color, align 8
  %ray_to_light_source15.i = alloca %struct.Box, align 8
  %1 = alloca %struct.Color, align 8
  %2 = alloca %struct.Color, align 8
  %3 = alloca %struct.Color, align 8
  %light.i = alloca %struct.Color, align 8
  %tri.i = alloca %struct.Trigonum, align 8
  %L.i = alloca %struct.Color, align 8
  %hit_record116214 = alloca %struct.HitRecord, align 8
  %4 = alloca %struct.Color, align 8
  %V.i = alloca %struct.Color, align 8
  %ln.i = alloca %struct.Color, align 8
  %5 = alloca %struct.Color, align 8
  %direction.i = alloca %struct.Color, align 8
  %result = alloca %struct.Color, align 8
  %camera = alloca %struct.PinHoleCamera, align 8
  %ray = alloca %struct.Box, align 8
  %map = alloca %struct.PhotonMap, align 8
  %bvh = alloca %struct.BVH, align 8
  %hit_record = alloca %struct.HitRecord, align 8
  %random_ray = alloca %struct.Box, align 8
  %hit_record116 = alloca %struct.HitRecord, align 8
  %6 = call i32 @llvm.trax.loadi(i32 0, i32 1)
  %7 = call i32 @llvm.trax.loadi(i32 0, i32 4)
  %8 = call i32 @llvm.trax.loadi(i32 0, i32 7) nounwind
  %9 = call float @llvm.trax.loadf(i32 0, i32 2)
  %10 = call float @llvm.trax.loadf(i32 0, i32 5)
  %11 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %12 = call float @llvm.trax.loadf(i32 %11, i32 0) nounwind
  %13 = call float @llvm.trax.loadf(i32 %11, i32 1) nounwind
  %14 = call float @llvm.trax.loadf(i32 %11, i32 2) nounwind
  %tmp971 = bitcast float %13 to i32
  %tmp972 = zext i32 %tmp971 to i96
  %15 = getelementptr inbounds %struct.Color* %result, i64 0, i32 0
  store float 0.000000e+00, float* %15, align 8
  %16 = getelementptr inbounds %struct.Color* %result, i64 0, i32 1
  store float 0.000000e+00, float* %16, align 4
  %17 = getelementptr inbounds %struct.Color* %result, i64 0, i32 2
  store float 0.000000e+00, float* %17, align 8
  %18 = call i32 @llvm.trax.loadi(i32 0, i32 10)
  %19 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 0, i32 0
  %20 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 1, i32 0
  %21 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 1, i32 1
  %22 = bitcast %struct.PinHoleCamera* %camera to i8*
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %21, align 4
  %23 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %23, align 4
  %24 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 2, i32 0
  store float 0.000000e+00, float* %24, align 8
  %25 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 2, i32 1
  store float 0.000000e+00, float* %25, align 4
  %26 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 2, i32 2
  store float 0.000000e+00, float* %26, align 8
  %27 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 3
  %28 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 3, i32 0
  store float 0.000000e+00, float* %28, align 4
  %29 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 3, i32 1
  store float 0.000000e+00, float* %29, align 4
  %30 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 3, i32 2
  store float 0.000000e+00, float* %30, align 4
  %31 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 4
  %32 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 4, i32 0
  store float 0.000000e+00, float* %32, align 8
  %33 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 4, i32 1
  store float 0.000000e+00, float* %33, align 4
  %34 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 4, i32 2
  store float 0.000000e+00, float* %34, align 8
  %35 = call float @llvm.trax.loadf(i32 %18, i32 0) nounwind
  %36 = call float @llvm.trax.loadf(i32 %18, i32 1) nounwind
  %37 = call float @llvm.trax.loadf(i32 %18, i32 2) nounwind
  store float %35, float* %19, align 8
  %38 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 0, i32 1
  store float %36, float* %38, align 4
  %39 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 0, i32 2
  store float %37, float* %39, align 8
  %40 = add nsw i32 %18, 9
  %41 = call float @llvm.trax.loadf(i32 %40, i32 0) nounwind
  %42 = call float @llvm.trax.loadf(i32 %40, i32 1) nounwind
  %43 = call float @llvm.trax.loadf(i32 %40, i32 2) nounwind
  store float %41, float* %24, align 8
  %44 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 2, i32 1
  store float %42, float* %44, align 4
  %45 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 2, i32 2
  store float %43, float* %45, align 8
  %46 = add nsw i32 %18, 12
  %47 = call float @llvm.trax.loadf(i32 %46, i32 0) nounwind
  %48 = call float @llvm.trax.loadf(i32 %46, i32 1) nounwind
  %49 = call float @llvm.trax.loadf(i32 %46, i32 2) nounwind
  store float %47, float* %20, align 4
  %50 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 1, i32 1
  store float %48, float* %50, align 4
  %51 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 1, i32 2
  store float %49, float* %51, align 4
  %52 = add nsw i32 %18, 15
  %53 = call float @llvm.trax.loadf(i32 %52, i32 0) nounwind
  %54 = call float @llvm.trax.loadf(i32 %52, i32 1) nounwind
  %55 = call float @llvm.trax.loadf(i32 %52, i32 2) nounwind
  store float %53, float* %28, align 4
  %56 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 3, i32 1
  store float %54, float* %56, align 4
  %57 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 3, i32 2
  store float %55, float* %57, align 4
  %58 = add nsw i32 %18, 18
  %59 = call float @llvm.trax.loadf(i32 %58, i32 0) nounwind
  %60 = call float @llvm.trax.loadf(i32 %58, i32 1) nounwind
  %61 = call float @llvm.trax.loadf(i32 %58, i32 2) nounwind
  store float %59, float* %32, align 8
  %62 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 4, i32 1
  store float %60, float* %62, align 4
  %63 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 4, i32 2
  store float %61, float* %63, align 8
  %64 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 6
  store float 0x3FC8D4FE00000000, float* %64, align 8
  %65 = getelementptr inbounds %struct.PinHoleCamera* %camera, i64 0, i32 5
  store float 1.000000e+00, float* %65, align 4
  %66 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %67 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %68 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %69 = bitcast %struct.Box* %ray to i8*
  call void @llvm.memset.p0i8.i64(i8* %69, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %68, align 4
  %70 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  store float 0.000000e+00, float* %70, align 4
  %71 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 0, i64 0
  br label %bb1.i38

bb.i37:                                           ; preds = %bb1.i38
  %72 = getelementptr inbounds %struct.Photon* %.0399, i64 0, i32 0, i32 0
  store float 0.000000e+00, float* %72, align 4
  %73 = getelementptr inbounds %struct.Photon* %.0399, i64 0, i32 0, i32 1
  store float 0.000000e+00, float* %73, align 4
  %74 = getelementptr inbounds %struct.Photon* %.0399, i64 0, i32 0, i32 2
  store float 0.000000e+00, float* %74, align 4
  %75 = getelementptr inbounds %struct.Photon* %.0399, i64 0, i32 1, i64 0
  store float 1.000000e+00, float* %75, align 4
  %76 = getelementptr inbounds %struct.Photon* %.0399, i64 0, i32 1, i64 1
  store float 1.000000e+00, float* %76, align 4
  %77 = getelementptr inbounds %struct.Photon* %.0399, i64 0, i32 1, i64 2
  store float 1.000000e+00, float* %77, align 4
  %78 = getelementptr inbounds %struct.Photon* %.0399, i64 0, i32 2
  store i8 0, i8* %78, align 4
  %79 = getelementptr inbounds %struct.Photon* %.0399, i64 1
  %80 = add nsw i64 %storemerge.i, -1
  br label %bb1.i38

bb1.i38:                                          ; preds = %bb.i37, %invcont8
  %.0399 = phi %struct.Photon* [ %71, %invcont8 ], [ %79, %bb.i37 ]
  %storemerge.i = phi i64 [ 4999, %invcont8 ], [ %80, %bb.i37 ]
  %81 = icmp eq i64 %storemerge.i, -1
  br i1 %81, label %invcont11, label %bb.i37

invcont11:                                        ; preds = %bb1.i38
  %82 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 2
  store float 1.000000e+07, float* %82, align 8
  %83 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 1
  store float 1.000000e+07, float* %83, align 4
  %84 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 3, i64 0
  store float 1.000000e+07, float* %84, align 8
  %85 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 2
  store float -1.000000e+07, float* %85, align 4
  %86 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 1
  store float -1.000000e+07, float* %86, align 4
  %87 = getelementptr inbounds %struct.PhotonMap* %map, i64 0, i32 4, i64 0
  store float -1.000000e+07, float* %87, align 4
  %88 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %89 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %90 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %91 = getelementptr inbounds %struct.BVH* %bvh, i64 0, i32 0
  store i32 %90, i32* %91, align 8
  %92 = alloca [250000 x %struct.Photon], align 1
  %.sub = getelementptr inbounds [250000 x %struct.Photon]* %92, i64 0, i64 0
  br label %bb12

bb:                                               ; preds = %bb12
  %93 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 0, i32 0
  store float 0.000000e+00, float* %93, align 4
  %94 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 0, i32 1
  store float 0.000000e+00, float* %94, align 4
  %95 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 0, i32 2
  store float 0.000000e+00, float* %95, align 4
  %96 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i64 0
  store float 1.000000e+00, float* %96, align 4
  %97 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i64 1
  store float 1.000000e+00, float* %97, align 4
  %98 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 1, i64 2
  store float 1.000000e+00, float* %98, align 4
  %99 = getelementptr inbounds %struct.Photon* %.0, i64 0, i32 2
  store i8 0, i8* %99, align 4
  %100 = getelementptr inbounds %struct.Photon* %.0, i64 1
  %101 = add nsw i64 %storemerge, -1
  br label %bb12

bb12:                                             ; preds = %bb, %invcont11
  %.0 = phi %struct.Photon* [ %.sub, %invcont11 ], [ %100, %bb ]
  %storemerge = phi i64 [ 249999, %invcont11 ], [ %101, %bb ]
  %102 = icmp eq i64 %storemerge, -1
  br i1 %102, label %invcont15, label %bb

invcont15:                                        ; preds = %bb12
  %103 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %104 = call float @llvm.trax.loadf(i32 %103, i32 0) nounwind
  %105 = call float @llvm.trax.loadf(i32 %103, i32 1) nounwind
  %106 = call float @llvm.trax.loadf(i32 %103, i32 2) nounwind
  %tmp705 = bitcast float %104 to i32
  %tmp706 = zext i32 %tmp705 to i64
  %tmp699 = bitcast float %105 to i32
  %tmp700 = zext i32 %tmp699 to i64
  %tmp701 = shl nuw i64 %tmp700, 32
  %ins703 = or i64 %tmp706, %tmp701
  %tmp693 = bitcast float %106 to i32
  %107 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 0
  %108 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 1
  %109 = getelementptr inbounds %struct.Color* %direction.i, i64 0, i32 2
  %110 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 0
  %111 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 1
  %112 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 0, i32 2
  %113 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 0
  %114 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 1
  %115 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 1, i32 2
  %116 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 0
  %117 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 1
  %118 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 2, i32 2
  %119 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %120 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %121 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  %122 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 0
  %123 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 0, i32 0
  %124 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 0
  %125 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 1
  %126 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 2
  %127 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 0, i32 1
  %128 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 0, i32 2
  %129 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 1
  %130 = getelementptr inbounds %struct.Box* %random_ray, i64 0, i32 1, i32 2
  %131 = getelementptr inbounds %struct.Color* %5, i64 0, i32 0
  %132 = getelementptr inbounds %struct.Color* %5, i64 0, i32 1
  %133 = getelementptr inbounds %struct.Color* %5, i64 0, i32 2
  %.4743746.0 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 0
  %.4743746.1 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 1
  %.4743746.2 = getelementptr inbounds %struct.HitRecord* %hit_record, i64 0, i32 1, i32 4, i32 0, i32 2
  br label %bb106

bb23:                                             ; preds = %bb103
  %134 = add nsw i32 %bounces.0, 1
  br label %bb.i52

bb.i52:                                           ; preds = %bb.i52, %bb23
  %135 = call float @llvm.trax.rand() nounwind
  %136 = fadd float %135, -5.000000e-01
  %137 = fmul float %136, 2.000000e+00
  %138 = call float @llvm.trax.rand() nounwind
  %139 = fadd float %138, -5.000000e-01
  %140 = fmul float %139, 2.000000e+00
  %141 = call float @llvm.trax.rand() nounwind
  %142 = fadd float %141, -5.000000e-01
  %143 = fmul float %142, 2.000000e+00
  %144 = fmul float %137, %137
  %145 = fmul float %140, %140
  %146 = fadd float %144, %145
  %147 = fmul float %143, %143
  %148 = fadd float %146, %147
  %149 = fcmp ogt float %148, 1.000000e+00
  br i1 %149, label %bb.i52, label %invcont30

invcont30:                                        ; preds = %bb.i52
  store float %137, float* %107, align 8
  store float %140, float* %108, align 4
  store float %143, float* %109, align 8
  %150 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %direction.i) nounwind
  %mrv_gr.i54 = extractvalue %0 %150, 0
  %tmp1335 = bitcast double %mrv_gr.i54 to i64
  %mrv_gr3.i = extractvalue %0 %150, 1
  %tmp1329 = bitcast float %mrv_gr3.i to i32
  %tmp1325 = lshr i64 %tmp1335, 32
  %tmp1359 = zext i64 %tmp1335 to i96
  %tmp1353 = zext i64 %tmp1325 to i96
  %tmp1354 = shl nuw nsw i96 %tmp1353, 32
  %tmp1359.masked = and i96 %tmp1359, 4294967295
  %ins1356 = or i96 %tmp1359.masked, %tmp1354
  %tmp614 = zext i96 %ins1356 to i128
  %mask615 = and i128 %memtmp31.0, -79228162514264337593543950336
  %tmp608 = zext i32 %tmp1329 to i128
  %tmp609 = shl nuw nsw i128 %tmp608, 64
  %mask610 = or i128 %mask615, %tmp614
  %ins611 = or i128 %mask610, %tmp609
  %ins611.tr = trunc i128 %ins611 to i96
  %151 = fmul float %surface_color.0.2, 0x3FE6666660000000
  %152 = fmul float %surface_color.1.2, 0x3FE6666660000000
  %153 = fmul float %surface_color.2.2, 0x3FE6666660000000
  store float 0.000000e+00, float* %110, align 4
  store float 0.000000e+00, float* %111, align 4
  store float 0.000000e+00, float* %112, align 4
  store float 0.000000e+00, float* %113, align 4
  store float 0.000000e+00, float* %114, align 4
  store float 0.000000e+00, float* %115, align 4
  store float 0.000000e+00, float* %116, align 4
  store float 0.000000e+00, float* %117, align 4
  store float 0.000000e+00, float* %118, align 4
  store float 0.000000e+00, float* %119, align 4
  store float 0.000000e+00, float* %120, align 4
  store float 0.000000e+00, float* %121, align 4
  store float 1.000000e+10, float* %122, align 8
  %154 = bitcast %struct.Box* %random_ray to i8*
  call void @llvm.memset.p0i8.i64(i8* %154, i8 0, i64 16, i32 8, i1 false)
  store float 0.000000e+00, float* %125, align 4
  store float 0.000000e+00, float* %126, align 4
  %tmp1394 = bitcast i32 %ray_origin.1.off0 to float
  store float %tmp1394, float* %123, align 8
  %tmp1391 = bitcast i32 %ray_origin.1.off32 to float
  store float %tmp1391, float* %127, align 4
  %tmp1387 = bitcast i32 %ray_origin.1.off64 to float
  store float %tmp1387, float* %128, align 8
  %tmp1371 = trunc i64 %tmp1335 to i32
  %tmp1372 = bitcast i32 %tmp1371 to float
  store float %tmp1372, float* %124, align 4
  %tmp1368 = trunc i64 %tmp1325 to i32
  %tmp1369 = bitcast i32 %tmp1368 to float
  store float %tmp1369, float* %129, align 4
  %tmp1363 = lshr i96 %ins611.tr, 64
  %tmp1364 = trunc i96 %tmp1363 to i32
  %tmp1365 = bitcast i32 %tmp1364 to float
  store float %tmp1365, float* %130, align 4
  %155 = icmp sgt i32 %bounces.0, 0
  br i1 %155, label %bb43, label %invcont48

bb43:                                             ; preds = %invcont30
  %tmp637 = zext i64 %tmp1325 to i96
  %tmp1524 = zext i64 %tmp1335 to i96
  %tmp1519 = shl nuw nsw i96 %tmp637, 32
  %tmp1524.masked = and i96 %tmp1524, 4294967295
  %ins1521 = or i96 %tmp1524.masked, %tmp1519
  %tmp1477 = zext i96 %ins1521 to i128
  %mask1478 = and i128 %memtmp.i78.1, -79228162514264337593543950336
  %tmp1471 = zext i96 %tmp1363 to i128
  %tmp1472 = shl nuw nsw i128 %tmp1471, 64
  %mask1473 = or i128 %mask1478, %tmp1477
  %ins1474 = or i128 %mask1473, %tmp1472
  %ins1474.tr = trunc i128 %ins1474 to i96
  %tmp1441 = trunc i64 %ray_origin.1.off03611 to i32
  %tmp1442 = bitcast i32 %tmp1441 to float
  store float %tmp1442, float* %131, align 8
  %tmp1444 = lshr i64 %ray_origin.1.off03611, 32
  %tmp1445 = trunc i64 %tmp1444 to i32
  %tmp1446 = bitcast i32 %tmp1445 to float
  store float %tmp1446, float* %132, align 4
  %tmp1439 = bitcast i32 %ray_origin.1.off64 to float
  store float %tmp1439, float* %133, align 8
  %tmp1481 = lshr i96 %ins1474.tr, 64
  %tmp1482 = trunc i96 %tmp1481 to i32
  %tmp1483 = bitcast i32 %tmp1482 to float
  %156 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %5, double %mrv_gr.i54, float %tmp1483) nounwind
  %mrv_gr14.i98 = extractvalue %0 %156, 0
  %tmp1432 = bitcast double %mrv_gr14.i98 to i64
  %mrv_gr16.i = extractvalue %0 %156, 1
  %tmp1419 = trunc i64 %tmp1432 to i32
  %tmp1420 = bitcast i32 %tmp1419 to float
  %tmp1422 = lshr i64 %tmp1432, 32
  %tmp1423 = trunc i64 %tmp1422 to i32
  %tmp1424 = bitcast i32 %tmp1423 to float
  %157 = fcmp ule float %tmp1420, 9.000000e+01
  %158 = fcmp uge float %tmp1420, 3.000000e+02
  %or.cond = or i1 %157, %158
  %159 = fcmp ule float %tmp1424, 8.000000e+01
  %or.cond3653 = or i1 %or.cond, %159
  %160 = fcmp uge float %tmp1424, 3.000000e+02
  %or.cond3654 = or i1 %or.cond3653, %160
  %161 = fcmp ule float %mrv_gr16.i, 3.000000e+02
  %or.cond3655 = or i1 %or.cond3654, %161
  %162 = fcmp uge float %mrv_gr16.i, 3.500000e+02
  %or.cond3656 = or i1 %or.cond3655, %162
  br i1 %or.cond3656, label %invcont48, label %invcont46

invcont46:                                        ; preds = %bb43
  %163 = sitofp i32 %bar.1 to float
  %164 = add nsw i32 %bar.1, 1
  call void @llvm.trax.printf(float %163)
  br label %invcont48

invcont48:                                        ; preds = %invcont46, %bb43, %invcont30
  %memtmp.i78.0 = phi i128 [ %ins1474, %bb43 ], [ %ins1474, %invcont46 ], [ %memtmp.i78.1, %invcont30 ]
  %bar.0 = phi i32 [ %bar.1, %bb43 ], [ %164, %invcont46 ], [ %bar.1, %invcont30 ]
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record, %struct.Box* %random_ray)
  %165 = load float* %122, align 8
  %166 = fcmp olt float %165, 1.000000e+10
  br i1 %166, label %invcont78, label %bb103

invcont78:                                        ; preds = %invcont48
  %tmp747 = load float* %.4743746.0, align 4
  %tmp748 = load float* %.4743746.1, align 4
  %tmp749 = load float* %.4743746.2, align 4
  %tmp1614 = bitcast float %tmp747 to i32
  %tmp1615 = zext i32 %tmp1614 to i96
  %tmp1608 = bitcast float %tmp748 to i32
  %tmp1609 = zext i32 %tmp1608 to i96
  %tmp1610 = shl nuw nsw i96 %tmp1609, 32
  %tmp1602 = bitcast float %tmp749 to i32
  %tmp1563 = zext i32 %tmp1602 to i128
  %tmp1564 = shl nuw nsw i128 %tmp1563, 64
  %ins1748 = or i96 %tmp1615, %tmp1610
  %tmp1705 = zext i96 %ins1748 to i128
  %mask1706 = and i128 %memtmp.i155.1, -79228162514264337593543950336
  %mask1701 = or i128 %mask1706, %tmp1705
  %ins1702 = or i128 %mask1701, %tmp1564
  %tmp1727 = bitcast float %tmp747 to i32
  %tmp1728 = zext i32 %tmp1727 to i96
  %tmp1721 = bitcast float %tmp748 to i32
  %tmp1722 = zext i32 %tmp1721 to i96
  %tmp1723 = shl nuw nsw i96 %tmp1722, 32
  %ins1725 = or i96 %tmp1728, %tmp1723
  %tmp548 = zext i96 %ins1725 to i128
  %mask549 = and i128 %memtmp72.1, -79228162514264337593543950336
  %tmp543 = and i128 %ins1702, 79228162495817593519834398720
  %mask544 = or i128 %mask549, %tmp548
  %ins545 = or i128 %mask544, %tmp543
  %tmp530 = lshr i128 %ins545, 64
  %tmp531 = trunc i128 %tmp530 to i32
  %tmp532 = bitcast i32 %tmp531 to float
  %167 = fadd float %tmp747, %tmp748
  %168 = fadd float %167, %tmp532
  %169 = fcmp ogt float %168, 3.000000e+00
  br i1 %169, label %bb79, label %invcont92

bb79:                                             ; preds = %invcont78
  %170 = fmul float %tmp747, 0x3F50624DE0000000
  %171 = fmul float %tmp748, 0x3F50624DE0000000
  %172 = fmul float %tmp532, 0x3F50624DE0000000
  br label %invcont92

invcont92:                                        ; preds = %bb79, %invcont78
  %surface_color.0.0 = phi float [ %170, %bb79 ], [ %tmp747, %invcont78 ]
  %surface_color.1.0 = phi float [ %171, %bb79 ], [ %tmp748, %invcont78 ]
  %surface_color.2.0 = phi float [ %172, %bb79 ], [ %tmp532, %invcont78 ]
  %173 = call fastcc %0 @_ZN9HitRecord12hit_positionE3Ray(float %165, %struct.Box* byval %random_ray)
  %mrv_gr84 = extractvalue %0 %173, 0
  %tmp525 = bitcast double %mrv_gr84 to i64
  %mrv_gr86 = extractvalue %0 %173, 1
  %tmp519 = bitcast float %mrv_gr86 to i32
  br i1 %155, label %bb93, label %invcont95

bb93:                                             ; preds = %invcont92
  %tmp515 = lshr i64 %tmp525, 32
  %tmp1760 = trunc i64 %tmp515 to i32
  %tmp1763 = trunc i64 %tmp525 to i32
  %tmp1761 = bitcast i32 %tmp1760 to float
  %tmp1764 = bitcast i32 %tmp1763 to float
  %174 = sext i32 %count.2 to i64
  %175 = getelementptr inbounds [250000 x %struct.Photon]* %92, i64 0, i64 %174, i32 0, i32 0
  store float %tmp1764, float* %175, align 4
  %176 = getelementptr inbounds [250000 x %struct.Photon]* %92, i64 0, i64 %174, i32 0, i32 1
  store float %tmp1761, float* %176, align 4
  %177 = getelementptr inbounds [250000 x %struct.Photon]* %92, i64 0, i64 %174, i32 0, i32 2
  store float %mrv_gr86, float* %177, align 4
  %178 = getelementptr inbounds [250000 x %struct.Photon]* %92, i64 0, i64 %174, i32 1, i64 0
  store float %151, float* %178, align 4
  %179 = getelementptr inbounds [250000 x %struct.Photon]* %92, i64 0, i64 %174, i32 1, i64 1
  store float %152, float* %179, align 4
  %180 = getelementptr inbounds [250000 x %struct.Photon]* %92, i64 0, i64 %174, i32 1, i64 2
  store float %153, float* %180, align 4
  %181 = getelementptr inbounds [250000 x %struct.Photon]* %92, i64 0, i64 %174, i32 2
  store i8 0, i8* %181, align 4
  %182 = add nsw i32 %count.2, 1
  br label %invcont95

invcont95:                                        ; preds = %bb93, %invcont92
  %count.0 = phi i32 [ %182, %bb93 ], [ %count.2, %invcont92 ]
  %tmp493 = lshr i64 %tmp525, 32
  %extract.t3623 = trunc i64 %tmp525 to i32
  %extract.t3636 = trunc i64 %tmp493 to i32
  br label %bb103

bb103:                                            ; preds = %bb106, %invcont95, %invcont48
  %surface_color.0.2 = phi float [ 0.000000e+00, %bb106 ], [ %surface_color.0.0, %invcont95 ], [ %surface_color.0.2, %invcont48 ]
  %surface_color.1.2 = phi float [ 0.000000e+00, %bb106 ], [ %surface_color.1.0, %invcont95 ], [ %surface_color.1.2, %invcont48 ]
  %surface_color.2.2 = phi float [ 0.000000e+00, %bb106 ], [ %surface_color.2.0, %invcont95 ], [ %surface_color.2.2, %invcont48 ]
  %memtmp72.1 = phi i128 [ %memtmp72.2, %bb106 ], [ %ins545, %invcont95 ], [ %memtmp72.1, %invcont48 ]
  %memtmp31.0 = phi i128 [ %memtmp31.1, %bb106 ], [ %ins611, %invcont95 ], [ %ins611, %invcont48 ]
  %ray_origin.1.off0 = phi i32 [ %ray_origin.2.off0, %bb106 ], [ %extract.t3623, %invcont95 ], [ %ray_origin.1.off0, %invcont48 ]
  %ray_origin.1.off03611 = phi i64 [ %ray_origin.2.off03625, %bb106 ], [ %tmp525, %invcont95 ], [ %ray_origin.1.off03611, %invcont48 ]
  %ray_origin.1.off32 = phi i32 [ %ray_origin.2.off32, %bb106 ], [ %extract.t3636, %invcont95 ], [ %ray_origin.1.off32, %invcont48 ]
  %ray_origin.1.off64 = phi i32 [ %ray_origin.2.off64, %bb106 ], [ %tmp519, %invcont95 ], [ %ray_origin.1.off64, %invcont48 ]
  %memtmp.i78.1 = phi i128 [ %memtmp.i78.2, %bb106 ], [ %memtmp.i78.0, %invcont95 ], [ %memtmp.i78.0, %invcont48 ]
  %memtmp.i155.1 = phi i128 [ %memtmp.i155.2, %bb106 ], [ %ins1702, %invcont95 ], [ %memtmp.i155.1, %invcont48 ]
  %bar.1 = phi i32 [ %bar.2, %bb106 ], [ %bar.0, %invcont95 ], [ %bar.0, %invcont48 ]
  %bounces.0 = phi i32 [ 0, %bb106 ], [ %134, %invcont95 ], [ %134, %invcont48 ]
  %count.2 = phi i32 [ %count.3, %bb106 ], [ %count.0, %invcont95 ], [ %count.2, %invcont48 ]
  %183 = icmp slt i32 %bounces.0, 3
  br i1 %183, label %bb23, label %bb105

bb105:                                            ; preds = %bb103
  %184 = add nsw i32 %iterator.0, 1
  br label %bb106

bb106:                                            ; preds = %bb105, %invcont15
  %memtmp72.2 = phi i128 [ undef, %invcont15 ], [ %memtmp72.1, %bb105 ]
  %memtmp31.1 = phi i128 [ undef, %invcont15 ], [ %memtmp31.0, %bb105 ]
  %ray_origin.2.off0 = phi i32 [ %tmp705, %invcont15 ], [ %ray_origin.1.off0, %bb105 ]
  %ray_origin.2.off03625 = phi i64 [ %ins703, %invcont15 ], [ %ray_origin.1.off03611, %bb105 ]
  %ray_origin.2.off32 = phi i32 [ %tmp699, %invcont15 ], [ %ray_origin.1.off32, %bb105 ]
  %ray_origin.2.off64 = phi i32 [ %tmp693, %invcont15 ], [ %ray_origin.1.off64, %bb105 ]
  %memtmp.i78.2 = phi i128 [ undef, %invcont15 ], [ %memtmp.i78.1, %bb105 ]
  %memtmp.i155.2 = phi i128 [ undef, %invcont15 ], [ %memtmp.i155.1, %bb105 ]
  %bar.2 = phi i32 [ 0, %invcont15 ], [ %bar.1, %bb105 ]
  %count.3 = phi i32 [ 0, %invcont15 ], [ %count.2, %bb105 ]
  %iterator.0 = phi i32 [ 0, %invcont15 ], [ %184, %bb105 ]
  %185 = icmp slt i32 %iterator.0, 125000
  br i1 %185, label %bb103, label %invcont109

invcont109:                                       ; preds = %bb106
  %186 = call i32 @llvm.trax.atominc(i32 0)
  %187 = mul nsw i32 %6, %7
  %188 = sitofp i32 %6 to float
  %189 = fdiv float %188, -2.000000e+00
  %190 = sitofp i32 %7 to float
  %191 = fdiv float %190, -2.000000e+00
  %192 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 0
  %193 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 1
  %194 = getelementptr inbounds %struct.Color* %V.i, i64 0, i32 2
  %195 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 0
  %196 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 1
  %197 = getelementptr inbounds %struct.Color* %ln.i, i64 0, i32 2
  %198 = getelementptr inbounds %struct.Color* %4, i64 0, i32 0
  %199 = getelementptr inbounds %struct.Color* %4, i64 0, i32 1
  %200 = getelementptr inbounds %struct.Color* %4, i64 0, i32 2
  %elt34.i = bitcast %struct.PinHoleCamera* %camera to double*
  %201 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %202 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %203 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %204 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %205 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 0, i32 0
  %206 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 0, i32 1
  %207 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 0, i32 2
  %208 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 1, i32 0
  %209 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 1, i32 1
  %210 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 1, i32 2
  %211 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 2, i32 0
  %212 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 2, i32 1
  %213 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 2, i32 2
  %214 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 4, i32 0, i32 0
  %215 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 4, i32 0, i32 1
  %216 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 4, i32 0, i32 2
  %217 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 0
  %tmp215 = bitcast %struct.HitRecord* %hit_record116214 to i8*
  %tmp216 = bitcast %struct.HitRecord* %hit_record116 to i8*
  %ray2012.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 0
  %ray2012.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 1
  %ray2012.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 0, i32 2
  %ray.1.0 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 0
  %ray.1.1 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 1
  %ray.1.2 = getelementptr inbounds %struct.Box* %ray, i64 0, i32 1, i32 2
  %218 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 0
  %219 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 1
  %220 = getelementptr inbounds %struct.Color* %light.i, i64 0, i32 2
  %221 = getelementptr inbounds %struct.HitRecord* %hit_record116214, i64 0, i32 0
  %222 = getelementptr inbounds %struct.HitRecord* %hit_record116214, i64 0, i32 1
  %agg.result1.i.i = bitcast %struct.Trigonum* %tri.i to i8*
  %223 = bitcast %struct.Trigonum* %222 to i8*
  %224 = getelementptr inbounds %struct.Color* %3, i64 0, i32 0
  %225 = getelementptr inbounds %struct.Color* %3, i64 0, i32 1
  %226 = getelementptr inbounds %struct.Color* %3, i64 0, i32 2
  %227 = getelementptr inbounds %struct.Color* %2, i64 0, i32 0
  %228 = getelementptr inbounds %struct.Color* %2, i64 0, i32 1
  %229 = getelementptr inbounds %struct.Color* %2, i64 0, i32 2
  %tmp2786 = bitcast float %12 to i32
  %tmp2787 = zext i32 %tmp2786 to i96
  %tmp2782 = shl nuw nsw i96 %tmp972, 32
  %tmp2774 = bitcast float %14 to i32
  %tmp2186 = zext i32 %tmp2774 to i128
  %tmp2187 = shl nuw nsw i128 %tmp2186, 64
  %230 = getelementptr inbounds %struct.Color* %1, i64 0, i32 0
  %231 = getelementptr inbounds %struct.Color* %1, i64 0, i32 1
  %232 = getelementptr inbounds %struct.Color* %1, i64 0, i32 2
  %233 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 0
  %234 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 1
  %235 = getelementptr inbounds %struct.Color* %L.i, i64 0, i32 2
  %ray_to_light_source15.i2436.0 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 0, i32 0
  %ray_to_light_source15.i2436.1 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 0, i32 1
  %ray_to_light_source15.i2436.2 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 0, i32 2
  %ray_to_light_source15.i.1.0 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 1, i32 0
  %ray_to_light_source15.i.1.1 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 1, i32 1
  %ray_to_light_source15.i.1.2 = getelementptr inbounds %struct.Box* %ray_to_light_source15.i, i64 0, i32 1, i32 2
  %236 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 2
  %237 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 0, i32 0
  %238 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 0, i32 1
  %239 = getelementptr inbounds %struct.Trigonum* %tri.i, i64 0, i32 4, i32 0, i32 2
  %hit_record116.0 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 0
  %hit_record116.12935.0 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 0, i32 0
  %hit_record116.12935.1 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 0, i32 1
  %hit_record116.12935.2 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 0, i32 2
  %hit_record116.1.1.0 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 1, i32 0
  %hit_record116.1.1.1 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 1, i32 1
  %hit_record116.1.1.2 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 1, i32 2
  %hit_record116.1.2.0 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 2, i32 0
  %hit_record116.1.2.1 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 2, i32 1
  %hit_record116.1.2.2 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 2, i32 2
  %hit_record116.1.3 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 3
  %hit_record116.1.42911.0 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 4, i32 0, i32 0
  %hit_record116.1.42911.1 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 4, i32 0, i32 1
  %hit_record116.1.42911.2 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 4, i32 0, i32 2
  %hit_record116.1.4.1 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 4, i32 1
  %hit_record116.1.4.2 = getelementptr inbounds %struct.HitRecord* %hit_record116, i64 0, i32 1, i32 4, i32 2
  %tri.i3032931.0 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 0, i32 0
  %tri.i3032931.1 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 0, i32 1
  %tri.i3032931.2 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 0, i32 2
  %tri.i303.1.0 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 1, i32 0
  %tri.i303.1.1 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 1, i32 1
  %tri.i303.1.2 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 1, i32 2
  %tri.i303.2.0 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 2, i32 0
  %tri.i303.2.1 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 2, i32 1
  %tri.i303.2.2 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 2, i32 2
  %tri.i303.3 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 3
  %tri.i303.42915.0 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 4, i32 0, i32 0
  %tri.i303.42915.1 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 4, i32 0, i32 1
  %tri.i303.42915.2 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 4, i32 0, i32 2
  %tri.i303.4.1 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 4, i32 1
  %tri.i303.4.2 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 4, i32 2
  %240 = getelementptr inbounds %struct.Color* %0, i64 0, i32 0
  %241 = getelementptr inbounds %struct.Color* %0, i64 0, i32 1
  %242 = getelementptr inbounds %struct.Color* %0, i64 0, i32 2
  %243 = getelementptr inbounds %struct.Color* %light.i311, i64 0, i32 0
  %244 = getelementptr inbounds %struct.Color* %light.i311, i64 0, i32 1
  %245 = getelementptr inbounds %struct.Color* %light.i311, i64 0, i32 2
  %246 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 4, i32 0, i32 0
  %247 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 4, i32 0, i32 1
  %248 = getelementptr inbounds %struct.Trigonum* %tri.i303, i64 0, i32 4, i32 0, i32 2
  %elt155 = bitcast %struct.Color* %result to double*
  br label %bb161

invcont118:                                       ; preds = %bb161
  %249 = sdiv i32 %storemerge1, %6
  %250 = srem i32 %storemerge1, %6
  %251 = sitofp i32 %250 to float
  %252 = fadd float %251, %189
  %253 = fadd float %252, 5.000000e-01
  %254 = fmul float %253, 2.000000e+00
  %255 = fdiv float %254, %188
  %256 = sitofp i32 %249 to float
  %257 = fadd float %256, %191
  %258 = fadd float %257, 5.000000e-01
  %259 = fmul float %258, 2.000000e+00
  %260 = fdiv float %259, %190
  store float 0.000000e+00, float* %15, align 8
  store float 0.000000e+00, float* %16, align 4
  store float 0.000000e+00, float* %17, align 8
  %261 = load float* %20, align 4
  store float %261, float* %195, align 8
  %262 = load float* %50, align 4
  store float %262, float* %196, align 4
  %263 = load float* %51, align 4
  store float %263, float* %197, align 8
  %264 = call fastcc %0 @_ZN6Vector6scmultEf(%struct.Color* %31, float %260) nounwind
  %mrv_gr.i186 = extractvalue %0 %264, 0
  %mrv_gr2.i188 = extractvalue %0 %264, 1
  %265 = call fastcc %0 @_ZN6Vector6scmultEf(%struct.Color* %27, float %255) nounwind
  %mrv_gr6.i191 = extractvalue %0 %265, 0
  %tmp1860 = bitcast double %mrv_gr6.i191 to i64
  %mrv_gr8.i193 = extractvalue %0 %265, 1
  %tmp1847 = trunc i64 %tmp1860 to i32
  %tmp1848 = bitcast i32 %tmp1847 to float
  store float %tmp1848, float* %198, align 8
  %tmp1850 = lshr i64 %tmp1860, 32
  %tmp1851 = trunc i64 %tmp1850 to i32
  %tmp1852 = bitcast i32 %tmp1851 to float
  store float %tmp1852, float* %199, align 4
  store float %mrv_gr8.i193, float* %200, align 8
  %266 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %4, double %mrv_gr.i186, float %mrv_gr2.i188) nounwind
  %mrv_gr14.i199 = extractvalue %0 %266, 0
  %mrv_gr16.i201 = extractvalue %0 %266, 1
  %267 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %ln.i, double %mrv_gr14.i199, float %mrv_gr16.i201) nounwind
  %mrv_gr24.i204 = extractvalue %0 %267, 0
  %tmp1816 = bitcast double %mrv_gr24.i204 to i64
  %mrv_gr26.i206 = extractvalue %0 %267, 1
  %tmp1803 = trunc i64 %tmp1816 to i32
  %tmp1804 = bitcast i32 %tmp1803 to float
  store float %tmp1804, float* %192, align 8
  %tmp1806 = lshr i64 %tmp1816, 32
  %tmp1807 = trunc i64 %tmp1806 to i32
  %tmp1808 = bitcast i32 %tmp1807 to float
  store float %tmp1808, float* %193, align 4
  store float %mrv_gr26.i206, float* %194, align 8
  %268 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %V.i) nounwind
  %mrv_gr30.i = extractvalue %0 %268, 0
  %tmp1794 = bitcast double %mrv_gr30.i to i64
  %mrv_gr32.i = extractvalue %0 %268, 1
  %tmp1784 = lshr i64 %tmp1794, 32
  %val35.i = load double* %elt34.i, align 8
  %val37.i = load float* %39, align 8
  %tmp2002 = bitcast double %val35.i to i64
  %tmp1993 = trunc i64 %tmp2002 to i32
  %tmp1994 = bitcast i32 %tmp1993 to float
  %tmp1989 = lshr i64 %tmp2002, 32
  %tmp1990 = trunc i64 %tmp1989 to i32
  %tmp1991 = bitcast i32 %tmp1990 to float
  %tmp1971 = trunc i64 %tmp1794 to i32
  %tmp1972 = bitcast i32 %tmp1971 to float
  %tmp1968 = trunc i64 %tmp1784 to i32
  %tmp1969 = bitcast i32 %tmp1968 to float
  store float %tmp1994, float* %66, align 8
  store float %tmp1991, float* %201, align 4
  store float %val37.i, float* %202, align 8
  store float %tmp1972, float* %67, align 4
  store float %tmp1969, float* %203, align 4
  store float %mrv_gr32.i, float* %204, align 4
  store float 0.000000e+00, float* %205, align 4
  store float 0.000000e+00, float* %206, align 4
  store float 0.000000e+00, float* %207, align 4
  store float 0.000000e+00, float* %208, align 4
  store float 0.000000e+00, float* %209, align 4
  store float 0.000000e+00, float* %210, align 4
  store float 0.000000e+00, float* %211, align 4
  store float 0.000000e+00, float* %212, align 4
  store float 0.000000e+00, float* %213, align 4
  store float 0.000000e+00, float* %214, align 4
  store float 0.000000e+00, float* %215, align 4
  store float 0.000000e+00, float* %216, align 4
  store float 1.000000e+10, float* %217, align 8
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record116, %struct.Box* %ray)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp215, i8* %tmp216, i64 64, i32 8, i1 false)
  %tmp2013 = load float* %ray2012.0, align 8
  %tmp2014 = load float* %ray2012.1, align 4
  %tmp2015 = load float* %ray2012.2, align 8
  %tmp2009 = load float* %ray.1.0, align 4
  %tmp2010 = load float* %ray.1.1, align 4
  %tmp2011 = load float* %ray.1.2, align 4
  store float 0.000000e+00, float* %218, align 8
  store float 0.000000e+00, float* %219, align 4
  store float 0.000000e+00, float* %220, align 8
  %269 = load float* %221, align 8
  %270 = fcmp olt float %269, 1.000000e+10
  br i1 %270, label %bb.i263, label %invcont123

bb.i263:                                          ; preds = %invcont118
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %agg.result1.i.i, i8* %223, i64 60, i32 4, i1 false) nounwind
  %tmp2763 = bitcast float %tmp2009 to i32
  %tmp2764 = zext i32 %tmp2763 to i96
  %tmp2757 = bitcast float %tmp2010 to i32
  %tmp2758 = zext i32 %tmp2757 to i96
  %tmp2759 = shl nuw nsw i96 %tmp2758, 32
  %ins2761 = or i96 %tmp2764, %tmp2759
  %tmp2751 = bitcast float %tmp2011 to i32
  %tmp2368 = zext i96 %ins2761 to i128
  %mask2369 = and i128 %memtmp.i237.1, -79228162514264337593543950336
  %tmp2362 = zext i32 %tmp2751 to i128
  %tmp2363 = shl nuw nsw i128 %tmp2362, 64
  %mask2364 = or i128 %mask2369, %tmp2368
  %ins2365 = or i128 %mask2364, %tmp2363
  %tmp2350 = lshr i128 %ins2365, 64
  %tmp2351 = trunc i128 %tmp2350 to i32
  %tmp2352 = bitcast i32 %tmp2351 to float
  %271 = fmul float %tmp2009, %269
  %272 = fmul float %tmp2010, %269
  %273 = fmul float %tmp2352, %269
  %tmp2854 = bitcast float %271 to i32
  %tmp2855 = zext i32 %tmp2854 to i96
  %tmp2848 = bitcast float %272 to i32
  %tmp2849 = zext i32 %tmp2848 to i96
  %tmp2850 = shl nuw nsw i96 %tmp2849, 32
  %ins2852 = or i96 %tmp2855, %tmp2850
  %tmp2842 = bitcast float %273 to i32
  %tmp2346 = zext i96 %ins2852 to i128
  %mask2347 = and i128 %memtmp4.i238.1, -79228162514264337593543950336
  %tmp2340 = zext i32 %tmp2842 to i128
  %tmp2341 = shl nuw nsw i128 %tmp2340, 64
  %mask2342 = or i128 %mask2347, %tmp2346
  %ins2343 = or i128 %mask2342, %tmp2341
  %tmp2460 = bitcast float %271 to i32
  %tmp2461 = zext i32 %tmp2460 to i64
  %tmp2454 = bitcast float %272 to i32
  %tmp2455 = zext i32 %tmp2454 to i64
  %tmp2456 = shl nuw i64 %tmp2455, 32
  %ins2458 = or i64 %tmp2461, %tmp2456
  %ins2343.tr = trunc i128 %ins2343 to i96
  %tmp2900 = bitcast float %tmp2013 to i32
  %tmp2901 = zext i32 %tmp2900 to i96
  %tmp2894 = bitcast float %tmp2014 to i32
  %tmp2895 = zext i32 %tmp2894 to i96
  %tmp2896 = shl nuw nsw i96 %tmp2895, 32
  %ins2898 = or i96 %tmp2901, %tmp2896
  %tmp2888 = bitcast float %tmp2015 to i32
  %tmp2324 = zext i96 %ins2898 to i128
  %mask2325 = and i128 %memtmp10.i239.1, -79228162514264337593543950336
  %tmp2318 = zext i32 %tmp2888 to i128
  %tmp2319 = shl nuw nsw i128 %tmp2318, 64
  %mask2320 = or i128 %mask2325, %tmp2324
  %ins2321 = or i128 %mask2320, %tmp2319
  store float %tmp2013, float* %224, align 8
  store float %tmp2014, float* %225, align 4
  %tmp2306 = lshr i128 %ins2321, 64
  %tmp2307 = trunc i128 %tmp2306 to i32
  %tmp2308 = bitcast i32 %tmp2307 to float
  store float %tmp2308, float* %226, align 8
  %tmp2446 = bitcast i64 %ins2458 to double
  %tmp2441 = lshr i96 %ins2343.tr, 64
  %tmp2442 = trunc i96 %tmp2441 to i32
  %tmp2443 = bitcast i32 %tmp2442 to float
  %274 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %3, double %tmp2446, float %tmp2443) nounwind
  %mrv_gr20.i258 = extractvalue %0 %274, 0
  %tmp2301 = bitcast double %mrv_gr20.i258 to i64
  %mrv_gr22.i = extractvalue %0 %274, 1
  %tmp2291 = lshr i64 %tmp2301, 32
  %275 = call fastcc %0 @_Z6normal8Trigonum(%struct.Trigonum* byval %tri.i) nounwind
  %mrv_gr26.i260 = extractvalue %0 %275, 0
  %tmp2279 = bitcast double %mrv_gr26.i260 to i64
  %mrv_gr28.i = extractvalue %0 %275, 1
  %tmp2266 = trunc i64 %tmp2279 to i32
  %tmp2267 = bitcast i32 %tmp2266 to float
  %tmp2269 = lshr i64 %tmp2279, 32
  %tmp2270 = trunc i64 %tmp2269 to i32
  %tmp2271 = bitcast i32 %tmp2270 to float
  %ins2875 = or i96 %tmp2764, %tmp2759
  %tmp2258 = zext i96 %ins2875 to i128
  %mask2259 = and i128 %memtmp30.i.1, -79228162514264337593543950336
  %mask2254 = or i128 %mask2259, %tmp2258
  %ins2255 = or i128 %mask2254, %tmp2363
  store float %tmp2009, float* %227, align 8
  store float %tmp2010, float* %228, align 4
  %tmp2240 = lshr i128 %ins2255, 64
  %tmp2241 = trunc i128 %tmp2240 to i32
  %tmp2242 = bitcast i32 %tmp2241 to float
  store float %tmp2242, float* %229, align 8
  %276 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %2) nounwind
  %mrv_gr38.i = extractvalue %0 %276, 0
  %tmp2235 = bitcast double %mrv_gr38.i to i64
  %mrv_gr40.i = extractvalue %0 %276, 1
  %tmp2225 = lshr i64 %tmp2235, 32
  %tmp2822 = trunc i64 %tmp2235 to i32
  %tmp2823 = bitcast i32 %tmp2822 to float
  %277 = fmul float %tmp2823, %tmp2267
  %278 = fadd float %277, 0.000000e+00
  %tmp2819 = trunc i64 %tmp2225 to i32
  %tmp2820 = bitcast i32 %tmp2819 to float
  %279 = fmul float %tmp2820, %tmp2271
  %280 = fadd float %279, %278
  %281 = fmul float %mrv_gr40.i, %mrv_gr28.i
  %282 = fadd float %281, %280
  %283 = fcmp ogt float %282, 0.000000e+00
  br i1 %283, label %bb46.i, label %bb53.i

bb46.i:                                           ; preds = %bb.i263
  %284 = fmul float %tmp2267, -1.000000e+00
  %285 = fmul float %tmp2271, -1.000000e+00
  %286 = fmul float %mrv_gr28.i, -1.000000e+00
  %tmp2809 = bitcast float %284 to i32
  %tmp2810 = zext i32 %tmp2809 to i96
  %tmp2803 = bitcast float %285 to i32
  %tmp2804 = zext i32 %tmp2803 to i96
  %tmp2805 = shl nuw nsw i96 %tmp2804, 32
  %ins2807 = or i96 %tmp2810, %tmp2805
  %tmp2797 = bitcast float %286 to i32
  %tmp2214 = zext i96 %ins2807 to i128
  %mask2215 = and i128 %memtmp47.i.2, -79228162514264337593543950336
  %tmp2208 = zext i32 %tmp2797 to i128
  %tmp2209 = shl nuw nsw i128 %tmp2208, 64
  %mask2210 = or i128 %mask2215, %tmp2214
  %ins2211 = or i128 %mask2210, %tmp2209
  %tmp2196 = lshr i128 %ins2211, 64
  %tmp2197 = trunc i128 %tmp2196 to i32
  %tmp2198 = bitcast i32 %tmp2197 to float
  br label %bb53.i

bb53.i:                                           ; preds = %bb46.i, %bb.i263
  %N.i.0.0 = phi float [ %284, %bb46.i ], [ %tmp2267, %bb.i263 ]
  %N.i.1.0 = phi float [ %285, %bb46.i ], [ %tmp2271, %bb.i263 ]
  %N.i.2.0 = phi float [ %tmp2198, %bb46.i ], [ %mrv_gr28.i, %bb.i263 ]
  %memtmp47.i.0 = phi i128 [ %ins2211, %bb46.i ], [ %memtmp47.i.2, %bb.i263 ]
  %ins2784 = or i96 %tmp2787, %tmp2782
  %tmp2192 = zext i96 %ins2784 to i128
  %mask2193 = and i128 %memtmp54.i.1, -79228162514264337593543950336
  %mask2188 = or i128 %mask2193, %tmp2192
  %ins2189 = or i128 %mask2188, %tmp2187
  store float %12, float* %230, align 8
  store float %13, float* %231, align 4
  %tmp2174 = lshr i128 %ins2189, 64
  %tmp2175 = trunc i128 %tmp2174 to i32
  %tmp2176 = bitcast i32 %tmp2175 to float
  store float %tmp2176, float* %232, align 8
  %287 = call fastcc %0 @_ZN6Vector3subES_(%struct.Color* %1, double %mrv_gr20.i258, float %mrv_gr22.i) nounwind
  %mrv_gr66.i = extractvalue %0 %287, 0
  %tmp2169 = bitcast double %mrv_gr66.i to i64
  %mrv_gr68.i = extractvalue %0 %287, 1
  %tmp2156 = trunc i64 %tmp2169 to i32
  %tmp2157 = bitcast i32 %tmp2156 to float
  store float %tmp2157, float* %233, align 8
  %tmp2159 = lshr i64 %tmp2169, 32
  %tmp2160 = trunc i64 %tmp2159 to i32
  %tmp2161 = bitcast i32 %tmp2160 to float
  store float %tmp2161, float* %234, align 4
  store float %mrv_gr68.i, float* %235, align 8
  %288 = call fastcc %0 @_ZN6Vector9normalizeEv(%struct.Color* %L.i) nounwind
  %mrv_gr72.i = extractvalue %0 %288, 0
  %tmp2147 = bitcast double %mrv_gr72.i to i64
  %mrv_gr74.i = extractvalue %0 %288, 1
  %tmp2137 = lshr i64 %tmp2147, 32
  %tmp2731 = trunc i64 %tmp2147 to i32
  %tmp2732 = bitcast i32 %tmp2731 to float
  %289 = fmul float %tmp2732, %N.i.0.0
  %290 = fadd float %289, 0.000000e+00
  %tmp2728 = trunc i64 %tmp2137 to i32
  %tmp2729 = bitcast i32 %tmp2728 to float
  %291 = fmul float %tmp2729, %N.i.1.0
  %292 = fadd float %291, %290
  %293 = fmul float %mrv_gr74.i, %N.i.2.0
  %294 = fadd float %293, %292
  %295 = fcmp ogt float %294, 0.000000e+00
  br i1 %295, label %bb88.i, label %bb115.i

bb88.i:                                           ; preds = %bb53.i
  %tmp2684 = trunc i64 %tmp2137 to i32
  %tmp2687 = trunc i64 %tmp2147 to i32
  %tmp2706 = trunc i64 %tmp2291 to i32
  %tmp2709 = trunc i64 %tmp2301 to i32
  %tmp2685 = bitcast i32 %tmp2684 to float
  %tmp2688 = bitcast i32 %tmp2687 to float
  %tmp2707 = bitcast i32 %tmp2706 to float
  %tmp2710 = bitcast i32 %tmp2709 to float
  %296 = load float* %233, align 8
  %297 = fmul float %296, %296
  %298 = load float* %234, align 4
  %299 = fmul float %298, %298
  %300 = fadd float %297, %299
  %301 = load float* %235, align 8
  %302 = fmul float %301, %301
  %303 = fadd float %300, %302
  %304 = call float @llvm.trax.invsqrt(float %303) nounwind
  %305 = fdiv float 1.000000e+00, %304
  store float %tmp2710, float* %ray_to_light_source15.i2436.0, align 8
  store float %tmp2707, float* %ray_to_light_source15.i2436.1, align 4
  store float %mrv_gr22.i, float* %ray_to_light_source15.i2436.2, align 8
  store float %tmp2688, float* %ray_to_light_source15.i.1.0, align 4
  store float %tmp2685, float* %ray_to_light_source15.i.1.1, align 4
  store float %mrv_gr74.i, float* %ray_to_light_source15.i.1.2, align 4
  call fastcc void @_ZN3BVH9intersectER9HitRecordR3Ray(%struct.BVH* %bvh, %struct.HitRecord* %hit_record116214, %struct.Box* %ray_to_light_source15.i) nounwind
  %306 = load float* %221, align 8
  %307 = fcmp uge float %306, %305
  %308 = fcmp ule float %306, 0x3F847AE140000000
  %or.cond3657 = or i1 %307, %308
  br i1 %or.cond3657, label %bb92.i, label %bb115.i

bb92.i:                                           ; preds = %bb88.i
  %309 = load float* %236, align 8
  %310 = fmul float %309, %294
  %tmp2651 = bitcast float %310 to i32
  %tmp2652 = zext i32 %tmp2651 to i96
  %tmp2645 = bitcast float %310 to i32
  %tmp2646 = zext i32 %tmp2645 to i96
  %tmp2647 = shl nuw nsw i96 %tmp2646, 32
  %ins2649 = or i96 %tmp2652, %tmp2647
  %tmp2639 = bitcast float %310 to i32
  %tmp2104 = zext i96 %ins2649 to i128
  %mask2105 = and i128 %memtmp99.i.2, -79228162514264337593543950336
  %tmp2098 = zext i32 %tmp2639 to i128
  %tmp2099 = shl nuw nsw i128 %tmp2098, 64
  %mask2100 = or i128 %mask2105, %tmp2104
  %ins2101 = or i128 %mask2100, %tmp2099
  %tmp2503 = bitcast float %310 to i32
  %tmp2504 = zext i32 %tmp2503 to i64
  %tmp2497 = bitcast float %310 to i32
  %tmp2498 = zext i32 %tmp2497 to i64
  %tmp2499 = shl nuw i64 %tmp2498, 32
  %ins2501 = or i64 %tmp2504, %tmp2499
  %tmp2086 = lshr i128 %ins2101, 64
  %tmp2087 = trunc i128 %tmp2086 to i32
  %tmp2088 = bitcast i32 %tmp2087 to float
  %tmp2489 = bitcast i64 %ins2501 to double
  %311 = call fastcc %0 @_ZN5Color3addES_(%struct.Color* %light.i, double %tmp2489, float %tmp2088) nounwind
  %mrv_gr111.i = extractvalue %0 %311, 0
  %tmp2081 = bitcast double %mrv_gr111.i to i64
  %mrv_gr113.i = extractvalue %0 %311, 1
  %tmp2068 = trunc i64 %tmp2081 to i32
  %tmp2069 = bitcast i32 %tmp2068 to float
  store float %tmp2069, float* %218, align 8
  %tmp2071 = lshr i64 %tmp2081, 32
  %tmp2072 = trunc i64 %tmp2071 to i32
  %tmp2073 = bitcast i32 %tmp2072 to float
  store float %tmp2073, float* %219, align 4
  store float %mrv_gr113.i, float* %220, align 8
  br label %bb115.i

bb115.i:                                          ; preds = %bb92.i, %bb88.i, %bb53.i
  %memtmp99.i.0 = phi i128 [ %ins2101, %bb92.i ], [ %memtmp99.i.2, %bb53.i ], [ %memtmp99.i.2, %bb88.i ]
  %312 = load float* %237, align 8
  %313 = load float* %238, align 4
  %314 = load float* %239, align 8
  %tmp2628 = bitcast float %312 to i32
  %tmp2629 = zext i32 %tmp2628 to i96
  %tmp2622 = bitcast float %313 to i32
  %tmp2623 = zext i32 %tmp2622 to i96
  %tmp2624 = shl nuw nsw i96 %tmp2623, 32
  %ins2626 = or i96 %tmp2629, %tmp2624
  %tmp2616 = bitcast float %314 to i32
  %tmp2583 = zext i96 %ins2626 to i128
  %mask2584 = and i128 %memtmp.i.i.1, -79228162514264337593543950336
  %tmp2577 = zext i32 %tmp2616 to i128
  %tmp2578 = shl nuw nsw i128 %tmp2577, 64
  %mask2579 = or i128 %mask2584, %tmp2583
  %ins2580 = or i128 %mask2579, %tmp2578
  %tmp2605 = bitcast float %312 to i32
  %tmp2606 = zext i32 %tmp2605 to i96
  %tmp2599 = bitcast float %313 to i32
  %tmp2600 = zext i32 %tmp2599 to i96
  %tmp2601 = shl nuw nsw i96 %tmp2600, 32
  %ins2603 = or i96 %tmp2606, %tmp2601
  %tmp2060 = zext i96 %ins2603 to i128
  %mask2061 = and i128 %memtmp116.i.1, -79228162514264337593543950336
  %tmp2055 = and i128 %ins2580, 79228162495817593519834398720
  %mask2056 = or i128 %mask2061, %tmp2060
  %ins2057 = or i128 %mask2056, %tmp2055
  %tmp2526 = bitcast float %312 to i32
  %tmp2527 = zext i32 %tmp2526 to i64
  %tmp2520 = bitcast float %313 to i32
  %tmp2521 = zext i32 %tmp2520 to i64
  %tmp2522 = shl nuw i64 %tmp2521, 32
  %ins2524 = or i64 %tmp2527, %tmp2522
  %tmp2042 = lshr i128 %ins2057, 64
  %tmp2043 = trunc i128 %tmp2042 to i32
  %tmp2044 = bitcast i32 %tmp2043 to float
  %tmp2512 = bitcast i64 %ins2524 to double
  %315 = call fastcc %0 @_ZN5Color5timesES_(%struct.Color* %light.i, double %tmp2512, float %tmp2044) nounwind
  %mrv_gr128.i = extractvalue %0 %315, 0
  %tmp2037 = bitcast double %mrv_gr128.i to i64
  %mrv_gr130.i = extractvalue %0 %315, 1
  %tmp2024 = trunc i64 %tmp2037 to i32
  %tmp2025 = bitcast i32 %tmp2024 to float
  store float %tmp2025, float* %218, align 8
  %tmp2027 = lshr i64 %tmp2037, 32
  %tmp2028 = trunc i64 %tmp2027 to i32
  %tmp2029 = bitcast i32 %tmp2028 to float
  store float %tmp2029, float* %219, align 4
  store float %mrv_gr130.i, float* %220, align 8
  %tmp2946.pre = load float* %ray2012.0, align 8
  %tmp2947.pre = load float* %ray2012.1, align 4
  %tmp2948.pre = load float* %ray2012.2, align 8
  %tmp2942.pre = load float* %ray.1.0, align 4
  %tmp2943.pre = load float* %ray.1.1, align 4
  %tmp2944.pre = load float* %ray.1.2, align 4
  %extract = lshr i64 %tmp2037, 32
  %extract.t = trunc i64 %extract to i32
  %extract.t3647 = trunc i64 %tmp2037 to i32
  %phitmp = bitcast i32 %extract.t3647 to float
  %phitmp3648 = bitcast i32 %extract.t to float
  br label %invcont123

invcont123:                                       ; preds = %bb115.i, %invcont118
  %tmp2944 = phi float [ %tmp2944.pre, %bb115.i ], [ %tmp2011, %invcont118 ]
  %tmp2943 = phi float [ %tmp2943.pre, %bb115.i ], [ %tmp2010, %invcont118 ]
  %tmp2942 = phi float [ %tmp2942.pre, %bb115.i ], [ %tmp2009, %invcont118 ]
  %tmp2948 = phi float [ %tmp2948.pre, %bb115.i ], [ %tmp2015, %invcont118 ]
  %tmp2947 = phi float [ %tmp2947.pre, %bb115.i ], [ %tmp2014, %invcont118 ]
  %tmp2946 = phi float [ %tmp2946.pre, %bb115.i ], [ %tmp2013, %invcont118 ]
  %.02530.0.off0 = phi float [ %phitmp, %bb115.i ], [ 0x3FE1F3B640000000, %invcont118 ]
  %.12531.0.off32 = phi float [ %phitmp3648, %bb115.i ], [ 0x3FE753F7C0000000, %invcont118 ]
  %.22532.0 = phi float [ %mrv_gr130.i, %bb115.i ], [ 0x3FEF9DB220000000, %invcont118 ]
  %memtmp116.i.0 = phi i128 [ %ins2057, %bb115.i ], [ %memtmp116.i.1, %invcont118 ]
  %memtmp99.i.1 = phi i128 [ %memtmp99.i.0, %bb115.i ], [ %memtmp99.i.2, %invcont118 ]
  %memtmp54.i.0 = phi i128 [ %ins2189, %bb115.i ], [ %memtmp54.i.1, %invcont118 ]
  %memtmp47.i.1 = phi i128 [ %memtmp47.i.0, %bb115.i ], [ %memtmp47.i.2, %invcont118 ]
  %memtmp30.i.0 = phi i128 [ %ins2255, %bb115.i ], [ %memtmp30.i.1, %invcont118 ]
  %memtmp10.i239.0 = phi i128 [ %ins2321, %bb115.i ], [ %memtmp10.i239.1, %invcont118 ]
  %memtmp4.i238.0 = phi i128 [ %ins2343, %bb115.i ], [ %memtmp4.i238.1, %invcont118 ]
  %memtmp.i237.0 = phi i128 [ %ins2365, %bb115.i ], [ %memtmp.i237.1, %invcont118 ]
  %memtmp.i.i.0 = phi i128 [ %ins2580, %bb115.i ], [ %memtmp.i.i.1, %invcont118 ]
  store float %.02530.0.off0, float* %15, align 8
  store float %.12531.0.off32, float* %16, align 4
  store float %.22532.0, float* %17, align 8
  %tmp2904 = load float* %hit_record116.0, align 8
  %tmp2936 = load float* %hit_record116.12935.0, align 4
  %tmp2937 = load float* %hit_record116.12935.1, align 4
  %tmp2938 = load float* %hit_record116.12935.2, align 4
  %tmp2928 = load float* %hit_record116.1.1.0, align 4
  %tmp2929 = load float* %hit_record116.1.1.1, align 4
  %tmp2930 = load float* %hit_record116.1.1.2, align 4
  %tmp2922 = load float* %hit_record116.1.2.0, align 4
  %tmp2923 = load float* %hit_record116.1.2.1, align 4
  %tmp2924 = load float* %hit_record116.1.2.2, align 4
  %tmp2905 = load i32* %hit_record116.1.3, align 4
  %tmp2912 = load float* %hit_record116.1.42911.0, align 4
  %tmp2913 = load float* %hit_record116.1.42911.1, align 4
  %tmp2914 = load float* %hit_record116.1.42911.2, align 4
  %tmp2909 = load float* %hit_record116.1.4.1, align 4
  %tmp2910 = load float* %hit_record116.1.4.2, align 4
  store float %tmp2936, float* %tri.i3032931.0, align 8
  store float %tmp2937, float* %tri.i3032931.1, align 4
  store float %tmp2938, float* %tri.i3032931.2, align 8
  store float %tmp2928, float* %tri.i303.1.0, align 4
  store float %tmp2929, float* %tri.i303.1.1, align 4
  store float %tmp2930, float* %tri.i303.1.2, align 4
  store float %tmp2922, float* %tri.i303.2.0, align 8
  store float %tmp2923, float* %tri.i303.2.1, align 4
  store float %tmp2924, float* %tri.i303.2.2, align 8
  store i32 %tmp2905, i32* %tri.i303.3, align 4
  store float %tmp2912, float* %tri.i303.42915.0, align 8
  store float %tmp2913, float* %tri.i303.42915.1, align 4
  store float %tmp2914, float* %tri.i303.42915.2, align 8
  store float %tmp2909, float* %tri.i303.4.1, align 4
  store float %tmp2910, float* %tri.i303.4.2, align 8
  %316 = fmul float %tmp2942, %tmp2904
  %317 = fmul float %tmp2943, %tmp2904
  %318 = fmul float %tmp2944, %tmp2904
  %tmp3171 = bitcast float %316 to i32
  %tmp3172 = zext i32 %tmp3171 to i64
  %tmp3165 = bitcast float %317 to i32
  %tmp3166 = zext i32 %tmp3165 to i64
  %tmp3167 = shl nuw i64 %tmp3166, 32
  %ins3169 = or i64 %tmp3172, %tmp3167
  store float %tmp2946, float* %240, align 8
  store float %tmp2947, float* %241, align 4
  store float %tmp2948, float* %242, align 8
  %tmp3157 = bitcast i64 %ins3169 to double
  %319 = call fastcc %0 @_ZN6Vector3addES_(%struct.Color* %0, double %tmp3157, float %318) nounwind
  %mrv_gr20.i338 = extractvalue %0 %319, 0
  %tmp3055 = bitcast double %mrv_gr20.i338 to i64
  %mrv_gr22.i340 = extractvalue %0 %319, 1
  %tmp3045 = lshr i64 %tmp3055, 32
  %320 = call fastcc %0 @_Z6normal8Trigonum(%struct.Trigonum* byval %tri.i303) nounwind
  br label %bb47.i

bb.i351:                                          ; preds = %bb47.i
  %321 = sext i32 %storemerge.i360 to i64
  %322 = getelementptr inbounds [250000 x %struct.Photon]* %92, i64 0, i64 %321, i32 0, i32 0
  %323 = load float* %322, align 4
  %324 = getelementptr inbounds [250000 x %struct.Photon]* %92, i64 0, i64 %321, i32 0, i32 1
  %325 = load float* %324, align 4
  %326 = getelementptr inbounds [250000 x %struct.Photon]* %92, i64 0, i64 %321, i32 0, i32 2
  %327 = load float* %326, align 4
  %tmp3372 = bitcast float %323 to i32
  %tmp3373 = zext i32 %tmp3372 to i96
  %tmp3366 = bitcast float %325 to i32
  %tmp3367 = zext i32 %tmp3366 to i96
  %tmp3368 = shl nuw nsw i96 %tmp3367, 32
  %ins3370 = or i96 %tmp3373, %tmp3368
  %tmp3360 = bitcast float %327 to i32
  %tmp3012 = zext i96 %ins3370 to i128
  %mask3013 = and i128 %memtmp31.i.0, -79228162514264337593543950336
  %tmp3006 = zext i32 %tmp3360 to i128
  %tmp3007 = shl nuw nsw i128 %tmp3006, 64
  %mask3008 = or i128 %mask3013, %tmp3012
  %ins3009 = or i128 %mask3008, %tmp3007
  %ins3009.tr = trunc i128 %ins3009 to i96
  %tmp3318 = trunc i64 %tmp3055 to i32
  %tmp3319 = bitcast i32 %tmp3318 to float
  %328 = fsub float %323, %tmp3319
  %tmp3315 = trunc i64 %tmp3045 to i32
  %tmp3316 = bitcast i32 %tmp3315 to float
  %329 = fsub float %325, %tmp3316
  %tmp3332 = lshr i96 %ins3009.tr, 64
  %tmp3333 = trunc i96 %tmp3332 to i32
  %tmp3334 = bitcast i32 %tmp3333 to float
  %330 = fsub float %tmp3334, %mrv_gr22.i340
  %331 = fmul float %328, %328
  %332 = fmul float %329, %329
  %333 = fadd float %331, %332
  %334 = fmul float %330, %330
  %335 = fadd float %333, %334
  %336 = fcmp olt float %335, 2.890000e+02
  br i1 %336, label %bb45.i, label %bb46.i359

bb45.i:                                           ; preds = %bb.i351
  %337 = add nsw i32 %num_of_photons.i.1, 1
  %338 = getelementptr inbounds [250000 x %struct.Photon]* %92, i64 0, i64 %321, i32 1, i64 0
  %339 = load float* %338, align 4
  %340 = fadd float %power.i.0.1, %339
  %341 = getelementptr inbounds [250000 x %struct.Photon]* %92, i64 0, i64 %321, i32 1, i64 1
  %342 = load float* %341, align 4
  %343 = fadd float %power.i.1.1, %342
  %344 = getelementptr inbounds [250000 x %struct.Photon]* %92, i64 0, i64 %321, i32 1, i64 2
  %345 = load float* %344, align 4
  %346 = fadd float %power.i.2.1, %345
  %347 = icmp sgt i32 %337, 10
  br i1 %347, label %bb49.i, label %bb46.i359

bb46.i359:                                        ; preds = %bb45.i, %bb.i351
  %power.i.0.0 = phi float [ %340, %bb45.i ], [ %power.i.0.1, %bb.i351 ]
  %power.i.1.0 = phi float [ %343, %bb45.i ], [ %power.i.1.1, %bb.i351 ]
  %power.i.2.0 = phi float [ %346, %bb45.i ], [ %power.i.2.1, %bb.i351 ]
  %num_of_photons.i.0 = phi i32 [ %337, %bb45.i ], [ %num_of_photons.i.1, %bb.i351 ]
  %348 = add nsw i32 %storemerge.i360, 1
  br label %bb47.i

bb47.i:                                           ; preds = %bb46.i359, %invcont123
  %power.i.0.1 = phi float [ 0.000000e+00, %invcont123 ], [ %power.i.0.0, %bb46.i359 ]
  %power.i.1.1 = phi float [ 0.000000e+00, %invcont123 ], [ %power.i.1.0, %bb46.i359 ]
  %power.i.2.1 = phi float [ 0.000000e+00, %invcont123 ], [ %power.i.2.0, %bb46.i359 ]
  %memtmp31.i.0 = phi i128 [ %memtmp31.i.3, %invcont123 ], [ %ins3009, %bb46.i359 ]
  %num_of_photons.i.1 = phi i32 [ 0, %invcont123 ], [ %num_of_photons.i.0, %bb46.i359 ]
  %storemerge.i360 = phi i32 [ 0, %invcont123 ], [ %348, %bb46.i359 ]
  %349 = icmp slt i32 %storemerge.i360, %count.3
  br i1 %349, label %bb.i351, label %bb48.i

bb48.i:                                           ; preds = %bb47.i
  %350 = icmp eq i32 %num_of_photons.i.1, 0
  br i1 %350, label %invcont148, label %bb49.i

bb49.i:                                           ; preds = %bb48.i, %bb45.i
  %power.i.0.2 = phi float [ %power.i.0.1, %bb48.i ], [ %340, %bb45.i ]
  %power.i.1.2 = phi float [ %power.i.1.1, %bb48.i ], [ %343, %bb45.i ]
  %power.i.2.2 = phi float [ %power.i.2.1, %bb48.i ], [ %346, %bb45.i ]
  %memtmp31.i.1 = phi i128 [ %memtmp31.i.0, %bb48.i ], [ %ins3009, %bb45.i ]
  %num_of_photons.i.2 = phi i32 [ %num_of_photons.i.1, %bb48.i ], [ %337, %bb45.i ]
  %351 = sitofp i32 %num_of_photons.i.2 to float
  %352 = fdiv float %power.i.0.2, %351
  %353 = fdiv float %power.i.1.2, %351
  %354 = fdiv float %power.i.2.2, %351
  store float %352, float* %243, align 8
  store float %353, float* %244, align 4
  store float %354, float* %245, align 8
  %355 = load float* %246, align 8
  %356 = load float* %247, align 4
  %357 = load float* %248, align 8
  %tmp3305 = bitcast float %355 to i32
  %tmp3306 = zext i32 %tmp3305 to i96
  %tmp3299 = bitcast float %356 to i32
  %tmp3300 = zext i32 %tmp3299 to i96
  %tmp3301 = shl nuw nsw i96 %tmp3300, 32
  %ins3303 = or i96 %tmp3306, %tmp3301
  %tmp3293 = bitcast float %357 to i32
  %tmp3260 = zext i96 %ins3303 to i128
  %mask3261 = and i128 %memtmp.i.i292.1, -79228162514264337593543950336
  %tmp3254 = zext i32 %tmp3293 to i128
  %tmp3255 = shl nuw nsw i128 %tmp3254, 64
  %mask3256 = or i128 %mask3261, %tmp3260
  %ins3257 = or i128 %mask3256, %tmp3255
  %tmp3282 = bitcast float %355 to i32
  %tmp3283 = zext i32 %tmp3282 to i96
  %tmp3276 = bitcast float %356 to i32
  %tmp3277 = zext i32 %tmp3276 to i96
  %tmp3278 = shl nuw nsw i96 %tmp3277, 32
  %ins3280 = or i96 %tmp3283, %tmp3278
  %tmp2990 = zext i96 %ins3280 to i128
  %mask2991 = and i128 %memtmp51.i.1, -79228162514264337593543950336
  %tmp2985 = and i128 %ins3257, 79228162495817593519834398720
  %mask2986 = or i128 %mask2991, %tmp2990
  %ins2987 = or i128 %mask2986, %tmp2985
  %tmp3214 = bitcast float %355 to i32
  %tmp3215 = zext i32 %tmp3214 to i64
  %tmp3208 = bitcast float %356 to i32
  %tmp3209 = zext i32 %tmp3208 to i64
  %tmp3210 = shl nuw i64 %tmp3209, 32
  %ins3212 = or i64 %tmp3215, %tmp3210
  %tmp2972 = lshr i128 %ins2987, 64
  %tmp2973 = trunc i128 %tmp2972 to i32
  %tmp2974 = bitcast i32 %tmp2973 to float
  %tmp3200 = bitcast i64 %ins3212 to double
  %358 = call fastcc %0 @_ZN5Color5timesES_(%struct.Color* %light.i311, double %tmp3200, float %tmp2974) nounwind
  %mrv_gr63.i = extractvalue %0 %358, 0
  %tmp2967 = bitcast double %mrv_gr63.i to i64
  %mrv_gr65.i = extractvalue %0 %358, 1
  %tmp2954 = trunc i64 %tmp2967 to i32
  %tmp2955 = bitcast i32 %tmp2954 to float
  store float %tmp2955, float* %243, align 8
  %tmp2957 = lshr i64 %tmp2967, 32
  %tmp2958 = trunc i64 %tmp2957 to i32
  %tmp2959 = bitcast i32 %tmp2958 to float
  store float %tmp2959, float* %244, align 4
  store float %mrv_gr65.i, float* %245, align 8
  %phitmp3557 = and i64 %tmp2967, -4294967296
  %phitmp3650 = and i64 %tmp2967, 4294967295
  br label %invcont148

invcont148:                                       ; preds = %bb49.i, %bb48.i
  %.23220.0 = phi float [ %mrv_gr65.i, %bb49.i ], [ 0.000000e+00, %bb48.i ]
  %.13219.0 = phi i64 [ %phitmp3557, %bb49.i ], [ 0, %bb48.i ]
  %.03218.0 = phi i64 [ %phitmp3650, %bb49.i ], [ 0, %bb48.i ]
  %memtmp51.i.0 = phi i128 [ %ins2987, %bb49.i ], [ %memtmp51.i.1, %bb48.i ]
  %memtmp31.i.2 = phi i128 [ %memtmp31.i.1, %bb49.i ], [ %memtmp31.i.0, %bb48.i ]
  %memtmp.i.i292.0 = phi i128 [ %ins3257, %bb49.i ], [ %memtmp.i.i292.1, %bb48.i ]
  %mask863 = or i64 %.03218.0, %.13219.0
  %tmp858 = bitcast i64 %mask863 to double
  %359 = call fastcc %0 @_ZN5Color3addES_(%struct.Color* %result, double %tmp858, float %.23220.0)
  %mrv_gr151 = extractvalue %0 %359, 0
  %tmp415 = bitcast double %mrv_gr151 to i64
  %mrv_gr153 = extractvalue %0 %359, 1
  %tmp405 = trunc i64 %tmp415 to i32
  %tmp406 = bitcast i32 %tmp405 to float
  store float %tmp406, float* %15, align 8
  %tmp408 = lshr i64 %tmp415, 32
  %tmp409 = trunc i64 %tmp408 to i32
  %tmp410 = bitcast i32 %tmp409 to float
  store float %tmp410, float* %16, align 4
  store float %mrv_gr153, float* %17, align 8
  %val156 = load double* %elt155, align 8
  %tmp919 = bitcast double %val156 to i64
  %tmp910 = trunc i64 %tmp919 to i32
  %tmp911 = bitcast i32 %tmp910 to float
  %360 = fcmp olt float %tmp911, 0.000000e+00
  br i1 %360, label %bb5.i, label %bb1.i

bb1.i:                                            ; preds = %invcont148
  %361 = fcmp ogt float %tmp911, 1.000000e+00
  br i1 %361, label %bb5.i, label %bb4.i

bb4.i:                                            ; preds = %bb1.i
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb1.i, %invcont148
  %r.i.0 = phi float [ %tmp911, %bb4.i ], [ 0.000000e+00, %invcont148 ], [ 1.000000e+00, %bb1.i ]
  %362 = fcmp olt float %mrv_gr153, 0.000000e+00
  br i1 %362, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i
  %363 = fcmp ogt float %mrv_gr153, 1.000000e+00
  br i1 %363, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i
  %b.i.0 = phi float [ %mrv_gr153, %bb11.i ], [ 0.000000e+00, %bb5.i ], [ 1.000000e+00, %bb8.i ]
  %tmp888 = lshr i64 %tmp919, 32
  %tmp889 = trunc i64 %tmp888 to i32
  %tmp890 = bitcast i32 %tmp889 to float
  %364 = fcmp olt float %tmp890, 0.000000e+00
  br i1 %364, label %invcont160, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %365 = fcmp ogt float %tmp890, 1.000000e+00
  br i1 %365, label %invcont160, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %invcont160

invcont160:                                       ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.i.0 = phi float [ %tmp890, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %366 = mul nsw i32 %6, %249
  %367 = add nsw i32 %366, %250
  %368 = mul nsw i32 %367, 3
  %369 = add nsw i32 %8, %368
  call void @llvm.trax.storef(float %r.i.0, i32 %369, i32 0) nounwind
  call void @llvm.trax.storef(float %g.i.0, i32 %369, i32 1) nounwind
  call void @llvm.trax.storef(float %b.i.0, i32 %369, i32 2) nounwind
  %370 = call i32 @llvm.trax.atominc(i32 0)
  br label %bb161

bb161:                                            ; preds = %invcont160, %invcont109
  %memtmp116.i.1 = phi i128 [ undef, %invcont109 ], [ %memtmp116.i.0, %invcont160 ]
  %memtmp99.i.2 = phi i128 [ undef, %invcont109 ], [ %memtmp99.i.1, %invcont160 ]
  %memtmp54.i.1 = phi i128 [ undef, %invcont109 ], [ %memtmp54.i.0, %invcont160 ]
  %memtmp47.i.2 = phi i128 [ undef, %invcont109 ], [ %memtmp47.i.1, %invcont160 ]
  %memtmp30.i.1 = phi i128 [ undef, %invcont109 ], [ %memtmp30.i.0, %invcont160 ]
  %memtmp10.i239.1 = phi i128 [ undef, %invcont109 ], [ %memtmp10.i239.0, %invcont160 ]
  %memtmp4.i238.1 = phi i128 [ undef, %invcont109 ], [ %memtmp4.i238.0, %invcont160 ]
  %memtmp.i237.1 = phi i128 [ undef, %invcont109 ], [ %memtmp.i237.0, %invcont160 ]
  %memtmp.i.i.1 = phi i128 [ undef, %invcont109 ], [ %memtmp.i.i.0, %invcont160 ]
  %memtmp51.i.1 = phi i128 [ undef, %invcont109 ], [ %memtmp51.i.0, %invcont160 ]
  %memtmp31.i.3 = phi i128 [ undef, %invcont109 ], [ %memtmp31.i.2, %invcont160 ]
  %memtmp.i.i292.1 = phi i128 [ undef, %invcont109 ], [ %memtmp.i.i292.0, %invcont160 ]
  %storemerge1 = phi i32 [ %186, %invcont109 ], [ %370, %invcont160 ]
  %371 = icmp sgt i32 %187, %storemerge1
  br i1 %371, label %invcont118, label %return

return:                                           ; preds = %bb161
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

define internal fastcc %0 @_ZN6Vector6scmultEf(%struct.Color* nocapture %this, float %scalar) nounwind readonly ssp align 2 {
return:
  %0 = getelementptr inbounds %struct.Color* %this, i64 0, i32 0
  %1 = load float* %0, align 4
  %2 = fmul float %1, %scalar
  %3 = getelementptr inbounds %struct.Color* %this, i64 0, i32 1
  %4 = load float* %3, align 4
  %5 = fmul float %4, %scalar
  %6 = getelementptr inbounds %struct.Color* %this, i64 0, i32 2
  %7 = load float* %6, align 4
  %8 = fmul float %7, %scalar
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
