; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

%struct.Color = type { float, float, float }
%struct.Photon = type { %struct.Color, %struct.Color, [3 x float], float, float, i32, float }

declare float @llvm.trax.loadf(i32, i32) nounwind

declare i32 @llvm.trax.loadi(i32, i32) nounwind

declare void @llvm.trax.storef(float, i32, i32) nounwind

define i32 @main() nounwind ssp {
invcont11:
  %stack.i = alloca [32 x i32], align 4
  %nearest.i = alloca [10000 x %struct.Photon], align 8
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
  %29 = call i32 @llvm.trax.loadi(i32 0, i32 28)
  %30 = call i32 @llvm.trax.loadi(i32 0, i32 29)
  %31 = call i32 @llvm.trax.loadi(i32 0, i32 8)
  %32 = alloca [15000 x %struct.Photon], align 1
  br label %bb

bb:                                               ; preds = %bb, %invcont11
  %indvar806 = phi i64 [ 0, %invcont11 ], [ %indvar.next807, %bb ]
  %scevgep809 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %indvar806, i32 2, i64 2
  %scevgep810 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %indvar806, i32 2, i64 1
  %scevgep811 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %indvar806, i32 2, i64 0
  %scevgep813 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %indvar806
  %33 = bitcast %struct.Photon* %scevgep813 to i8*
  call void @llvm.memset.p0i8.i64(i8* %33, i8 0, i64 24, i32 4, i1 false)
  store float 1.000000e+00, float* %scevgep811, align 4
  store float 1.000000e+00, float* %scevgep810, align 4
  store float 1.000000e+00, float* %scevgep809, align 4
  %indvar.next807 = add i64 %indvar806, 1
  %exitcond808 = icmp eq i64 %indvar.next807, 15000
  br i1 %exitcond808, label %bb13, label %bb

bb13:                                             ; preds = %bb
  %34 = alloca [15000 x %struct.Photon], align 1
  br label %bb14

bb14:                                             ; preds = %bb14, %bb13
  %indvar796 = phi i64 [ 0, %bb13 ], [ %indvar.next797, %bb14 ]
  %scevgep799 = getelementptr [15000 x %struct.Photon]* %34, i64 0, i64 %indvar796, i32 2, i64 2
  %scevgep800 = getelementptr [15000 x %struct.Photon]* %34, i64 0, i64 %indvar796, i32 2, i64 1
  %scevgep801 = getelementptr [15000 x %struct.Photon]* %34, i64 0, i64 %indvar796, i32 2, i64 0
  %scevgep803 = getelementptr [15000 x %struct.Photon]* %34, i64 0, i64 %indvar796
  %35 = bitcast %struct.Photon* %scevgep803 to i8*
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 24, i32 4, i1 false)
  store float 1.000000e+00, float* %scevgep801, align 4
  store float 1.000000e+00, float* %scevgep800, align 4
  store float 1.000000e+00, float* %scevgep799, align 4
  %indvar.next797 = add i64 %indvar796, 1
  %exitcond798 = icmp eq i64 %indvar.next797, 15000
  br i1 %exitcond798, label %invcont18, label %bb14

invcont18:                                        ; preds = %bb14
  %36 = call i32 @llvm.trax.loadi(i32 0, i32 12)
  %37 = call float @llvm.trax.loadf(i32 %36, i32 0) nounwind
  %38 = call float @llvm.trax.loadf(i32 %36, i32 1) nounwind
  %39 = call float @llvm.trax.loadf(i32 %36, i32 2) nounwind
  %tmp378 = bitcast float %37 to i32
  %tmp372 = bitcast float %38 to i32
  %tmp366 = bitcast float %39 to i32
  br label %bb68.outer.preheader

bb.i84:                                           ; preds = %bb69, %bb.i84
  %40 = call float @llvm.trax.rand()
  %41 = fadd float %40, -5.000000e-01
  %42 = fmul float %41, 2.000000e+00
  %43 = call float @llvm.trax.rand()
  %44 = fadd float %43, -5.000000e-01
  %45 = fmul float %44, 2.000000e+00
  %46 = call float @llvm.trax.rand()
  %47 = fadd float %46, -5.000000e-01
  %48 = fmul float %47, 2.000000e+00
  %49 = fmul float %42, %42
  %50 = fmul float %45, %45
  %51 = fadd float %49, %50
  %52 = fmul float %48, %48
  %53 = fadd float %51, %52
  %54 = fcmp ogt float %53, 1.000000e+00
  br i1 %54, label %bb.i84, label %invcont42

invcont42:                                        ; preds = %bb.i84
  %tmp2191 = bitcast float %42 to i32
  %tmp2192 = zext i32 %tmp2191 to i96
  %tmp2185 = bitcast float %45 to i32
  %tmp2186 = zext i32 %tmp2185 to i96
  %tmp2187 = shl nuw nsw i96 %tmp2186, 32
  %ins2189 = or i96 %tmp2187, %tmp2192
  %tmp2179 = bitcast float %48 to i32
  %tmp265 = zext i96 %ins2189 to i128
  %mask266 = and i128 %memtmp30.0, -79228162514264337593543950336
  %tmp259 = zext i32 %tmp2179 to i128
  %tmp260 = shl nuw nsw i128 %tmp259, 64
  %mask261 = or i128 %tmp260, %mask266
  %ins262 = or i128 %mask261, %tmp265
  %ins262.tr = trunc i128 %ins262 to i96
  %tmp2196 = lshr i96 %ins262.tr, 64
  %mask322 = and i512 %mask347579, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins323 = or i512 %mask322, 1343554297
  %tmp354 = trunc i96 %tmp2196 to i32
  %tmp355 = bitcast i32 %tmp354 to float
  br label %bb.outer.i

bb.outer.i:                                       ; preds = %bb9.i, %invcont42
  %mask347581 = phi i512 [ %ins323, %invcont42 ], [ %mask347580, %bb9.i ]
  %node_id.0.ph.i = phi i32 [ 0, %invcont42 ], [ %212, %bb9.i ]
  %sp.0.ph.i = phi i32 [ -1, %invcont42 ], [ %213, %bb9.i ]
  %tmp404.i = add i32 %sp.0.ph.i, 1
  %tmp760 = sext i32 %tmp404.i to i64
  %tmp763 = zext i32 %sp.0.ph.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb3.i, %bb.outer.i
  %indvar.i = phi i64 [ %indvar.next.i, %bb3.i ], [ 0, %bb.outer.i ]
  %node_id.0.i = phi i32 [ %90, %bb3.i ], [ %node_id.0.ph.i, %bb.outer.i ]
  %tmp761 = add i64 %tmp760, %indvar.i
  %scevgep.i = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp761
  %tmp764 = add i64 %tmp763, %indvar.i
  %sp.0.i = trunc i64 %tmp764 to i32
  %55 = shl nsw i32 %node_id.0.i, 3
  %56 = add nsw i32 %55, %31
  %57 = call float @llvm.trax.loadf(i32 %56, i32 2) nounwind
  %58 = call float @llvm.trax.loadf(i32 %56, i32 1) nounwind
  %59 = call float @llvm.trax.loadf(i32 %56, i32 0) nounwind
  %60 = call float @llvm.trax.loadf(i32 %56, i32 5) nounwind
  %61 = call float @llvm.trax.loadf(i32 %56, i32 4) nounwind
  %62 = call float @llvm.trax.loadf(i32 %56, i32 3) nounwind
  %63 = fsub float %59, %tmp396
  %64 = fdiv float %63, %42
  %65 = fsub float %62, %tmp396
  %66 = fdiv float %65, %42
  %67 = fcmp ogt float %64, %66
  %tx1.i.0.i = select i1 %67, float %66, float %64
  %tx2.i.0.i = select i1 %67, float %64, float %66
  %68 = fcmp ogt float %tx1.i.0.i, -1.000000e+10
  %tnear.i.0.i = select i1 %68, float %tx1.i.0.i, float -1.000000e+10
  %69 = fcmp olt float %tx2.i.0.i, 1.000000e+10
  %tfar.i.0.i = select i1 %69, float %tx2.i.0.i, float 1.000000e+10
  %70 = fcmp ogt float %tnear.i.0.i, %tfar.i.0.i
  %71 = fcmp olt float %tfar.i.0.i, 0.000000e+00
  %or.cond.i = or i1 %70, %71
  br i1 %or.cond.i, label %bb7.i, label %bb29.i.i

bb29.i.i:                                         ; preds = %bb.i
  %72 = fsub float %58, %tmp390
  %73 = fdiv float %72, %45
  %74 = fsub float %61, %tmp390
  %75 = fdiv float %74, %45
  %76 = fcmp ogt float %73, %75
  %ty1.i.0.i = select i1 %76, float %75, float %73
  %ty2.i.0.i = select i1 %76, float %73, float %75
  %77 = fcmp ogt float %ty1.i.0.i, %tnear.i.0.i
  %tnear.i.1.i = select i1 %77, float %ty1.i.0.i, float %tnear.i.0.i
  %78 = fcmp olt float %ty2.i.0.i, %tfar.i.0.i
  %tfar.i.1.i = select i1 %78, float %ty2.i.0.i, float %tfar.i.0.i
  %79 = fcmp ogt float %tnear.i.1.i, %tfar.i.1.i
  %80 = fcmp olt float %tfar.i.1.i, 0.000000e+00
  %or.cond1395.i = or i1 %79, %80
  br i1 %or.cond1395.i, label %bb7.i, label %bb62.i.i

bb62.i.i:                                         ; preds = %bb29.i.i
  %81 = fsub float %57, %tmp382
  %82 = fdiv float %81, %tmp355
  %83 = fsub float %60, %tmp382
  %84 = fdiv float %83, %tmp355
  %85 = fcmp ogt float %82, %84
  %tz1.i.0.i = select i1 %85, float %84, float %82
  %tz2.i.0.i = select i1 %85, float %82, float %84
  %86 = fcmp ogt float %tz1.i.0.i, %tnear.i.1.i
  %tnear.i.2.i = select i1 %86, float %tz1.i.0.i, float %tnear.i.1.i
  %87 = fcmp olt float %tz2.i.0.i, %tfar.i.1.i
  %tfar.i.2.i = select i1 %87, float %tz2.i.0.i, float %tfar.i.1.i
  %88 = fcmp ogt float %tnear.i.2.i, %tfar.i.2.i
  %89 = fcmp olt float %tfar.i.2.i, 0.000000e+00
  %or.cond1396.i = or i1 %88, %89
  br i1 %or.cond1396.i, label %bb7.i, label %bb1.i16

bb1.i16:                                          ; preds = %bb62.i.i
  %90 = call i32 @llvm.trax.loadi(i32 %56, i32 7) nounwind
  %91 = call i32 @llvm.trax.loadi(i32 %56, i32 6) nounwind
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %bb3.i, label %bb6.preheader.i

bb6.preheader.i:                                  ; preds = %bb1.i16
  %93 = icmp sgt i32 %91, 0
  br i1 %93, label %bb5.i17, label %bb7.i

bb3.i:                                            ; preds = %bb1.i16
  %94 = add nsw i32 %90, 1
  store i32 %94, i32* %scevgep.i, align 4
  %indvar.next.i = add i64 %indvar.i, 1
  br label %bb.i

bb5.i17:                                          ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i
  %mask347576 = phi i512 [ %mask347575, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %mask347581, %bb6.preheader.i ]
  %storemerge388.i = phi i32 [ %208, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ 0, %bb6.preheader.i ]
  %tmp767 = mul i32 %storemerge388.i, 11
  %tmp396.i = add i32 %90, %tmp767
  %95 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %96 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %97 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %98 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %99 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %100 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %101 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %102 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %103 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %104 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %105 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %106 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %107 = mul nsw i32 %104, 25
  %108 = add nsw i32 %106, %107
  %109 = call float @llvm.trax.loadf(i32 %108, i32 6) nounwind
  %110 = call float @llvm.trax.loadf(i32 %108, i32 5) nounwind
  %111 = call float @llvm.trax.loadf(i32 %108, i32 4) nounwind
  %112 = fsub float %97, %103
  %113 = fsub float %96, %102
  %114 = fsub float %95, %101
  %115 = fsub float %100, %103
  %116 = fsub float %99, %102
  %117 = fsub float %98, %101
  %118 = fmul float %113, %117
  %119 = fmul float %116, %114
  %120 = fsub float %118, %119
  %121 = fmul float %115, %114
  %122 = fmul float %112, %117
  %123 = fsub float %121, %122
  %124 = fmul float %116, %112
  %125 = fmul float %115, %113
  %126 = fsub float %124, %125
  %127 = fmul float %120, %120
  %128 = fmul float %123, %123
  %129 = fadd float %127, %128
  %130 = fmul float %126, %126
  %131 = fadd float %129, %130
  %132 = call float @llvm.trax.invsqrt(float %131) nounwind
  %133 = fmul float %45, %117
  %134 = fmul float %116, %tmp355
  %135 = fsub float %133, %134
  %136 = fmul float %115, %tmp355
  %137 = fmul float %42, %117
  %138 = fsub float %136, %137
  %139 = fmul float %116, %42
  %140 = fmul float %115, %45
  %141 = fsub float %139, %140
  %142 = fmul float %135, %112
  %143 = fadd float %142, 0.000000e+00
  %144 = fmul float %138, %113
  %145 = fadd float %144, %143
  %146 = fmul float %141, %114
  %147 = fadd float %146, %145
  %148 = fdiv float 1.000000e+00, %147
  %149 = fsub float %tmp396, %103
  %150 = fsub float %tmp390, %102
  %151 = fsub float %tmp382, %101
  %152 = fmul float %135, %149
  %153 = fadd float %152, 0.000000e+00
  %154 = fmul float %138, %150
  %155 = fadd float %154, %153
  %156 = fmul float %141, %151
  %157 = fadd float %156, %155
  %158 = fmul float %157, %148
  %159 = fcmp olt float %158, 0.000000e+00
  %160 = fcmp ogt float %158, 1.000000e+00
  %or.cond1397.i = or i1 %159, %160
  br i1 %or.cond1397.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb73.i.i

bb73.i.i:                                         ; preds = %bb5.i17
  %161 = fmul float %150, %114
  %162 = fmul float %113, %151
  %163 = fsub float %161, %162
  %164 = fmul float %112, %151
  %165 = fmul float %149, %114
  %166 = fsub float %164, %165
  %167 = fmul float %113, %149
  %168 = fmul float %112, %150
  %169 = fsub float %167, %168
  %170 = fmul float %163, %42
  %171 = fadd float %170, 0.000000e+00
  %172 = fmul float %166, %45
  %173 = fadd float %172, %171
  %174 = fmul float %169, %tmp355
  %175 = fadd float %174, %173
  %176 = fmul float %175, %148
  %177 = fcmp olt float %176, 0.000000e+00
  br i1 %177, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb94.i55.i

bb94.i55.i:                                       ; preds = %bb73.i.i
  %178 = fadd float %176, %158
  %179 = fcmp ogt float %178, 1.000000e+00
  br i1 %179, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb96.i.i

bb96.i.i:                                         ; preds = %bb94.i55.i
  %180 = fmul float %163, %115
  %181 = fadd float %180, 0.000000e+00
  %182 = fmul float %166, %116
  %183 = fadd float %182, %181
  %184 = fmul float %169, %117
  %185 = fadd float %184, %183
  %186 = fmul float %185, %148
  %187 = fcmp ule float %186, 0.000000e+00
  %188 = fcmp olt float %186, 0x3F50624DE0000000
  %or.cond1398.i = or i1 %187, %188
  %189 = fcmp oeq float %186, 1.000000e+10
  %or.cond1399.i = or i1 %or.cond1398.i, %189
  br i1 %or.cond1399.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb96.i.i
  %tmp312 = trunc i512 %mask347576 to i32
  %tmp313 = bitcast i32 %tmp312 to float
  %190 = fcmp ogt float %tmp313, %186
  br i1 %190, label %bb3.i.i.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

bb3.i.i.i:                                        ; preds = %bb2.i.i.i
  %tmp307 = bitcast float %186 to i32
  %tmp308 = zext i32 %tmp307 to i512
  %191 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %192 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %193 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %194 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %195 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %196 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %197 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %198 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %199 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %200 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %201 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %tmp369.i = bitcast float %193 to i32
  %tmp370.i = zext i32 %tmp369.i to i480
  %tmp301.i = bitcast float %192 to i32
  %tmp302.i = zext i32 %tmp301.i to i480
  %tmp303.i = shl nuw nsw i480 %tmp302.i, 32
  %tmp295.i = bitcast float %191 to i32
  %tmp296.i = zext i32 %tmp295.i to i480
  %tmp297.i = shl nuw nsw i480 %tmp296.i, 64
  %tmp363.i = bitcast float %196 to i32
  %tmp364.i = zext i32 %tmp363.i to i480
  %tmp365.i = shl nuw nsw i480 %tmp364.i, 96
  %tmp357.i = bitcast float %195 to i32
  %tmp358.i = zext i32 %tmp357.i to i480
  %tmp359.i = shl nuw nsw i480 %tmp358.i, 128
  %tmp351.i = bitcast float %194 to i32
  %tmp352.i = zext i32 %tmp351.i to i480
  %tmp353.i = shl nuw nsw i480 %tmp352.i, 160
  %tmp345.i = bitcast float %199 to i32
  %tmp346.i = zext i32 %tmp345.i to i480
  %tmp347.i = shl nuw nsw i480 %tmp346.i, 192
  %tmp339.i = bitcast float %198 to i32
  %tmp340.i = zext i32 %tmp339.i to i480
  %tmp341.i = shl nuw nsw i480 %tmp340.i, 224
  %tmp333.i = bitcast float %197 to i32
  %tmp334.i = zext i32 %tmp333.i to i480
  %tmp335.i = shl nuw nsw i480 %tmp334.i, 256
  %tmp290.i = zext i32 %201 to i480
  %tmp291.i = shl nuw nsw i480 %tmp290.i, 288
  %202 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %203 = mul nsw i32 %200, 25
  %204 = add nsw i32 %202, %203
  %205 = call float @llvm.trax.loadf(i32 %204, i32 6) nounwind
  %206 = call float @llvm.trax.loadf(i32 %204, i32 5) nounwind
  %207 = call float @llvm.trax.loadf(i32 %204, i32 4) nounwind
  %tmp325.i = bitcast float %207 to i32
  %tmp326.i = zext i32 %tmp325.i to i480
  %tmp327.i = shl nuw nsw i480 %tmp326.i, 320
  %tmp317.i = bitcast float %206 to i32
  %tmp318.i = zext i32 %tmp317.i to i480
  %tmp319.i = shl nuw nsw i480 %tmp318.i, 352
  %tmp309.i = bitcast float %205 to i32
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
  %tmp302 = zext i480 %ins285.i to i512
  %tmp303 = shl nuw i512 %tmp302, 32
  %ins305 = or i512 %tmp303, %tmp308
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i: ; preds = %bb3.i.i.i, %bb2.i.i.i, %bb96.i.i, %bb94.i55.i, %bb73.i.i, %bb5.i17
  %mask347575 = phi i512 [ %ins305, %bb3.i.i.i ], [ %mask347576, %bb2.i.i.i ], [ %mask347576, %bb96.i.i ], [ %mask347576, %bb94.i55.i ], [ %mask347576, %bb73.i.i ], [ %mask347576, %bb5.i17 ]
  %208 = add nsw i32 %storemerge388.i, 1
  %exitcond766 = icmp eq i32 %208, %91
  br i1 %exitcond766, label %bb7.i, label %bb5.i17

bb7.i:                                            ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i, %bb62.i.i, %bb29.i.i, %bb.i
  %mask347580 = phi i512 [ %mask347581, %bb6.preheader.i ], [ %mask347581, %bb.i ], [ %mask347581, %bb29.i.i ], [ %mask347581, %bb62.i.i ], [ %mask347575, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ]
  %209 = icmp slt i32 %sp.0.i, 0
  br i1 %209, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit, label %bb9.i

bb9.i:                                            ; preds = %bb7.i
  %210 = sext i32 %sp.0.i to i64
  %211 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %210
  %212 = load i32* %211, align 4
  %213 = add nsw i32 %sp.0.i, -1
  br label %bb.outer.i

_ZN3BVH9intersectER9HitRecordR3Ray.exit:          ; preds = %bb7.i
  %tmp319 = trunc i512 %mask347580 to i32
  %tmp320 = bitcast i32 %tmp319 to float
  %214 = fcmp olt float %tmp320, 1.000000e+10
  %indvar.next773 = add i32 %indvar772, 1
  br i1 %214, label %invcont61, label %bb69

invcont61:                                        ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %tmp315 = lshr i512 %mask347580, 480
  %tmp316 = trunc i512 %tmp315 to i32
  %tmp317 = bitcast i32 %tmp316 to float
  %215 = fmul float %42, %tmp320
  %216 = fmul float %45, %tmp320
  %217 = fmul float %tmp355, %tmp320
  %tmp64.i = bitcast float %215 to i32
  %tmp58.i = bitcast float %216 to i32
  %tmp236 = bitcast float %217 to i32
  store float %215, float* %.0285, align 4
  store float %216, float* %.1287, align 4
  store float %217, float* %.2289, align 4
  store float 0.000000e+00, float* %.1.0, align 4
  store float 0.000000e+00, float* %.1.1, align 4
  store float 0.000000e+00, float* %.1.2, align 4
  store float %tmp317, float* %.2.0, align 4
  store float %tmp317, float* %.2.1, align 4
  store float %tmp317, float* %.2.2, align 4
  %indvar.next778 = add i64 %indvar777, 1
  br label %bb68.outer

bb68.outer:                                       ; preds = %bb68.outer.preheader, %invcont61
  %indvar777 = phi i64 [ 0, %bb68.outer.preheader ], [ %indvar.next778, %invcont61 ]
  %mask347577 = phi i512 [ %mask347578702, %bb68.outer.preheader ], [ %mask347580, %invcont61 ]
  %memtmp30.0.ph = phi i128 [ %memtmp30.1703, %bb68.outer.preheader ], [ %ins262, %invcont61 ]
  %ray_origin.0.ph.off0 = phi i32 [ %ray_origin.1.off0704, %bb68.outer.preheader ], [ %tmp64.i, %invcont61 ]
  %ray_origin.0.ph.off32 = phi i32 [ %ray_origin.1.off32705, %bb68.outer.preheader ], [ %tmp58.i, %invcont61 ]
  %ray_origin.0.ph.off64 = phi i32 [ %ray_origin.1.off64706, %bb68.outer.preheader ], [ %tmp236, %invcont61 ]
  %bounces.0.ph = phi i32 [ 0, %bb68.outer.preheader ], [ %tmp775, %invcont61 ]
  %indvar741 = trunc i64 %indvar777 to i32
  %tmp781 = add i64 %tmp780, %indvar777
  %count.0.ph = trunc i64 %tmp781 to i32
  %tmp784 = add i64 %tmp783, %indvar777
  %.2.2 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %tmp784, i32 2, i64 2
  %.2.1 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %tmp784, i32 2, i64 1
  %.2.0 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %tmp784, i32 2, i64 0
  %.1.2 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %tmp784, i32 1, i32 2
  %.1.1 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %tmp784, i32 1, i32 1
  %.1.0 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %tmp784, i32 1, i32 0
  %.2289 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %tmp784, i32 0, i32 2
  %.1287 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %tmp784, i32 0, i32 1
  %.0285 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %tmp784, i32 0, i32 0
  %tmp396 = bitcast i32 %ray_origin.0.ph.off0 to float
  %tmp390 = bitcast i32 %ray_origin.0.ph.off32 to float
  %tmp382 = bitcast i32 %ray_origin.0.ph.off64 to float
  %tmp774 = add i32 %bounces.0.ph, 1
  br label %bb69

bb69:                                             ; preds = %bb68.outer, %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %indvar772 = phi i32 [ 0, %bb68.outer ], [ %indvar.next773, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %mask347579 = phi i512 [ %mask347577, %bb68.outer ], [ %mask347580, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %memtmp30.0 = phi i128 [ %memtmp30.0.ph, %bb68.outer ], [ %ins262, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %tmp775 = add i32 %tmp774, %indvar772
  %bounces.0 = add i32 %bounces.0.ph, %indvar772
  %218 = icmp slt i32 %bounces.0, 3
  br i1 %218, label %bb.i84, label %bb70

bb70:                                             ; preds = %bb69
  %219 = add nsw i32 %iterator.0708, 1
  %exitcond795 = icmp eq i32 %219, 15000
  br i1 %exitcond795, label %invcont74, label %bb68.outer.preheader

bb68.outer.preheader:                             ; preds = %bb70, %invcont18
  %iterator.0708 = phi i32 [ 0, %invcont18 ], [ %219, %bb70 ]
  %count.1707 = phi i32 [ 0, %invcont18 ], [ %count.0.ph, %bb70 ]
  %ray_origin.1.off64706 = phi i32 [ %tmp366, %invcont18 ], [ %ray_origin.0.ph.off64, %bb70 ]
  %ray_origin.1.off32705 = phi i32 [ %tmp372, %invcont18 ], [ %ray_origin.0.ph.off32, %bb70 ]
  %ray_origin.1.off0704 = phi i32 [ %tmp378, %invcont18 ], [ %ray_origin.0.ph.off0, %bb70 ]
  %memtmp30.1703 = phi i128 [ undef, %invcont18 ], [ %memtmp30.0, %bb70 ]
  %mask347578702 = phi i512 [ undef, %invcont18 ], [ %mask347579, %bb70 ]
  %tmp780 = zext i32 %count.1707 to i64
  %tmp783 = sext i32 %count.1707 to i64
  br label %bb68.outer

invcont74:                                        ; preds = %bb70
  %220 = call i32 @llvm.trax.atominc(i32 0)
  %221 = mul nsw i32 %1, %0
  %222 = sitofp i32 %0 to float
  %223 = fdiv float %222, -2.000000e+00
  %224 = sitofp i32 %1 to float
  %225 = fdiv float %224, -2.000000e+00
  %226 = icmp sgt i32 %221, %220
  br i1 %226, label %invcont83.lr.ph, label %return

invcont83.lr.ph:                                  ; preds = %invcont74
  %tmp557 = bitcast float %10 to i32
  %tmp558 = zext i32 %tmp557 to i192
  %tmp512 = bitcast float %11 to i32
  %tmp513 = zext i32 %tmp512 to i192
  %tmp514 = shl nuw nsw i192 %tmp513, 32
  %tmp502 = bitcast float %12 to i32
  %tmp503 = zext i32 %tmp502 to i192
  %tmp504 = shl nuw nsw i192 %tmp503, 64
  %mask505.masked.masked = or i192 %tmp514, %tmp558
  %mask551.masked = or i192 %mask505.masked.masked, %tmp504
  %tmp1880 = zext i32 %tmp557 to i96
  %tmp1875 = trunc i192 %tmp514 to i96
  %ins1877 = or i96 %tmp1875, %tmp1880
  %tmp1025 = zext i96 %ins1877 to i128
  %tmp1020 = trunc i192 %tmp504 to i128
  %mask1021 = or i128 %tmp1025, %tmp1020
  %227 = icmp sgt i32 %count.0.ph, 0
  %tmp743 = add i32 %count.1707, %indvar741
  %tmp744 = zext i32 %tmp743 to i64
  br label %invcont83

invcont83:                                        ; preds = %invcont100, %invcont83.lr.ph
  %storemerge2685 = phi i32 [ %220, %invcont83.lr.ph ], [ %503, %invcont100 ]
  %memtmp7.i.1678 = phi i128 [ undef, %invcont83.lr.ph ], [ %memtmp7.i.02660, %invcont100 ]
  %memtmp35.i.2675 = phi i128 [ undef, %invcont83.lr.ph ], [ %memtmp35.i.12652, %invcont100 ]
  %memtmp53.i.3674 = phi i128 [ undef, %invcont83.lr.ph ], [ %memtmp53.i.22650, %invcont100 ]
  %mask300584671 = phi i512 [ undef, %invcont83.lr.ph ], [ %mask300585, %invcont100 ]
  %228 = sdiv i32 %storemerge2685, %0
  %229 = srem i32 %storemerge2685, %0
  %230 = sitofp i32 %229 to float
  %231 = fadd float %230, %223
  %232 = fadd float %231, 5.000000e-01
  %233 = fmul float %232, 2.000000e+00
  %234 = fdiv float %233, %222
  %235 = sitofp i32 %228 to float
  %236 = fadd float %235, %225
  %237 = fadd float %236, 5.000000e-01
  %238 = fmul float %237, 2.000000e+00
  %239 = fdiv float %238, %224
  %240 = fmul float %26, %239
  %241 = fmul float %27, %239
  %242 = fmul float %28, %239
  %243 = fmul float %22, %234
  %244 = fmul float %23, %234
  %245 = fmul float %24, %234
  %246 = fadd float %240, %243
  %247 = fadd float %241, %244
  %248 = fadd float %245, %242
  %249 = fadd float %246, %18
  %250 = fadd float %247, %19
  %251 = fadd float %20, %248
  %252 = fmul float %249, %249
  %253 = fmul float %250, %250
  %254 = fadd float %252, %253
  %255 = fmul float %251, %251
  %256 = fadd float %254, %255
  %257 = call float @llvm.trax.invsqrt(float %256) nounwind
  %258 = fdiv float 1.000000e+00, %257
  %259 = fdiv float %251, %258
  %260 = fdiv float %250, %258
  %261 = fdiv float %249, %258
  %tmp548 = bitcast float %261 to i32
  %tmp549 = zext i32 %tmp548 to i192
  %tmp550 = shl nuw nsw i192 %tmp549, 96
  %tmp536 = bitcast float %260 to i32
  %tmp537 = zext i32 %tmp536 to i192
  %tmp538 = shl nuw nsw i192 %tmp537, 128
  %tmp522 = bitcast float %259 to i32
  %tmp523 = zext i32 %tmp522 to i192
  %tmp524 = shl nuw i192 %tmp523, 160
  %mask539.masked = or i192 %mask551.masked, %tmp538
  %mask525 = or i192 %mask539.masked, %tmp550
  %ins526 = or i192 %mask525, %tmp524
  %mask223 = and i512 %mask300584671, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins224 = or i512 %mask223, 1343554297
  %tmp456 = lshr i192 %ins526, 160
  %tmp457 = trunc i192 %tmp456 to i32
  %tmp458 = bitcast i32 %tmp457 to float
  br label %bb.outer.i44

bb.outer.i44:                                     ; preds = %bb9.i144, %invcont83
  %mask300586 = phi i512 [ %ins224, %invcont83 ], [ %mask300585, %bb9.i144 ]
  %node_id.0.ph.i39 = phi i32 [ 0, %invcont83 ], [ %419, %bb9.i144 ]
  %sp.0.ph.i40 = phi i32 [ -1, %invcont83 ], [ %420, %bb9.i144 ]
  %tmp404.i42 = add i32 %sp.0.ph.i40, 1
  %tmp724 = sext i32 %tmp404.i42 to i64
  %tmp726 = zext i32 %sp.0.ph.i40 to i64
  br label %bb.i56

bb.i56:                                           ; preds = %bb3.i72, %bb.outer.i44
  %indvar.i45 = phi i64 [ %indvar.next.i71, %bb3.i72 ], [ 0, %bb.outer.i44 ]
  %node_id.0.i46 = phi i32 [ %297, %bb3.i72 ], [ %node_id.0.ph.i39, %bb.outer.i44 ]
  %tmp725 = add i64 %tmp724, %indvar.i45
  %scevgep.i50 = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp725
  %tmp727 = add i64 %tmp726, %indvar.i45
  %sp.0.i48 = trunc i64 %tmp727 to i32
  %262 = shl nsw i32 %node_id.0.i46, 3
  %263 = add nsw i32 %262, %31
  %264 = call float @llvm.trax.loadf(i32 %263, i32 2) nounwind
  %265 = call float @llvm.trax.loadf(i32 %263, i32 1) nounwind
  %266 = call float @llvm.trax.loadf(i32 %263, i32 0) nounwind
  %267 = call float @llvm.trax.loadf(i32 %263, i32 5) nounwind
  %268 = call float @llvm.trax.loadf(i32 %263, i32 4) nounwind
  %269 = call float @llvm.trax.loadf(i32 %263, i32 3) nounwind
  %270 = fsub float %266, %10
  %271 = fdiv float %270, %261
  %272 = fsub float %269, %10
  %273 = fdiv float %272, %261
  %274 = fcmp ogt float %271, %273
  %tx1.i.0.i51 = select i1 %274, float %273, float %271
  %tx2.i.0.i52 = select i1 %274, float %271, float %273
  %275 = fcmp ogt float %tx1.i.0.i51, -1.000000e+10
  %tnear.i.0.i53 = select i1 %275, float %tx1.i.0.i51, float -1.000000e+10
  %276 = fcmp olt float %tx2.i.0.i52, 1.000000e+10
  %tfar.i.0.i54 = select i1 %276, float %tx2.i.0.i52, float 1.000000e+10
  %277 = fcmp ogt float %tnear.i.0.i53, %tfar.i.0.i54
  %278 = fcmp olt float %tfar.i.0.i54, 0.000000e+00
  %or.cond.i55 = or i1 %277, %278
  br i1 %or.cond.i55, label %bb7.i143, label %bb29.i.i62

bb29.i.i62:                                       ; preds = %bb.i56
  %279 = fsub float %265, %11
  %280 = fdiv float %279, %260
  %281 = fsub float %268, %11
  %282 = fdiv float %281, %260
  %283 = fcmp ogt float %280, %282
  %ty1.i.0.i57 = select i1 %283, float %282, float %280
  %ty2.i.0.i58 = select i1 %283, float %280, float %282
  %284 = fcmp ogt float %ty1.i.0.i57, %tnear.i.0.i53
  %tnear.i.1.i59 = select i1 %284, float %ty1.i.0.i57, float %tnear.i.0.i53
  %285 = fcmp olt float %ty2.i.0.i58, %tfar.i.0.i54
  %tfar.i.1.i60 = select i1 %285, float %ty2.i.0.i58, float %tfar.i.0.i54
  %286 = fcmp ogt float %tnear.i.1.i59, %tfar.i.1.i60
  %287 = fcmp olt float %tfar.i.1.i60, 0.000000e+00
  %or.cond1395.i61 = or i1 %286, %287
  br i1 %or.cond1395.i61, label %bb7.i143, label %bb62.i.i68

bb62.i.i68:                                       ; preds = %bb29.i.i62
  %288 = fsub float %264, %12
  %289 = fdiv float %288, %tmp458
  %290 = fsub float %267, %12
  %291 = fdiv float %290, %tmp458
  %292 = fcmp ogt float %289, %291
  %tz1.i.0.i63 = select i1 %292, float %291, float %289
  %tz2.i.0.i64 = select i1 %292, float %289, float %291
  %293 = fcmp ogt float %tz1.i.0.i63, %tnear.i.1.i59
  %tnear.i.2.i65 = select i1 %293, float %tz1.i.0.i63, float %tnear.i.1.i59
  %294 = fcmp olt float %tz2.i.0.i64, %tfar.i.1.i60
  %tfar.i.2.i66 = select i1 %294, float %tz2.i.0.i64, float %tfar.i.1.i60
  %295 = fcmp ogt float %tnear.i.2.i65, %tfar.i.2.i66
  %296 = fcmp olt float %tfar.i.2.i66, 0.000000e+00
  %or.cond1396.i67 = or i1 %295, %296
  br i1 %or.cond1396.i67, label %bb7.i143, label %bb1.i69

bb1.i69:                                          ; preds = %bb62.i.i68
  %297 = call i32 @llvm.trax.loadi(i32 %263, i32 7) nounwind
  %298 = call i32 @llvm.trax.loadi(i32 %263, i32 6) nounwind
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %bb3.i72, label %bb6.preheader.i70

bb6.preheader.i70:                                ; preds = %bb1.i69
  %300 = icmp sgt i32 %298, 0
  br i1 %300, label %bb5.i83, label %bb7.i143

bb3.i72:                                          ; preds = %bb1.i69
  %301 = add nsw i32 %297, 1
  store i32 %301, i32* %scevgep.i50, align 4
  %indvar.next.i71 = add i64 %indvar.i45, 1
  br label %bb.i56

bb5.i83:                                          ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i142, %bb6.preheader.i70
  %mask300583 = phi i512 [ %mask300582, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i142 ], [ %mask300586, %bb6.preheader.i70 ]
  %storemerge388.i73 = phi i32 [ %415, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i142 ], [ 0, %bb6.preheader.i70 ]
  %tmp719 = mul i32 %storemerge388.i73, 11
  %tmp396.i75 = add i32 %297, %tmp719
  %302 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 2) nounwind
  %303 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 1) nounwind
  %304 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 0) nounwind
  %305 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 5) nounwind
  %306 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 4) nounwind
  %307 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 3) nounwind
  %308 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 8) nounwind
  %309 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 7) nounwind
  %310 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 6) nounwind
  %311 = call i32 @llvm.trax.loadi(i32 %tmp396.i75, i32 10) nounwind
  %312 = call i32 @llvm.trax.loadi(i32 %tmp396.i75, i32 9) nounwind
  %313 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %314 = mul nsw i32 %311, 25
  %315 = add nsw i32 %313, %314
  %316 = call float @llvm.trax.loadf(i32 %315, i32 6) nounwind
  %317 = call float @llvm.trax.loadf(i32 %315, i32 5) nounwind
  %318 = call float @llvm.trax.loadf(i32 %315, i32 4) nounwind
  %319 = fsub float %304, %310
  %320 = fsub float %303, %309
  %321 = fsub float %302, %308
  %322 = fsub float %307, %310
  %323 = fsub float %306, %309
  %324 = fsub float %305, %308
  %325 = fmul float %320, %324
  %326 = fmul float %323, %321
  %327 = fsub float %325, %326
  %328 = fmul float %322, %321
  %329 = fmul float %319, %324
  %330 = fsub float %328, %329
  %331 = fmul float %323, %319
  %332 = fmul float %322, %320
  %333 = fsub float %331, %332
  %334 = fmul float %327, %327
  %335 = fmul float %330, %330
  %336 = fadd float %334, %335
  %337 = fmul float %333, %333
  %338 = fadd float %336, %337
  %339 = call float @llvm.trax.invsqrt(float %338) nounwind
  %340 = fmul float %260, %324
  %341 = fmul float %323, %tmp458
  %342 = fsub float %340, %341
  %343 = fmul float %322, %tmp458
  %344 = fmul float %261, %324
  %345 = fsub float %343, %344
  %346 = fmul float %323, %261
  %347 = fmul float %322, %260
  %348 = fsub float %346, %347
  %349 = fmul float %342, %319
  %350 = fadd float %349, 0.000000e+00
  %351 = fmul float %345, %320
  %352 = fadd float %351, %350
  %353 = fmul float %348, %321
  %354 = fadd float %353, %352
  %355 = fdiv float 1.000000e+00, %354
  %356 = fsub float %10, %310
  %357 = fsub float %11, %309
  %358 = fsub float %12, %308
  %359 = fmul float %342, %356
  %360 = fadd float %359, 0.000000e+00
  %361 = fmul float %345, %357
  %362 = fadd float %361, %360
  %363 = fmul float %348, %358
  %364 = fadd float %363, %362
  %365 = fmul float %364, %355
  %366 = fcmp olt float %365, 0.000000e+00
  %367 = fcmp ogt float %365, 1.000000e+00
  %or.cond1397.i82 = or i1 %366, %367
  br i1 %or.cond1397.i82, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i142, label %bb73.i.i84

bb73.i.i84:                                       ; preds = %bb5.i83
  %368 = fmul float %357, %321
  %369 = fmul float %320, %358
  %370 = fsub float %368, %369
  %371 = fmul float %319, %358
  %372 = fmul float %356, %321
  %373 = fsub float %371, %372
  %374 = fmul float %320, %356
  %375 = fmul float %319, %357
  %376 = fsub float %374, %375
  %377 = fmul float %370, %261
  %378 = fadd float %377, 0.000000e+00
  %379 = fmul float %373, %260
  %380 = fadd float %379, %378
  %381 = fmul float %376, %tmp458
  %382 = fadd float %381, %380
  %383 = fmul float %382, %355
  %384 = fcmp olt float %383, 0.000000e+00
  br i1 %384, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i142, label %bb94.i55.i85

bb94.i55.i85:                                     ; preds = %bb73.i.i84
  %385 = fadd float %383, %365
  %386 = fcmp ogt float %385, 1.000000e+00
  br i1 %386, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i142, label %bb96.i.i88

bb96.i.i88:                                       ; preds = %bb94.i55.i85
  %387 = fmul float %370, %322
  %388 = fadd float %387, 0.000000e+00
  %389 = fmul float %373, %323
  %390 = fadd float %389, %388
  %391 = fmul float %376, %324
  %392 = fadd float %391, %390
  %393 = fmul float %392, %355
  %394 = fcmp ule float %393, 0.000000e+00
  %395 = fcmp olt float %393, 0x3F50624DE0000000
  %or.cond1398.i86 = or i1 %394, %395
  %396 = fcmp oeq float %393, 1.000000e+10
  %or.cond1399.i87 = or i1 %or.cond1398.i86, %396
  br i1 %or.cond1399.i87, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i142, label %bb2.i.i.i89

bb2.i.i.i89:                                      ; preds = %bb96.i.i88
  %tmp217 = trunc i512 %mask300583 to i32
  %tmp218 = bitcast i32 %tmp217 to float
  %397 = fcmp ogt float %tmp218, %393
  br i1 %397, label %bb3.i.i.i140, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i142

bb3.i.i.i140:                                     ; preds = %bb2.i.i.i89
  %tmp212 = bitcast float %393 to i32
  %tmp213 = zext i32 %tmp212 to i512
  %398 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 2) nounwind
  %399 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 1) nounwind
  %400 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 0) nounwind
  %401 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 5) nounwind
  %402 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 4) nounwind
  %403 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 3) nounwind
  %404 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 8) nounwind
  %405 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 7) nounwind
  %406 = call float @llvm.trax.loadf(i32 %tmp396.i75, i32 6) nounwind
  %407 = call i32 @llvm.trax.loadi(i32 %tmp396.i75, i32 10) nounwind
  %408 = call i32 @llvm.trax.loadi(i32 %tmp396.i75, i32 9) nounwind
  %tmp369.i90 = bitcast float %400 to i32
  %tmp370.i91 = zext i32 %tmp369.i90 to i480
  %tmp301.i92 = bitcast float %399 to i32
  %tmp302.i93 = zext i32 %tmp301.i92 to i480
  %tmp303.i94 = shl nuw nsw i480 %tmp302.i93, 32
  %tmp295.i95 = bitcast float %398 to i32
  %tmp296.i96 = zext i32 %tmp295.i95 to i480
  %tmp297.i97 = shl nuw nsw i480 %tmp296.i96, 64
  %tmp363.i98 = bitcast float %403 to i32
  %tmp364.i99 = zext i32 %tmp363.i98 to i480
  %tmp365.i100 = shl nuw nsw i480 %tmp364.i99, 96
  %tmp357.i101 = bitcast float %402 to i32
  %tmp358.i102 = zext i32 %tmp357.i101 to i480
  %tmp359.i103 = shl nuw nsw i480 %tmp358.i102, 128
  %tmp351.i104 = bitcast float %401 to i32
  %tmp352.i105 = zext i32 %tmp351.i104 to i480
  %tmp353.i106 = shl nuw nsw i480 %tmp352.i105, 160
  %tmp345.i107 = bitcast float %406 to i32
  %tmp346.i108 = zext i32 %tmp345.i107 to i480
  %tmp347.i109 = shl nuw nsw i480 %tmp346.i108, 192
  %tmp339.i110 = bitcast float %405 to i32
  %tmp340.i111 = zext i32 %tmp339.i110 to i480
  %tmp341.i112 = shl nuw nsw i480 %tmp340.i111, 224
  %tmp333.i113 = bitcast float %404 to i32
  %tmp334.i114 = zext i32 %tmp333.i113 to i480
  %tmp335.i115 = shl nuw nsw i480 %tmp334.i114, 256
  %tmp290.i116 = zext i32 %408 to i480
  %tmp291.i117 = shl nuw nsw i480 %tmp290.i116, 288
  %409 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %410 = mul nsw i32 %407, 25
  %411 = add nsw i32 %409, %410
  %412 = call float @llvm.trax.loadf(i32 %411, i32 6) nounwind
  %413 = call float @llvm.trax.loadf(i32 %411, i32 5) nounwind
  %414 = call float @llvm.trax.loadf(i32 %411, i32 4) nounwind
  %tmp325.i118 = bitcast float %414 to i32
  %tmp326.i119 = zext i32 %tmp325.i118 to i480
  %tmp327.i120 = shl nuw nsw i480 %tmp326.i119, 320
  %tmp317.i121 = bitcast float %413 to i32
  %tmp318.i122 = zext i32 %tmp317.i121 to i480
  %tmp319.i123 = shl nuw nsw i480 %tmp318.i122, 352
  %tmp309.i124 = bitcast float %412 to i32
  %tmp310.i125 = zext i32 %tmp309.i124 to i480
  %tmp311.i126 = shl nuw nsw i480 %tmp310.i125, 384
  %mask298.i127 = or i480 %tmp297.i97, %tmp370.i91
  %mask366.i128 = or i480 %mask298.i127, %tmp303.i94
  %mask360.masked.masked.masked.masked.masked.i129 = or i480 %mask366.i128, %tmp353.i106
  %mask354.masked.masked.masked.masked.masked.masked.i130 = or i480 %mask360.masked.masked.masked.masked.masked.i129, %tmp359.i103
  %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i131 = or i480 %mask354.masked.masked.masked.masked.masked.masked.i130, %tmp365.i100
  %mask342.masked.masked.masked.masked.masked.masked.masked.i132 = or i480 %mask348.masked.masked.masked.masked.masked.masked.masked.masked.i131, %tmp335.i115
  %mask336.masked.masked.masked.masked.masked.masked.i133 = or i480 %mask342.masked.masked.masked.masked.masked.masked.masked.i132, %tmp341.i112
  %mask292.masked.masked.masked.masked.masked.i134 = or i480 %mask336.masked.masked.masked.masked.masked.masked.i133, %tmp347.i109
  %mask328.masked.masked.masked.masked.i135 = or i480 %mask292.masked.masked.masked.masked.masked.i134, %tmp291.i117
  %mask320.masked.masked.masked.i136 = or i480 %mask328.masked.masked.masked.masked.i135, %tmp311.i126
  %mask312.masked.masked.i137 = or i480 %mask320.masked.masked.masked.i136, %tmp319.i123
  %ins288.i138 = or i480 %mask312.masked.masked.i137, %tmp327.i120
  %ins285.i139 = or i480 %ins288.i138, 770681673391627619131312691654083964084373995933406099189890146314966155308140517402099473489517307419678932548501811235986099843289400054120448
  %tmp = zext i480 %ins285.i139 to i512
  %tmp210 = shl nuw i512 %tmp, 32
  %ins = or i512 %tmp210, %tmp213
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i142

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i142: ; preds = %bb3.i.i.i140, %bb2.i.i.i89, %bb96.i.i88, %bb94.i55.i85, %bb73.i.i84, %bb5.i83
  %mask300582 = phi i512 [ %ins, %bb3.i.i.i140 ], [ %mask300583, %bb2.i.i.i89 ], [ %mask300583, %bb96.i.i88 ], [ %mask300583, %bb94.i55.i85 ], [ %mask300583, %bb73.i.i84 ], [ %mask300583, %bb5.i83 ]
  %415 = add nsw i32 %storemerge388.i73, 1
  %exitcond = icmp eq i32 %415, %298
  br i1 %exitcond, label %bb7.i143, label %bb5.i83

bb7.i143:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i142, %bb6.preheader.i70, %bb62.i.i68, %bb29.i.i62, %bb.i56
  %mask300585 = phi i512 [ %mask300586, %bb6.preheader.i70 ], [ %mask300582, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i142 ], [ %mask300586, %bb.i56 ], [ %mask300586, %bb29.i.i62 ], [ %mask300586, %bb62.i.i68 ]
  %416 = icmp slt i32 %sp.0.i48, 0
  br i1 %416, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit145, label %bb9.i144

bb9.i144:                                         ; preds = %bb7.i143
  %417 = sext i32 %sp.0.i48 to i64
  %418 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %417
  %419 = load i32* %418, align 4
  %420 = add nsw i32 %sp.0.i48, -1
  br label %bb.outer.i44

_ZN3BVH9intersectER9HitRecordR3Ray.exit145:       ; preds = %bb7.i143
  %tmp220 = trunc i512 %mask300585 to i32
  %tmp221 = bitcast i32 %tmp220 to float
  %tmp296 = lshr i512 %mask300585, 32
  %tmp297 = trunc i512 %tmp296 to i32
  %tmp298 = bitcast i32 %tmp297 to float
  %tmp290 = lshr i512 %mask300585, 64
  %tmp291 = trunc i512 %tmp290 to i32
  %tmp292 = bitcast i32 %tmp291 to float
  %tmp278 = lshr i512 %mask300585, 128
  %tmp279 = trunc i512 %tmp278 to i32
  %tmp280 = bitcast i32 %tmp279 to float
  %tmp272 = lshr i512 %mask300585, 160
  %tmp273 = trunc i512 %tmp272 to i32
  %tmp274 = bitcast i32 %tmp273 to float
  %tmp257 = lshr i512 %mask300585, 224
  %tmp239 = lshr i512 %mask300585, 352
  %tmp240 = trunc i512 %tmp239 to i32
  %tmp241 = bitcast i32 %tmp240 to float
  %tmp233 = lshr i512 %mask300585, 384
  %tmp234 = trunc i512 %tmp233 to i32
  %tmp235 = bitcast i32 %tmp234 to float
  %421 = fcmp olt float %tmp221, 1.000000e+10
  br i1 %421, label %bb1.i27, label %bb4.i

bb1.i27:                                          ; preds = %bb1.i27, %_ZN3BVH9intersectER9HitRecordR3Ray.exit145
  %indvar = phi i64 [ %indvar.next, %bb1.i27 ], [ 0, %_ZN3BVH9intersectER9HitRecordR3Ray.exit145 ]
  %scevgep = getelementptr [10000 x %struct.Photon]* %nearest.i, i64 0, i64 %indvar, i32 2, i64 2
  %scevgep733 = getelementptr [10000 x %struct.Photon]* %nearest.i, i64 0, i64 %indvar, i32 2, i64 1
  %scevgep734 = getelementptr [10000 x %struct.Photon]* %nearest.i, i64 0, i64 %indvar, i32 2, i64 0
  %scevgep736 = getelementptr [10000 x %struct.Photon]* %nearest.i, i64 0, i64 %indvar
  %422 = bitcast %struct.Photon* %scevgep736 to i8*
  call void @llvm.memset.p0i8.i64(i8* %422, i8 0, i64 24, i32 4, i1 false)
  store float 1.000000e+00, float* %scevgep734, align 4
  store float 1.000000e+00, float* %scevgep733, align 4
  store float 1.000000e+00, float* %scevgep, align 4
  %indvar.next = add i64 %indvar, 1
  %exitcond732 = icmp eq i64 %indvar.next, 10000
  br i1 %exitcond732, label %bb3.i32, label %bb1.i27

bb3.i32:                                          ; preds = %bb1.i27
  %423 = lshr i192 %ins526, 96
  %.tr = trunc i192 %423 to i128
  %tmp1064 = and i128 %.tr, 79228162495817593519834398720
  %tmp1051 = lshr exact i128 %tmp1064, 64
  %tmp1052 = trunc i128 %tmp1051 to i32
  %tmp1053 = bitcast i32 %tmp1052 to float
  %424 = fmul float %261, %tmp221
  %425 = fmul float %260, %tmp221
  %426 = fmul float %tmp1053, %tmp221
  %tmp1902 = bitcast float %424 to i32
  %tmp1903 = zext i32 %tmp1902 to i96
  %tmp1896 = bitcast float %425 to i32
  %tmp1897 = zext i32 %tmp1896 to i96
  %tmp1898 = shl nuw nsw i96 %tmp1897, 32
  %ins1900 = or i96 %tmp1898, %tmp1903
  %tmp1890 = bitcast float %426 to i32
  %tmp1047 = zext i96 %ins1900 to i128
  %mask1048 = and i128 %memtmp7.i.1678, -79228162514264337593543950336
  %tmp1041 = zext i32 %tmp1890 to i128
  %tmp1042 = shl nuw nsw i128 %tmp1041, 64
  %mask1043 = or i128 %tmp1042, %mask1048
  %ins1044 = or i128 %mask1043, %tmp1047
  %ins1044.tr = trunc i128 %ins1044 to i96
  %tmp1007 = lshr i128 %mask1021, 64
  %tmp1008 = trunc i128 %tmp1007 to i32
  %tmp1009 = bitcast i32 %tmp1008 to float
  %tmp1121 = lshr i96 %ins1044.tr, 64
  %tmp1122 = trunc i96 %tmp1121 to i32
  %tmp1123 = bitcast i32 %tmp1122 to float
  %427 = fadd float %424, %10
  %428 = fadd float %425, %11
  %429 = fadd float %tmp1009, %tmp1123
  %tmp1645 = trunc i512 %tmp278 to i128
  %tmp1646 = and i128 %tmp1645, 79228162495817593519834398720
  %tmp1623 = trunc i512 %tmp296 to i128
  %tmp1624 = and i128 %tmp1623, 79228162495817593519834398720
  %tmp1611 = lshr exact i128 %tmp1624, 64
  %tmp1612 = trunc i128 %tmp1611 to i32
  %tmp1613 = bitcast i32 %tmp1612 to float
  %tmp1675713 = lshr i512 %mask300585, 192
  %tmp1676 = trunc i512 %tmp1675713 to i32
  %tmp1677 = bitcast i32 %tmp1676 to float
  %430 = fsub float %tmp298, %tmp280
  %431 = fsub float %tmp292, %tmp274
  %432 = fsub float %tmp1613, %tmp1677
  %tmp1545 = lshr exact i128 %tmp1646, 64
  %tmp1546 = trunc i128 %tmp1545 to i32
  %tmp1547 = bitcast i32 %tmp1546 to float
  %tmp1699715 = lshr i512 %mask300585, 288
  %tmp1700 = trunc i512 %tmp1699715 to i32
  %tmp1701 = bitcast i32 %tmp1700 to float
  %tmp41.i177 = trunc i512 %tmp257 to i32
  %tmp42.i178 = bitcast i32 %tmp41.i177 to float
  %433 = fsub float %tmp280, %tmp42.i178
  %tmp37.i179635 = lshr i512 %mask300585, 256
  %tmp38.i180 = trunc i512 %tmp37.i179635 to i32
  %tmp39.i181 = bitcast i32 %tmp38.i180 to float
  %434 = fsub float %tmp274, %tmp39.i181
  %435 = fsub float %tmp1547, %tmp1701
  %436 = fmul float %431, %435
  %437 = fmul float %434, %432
  %438 = fsub float %436, %437
  %439 = fmul float %433, %432
  %440 = fmul float %430, %435
  %441 = fsub float %439, %440
  %442 = fmul float %434, %430
  %443 = fmul float %433, %431
  %444 = fsub float %442, %443
  %445 = fmul float %438, %438
  %446 = fmul float %441, %441
  %447 = fadd float %445, %446
  %448 = fmul float %444, %444
  %449 = fadd float %447, %448
  %450 = call float @llvm.trax.invsqrt(float %449) nounwind
  %451 = fdiv float 1.000000e+00, %450
  %452 = fdiv float %444, %451
  %453 = fdiv float %441, %451
  %454 = fdiv float %438, %451
  br i1 %227, label %bb34.i, label %bb4.i

bb34.i:                                           ; preds = %bb79.i, %bb3.i32
  %indvar739 = phi i64 [ %indvar.next740, %bb79.i ], [ 0, %bb3.i32 ]
  %memtmp35.i.0661 = phi i128 [ %ins956, %bb79.i ], [ %memtmp35.i.2675, %bb3.i32 ]
  %memtmp53.i.1660 = phi i128 [ %memtmp53.i.0, %bb79.i ], [ %memtmp53.i.3674, %bb3.i32 ]
  %temp.i.2.1657 = phi float [ %temp.i.2.0, %bb79.i ], [ 0.000000e+00, %bb3.i32 ]
  %temp.i.1.1656 = phi float [ %temp.i.1.0, %bb79.i ], [ 0.000000e+00, %bb3.i32 ]
  %temp.i.0.1655 = phi float [ %temp.i.0.0, %bb79.i ], [ 0.000000e+00, %bb3.i32 ]
  %scevgep746 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %indvar739, i32 2, i64 0
  %scevgep747 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %indvar739, i32 2, i64 1
  %scevgep748 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %indvar739, i32 2, i64 2
  %scevgep749 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %indvar739, i32 0, i32 2
  %scevgep750 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %indvar739, i32 0, i32 1
  %scevgep751752 = getelementptr [15000 x %struct.Photon]* %32, i64 0, i64 %indvar739, i32 0, i32 0
  %455 = load float* %scevgep751752, align 4
  %456 = load float* %scevgep750, align 4
  %457 = load float* %scevgep749, align 4
  %tmp1466 = bitcast float %455 to i32
  %tmp1467 = zext i32 %tmp1466 to i96
  %tmp1460 = bitcast float %456 to i32
  %tmp1461 = zext i32 %tmp1460 to i96
  %tmp1462 = shl nuw nsw i96 %tmp1461, 32
  %ins1464 = or i96 %tmp1462, %tmp1467
  %tmp1454 = bitcast float %457 to i32
  %tmp959 = zext i96 %ins1464 to i128
  %mask960 = and i128 %memtmp35.i.0661, -79228162514264337593543950336
  %tmp953 = zext i32 %tmp1454 to i128
  %tmp954 = shl nuw nsw i128 %tmp953, 64
  %mask955 = or i128 %tmp954, %mask960
  %ins956 = or i128 %mask955, %tmp959
  %ins956.tr = trunc i128 %ins956 to i96
  %458 = fsub float %427, %455
  %459 = fmul float %458, %458
  %460 = fcmp ogt float %459, 0x3FE6666660000000
  br i1 %460, label %bb79.i, label %bb1.i.i

bb1.i.i:                                          ; preds = %bb34.i
  %461 = fsub float %428, %456
  %462 = fmul float %461, %461
  %463 = fadd float %462, %459
  %464 = fcmp ogt float %463, 0x3FE6666660000000
  br i1 %464, label %bb79.i, label %bb3.i.i

bb3.i.i:                                          ; preds = %bb1.i.i
  %tmp1404 = lshr i96 %ins956.tr, 64
  %tmp1405 = trunc i96 %tmp1404 to i32
  %tmp1406 = bitcast i32 %tmp1405 to float
  %465 = fsub float %429, %tmp1406
  %466 = fmul float %465, %465
  %467 = fadd float %466, %463
  %468 = fcmp ogt float %467, 0x3FE6666660000000
  br i1 %468, label %bb79.i, label %bb50.i

bb50.i:                                           ; preds = %bb3.i.i
  %mask938 = and i128 %memtmp53.i.1660, -79228162514264337593543950336
  %mask933 = or i128 %tmp954, %mask938
  %ins934 = or i128 %mask933, %tmp959
  %ins934.tr = trunc i128 %ins934 to i96
  %469 = fmul float %455, %454
  %470 = fadd float %469, 0.000000e+00
  %471 = fmul float %456, %453
  %472 = fadd float %471, %470
  %tmp1359 = lshr i96 %ins934.tr, 64
  %tmp1360 = trunc i96 %tmp1359 to i32
  %tmp1361 = bitcast i32 %tmp1360 to float
  %473 = fmul float %tmp1361, %452
  %474 = fadd float %473, %472
  %475 = fsub float -0.000000e+00, %474
  %476 = fcmp olt float %475, 0.000000e+00
  br i1 %476, label %llvm.trax.max.exit, label %bb1.i166

bb1.i166:                                         ; preds = %bb50.i
  %phitmp2608 = fpext float %475 to double
  br label %llvm.trax.max.exit

llvm.trax.max.exit:                               ; preds = %bb1.i166, %bb50.i
  %storemerge.i167 = phi double [ %phitmp2608, %bb1.i166 ], [ 0.000000e+00, %bb50.i ]
  %477 = call float @llvm.trax.invsqrt(float %467) nounwind
  %478 = fdiv float 1.000000e+00, %477
  %479 = fpext float %478 to double
  %480 = fsub double 1.000000e+00, %479
  %481 = fdiv double %480, 5.000000e+01
  %482 = fmul double %storemerge.i167, %481
  %483 = fptrunc double %482 to float
  %484 = load float* %scevgep748, align 4
  %485 = fadd float %484, %483
  %486 = load float* %scevgep747, align 4
  %487 = fadd float %486, %483
  %488 = load float* %scevgep746, align 4
  %489 = fadd float %488, %483
  %490 = fmul float %tmp241, %489
  %491 = fmul float %tmp235, %487
  %tmp1269717 = lshr i512 %mask300585, 416
  %tmp1270 = trunc i512 %tmp1269717 to i32
  %tmp1271 = bitcast i32 %tmp1270 to float
  %492 = fmul float %tmp1271, %485
  br label %bb79.i

bb79.i:                                           ; preds = %llvm.trax.max.exit, %bb3.i.i, %bb1.i.i, %bb34.i
  %temp.i.0.0 = phi float [ %490, %llvm.trax.max.exit ], [ %temp.i.0.1655, %bb34.i ], [ %temp.i.0.1655, %bb1.i.i ], [ %temp.i.0.1655, %bb3.i.i ]
  %temp.i.1.0 = phi float [ %491, %llvm.trax.max.exit ], [ %temp.i.1.1656, %bb34.i ], [ %temp.i.1.1656, %bb1.i.i ], [ %temp.i.1.1656, %bb3.i.i ]
  %temp.i.2.0 = phi float [ %492, %llvm.trax.max.exit ], [ %temp.i.2.1657, %bb34.i ], [ %temp.i.2.1657, %bb1.i.i ], [ %temp.i.2.1657, %bb3.i.i ]
  %memtmp53.i.0 = phi i128 [ %ins934, %llvm.trax.max.exit ], [ %memtmp53.i.1660, %bb34.i ], [ %memtmp53.i.1660, %bb1.i.i ], [ %memtmp53.i.1660, %bb3.i.i ]
  %indvar.next740 = add i64 %indvar739, 1
  %exitcond745 = icmp eq i64 %indvar.next740, %tmp744
  br i1 %exitcond745, label %invcont88, label %bb34.i

invcont88:                                        ; preds = %bb79.i
  %493 = fcmp olt float %temp.i.0.0, 0.000000e+00
  br i1 %493, label %bb5.i, label %bb1.i

bb1.i:                                            ; preds = %invcont88
  %494 = fcmp ogt float %temp.i.0.0, 1.000000e+00
  br i1 %494, label %bb5.i, label %bb4.i

bb4.i:                                            ; preds = %bb1.i, %bb3.i32, %_ZN3BVH9intersectER9HitRecordR3Ray.exit145
  %.01211.026412705 = phi float [ %temp.i.0.0, %bb1.i ], [ 0x3FE1F3B640000000, %_ZN3BVH9intersectER9HitRecordR3Ray.exit145 ], [ 0.000000e+00, %bb3.i32 ]
  %.11212.026432704 = phi float [ %temp.i.1.0, %bb1.i ], [ 0x3FE753F7C0000000, %_ZN3BVH9intersectER9HitRecordR3Ray.exit145 ], [ 0.000000e+00, %bb3.i32 ]
  %.21213.026452703 = phi float [ %temp.i.2.0, %bb1.i ], [ 0x3FEF9DB220000000, %_ZN3BVH9intersectER9HitRecordR3Ray.exit145 ], [ 0.000000e+00, %bb3.i32 ]
  %memtmp53.i.226512700 = phi i128 [ %memtmp53.i.0, %bb1.i ], [ %memtmp53.i.3674, %_ZN3BVH9intersectER9HitRecordR3Ray.exit145 ], [ %memtmp53.i.3674, %bb3.i32 ]
  %memtmp35.i.126532699 = phi i128 [ %ins956, %bb1.i ], [ %memtmp35.i.2675, %_ZN3BVH9intersectER9HitRecordR3Ray.exit145 ], [ %memtmp35.i.2675, %bb3.i32 ]
  %memtmp7.i.026612695 = phi i128 [ %ins1044, %bb1.i ], [ %memtmp7.i.1678, %_ZN3BVH9intersectER9HitRecordR3Ray.exit145 ], [ %ins1044, %bb3.i32 ]
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb1.i, %invcont88
  %memtmp7.i.02660 = phi i128 [ %memtmp7.i.026612695, %bb4.i ], [ %ins1044, %invcont88 ], [ %ins1044, %bb1.i ]
  %memtmp35.i.12652 = phi i128 [ %memtmp35.i.126532699, %bb4.i ], [ %ins956, %invcont88 ], [ %ins956, %bb1.i ]
  %memtmp53.i.22650 = phi i128 [ %memtmp53.i.226512700, %bb4.i ], [ %memtmp53.i.0, %invcont88 ], [ %memtmp53.i.0, %bb1.i ]
  %.21213.02644 = phi float [ %.21213.026452703, %bb4.i ], [ %temp.i.2.0, %invcont88 ], [ %temp.i.2.0, %bb1.i ]
  %.11212.02642 = phi float [ %.11212.026432704, %bb4.i ], [ %temp.i.1.0, %invcont88 ], [ %temp.i.1.0, %bb1.i ]
  %r.i.0 = phi float [ %.01211.026412705, %bb4.i ], [ 0.000000e+00, %invcont88 ], [ 1.000000e+00, %bb1.i ]
  %495 = fcmp olt float %.21213.02644, 0.000000e+00
  br i1 %495, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i
  %496 = fcmp ogt float %.21213.02644, 1.000000e+00
  br i1 %496, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i
  %b.i.0 = phi float [ %.21213.02644, %bb11.i ], [ 0.000000e+00, %bb5.i ], [ 1.000000e+00, %bb8.i ]
  %497 = fcmp olt float %.11212.02642, 0.000000e+00
  br i1 %497, label %invcont100, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %498 = fcmp ogt float %.11212.02642, 1.000000e+00
  br i1 %498, label %invcont100, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %invcont100

invcont100:                                       ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.i.0 = phi float [ %.11212.02642, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %499 = mul nsw i32 %228, %0
  %500 = add nsw i32 %499, %229
  %501 = mul nsw i32 %500, 3
  %502 = add nsw i32 %501, %2
  call void @llvm.trax.storef(float %r.i.0, i32 %502, i32 0) nounwind
  call void @llvm.trax.storef(float %g.i.0, i32 %502, i32 1) nounwind
  call void @llvm.trax.storef(float %b.i.0, i32 %502, i32 2) nounwind
  %503 = call i32 @llvm.trax.atominc(i32 0)
  %504 = icmp sgt i32 %221, %503
  br i1 %504, label %invcont83, label %return

return:                                           ; preds = %invcont100, %invcont74
  ret i32 0
}

declare float @llvm.trax.rand() nounwind

declare i32 @llvm.trax.atominc(i32) nounwind

declare float @llvm.trax.invsqrt(float) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind
