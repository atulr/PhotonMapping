; ModuleID = 'rt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

declare float @llvm.trax.loadf(i32, i32) nounwind

declare i32 @llvm.trax.loadi(i32, i32) nounwind

declare void @llvm.trax.storef(float, i32, i32) nounwind

declare float @llvm.trax.invsqrt(float) nounwind

declare float @llvm.trax.rand() nounwind

define i32 @main() nounwind ssp {
entry:
  %stack.i = alloca [32 x i32], align 4
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
  %32 = call i32 @llvm.trax.atominc(i32 0)
  %33 = mul nsw i32 %1, %0
  %34 = sitofp i32 %0 to float
  %35 = fdiv float %34, -2.000000e+00
  %36 = sitofp i32 %1 to float
  %37 = fdiv float %36, -2.000000e+00
  %38 = icmp sgt i32 %33, %32
  br i1 %38, label %bb.lr.ph, label %return

bb.lr.ph:                                         ; preds = %entry
  %tmp774 = bitcast float %10 to i32
  %tmp775 = zext i32 %tmp774 to i192
  %tmp688 = bitcast float %11 to i32
  %tmp689 = zext i32 %tmp688 to i192
  %tmp690 = shl nuw nsw i192 %tmp689, 32
  %tmp668 = bitcast float %12 to i32
  %tmp669 = zext i32 %tmp668 to i192
  %tmp670 = shl nuw nsw i192 %tmp669, 64
  %mask671 = or i192 %tmp690, %tmp775
  %mask759 = or i192 %mask671, %tmp670
  br label %bb

bb:                                               ; preds = %_ZN5Image3setEii5Color.exit, %bb.lr.ph
  %storemerge1318 = phi i32 [ %32, %bb.lr.ph ], [ %650, %_ZN5Image3setEii5Color.exit ]
  %memtmp4.i195.41310 = phi i128 [ undef, %bb.lr.ph ], [ %memtmp4.i195.2, %_ZN5Image3setEii5Color.exit ]
  %memtmp47.i.51306 = phi i128 [ undef, %bb.lr.ph ], [ %memtmp47.i.3, %_ZN5Image3setEii5Color.exit ]
  %memtmp.i109.11301 = phi i128 [ undef, %bb.lr.ph ], [ %ins2659, %_ZN5Image3setEii5Color.exit ]
  %memtmp4.i.21294 = phi i128 [ undef, %bb.lr.ph ], [ %memtmp4.i.0, %_ZN5Image3setEii5Color.exit ]
  %memtmp46.i.31290 = phi i128 [ undef, %bb.lr.ph ], [ %memtmp46.i.1, %_ZN5Image3setEii5Color.exit ]
  %memtmp91.i.21289 = phi i128 [ undef, %bb.lr.ph ], [ %memtmp91.i.0, %_ZN5Image3setEii5Color.exit ]
  %memtmp97.i.21288 = phi i128 [ undef, %bb.lr.ph ], [ %memtmp97.i.0, %_ZN5Image3setEii5Color.exit ]
  %mask60510261283 = phi i512 [ undef, %bb.lr.ph ], [ %mask6051029, %_ZN5Image3setEii5Color.exit ]
  %39 = sdiv i32 %storemerge1318, %0
  %40 = srem i32 %storemerge1318, %0
  %41 = sitofp i32 %40 to float
  %42 = fadd float %41, %35
  %43 = fadd float %42, 5.000000e-01
  %44 = fmul float %43, 2.000000e+00
  %45 = fdiv float %44, %34
  %46 = sitofp i32 %39 to float
  %47 = fadd float %46, %37
  %48 = fadd float %47, 5.000000e-01
  %49 = fmul float %48, 2.000000e+00
  %50 = fdiv float %49, %36
  br label %bb2

bb2:                                              ; preds = %bb50, %bb
  %storemerge11282 = phi i32 [ 0, %bb ], [ %636, %bb50 ]
  %memtmp4.i195.31274 = phi i128 [ %memtmp4.i195.41310, %bb ], [ %memtmp4.i195.2, %bb50 ]
  %memtmp47.i.41270 = phi i128 [ %memtmp47.i.51306, %bb ], [ %memtmp47.i.3, %bb50 ]
  %memtmp.i109.01265 = phi i128 [ %memtmp.i109.11301, %bb ], [ %ins2659, %bb50 ]
  %memtmp4.i.11258 = phi i128 [ %memtmp4.i.21294, %bb ], [ %memtmp4.i.0, %bb50 ]
  %memtmp46.i.21254 = phi i128 [ %memtmp46.i.31290, %bb ], [ %memtmp46.i.1, %bb50 ]
  %memtmp91.i.11253 = phi i128 [ %memtmp91.i.21289, %bb ], [ %memtmp91.i.0, %bb50 ]
  %memtmp97.i.11252 = phi i128 [ %memtmp97.i.21288, %bb ], [ %memtmp97.i.0, %bb50 ]
  %51 = phi float [ 0.000000e+00, %bb ], [ %635, %bb50 ]
  %52 = phi float [ 0.000000e+00, %bb ], [ %634, %bb50 ]
  %53 = phi float [ 0.000000e+00, %bb ], [ %633, %bb50 ]
  %mask8881016.off641247 = phi i32 [ 0, %bb ], [ %mask8881017.off64, %bb50 ]
  %mask8881016.off321246 = phi i32 [ 0, %bb ], [ %mask8881017.off32, %bb50 ]
  %mask8881016.off01245 = phi i32 [ 0, %bb ], [ %mask8881017.off0, %bb50 ]
  %mask60510281244 = phi i512 [ %mask60510261283, %bb ], [ %mask6051029, %bb50 ]
  %54 = call float @llvm.trax.rand()
  %55 = fadd float %54, -5.000000e-01
  %56 = fmul float %55, 2.000000e+00
  %57 = call float @llvm.trax.rand()
  %58 = fadd float %57, -5.000000e-01
  %59 = fmul float %58, 2.000000e+00
  %60 = fmul float %56, %3
  %61 = fmul float %59, %4
  %62 = fadd float %50, %61
  %63 = fadd float %45, %60
  %64 = fmul float %26, %62
  %65 = fmul float %27, %62
  %66 = fmul float %28, %62
  %tmp2804 = bitcast float %64 to i32
  %tmp2805 = zext i32 %tmp2804 to i96
  %tmp2798 = bitcast float %65 to i32
  %tmp2799 = zext i32 %tmp2798 to i96
  %tmp2800 = shl nuw nsw i96 %tmp2799, 32
  %ins2802 = or i96 %tmp2800, %tmp2805
  %tmp2792 = bitcast float %66 to i32
  %tmp2662 = zext i96 %ins2802 to i128
  %mask2663 = and i128 %memtmp.i109.01265, -79228162514264337593543950336
  %tmp2656 = zext i32 %tmp2792 to i128
  %tmp2657 = shl nuw nsw i128 %tmp2656, 64
  %mask2658 = or i128 %tmp2657, %mask2663
  %ins2659 = or i128 %mask2658, %tmp2662
  %ins2659.tr = trunc i128 %ins2659 to i96
  %67 = fmul float %22, %63
  %68 = fmul float %23, %63
  %69 = fmul float %24, %63
  %tmp2686 = lshr i96 %ins2659.tr, 64
  %tmp2687 = trunc i96 %tmp2686 to i32
  %tmp2688 = bitcast i32 %tmp2687 to float
  %70 = fadd float %64, %67
  %71 = fadd float %65, %68
  %72 = fadd float %69, %tmp2688
  %73 = fadd float %70, %18
  %74 = fadd float %71, %19
  %75 = fadd float %20, %72
  %76 = fmul float %73, %73
  %77 = fmul float %74, %74
  %78 = fadd float %76, %77
  %79 = fmul float %75, %75
  %80 = fadd float %78, %79
  %81 = call float @llvm.trax.invsqrt(float %80) nounwind
  %82 = fdiv float 1.000000e+00, %81
  %83 = fdiv float %75, %82
  %84 = fdiv float %74, %82
  %85 = fdiv float %73, %82
  %tmp756 = bitcast float %85 to i32
  %tmp757 = zext i32 %tmp756 to i192
  %tmp758 = shl nuw nsw i192 %tmp757, 96
  %tmp728 = bitcast float %84 to i32
  %tmp729 = zext i32 %tmp728 to i192
  %tmp730 = shl nuw nsw i192 %tmp729, 128
  %tmp702 = bitcast float %83 to i32
  %tmp703 = zext i32 %tmp702 to i192
  %tmp705 = shl nuw i192 %tmp703, 160
  %mask731 = or i192 %mask759, %tmp705
  %mask706 = or i192 %mask731, %tmp730
  %ins707 = or i192 %mask706, %tmp758
  br label %bb49

bb3:                                              ; preds = %bb49
  %mask532 = and i512 %mask6051027, -726838724295606890549323807878830539891817061676795686782676873123622580271327503353597348126162915664230802099766744271117060969332736
  %ins533 = or i512 %mask532, 1343554297
  %tmp651 = trunc i192 %ins7771023 to i32
  %tmp652 = bitcast i32 %tmp651 to float
  %tmp644 = lshr i192 %ins7771023, 32
  %tmp645 = trunc i192 %tmp644 to i32
  %tmp646 = bitcast i32 %tmp645 to float
  %tmp636 = lshr i192 %ins7771023, 64
  %tmp637 = trunc i192 %tmp636 to i32
  %tmp638 = bitcast i32 %tmp637 to float
  %tmp628 = lshr i192 %ins7771023, 96
  %tmp629 = trunc i192 %tmp628 to i32
  %tmp630 = bitcast i32 %tmp629 to float
  %tmp620 = lshr i192 %ins7771023, 128
  %tmp621 = trunc i192 %tmp620 to i32
  %tmp622 = bitcast i32 %tmp621 to float
  %tmp612 = lshr i192 %ins7771023, 160
  %tmp613 = trunc i192 %tmp612 to i32
  %tmp614 = bitcast i32 %tmp613 to float
  br label %bb.outer.i

bb.outer.i:                                       ; preds = %bb9.i, %bb3
  %mask6051031 = phi i512 [ %ins533, %bb3 ], [ %mask6051030, %bb9.i ]
  %node_id.0.ph.i = phi i32 [ 0, %bb3 ], [ %243, %bb9.i ]
  %sp.0.ph.i = phi i32 [ -1, %bb3 ], [ %244, %bb9.i ]
  %tmp404.i = add i32 %sp.0.ph.i, 1
  %tmp1353 = sext i32 %tmp404.i to i64
  %tmp1357 = zext i32 %sp.0.ph.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb3.i, %bb.outer.i
  %indvar.i = phi i64 [ %indvar.next.i, %bb3.i ], [ 0, %bb.outer.i ]
  %node_id.0.i = phi i32 [ %121, %bb3.i ], [ %node_id.0.ph.i, %bb.outer.i ]
  %tmp1356 = add i64 %tmp1353, %indvar.i
  %scevgep.i = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp1356
  %tmp1358 = add i64 %tmp1357, %indvar.i
  %sp.0.i = trunc i64 %tmp1358 to i32
  %86 = shl nsw i32 %node_id.0.i, 3
  %87 = add nsw i32 %86, %31
  %88 = call float @llvm.trax.loadf(i32 %87, i32 2) nounwind
  %89 = call float @llvm.trax.loadf(i32 %87, i32 1) nounwind
  %90 = call float @llvm.trax.loadf(i32 %87, i32 0) nounwind
  %91 = call float @llvm.trax.loadf(i32 %87, i32 5) nounwind
  %92 = call float @llvm.trax.loadf(i32 %87, i32 4) nounwind
  %93 = call float @llvm.trax.loadf(i32 %87, i32 3) nounwind
  %94 = fsub float %90, %tmp652
  %95 = fdiv float %94, %tmp630
  %96 = fsub float %93, %tmp652
  %97 = fdiv float %96, %tmp630
  %98 = fcmp ogt float %95, %97
  %tx1.i.0.i = select i1 %98, float %97, float %95
  %tx2.i.0.i = select i1 %98, float %95, float %97
  %99 = fcmp ogt float %tx1.i.0.i, -1.000000e+10
  %tnear.i.0.i = select i1 %99, float %tx1.i.0.i, float -1.000000e+10
  %100 = fcmp olt float %tx2.i.0.i, 1.000000e+10
  %tfar.i.0.i = select i1 %100, float %tx2.i.0.i, float 1.000000e+10
  %101 = fcmp ogt float %tnear.i.0.i, %tfar.i.0.i
  %102 = fcmp olt float %tfar.i.0.i, 0.000000e+00
  %or.cond.i = or i1 %101, %102
  br i1 %or.cond.i, label %bb7.i, label %bb29.i.i

bb29.i.i:                                         ; preds = %bb.i
  %103 = fsub float %89, %tmp646
  %104 = fdiv float %103, %tmp622
  %105 = fsub float %92, %tmp646
  %106 = fdiv float %105, %tmp622
  %107 = fcmp ogt float %104, %106
  %ty1.i.0.i = select i1 %107, float %106, float %104
  %ty2.i.0.i = select i1 %107, float %104, float %106
  %108 = fcmp ogt float %ty1.i.0.i, %tnear.i.0.i
  %tnear.i.1.i = select i1 %108, float %ty1.i.0.i, float %tnear.i.0.i
  %109 = fcmp olt float %ty2.i.0.i, %tfar.i.0.i
  %tfar.i.1.i = select i1 %109, float %ty2.i.0.i, float %tfar.i.0.i
  %110 = fcmp ogt float %tnear.i.1.i, %tfar.i.1.i
  %111 = fcmp olt float %tfar.i.1.i, 0.000000e+00
  %or.cond1395.i = or i1 %110, %111
  br i1 %or.cond1395.i, label %bb7.i, label %bb62.i.i

bb62.i.i:                                         ; preds = %bb29.i.i
  %112 = fsub float %88, %tmp638
  %113 = fdiv float %112, %tmp614
  %114 = fsub float %91, %tmp638
  %115 = fdiv float %114, %tmp614
  %116 = fcmp ogt float %113, %115
  %tz1.i.0.i = select i1 %116, float %115, float %113
  %tz2.i.0.i = select i1 %116, float %113, float %115
  %117 = fcmp ogt float %tz1.i.0.i, %tnear.i.1.i
  %tnear.i.2.i = select i1 %117, float %tz1.i.0.i, float %tnear.i.1.i
  %118 = fcmp olt float %tz2.i.0.i, %tfar.i.1.i
  %tfar.i.2.i = select i1 %118, float %tz2.i.0.i, float %tfar.i.1.i
  %119 = fcmp ogt float %tnear.i.2.i, %tfar.i.2.i
  %120 = fcmp olt float %tfar.i.2.i, 0.000000e+00
  %or.cond1396.i = or i1 %119, %120
  br i1 %or.cond1396.i, label %bb7.i, label %bb1.i163

bb1.i163:                                         ; preds = %bb62.i.i
  %121 = call i32 @llvm.trax.loadi(i32 %87, i32 7) nounwind
  %122 = call i32 @llvm.trax.loadi(i32 %87, i32 6) nounwind
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %bb3.i, label %bb6.preheader.i

bb6.preheader.i:                                  ; preds = %bb1.i163
  %124 = icmp sgt i32 %122, 0
  br i1 %124, label %bb5.i164, label %bb7.i

bb3.i:                                            ; preds = %bb1.i163
  %125 = add nsw i32 %121, 1
  store i32 %125, i32* %scevgep.i, align 4
  %indvar.next.i = add i64 %indvar.i, 1
  br label %bb.i

bb5.i164:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i
  %mask6051025 = phi i512 [ %mask6051024, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ %mask6051031, %bb6.preheader.i ]
  %storemerge388.i = phi i32 [ %239, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ], [ 0, %bb6.preheader.i ]
  %tmp1361 = mul i32 %storemerge388.i, 11
  %tmp396.i = add i32 %121, %tmp1361
  %126 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %127 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %128 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %129 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %130 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %131 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %132 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %133 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %134 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %135 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %136 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %137 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %138 = mul nsw i32 %135, 25
  %139 = add nsw i32 %137, %138
  %140 = call float @llvm.trax.loadf(i32 %139, i32 6) nounwind
  %141 = call float @llvm.trax.loadf(i32 %139, i32 5) nounwind
  %142 = call float @llvm.trax.loadf(i32 %139, i32 4) nounwind
  %143 = fsub float %128, %134
  %144 = fsub float %127, %133
  %145 = fsub float %126, %132
  %146 = fsub float %131, %134
  %147 = fsub float %130, %133
  %148 = fsub float %129, %132
  %149 = fmul float %144, %148
  %150 = fmul float %147, %145
  %151 = fsub float %149, %150
  %152 = fmul float %146, %145
  %153 = fmul float %143, %148
  %154 = fsub float %152, %153
  %155 = fmul float %147, %143
  %156 = fmul float %146, %144
  %157 = fsub float %155, %156
  %158 = fmul float %151, %151
  %159 = fmul float %154, %154
  %160 = fadd float %158, %159
  %161 = fmul float %157, %157
  %162 = fadd float %160, %161
  %163 = call float @llvm.trax.invsqrt(float %162) nounwind
  %164 = fmul float %tmp622, %148
  %165 = fmul float %147, %tmp614
  %166 = fsub float %164, %165
  %167 = fmul float %146, %tmp614
  %168 = fmul float %tmp630, %148
  %169 = fsub float %167, %168
  %170 = fmul float %147, %tmp630
  %171 = fmul float %146, %tmp622
  %172 = fsub float %170, %171
  %173 = fmul float %166, %143
  %174 = fadd float %173, 0.000000e+00
  %175 = fmul float %169, %144
  %176 = fadd float %175, %174
  %177 = fmul float %172, %145
  %178 = fadd float %177, %176
  %179 = fdiv float 1.000000e+00, %178
  %180 = fsub float %tmp652, %134
  %181 = fsub float %tmp646, %133
  %182 = fsub float %tmp638, %132
  %183 = fmul float %166, %180
  %184 = fadd float %183, 0.000000e+00
  %185 = fmul float %169, %181
  %186 = fadd float %185, %184
  %187 = fmul float %172, %182
  %188 = fadd float %187, %186
  %189 = fmul float %188, %179
  %190 = fcmp olt float %189, 0.000000e+00
  %191 = fcmp ogt float %189, 1.000000e+00
  %or.cond1397.i = or i1 %190, %191
  br i1 %or.cond1397.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb73.i.i

bb73.i.i:                                         ; preds = %bb5.i164
  %192 = fmul float %181, %145
  %193 = fmul float %144, %182
  %194 = fsub float %192, %193
  %195 = fmul float %143, %182
  %196 = fmul float %180, %145
  %197 = fsub float %195, %196
  %198 = fmul float %144, %180
  %199 = fmul float %143, %181
  %200 = fsub float %198, %199
  %201 = fmul float %194, %tmp630
  %202 = fadd float %201, 0.000000e+00
  %203 = fmul float %197, %tmp622
  %204 = fadd float %203, %202
  %205 = fmul float %200, %tmp614
  %206 = fadd float %205, %204
  %207 = fmul float %206, %179
  %208 = fcmp olt float %207, 0.000000e+00
  br i1 %208, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb94.i55.i

bb94.i55.i:                                       ; preds = %bb73.i.i
  %209 = fadd float %207, %189
  %210 = fcmp ogt float %209, 1.000000e+00
  br i1 %210, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb96.i.i

bb96.i.i:                                         ; preds = %bb94.i55.i
  %211 = fmul float %194, %146
  %212 = fadd float %211, 0.000000e+00
  %213 = fmul float %197, %147
  %214 = fadd float %213, %212
  %215 = fmul float %200, %148
  %216 = fadd float %215, %214
  %217 = fmul float %216, %179
  %218 = fcmp ule float %217, 0.000000e+00
  %219 = fcmp olt float %217, 0x3F50624DE0000000
  %or.cond1398.i = or i1 %218, %219
  %220 = fcmp oeq float %217, 1.000000e+10
  %or.cond1399.i = or i1 %or.cond1398.i, %220
  br i1 %or.cond1399.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb96.i.i
  %tmp526 = trunc i512 %mask6051025 to i32
  %tmp527 = bitcast i32 %tmp526 to float
  %221 = fcmp ogt float %tmp527, %217
  br i1 %221, label %bb3.i.i.i, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

bb3.i.i.i:                                        ; preds = %bb2.i.i.i
  %tmp521 = bitcast float %217 to i32
  %tmp522 = zext i32 %tmp521 to i512
  %222 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 2) nounwind
  %223 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 1) nounwind
  %224 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 0) nounwind
  %225 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 5) nounwind
  %226 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 4) nounwind
  %227 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 3) nounwind
  %228 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 8) nounwind
  %229 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 7) nounwind
  %230 = call float @llvm.trax.loadf(i32 %tmp396.i, i32 6) nounwind
  %231 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 10) nounwind
  %232 = call i32 @llvm.trax.loadi(i32 %tmp396.i, i32 9) nounwind
  %tmp369.i = bitcast float %224 to i32
  %tmp370.i = zext i32 %tmp369.i to i480
  %tmp301.i = bitcast float %223 to i32
  %tmp302.i = zext i32 %tmp301.i to i480
  %tmp303.i = shl nuw nsw i480 %tmp302.i, 32
  %tmp295.i = bitcast float %222 to i32
  %tmp296.i = zext i32 %tmp295.i to i480
  %tmp297.i = shl nuw nsw i480 %tmp296.i, 64
  %tmp363.i = bitcast float %227 to i32
  %tmp364.i = zext i32 %tmp363.i to i480
  %tmp365.i = shl nuw nsw i480 %tmp364.i, 96
  %tmp357.i = bitcast float %226 to i32
  %tmp358.i = zext i32 %tmp357.i to i480
  %tmp359.i = shl nuw nsw i480 %tmp358.i, 128
  %tmp351.i = bitcast float %225 to i32
  %tmp352.i = zext i32 %tmp351.i to i480
  %tmp353.i = shl nuw nsw i480 %tmp352.i, 160
  %tmp345.i = bitcast float %230 to i32
  %tmp346.i = zext i32 %tmp345.i to i480
  %tmp347.i = shl nuw nsw i480 %tmp346.i, 192
  %tmp339.i = bitcast float %229 to i32
  %tmp340.i = zext i32 %tmp339.i to i480
  %tmp341.i = shl nuw nsw i480 %tmp340.i, 224
  %tmp333.i = bitcast float %228 to i32
  %tmp334.i = zext i32 %tmp333.i to i480
  %tmp335.i = shl nuw nsw i480 %tmp334.i, 256
  %tmp290.i = zext i32 %232 to i480
  %tmp291.i = shl nuw nsw i480 %tmp290.i, 288
  %233 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %234 = mul nsw i32 %231, 25
  %235 = add nsw i32 %233, %234
  %236 = call float @llvm.trax.loadf(i32 %235, i32 6) nounwind
  %237 = call float @llvm.trax.loadf(i32 %235, i32 5) nounwind
  %238 = call float @llvm.trax.loadf(i32 %235, i32 4) nounwind
  %tmp325.i = bitcast float %238 to i32
  %tmp326.i = zext i32 %tmp325.i to i480
  %tmp327.i = shl nuw nsw i480 %tmp326.i, 320
  %tmp317.i = bitcast float %237 to i32
  %tmp318.i = zext i32 %tmp317.i to i480
  %tmp319.i = shl nuw nsw i480 %tmp318.i, 352
  %tmp309.i = bitcast float %236 to i32
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
  %tmp = zext i480 %ins285.i to i512
  %tmp519 = shl nuw i512 %tmp, 32
  %ins = or i512 %tmp519, %tmp522
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i: ; preds = %bb3.i.i.i, %bb2.i.i.i, %bb96.i.i, %bb94.i55.i, %bb73.i.i, %bb5.i164
  %mask6051024 = phi i512 [ %ins, %bb3.i.i.i ], [ %mask6051025, %bb2.i.i.i ], [ %mask6051025, %bb96.i.i ], [ %mask6051025, %bb94.i55.i ], [ %mask6051025, %bb73.i.i ], [ %mask6051025, %bb5.i164 ]
  %239 = add nsw i32 %storemerge388.i, 1
  %exitcond1360 = icmp eq i32 %239, %122
  br i1 %exitcond1360, label %bb7.i, label %bb5.i164

bb7.i:                                            ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i, %bb6.preheader.i, %bb62.i.i, %bb29.i.i, %bb.i
  %mask6051030 = phi i512 [ %mask6051031, %bb6.preheader.i ], [ %mask6051031, %bb.i ], [ %mask6051031, %bb29.i.i ], [ %mask6051031, %bb62.i.i ], [ %mask6051024, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i ]
  %240 = icmp slt i32 %sp.0.i, 0
  br i1 %240, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit, label %bb9.i

bb9.i:                                            ; preds = %bb7.i
  %241 = sext i32 %sp.0.i to i64
  %242 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %241
  %243 = load i32* %242, align 4
  %244 = add nsw i32 %sp.0.i, -1
  br label %bb.outer.i

_ZN3BVH9intersectER9HitRecordR3Ray.exit:          ; preds = %bb7.i
  %tmp987 = trunc i512 %mask6051030 to i32
  %tmp988 = bitcast i32 %tmp987 to float
  %245 = fcmp olt float %tmp988, 1.000000e+10
  br i1 %245, label %bb.i304, label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

bb.i304:                                          ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %tmp980 = lshr i512 %mask6051030, 32
  %tmp981 = trunc i512 %tmp980 to i32
  %tmp982 = bitcast i32 %tmp981 to float
  %tmp976 = lshr i512 %mask6051030, 64
  %tmp977 = trunc i512 %tmp976 to i32
  %tmp978 = bitcast i32 %tmp977 to float
  %tmp968 = lshr i512 %mask6051030, 128
  %tmp969 = trunc i512 %tmp968 to i32
  %tmp970 = bitcast i32 %tmp969 to float
  %tmp964 = lshr i512 %mask6051030, 160
  %tmp965 = trunc i512 %tmp964 to i32
  %tmp966 = bitcast i32 %tmp965 to float
  %tmp956 = lshr i512 %mask6051030, 224
  %tmp944 = lshr i512 %mask6051030, 352
  %tmp932 = lshr i512 %mask6051030, 448
  %tmp933 = trunc i512 %tmp932 to i32
  %tmp934 = bitcast i32 %tmp933 to float
  %tmp928 = lshr i512 %mask6051030, 480
  %tmp929 = trunc i512 %tmp928 to i32
  %tmp930 = bitcast i32 %tmp929 to float
  %246 = fmul float %tmp630, %tmp988
  %247 = fmul float %tmp622, %tmp988
  %248 = fmul float %tmp614, %tmp988
  %tmp3688 = bitcast float %246 to i32
  %tmp3689 = zext i32 %tmp3688 to i96
  %tmp3682 = bitcast float %247 to i32
  %tmp3683 = zext i32 %tmp3682 to i96
  %tmp3684 = shl nuw nsw i96 %tmp3683, 32
  %ins3686 = or i96 %tmp3684, %tmp3689
  %tmp3676 = bitcast float %248 to i32
  %tmp3194 = zext i96 %ins3686 to i128
  %mask3195 = and i128 %memtmp4.i195.1, -79228162514264337593543950336
  %tmp3188 = zext i32 %tmp3676 to i128
  %tmp3189 = shl nuw nsw i128 %tmp3188, 64
  %mask3190 = or i128 %tmp3189, %mask3195
  %ins3191 = or i128 %mask3190, %tmp3194
  %ins3191.tr = trunc i128 %ins3191 to i96
  %tmp3166 = trunc i192 %ins7771023 to i128
  %tmp3154 = lshr i128 %tmp3166, 64
  %tmp3155 = trunc i128 %tmp3154 to i32
  %tmp3156 = bitcast i32 %tmp3155 to float
  %tmp3332 = lshr i96 %ins3191.tr, 64
  %tmp3333 = trunc i96 %tmp3332 to i32
  %tmp3334 = bitcast i32 %tmp3333 to float
  %249 = fadd float %246, %tmp652
  %250 = fadd float %247, %tmp646
  %251 = fadd float %tmp3156, %tmp3334
  %tmp3981 = trunc i512 %tmp968 to i128
  %tmp3982 = and i128 %tmp3981, 79228162495817593519834398720
  %tmp3959 = trunc i512 %tmp980 to i128
  %tmp3960 = and i128 %tmp3959, 79228162495817593519834398720
  %tmp3947 = lshr exact i128 %tmp3960, 64
  %tmp3948 = trunc i128 %tmp3947 to i32
  %tmp3949 = bitcast i32 %tmp3948 to float
  %tmp40111329 = lshr i512 %mask6051030, 192
  %tmp4012 = trunc i512 %tmp40111329 to i32
  %tmp4013 = bitcast i32 %tmp4012 to float
  %252 = fsub float %tmp982, %tmp970
  %253 = fsub float %tmp978, %tmp966
  %254 = fsub float %tmp3949, %tmp4013
  %tmp3881 = lshr exact i128 %tmp3982, 64
  %tmp3882 = trunc i128 %tmp3881 to i32
  %tmp3883 = bitcast i32 %tmp3882 to float
  %tmp40351331 = lshr i512 %mask6051030, 288
  %tmp4036 = trunc i512 %tmp40351331 to i32
  %tmp4037 = bitcast i32 %tmp4036 to float
  %tmp41.i196 = trunc i512 %tmp956 to i32
  %tmp42.i197 = bitcast i32 %tmp41.i196 to float
  %255 = fsub float %tmp970, %tmp42.i197
  %tmp37.i1981156 = lshr i512 %mask6051030, 256
  %tmp38.i199 = trunc i512 %tmp37.i1981156 to i32
  %tmp39.i200 = bitcast i32 %tmp38.i199 to float
  %256 = fsub float %tmp966, %tmp39.i200
  %257 = fsub float %tmp3883, %tmp4037
  %258 = fmul float %253, %257
  %259 = fmul float %256, %254
  %260 = fsub float %258, %259
  %261 = fmul float %255, %254
  %262 = fmul float %252, %257
  %263 = fsub float %261, %262
  %264 = fmul float %256, %252
  %265 = fmul float %255, %253
  %266 = fsub float %264, %265
  %267 = fmul float %260, %260
  %268 = fmul float %263, %263
  %269 = fadd float %267, %268
  %270 = fmul float %266, %266
  %271 = fadd float %269, %270
  %272 = call float @llvm.trax.invsqrt(float %271) nounwind
  %273 = fdiv float 1.000000e+00, %272
  %274 = fdiv float %266, %273
  %275 = fdiv float %263, %273
  %276 = fdiv float %260, %273
  %277 = fmul float %tmp630, %tmp630
  %278 = fmul float %tmp622, %tmp622
  %279 = fadd float %277, %278
  %280 = fmul float %tmp614, %tmp614
  %281 = fadd float %279, %280
  %282 = call float @llvm.trax.invsqrt(float %281) nounwind
  %283 = fdiv float 1.000000e+00, %282
  %284 = fdiv float %tmp614, %283
  %285 = fdiv float %tmp622, %283
  %286 = fdiv float %tmp630, %283
  %287 = fmul float %286, %276
  %288 = fadd float %287, 0.000000e+00
  %289 = fmul float %285, %275
  %290 = fadd float %289, %288
  %291 = fmul float %284, %274
  %292 = fadd float %291, %290
  %293 = fcmp ogt float %292, 0.000000e+00
  br i1 %293, label %bb46.i, label %bb53.i305

bb46.i:                                           ; preds = %bb.i304
  %294 = fmul float %276, -1.000000e+00
  %295 = fmul float %275, -1.000000e+00
  %296 = fmul float %274, -1.000000e+00
  %tmp3780 = bitcast float %294 to i32
  %tmp3781 = zext i32 %tmp3780 to i96
  %tmp3774 = bitcast float %295 to i32
  %tmp3775 = zext i32 %tmp3774 to i96
  %tmp3776 = shl nuw nsw i96 %tmp3775, 32
  %ins3778 = or i96 %tmp3781, %tmp3776
  %tmp3768 = bitcast float %296 to i32
  %tmp3062 = zext i96 %ins3778 to i128
  %mask3063 = and i128 %memtmp47.i.2, -79228162514264337593543950336
  %tmp3056 = zext i32 %tmp3768 to i128
  %tmp3057 = shl nuw nsw i128 %tmp3056, 64
  %mask3058 = or i128 %tmp3062, %mask3063
  %ins3059 = or i128 %mask3058, %tmp3057
  %tmp3044 = lshr i128 %ins3059, 64
  %tmp3045 = trunc i128 %tmp3044 to i32
  %tmp3046 = bitcast i32 %tmp3045 to float
  br label %bb53.i305

bb53.i305:                                        ; preds = %bb46.i, %bb.i304
  %N.i.0.0 = phi float [ %294, %bb46.i ], [ %276, %bb.i304 ]
  %N.i.1.0 = phi float [ %295, %bb46.i ], [ %275, %bb.i304 ]
  %N.i.2.0 = phi float [ %tmp3046, %bb46.i ], [ %274, %bb.i304 ]
  %memtmp47.i.0 = phi i128 [ %ins3059, %bb46.i ], [ %memtmp47.i.2, %bb.i304 ]
  %297 = fmul float %tmp934, 0.000000e+00
  %298 = fsub float %6, %249
  %299 = fsub float %7, %250
  %300 = fsub float %8, %251
  %301 = fmul float %298, %298
  %302 = fmul float %299, %299
  %303 = fadd float %301, %302
  %304 = fmul float %300, %300
  %305 = fadd float %303, %304
  %306 = call float @llvm.trax.invsqrt(float %305) nounwind
  %307 = fdiv float 1.000000e+00, %306
  %308 = fdiv float %300, %307
  %309 = fdiv float %299, %307
  %310 = fdiv float %298, %307
  %311 = fmul float %310, %N.i.0.0
  %312 = fadd float %311, 0.000000e+00
  %313 = fmul float %309, %N.i.1.0
  %314 = fadd float %313, %312
  %315 = fmul float %308, %N.i.2.0
  %316 = fadd float %315, %314
  %317 = fcmp ogt float %316, 0.000000e+00
  br i1 %317, label %bb94.i, label %bb121.i

bb94.i:                                           ; preds = %bb53.i305
  %318 = call float @llvm.trax.invsqrt(float %305) nounwind
  br label %bb.outer.i273

bb.outer.i273:                                    ; preds = %bb9.i373, %bb94.i
  %tmp9861013.off0 = phi i32 [ %tmp987, %bb94.i ], [ %tmp9861012.off0, %bb9.i373 ]
  %node_id.0.ph.i268 = phi i32 [ 0, %bb94.i ], [ %476, %bb9.i373 ]
  %sp.0.ph.i269 = phi i32 [ -1, %bb94.i ], [ %477, %bb9.i373 ]
  %tmp404.i271 = add i32 %sp.0.ph.i269, 1
  %tmp1340 = sext i32 %tmp404.i271 to i64
  %tmp1342 = zext i32 %sp.0.ph.i269 to i64
  br label %bb.i285

bb.i285:                                          ; preds = %bb3.i301, %bb.outer.i273
  %indvar.i274 = phi i64 [ %indvar.next.i300, %bb3.i301 ], [ 0, %bb.outer.i273 ]
  %node_id.0.i275 = phi i32 [ %354, %bb3.i301 ], [ %node_id.0.ph.i268, %bb.outer.i273 ]
  %tmp1341 = add i64 %tmp1340, %indvar.i274
  %scevgep.i279 = getelementptr [32 x i32]* %stack.i, i64 0, i64 %tmp1341
  %tmp1343 = add i64 %tmp1342, %indvar.i274
  %sp.0.i277 = trunc i64 %tmp1343 to i32
  %319 = shl nsw i32 %node_id.0.i275, 3
  %320 = add nsw i32 %319, %31
  %321 = call float @llvm.trax.loadf(i32 %320, i32 2) nounwind
  %322 = call float @llvm.trax.loadf(i32 %320, i32 1) nounwind
  %323 = call float @llvm.trax.loadf(i32 %320, i32 0) nounwind
  %324 = call float @llvm.trax.loadf(i32 %320, i32 5) nounwind
  %325 = call float @llvm.trax.loadf(i32 %320, i32 4) nounwind
  %326 = call float @llvm.trax.loadf(i32 %320, i32 3) nounwind
  %327 = fsub float %323, %249
  %328 = fdiv float %327, %310
  %329 = fsub float %326, %249
  %330 = fdiv float %329, %310
  %331 = fcmp ogt float %328, %330
  %tx1.i.0.i280 = select i1 %331, float %330, float %328
  %tx2.i.0.i281 = select i1 %331, float %328, float %330
  %332 = fcmp ogt float %tx1.i.0.i280, -1.000000e+10
  %tnear.i.0.i282 = select i1 %332, float %tx1.i.0.i280, float -1.000000e+10
  %333 = fcmp olt float %tx2.i.0.i281, 1.000000e+10
  %tfar.i.0.i283 = select i1 %333, float %tx2.i.0.i281, float 1.000000e+10
  %334 = fcmp ogt float %tnear.i.0.i282, %tfar.i.0.i283
  %335 = fcmp olt float %tfar.i.0.i283, 0.000000e+00
  %or.cond.i284 = or i1 %334, %335
  br i1 %or.cond.i284, label %bb7.i372, label %bb29.i.i291

bb29.i.i291:                                      ; preds = %bb.i285
  %336 = fsub float %322, %250
  %337 = fdiv float %336, %309
  %338 = fsub float %325, %250
  %339 = fdiv float %338, %309
  %340 = fcmp ogt float %337, %339
  %ty1.i.0.i286 = select i1 %340, float %339, float %337
  %ty2.i.0.i287 = select i1 %340, float %337, float %339
  %341 = fcmp ogt float %ty1.i.0.i286, %tnear.i.0.i282
  %tnear.i.1.i288 = select i1 %341, float %ty1.i.0.i286, float %tnear.i.0.i282
  %342 = fcmp olt float %ty2.i.0.i287, %tfar.i.0.i283
  %tfar.i.1.i289 = select i1 %342, float %ty2.i.0.i287, float %tfar.i.0.i283
  %343 = fcmp ogt float %tnear.i.1.i288, %tfar.i.1.i289
  %344 = fcmp olt float %tfar.i.1.i289, 0.000000e+00
  %or.cond1395.i290 = or i1 %343, %344
  br i1 %or.cond1395.i290, label %bb7.i372, label %bb62.i.i297

bb62.i.i297:                                      ; preds = %bb29.i.i291
  %345 = fsub float %321, %251
  %346 = fdiv float %345, %308
  %347 = fsub float %324, %251
  %348 = fdiv float %347, %308
  %349 = fcmp ogt float %346, %348
  %tz1.i.0.i292 = select i1 %349, float %348, float %346
  %tz2.i.0.i293 = select i1 %349, float %346, float %348
  %350 = fcmp ogt float %tz1.i.0.i292, %tnear.i.1.i288
  %tnear.i.2.i294 = select i1 %350, float %tz1.i.0.i292, float %tnear.i.1.i288
  %351 = fcmp olt float %tz2.i.0.i293, %tfar.i.1.i289
  %tfar.i.2.i295 = select i1 %351, float %tz2.i.0.i293, float %tfar.i.1.i289
  %352 = fcmp ogt float %tnear.i.2.i294, %tfar.i.2.i295
  %353 = fcmp olt float %tfar.i.2.i295, 0.000000e+00
  %or.cond1396.i296 = or i1 %352, %353
  br i1 %or.cond1396.i296, label %bb7.i372, label %bb1.i298

bb1.i298:                                         ; preds = %bb62.i.i297
  %354 = call i32 @llvm.trax.loadi(i32 %320, i32 7) nounwind
  %355 = call i32 @llvm.trax.loadi(i32 %320, i32 6) nounwind
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %bb3.i301, label %bb6.preheader.i299

bb6.preheader.i299:                               ; preds = %bb1.i298
  %357 = icmp sgt i32 %355, 0
  br i1 %357, label %bb5.i312, label %bb7.i372

bb3.i301:                                         ; preds = %bb1.i298
  %358 = add nsw i32 %354, 1
  store i32 %358, i32* %scevgep.i279, align 4
  %indvar.next.i300 = add i64 %indvar.i274, 1
  br label %bb.i285

bb5.i312:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i371, %bb6.preheader.i299
  %tmp9861011.off0 = phi i32 [ %tmp9861010.off0, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i371 ], [ %tmp9861013.off0, %bb6.preheader.i299 ]
  %storemerge388.i302 = phi i32 [ %472, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i371 ], [ 0, %bb6.preheader.i299 ]
  %tmp1335 = mul i32 %storemerge388.i302, 11
  %tmp396.i304 = add i32 %354, %tmp1335
  %359 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 2) nounwind
  %360 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 1) nounwind
  %361 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 0) nounwind
  %362 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 5) nounwind
  %363 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 4) nounwind
  %364 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 3) nounwind
  %365 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 8) nounwind
  %366 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 7) nounwind
  %367 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 6) nounwind
  %368 = call i32 @llvm.trax.loadi(i32 %tmp396.i304, i32 10) nounwind
  %369 = call i32 @llvm.trax.loadi(i32 %tmp396.i304, i32 9) nounwind
  %370 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %371 = mul nsw i32 %368, 25
  %372 = add nsw i32 %370, %371
  %373 = call float @llvm.trax.loadf(i32 %372, i32 6) nounwind
  %374 = call float @llvm.trax.loadf(i32 %372, i32 5) nounwind
  %375 = call float @llvm.trax.loadf(i32 %372, i32 4) nounwind
  %376 = fsub float %361, %367
  %377 = fsub float %360, %366
  %378 = fsub float %359, %365
  %379 = fsub float %364, %367
  %380 = fsub float %363, %366
  %381 = fsub float %362, %365
  %382 = fmul float %377, %381
  %383 = fmul float %380, %378
  %384 = fsub float %382, %383
  %385 = fmul float %379, %378
  %386 = fmul float %376, %381
  %387 = fsub float %385, %386
  %388 = fmul float %380, %376
  %389 = fmul float %379, %377
  %390 = fsub float %388, %389
  %391 = fmul float %384, %384
  %392 = fmul float %387, %387
  %393 = fadd float %391, %392
  %394 = fmul float %390, %390
  %395 = fadd float %393, %394
  %396 = call float @llvm.trax.invsqrt(float %395) nounwind
  %397 = fmul float %309, %381
  %398 = fmul float %380, %308
  %399 = fsub float %397, %398
  %400 = fmul float %379, %308
  %401 = fmul float %310, %381
  %402 = fsub float %400, %401
  %403 = fmul float %380, %310
  %404 = fmul float %379, %309
  %405 = fsub float %403, %404
  %406 = fmul float %399, %376
  %407 = fadd float %406, 0.000000e+00
  %408 = fmul float %402, %377
  %409 = fadd float %408, %407
  %410 = fmul float %405, %378
  %411 = fadd float %410, %409
  %412 = fdiv float 1.000000e+00, %411
  %413 = fsub float %249, %367
  %414 = fsub float %250, %366
  %415 = fsub float %251, %365
  %416 = fmul float %399, %413
  %417 = fadd float %416, 0.000000e+00
  %418 = fmul float %402, %414
  %419 = fadd float %418, %417
  %420 = fmul float %405, %415
  %421 = fadd float %420, %419
  %422 = fmul float %421, %412
  %423 = fcmp olt float %422, 0.000000e+00
  %424 = fcmp ogt float %422, 1.000000e+00
  %or.cond1397.i311 = or i1 %423, %424
  br i1 %or.cond1397.i311, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i371, label %bb73.i.i313

bb73.i.i313:                                      ; preds = %bb5.i312
  %425 = fmul float %414, %378
  %426 = fmul float %377, %415
  %427 = fsub float %425, %426
  %428 = fmul float %376, %415
  %429 = fmul float %413, %378
  %430 = fsub float %428, %429
  %431 = fmul float %377, %413
  %432 = fmul float %376, %414
  %433 = fsub float %431, %432
  %434 = fmul float %427, %310
  %435 = fadd float %434, 0.000000e+00
  %436 = fmul float %430, %309
  %437 = fadd float %436, %435
  %438 = fmul float %433, %308
  %439 = fadd float %438, %437
  %440 = fmul float %439, %412
  %441 = fcmp olt float %440, 0.000000e+00
  br i1 %441, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i371, label %bb94.i55.i314

bb94.i55.i314:                                    ; preds = %bb73.i.i313
  %442 = fadd float %440, %422
  %443 = fcmp ogt float %442, 1.000000e+00
  br i1 %443, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i371, label %bb96.i.i317

bb96.i.i317:                                      ; preds = %bb94.i55.i314
  %444 = fmul float %427, %379
  %445 = fadd float %444, 0.000000e+00
  %446 = fmul float %430, %380
  %447 = fadd float %446, %445
  %448 = fmul float %433, %381
  %449 = fadd float %448, %447
  %450 = fmul float %449, %412
  %451 = fcmp ule float %450, 0.000000e+00
  %452 = fcmp olt float %450, 0x3F50624DE0000000
  %or.cond1398.i315 = or i1 %451, %452
  %453 = fcmp oeq float %450, 1.000000e+10
  %or.cond1399.i316 = or i1 %or.cond1398.i315, %453
  br i1 %or.cond1399.i316, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i371, label %bb2.i.i.i318

bb2.i.i.i318:                                     ; preds = %bb96.i.i317
  %tmp926 = bitcast i32 %tmp9861011.off0 to float
  %454 = fcmp ogt float %tmp926, %450
  br i1 %454, label %bb3.i.i.i369, label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i371

bb3.i.i.i369:                                     ; preds = %bb2.i.i.i318
  %tmp920 = bitcast float %450 to i32
  %455 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 2) nounwind
  %456 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 1) nounwind
  %457 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 0) nounwind
  %458 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 5) nounwind
  %459 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 4) nounwind
  %460 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 3) nounwind
  %461 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 8) nounwind
  %462 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 7) nounwind
  %463 = call float @llvm.trax.loadf(i32 %tmp396.i304, i32 6) nounwind
  %464 = call i32 @llvm.trax.loadi(i32 %tmp396.i304, i32 10) nounwind
  %465 = call i32 @llvm.trax.loadi(i32 %tmp396.i304, i32 9) nounwind
  %466 = call i32 @llvm.trax.loadi(i32 0, i32 9) nounwind
  %467 = mul nsw i32 %464, 25
  %468 = add nsw i32 %466, %467
  %469 = call float @llvm.trax.loadf(i32 %468, i32 6) nounwind
  %470 = call float @llvm.trax.loadf(i32 %468, i32 5) nounwind
  %471 = call float @llvm.trax.loadf(i32 %468, i32 4) nounwind
  br label %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i371

_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i371: ; preds = %bb3.i.i.i369, %bb2.i.i.i318, %bb96.i.i317, %bb94.i55.i314, %bb73.i.i313, %bb5.i312
  %tmp9861010.off0 = phi i32 [ %tmp920, %bb3.i.i.i369 ], [ %tmp9861011.off0, %bb2.i.i.i318 ], [ %tmp9861011.off0, %bb96.i.i317 ], [ %tmp9861011.off0, %bb94.i55.i314 ], [ %tmp9861011.off0, %bb73.i.i313 ], [ %tmp9861011.off0, %bb5.i312 ]
  %472 = add nsw i32 %storemerge388.i302, 1
  %exitcond = icmp eq i32 %472, %355
  br i1 %exitcond, label %bb7.i372, label %bb5.i312

bb7.i372:                                         ; preds = %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i371, %bb6.preheader.i299, %bb62.i.i297, %bb29.i.i291, %bb.i285
  %tmp9861012.off0 = phi i32 [ %tmp9861013.off0, %bb6.preheader.i299 ], [ %tmp9861010.off0, %_ZN8Trigonum10intersectsER9HitRecord3RayRKi.exit.i371 ], [ %tmp9861013.off0, %bb.i285 ], [ %tmp9861013.off0, %bb29.i.i291 ], [ %tmp9861013.off0, %bb62.i.i297 ]
  %473 = icmp slt i32 %sp.0.i277, 0
  br i1 %473, label %_ZN3BVH9intersectER9HitRecordR3Ray.exit374, label %bb9.i373

bb9.i373:                                         ; preds = %bb7.i372
  %474 = sext i32 %sp.0.i277 to i64
  %475 = getelementptr inbounds [32 x i32]* %stack.i, i64 0, i64 %474
  %476 = load i32* %475, align 4
  %477 = add nsw i32 %sp.0.i277, -1
  br label %bb.outer.i273

_ZN3BVH9intersectER9HitRecordR3Ray.exit374:       ; preds = %bb7.i372
  %478 = fdiv float 1.000000e+00, %318
  %tmp985 = bitcast i32 %tmp9861012.off0 to float
  %479 = fcmp uge float %tmp985, %478
  %480 = fcmp ule float %tmp985, 0x3F847AE140000000
  %or.cond = or i1 %479, %480
  br i1 %or.cond, label %bb98.i, label %bb121.i

bb98.i:                                           ; preds = %_ZN3BVH9intersectER9HitRecordR3Ray.exit374
  %481 = fmul float %tmp930, %316
  %482 = fadd float %481, %297
  %483 = fadd float %297, %481
  br label %bb121.i

bb121.i:                                          ; preds = %bb98.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit374, %bb53.i305
  %tmp30241032 = phi float [ %483, %bb98.i ], [ %297, %bb53.i305 ], [ %297, %_ZN3BVH9intersectER9HitRecordR3Ray.exit374 ]
  %484 = phi float [ %482, %bb98.i ], [ %297, %bb53.i305 ], [ %297, %_ZN3BVH9intersectER9HitRecordR3Ray.exit374 ]
  %tmp3479 = trunc i512 %tmp944 to i128
  %tmp3480 = and i128 %tmp3479, 79228162495817593519834398720
  %tmp2868 = lshr exact i128 %tmp3480, 64
  %tmp2869 = trunc i128 %tmp2868 to i32
  %tmp2870 = bitcast i32 %tmp2869 to float
  %tmp41.i391 = trunc i512 %tmp944 to i32
  %tmp42.i392 = bitcast i32 %tmp41.i391 to float
  %485 = fmul float %tmp42.i392, %484
  %tmp37.i3931168 = lshr i512 %mask6051030, 384
  %tmp38.i394 = trunc i512 %tmp37.i3931168 to i32
  %tmp39.i395 = bitcast i32 %tmp38.i394 to float
  %486 = fmul float %tmp39.i395, %484
  %487 = fmul float %tmp30241032, %tmp2870
  %tmp17.i396 = bitcast float %485 to i32
  %tmp18.i397 = zext i32 %tmp17.i396 to i64
  %tmp11.i398 = bitcast float %486 to i32
  %tmp12.i399 = zext i32 %tmp11.i398 to i64
  %tmp13.i400 = shl nuw i64 %tmp12.i399, 32
  %ins15.i401 = or i64 %tmp13.i400, %tmp18.i397
  %tmp2857 = bitcast float %487 to i32
  %tmp2858 = zext i32 %tmp2857 to i128
  %tmp2859 = shl nuw nsw i128 %tmp2858, 64
  %tmp4349 = zext i64 %ins15.i401 to i96
  %phitmp4348 = and i96 %tmp4349, 4294967295
  %phitmp4353 = and i96 %tmp4349, 18446744069414584320
  br label %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit

_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit: ; preds = %bb121.i, %_ZN3BVH9intersectER9HitRecordR3Ray.exit
  %.03421.0 = phi i96 [ %phitmp4348, %bb121.i ], [ 1057988018, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %.13422.0 = phi i96 [ %phitmp4353, %bb121.i ], [ 4556129611431280640, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %.23423.0 = phi i128 [ %tmp2859, %bb121.i ], [ 19648584296011284141125402624, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %memtmp47.i.1 = phi i128 [ %memtmp47.i.0, %bb121.i ], [ %memtmp47.i.2, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %memtmp4.i195.0 = phi i128 [ %ins3191, %bb121.i ], [ %memtmp4.i195.1, %_ZN3BVH9intersectER9HitRecordR3Ray.exit ]
  %tmp473 = trunc i96 %.03421.0 to i32
  %tmp474 = bitcast i32 %tmp473 to float
  %tmp476 = lshr exact i96 %.13422.0, 32
  %tmp477 = trunc i96 %tmp476 to i32
  %tmp478 = bitcast i32 %tmp477 to float
  %tmp469 = lshr exact i128 %.23423.0, 64
  %tmp470 = trunc i128 %tmp469 to i32
  %tmp471 = bitcast i32 %tmp470 to float
  %488 = fmul float %mask8261020.off0, %tmp474
  %489 = fmul float %mask8261020.off01193, %tmp478
  %490 = fmul float %tmp471, %mask8261020.off64
  %tmp837 = bitcast i32 %mask8881015.off0 to float
  %tmp834 = bitcast i32 %mask8881015.off32 to float
  %tmp830 = bitcast i32 %mask8881015.off64 to float
  %491 = fadd float %488, %tmp837
  %492 = fadd float %489, %tmp834
  %493 = fadd float %tmp830, %490
  %tmp881 = bitcast float %491 to i32
  %tmp866 = bitcast float %492 to i32
  %tmp850 = bitcast float %493 to i32
  br i1 %245, label %bb31, label %bb50

bb31:                                             ; preds = %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit
  %tmp547 = lshr i512 %mask6051030, 352
  %tmp4209 = trunc i512 %tmp547 to i128
  %tmp4210 = and i128 %tmp4209, 79228162495817593519834398720
  %tmp403 = lshr exact i128 %tmp4210, 64
  %tmp404 = trunc i128 %tmp403 to i32
  %tmp405 = bitcast i32 %tmp404 to float
  %tmp41.i436 = trunc i512 %tmp547 to i32
  %tmp42.i437 = bitcast i32 %tmp41.i436 to float
  %494 = fmul float %tmp42.i437, %mask8261020.off0
  %tmp37.i4381044 = lshr i512 %mask6051030, 384
  %tmp38.i439 = trunc i512 %tmp37.i4381044 to i32
  %tmp39.i440 = bitcast i32 %tmp38.i439 to float
  %495 = fmul float %tmp39.i440, %mask8261020.off01193
  %496 = fmul float %mask8261020.off64, %tmp405
  %tmp601 = lshr i512 %mask6051030, 32
  %tmp602 = trunc i512 %tmp601 to i32
  %tmp603 = bitcast i32 %tmp602 to float
  %tmp595 = lshr i512 %mask6051030, 64
  %tmp596 = trunc i512 %tmp595 to i32
  %tmp597 = bitcast i32 %tmp596 to float
  %tmp583 = lshr i512 %mask6051030, 128
  %tmp584 = trunc i512 %tmp583 to i32
  %tmp585 = bitcast i32 %tmp584 to float
  %tmp577 = lshr i512 %mask6051030, 160
  %tmp578 = trunc i512 %tmp577 to i32
  %tmp579 = bitcast i32 %tmp578 to float
  %tmp565 = lshr i512 %mask6051030, 224
  %497 = fmul float %tmp630, %tmp988
  %498 = fmul float %tmp622, %tmp988
  %499 = fmul float %tmp614, %tmp988
  %tmp1784 = bitcast float %497 to i32
  %tmp1785 = zext i32 %tmp1784 to i96
  %tmp1778 = bitcast float %498 to i32
  %tmp1779 = zext i32 %tmp1778 to i96
  %tmp1780 = shl nuw nsw i96 %tmp1779, 32
  %ins1782 = or i96 %tmp1780, %tmp1785
  %tmp1772 = bitcast float %499 to i32
  %tmp1360 = zext i96 %ins1782 to i128
  %mask1361 = and i128 %memtmp4.i.0, -79228162514264337593543950336
  %tmp1354 = zext i32 %tmp1772 to i128
  %tmp1355 = shl nuw nsw i128 %tmp1354, 64
  %mask1356 = or i128 %tmp1355, %mask1361
  %ins1357 = or i128 %mask1356, %tmp1360
  %ins1357.tr = trunc i128 %ins1357 to i96
  %tmp1332 = trunc i192 %ins7771023 to i128
  %tmp1320 = lshr i128 %tmp1332, 64
  %tmp1321 = trunc i128 %tmp1320 to i32
  %tmp1322 = bitcast i32 %tmp1321 to float
  %tmp1508 = lshr i96 %ins1357.tr, 64
  %tmp1509 = trunc i96 %tmp1508 to i32
  %tmp1510 = bitcast i32 %tmp1509 to float
  %500 = fadd float %497, %tmp652
  %501 = fadd float %498, %tmp646
  %502 = fadd float %tmp1322, %tmp1510
  %tmp2055 = trunc i512 %tmp583 to i128
  %tmp2056 = and i128 %tmp2055, 79228162495817593519834398720
  %tmp2033 = trunc i512 %tmp601 to i128
  %tmp2034 = and i128 %tmp2033, 79228162495817593519834398720
  %tmp2021 = lshr exact i128 %tmp2034, 64
  %tmp2022 = trunc i128 %tmp2021 to i32
  %tmp2023 = bitcast i32 %tmp2022 to float
  %tmp20851321 = lshr i512 %mask6051030, 192
  %tmp2086 = trunc i512 %tmp20851321 to i32
  %tmp2087 = bitcast i32 %tmp2086 to float
  %503 = fsub float %tmp603, %tmp585
  %504 = fsub float %tmp597, %tmp579
  %505 = fsub float %tmp2023, %tmp2087
  %tmp1955 = lshr exact i128 %tmp2056, 64
  %tmp1956 = trunc i128 %tmp1955 to i32
  %tmp1957 = bitcast i32 %tmp1956 to float
  %tmp21091323 = lshr i512 %mask6051030, 288
  %tmp2110 = trunc i512 %tmp21091323 to i32
  %tmp2111 = bitcast i32 %tmp2110 to float
  %tmp41.i481 = trunc i512 %tmp565 to i32
  %tmp42.i482 = bitcast i32 %tmp41.i481 to float
  %506 = fsub float %tmp585, %tmp42.i482
  %tmp37.i4831103 = lshr i512 %mask6051030, 256
  %tmp38.i484 = trunc i512 %tmp37.i4831103 to i32
  %tmp39.i485 = bitcast i32 %tmp38.i484 to float
  %507 = fsub float %tmp579, %tmp39.i485
  %508 = fsub float %tmp1957, %tmp2111
  %509 = fmul float %504, %508
  %510 = fmul float %507, %505
  %511 = fsub float %509, %510
  %512 = fmul float %506, %505
  %513 = fmul float %503, %508
  %514 = fsub float %512, %513
  %515 = fmul float %507, %503
  %516 = fmul float %506, %504
  %517 = fsub float %515, %516
  %518 = fmul float %511, %511
  %519 = fmul float %514, %514
  %520 = fadd float %518, %519
  %521 = fmul float %517, %517
  %522 = fadd float %520, %521
  %523 = call float @llvm.trax.invsqrt(float %522) nounwind
  %524 = fdiv float 1.000000e+00, %523
  %525 = fdiv float %517, %524
  %526 = fdiv float %514, %524
  %527 = fdiv float %511, %524
  %528 = fmul float %tmp630, %tmp630
  %529 = fmul float %tmp622, %tmp622
  %530 = fadd float %528, %529
  %531 = fmul float %tmp614, %tmp614
  %532 = fadd float %530, %531
  %533 = call float @llvm.trax.invsqrt(float %532) nounwind
  %534 = fdiv float 1.000000e+00, %533
  %535 = fdiv float %tmp614, %534
  %536 = fdiv float %tmp622, %534
  %537 = fdiv float %tmp630, %534
  %538 = fmul float %537, %527
  %539 = fadd float %538, 0.000000e+00
  %540 = fmul float %536, %526
  %541 = fadd float %540, %539
  %542 = fmul float %535, %525
  %543 = fadd float %542, %541
  %544 = fcmp ogt float %543, 0.000000e+00
  br i1 %544, label %bb.i42, label %bb52.i

bb.i42:                                           ; preds = %bb31
  %545 = fmul float %527, -1.000000e+00
  %546 = fmul float %526, -1.000000e+00
  %547 = fmul float %525, -1.000000e+00
  %tmp2311 = bitcast float %545 to i32
  %tmp2312 = zext i32 %tmp2311 to i96
  %tmp2305 = bitcast float %546 to i32
  %tmp2306 = zext i32 %tmp2305 to i96
  %tmp2307 = shl nuw nsw i96 %tmp2306, 32
  %ins2309 = or i96 %tmp2312, %tmp2307
  %tmp2299 = bitcast float %547 to i32
  %tmp1228 = zext i96 %ins2309 to i128
  %mask1229 = and i128 %memtmp46.i.1, -79228162514264337593543950336
  %tmp1222 = zext i32 %tmp2299 to i128
  %tmp1223 = shl nuw nsw i128 %tmp1222, 64
  %mask1224 = or i128 %tmp1228, %mask1229
  %ins1225 = or i128 %mask1224, %tmp1223
  %tmp1210 = lshr i128 %ins1225, 64
  %tmp1211 = trunc i128 %tmp1210 to i32
  %tmp1212 = bitcast i32 %tmp1211 to float
  br label %bb52.i

bb52.i:                                           ; preds = %bb.i42, %bb31
  %548 = phi float [ %tmp1212, %bb.i42 ], [ %525, %bb31 ]
  %549 = phi float [ %546, %bb.i42 ], [ %526, %bb31 ]
  %550 = phi float [ %545, %bb.i42 ], [ %527, %bb31 ]
  %memtmp46.i.0 = phi i128 [ %ins1225, %bb.i42 ], [ %memtmp46.i.1, %bb31 ]
  %551 = fcmp olt float %550, 0.000000e+00
  br i1 %551, label %bb.i145.i, label %_Z4fabsf.exit147.i

bb.i145.i:                                        ; preds = %bb52.i
  %552 = fsub float -0.000000e+00, %550
  br label %_Z4fabsf.exit147.i

_Z4fabsf.exit147.i:                               ; preds = %bb.i145.i, %bb52.i
  %value_addr.i143.i.0 = phi float [ %552, %bb.i145.i ], [ %550, %bb52.i ]
  %553 = fcmp olt float %549, 0.000000e+00
  br i1 %553, label %bb.i138.i, label %_Z4fabsf.exit140.i

bb.i138.i:                                        ; preds = %_Z4fabsf.exit147.i
  %554 = fsub float -0.000000e+00, %549
  br label %_Z4fabsf.exit140.i

_Z4fabsf.exit140.i:                               ; preds = %bb.i138.i, %_Z4fabsf.exit147.i
  %value_addr.i136.i.0 = phi float [ %554, %bb.i138.i ], [ %549, %_Z4fabsf.exit147.i ]
  %555 = fcmp uge float %value_addr.i143.i.0, %value_addr.i136.i.0
  br i1 %555, label %bb58.i, label %bb53.i

bb53.i:                                           ; preds = %_Z4fabsf.exit140.i
  br i1 %551, label %bb.i131.i, label %_Z4fabsf.exit133.i

bb.i131.i:                                        ; preds = %bb53.i
  %556 = fsub float -0.000000e+00, %550
  br label %_Z4fabsf.exit133.i

_Z4fabsf.exit133.i:                               ; preds = %bb.i131.i, %bb53.i
  %value_addr.i129.i.0 = phi float [ %556, %bb.i131.i ], [ %550, %bb53.i ]
  %557 = fcmp olt float %548, 0.000000e+00
  br i1 %557, label %bb.i124.i, label %_Z4fabsf.exit126.i

bb.i124.i:                                        ; preds = %_Z4fabsf.exit133.i
  %558 = fsub float -0.000000e+00, %548
  br label %_Z4fabsf.exit126.i

_Z4fabsf.exit126.i:                               ; preds = %bb.i124.i, %_Z4fabsf.exit133.i
  %value_addr.i122.i.0 = phi float [ %558, %bb.i124.i ], [ %548, %_Z4fabsf.exit133.i ]
  %559 = fcmp uge float %value_addr.i129.i.0, %value_addr.i122.i.0
  br i1 %559, label %bb58.i, label %bb62.i

bb58.i:                                           ; preds = %_Z4fabsf.exit126.i, %_Z4fabsf.exit140.i
  br i1 %553, label %bb.i114.i, label %_Z4fabsf.exit116.i

bb.i114.i:                                        ; preds = %bb58.i
  %560 = fsub float -0.000000e+00, %549
  br label %_Z4fabsf.exit116.i

_Z4fabsf.exit116.i:                               ; preds = %bb.i114.i, %bb58.i
  %value_addr.i112.i.0 = phi float [ %560, %bb.i114.i ], [ %549, %bb58.i ]
  %561 = fcmp olt float %548, 0.000000e+00
  br i1 %561, label %bb.i.i, label %_Z4fabsf.exit.i

bb.i.i:                                           ; preds = %_Z4fabsf.exit116.i
  %562 = fsub float -0.000000e+00, %548
  br label %_Z4fabsf.exit.i

_Z4fabsf.exit.i:                                  ; preds = %bb.i.i, %_Z4fabsf.exit116.i
  %value_addr.i.i.0 = phi float [ %562, %bb.i.i ], [ %548, %_Z4fabsf.exit116.i ]
  %563 = fcmp olt float %value_addr.i112.i.0, %value_addr.i.i.0
  br i1 %563, label %bb62.i, label %bb61.i

bb61.i:                                           ; preds = %_Z4fabsf.exit.i
  br label %bb62.i

bb62.i:                                           ; preds = %bb61.i, %_Z4fabsf.exit.i, %_Z4fabsf.exit126.i
  %axis.i.0.off0 = phi i64 [ 0, %bb61.i ], [ 1065353216, %_Z4fabsf.exit126.i ], [ 4575657221408423936, %_Z4fabsf.exit.i ]
  %axis.i.0.off64 = phi float [ 1.000000e+00, %bb61.i ], [ 0.000000e+00, %_Z4fabsf.exit126.i ], [ 0.000000e+00, %_Z4fabsf.exit.i ]
  %564 = fmul float %549, %axis.i.0.off64
  %tmp47.i131 = lshr i64 %axis.i.0.off0, 32
  %tmp48.i132 = trunc i64 %tmp47.i131 to i32
  %tmp49.i133 = bitcast i32 %tmp48.i132 to float
  %565 = fmul float %tmp49.i133, %548
  %566 = fsub float %564, %565
  %tmp44.i134 = trunc i64 %axis.i.0.off0 to i32
  %tmp45.i135 = bitcast i32 %tmp44.i134 to float
  %567 = fmul float %tmp45.i135, %548
  %568 = fmul float %550, %axis.i.0.off64
  %569 = fsub float %567, %568
  %570 = fmul float %tmp49.i133, %550
  %571 = fmul float %tmp45.i135, %549
  %572 = fsub float %570, %571
  %573 = fmul float %566, %566
  %574 = fmul float %569, %569
  %575 = fadd float %573, %574
  %576 = fmul float %572, %572
  %577 = fadd float %575, %576
  %578 = call float @llvm.trax.invsqrt(float %577) nounwind
  %579 = fdiv float 1.000000e+00, %578
  %580 = fdiv float %572, %579
  %581 = fdiv float %569, %579
  %582 = fdiv float %566, %579
  %583 = fmul float %581, %548
  %584 = fmul float %582, %548
  %585 = fmul float %550, %580
  %586 = fsub float %584, %585
  %587 = fmul float %582, %549
  br label %bb89.i

bb89.i:                                           ; preds = %bb89.i, %bb62.i
  %588 = call float @llvm.trax.rand()
  %589 = call float @llvm.trax.rand()
  %590 = fmul float %588, 2.000000e+00
  %591 = fadd float %590, -1.000000e+00
  %592 = fmul float %589, 2.000000e+00
  %593 = fadd float %592, -1.000000e+00
  %594 = fmul float %591, %591
  %595 = fmul float %593, %593
  %596 = fadd float %594, %595
  %597 = fcmp ult float %596, 1.000000e+00
  br i1 %597, label %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit, label %bb89.i

_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit: ; preds = %bb89.i
  %598 = fmul float %549, %580
  %599 = fsub float %598, %583
  %600 = fmul float %581, %550
  %601 = fsub float %600, %587
  %602 = fsub float 1.000000e+00, %594
  %603 = fsub float %602, %595
  %604 = call float @llvm.trax.invsqrt(float %603) nounwind
  %605 = fdiv float 1.000000e+00, %604
  %606 = fmul float %550, %605
  %607 = fmul float %549, %605
  %608 = fmul float %548, %605
  %tmp1876 = bitcast float %606 to i32
  %tmp1877 = zext i32 %tmp1876 to i96
  %tmp1870 = bitcast float %607 to i32
  %tmp1871 = zext i32 %tmp1870 to i96
  %tmp1872 = shl nuw nsw i96 %tmp1871, 32
  %ins1874 = or i96 %tmp1872, %tmp1877
  %tmp1864 = bitcast float %608 to i32
  %tmp1140 = zext i96 %ins1874 to i128
  %mask1141 = and i128 %memtmp91.i.0, -79228162514264337593543950336
  %tmp1134 = zext i32 %tmp1864 to i128
  %tmp1135 = shl nuw nsw i128 %tmp1134, 64
  %mask1136 = or i128 %tmp1135, %mask1141
  %ins1137 = or i128 %mask1136, %tmp1140
  %ins1137.tr = trunc i128 %ins1137 to i96
  %609 = fmul float %599, %593
  %610 = fmul float %586, %593
  %611 = fmul float %601, %593
  %tmp1853 = bitcast float %609 to i32
  %tmp1854 = zext i32 %tmp1853 to i96
  %tmp1847 = bitcast float %610 to i32
  %tmp1848 = zext i32 %tmp1847 to i96
  %tmp1849 = shl nuw nsw i96 %tmp1848, 32
  %ins1851 = or i96 %tmp1849, %tmp1854
  %tmp1841 = bitcast float %611 to i32
  %tmp1118 = zext i96 %ins1851 to i128
  %mask1119 = and i128 %memtmp97.i.0, -79228162514264337593543950336
  %tmp1112 = zext i32 %tmp1841 to i128
  %tmp1113 = shl nuw nsw i128 %tmp1112, 64
  %mask1114 = or i128 %tmp1113, %mask1119
  %ins1115 = or i128 %mask1114, %tmp1118
  %ins1115.tr = trunc i128 %ins1115 to i96
  %612 = fmul float %582, %591
  %613 = fmul float %581, %591
  %614 = fmul float %580, %591
  %tmp1612 = lshr i96 %ins1115.tr, 64
  %tmp1613 = trunc i96 %tmp1612 to i32
  %tmp1614 = bitcast i32 %tmp1613 to float
  %615 = fadd float %609, %612
  %616 = fadd float %610, %613
  %617 = fadd float %614, %tmp1614
  %tmp1588 = lshr i96 %ins1137.tr, 64
  %tmp1589 = trunc i96 %tmp1588 to i32
  %tmp1590 = bitcast i32 %tmp1589 to float
  %618 = fadd float %606, %615
  %619 = fadd float %607, %616
  %620 = fadd float %617, %tmp1590
  %621 = fmul float %550, 0x3F50624DE0000000
  %622 = fmul float %549, 0x3F50624DE0000000
  %623 = fmul float %548, 0x3F50624DE0000000
  %624 = fadd float %621, %500
  %625 = fadd float %622, %501
  %626 = fadd float %502, %623
  %tmp769 = bitcast float %624 to i32
  %tmp770 = zext i32 %tmp769 to i192
  %tmp682 = bitcast float %625 to i32
  %tmp683 = zext i32 %tmp682 to i192
  %tmp684 = shl nuw nsw i192 %tmp683, 32
  %tmp662 = bitcast float %626 to i32
  %tmp663 = zext i32 %tmp662 to i192
  %tmp664 = shl nuw nsw i192 %tmp663, 64
  %tmp750 = bitcast float %618 to i32
  %tmp751 = zext i32 %tmp750 to i192
  %tmp752 = shl nuw nsw i192 %tmp751, 96
  %tmp734 = bitcast float %619 to i32
  %tmp735 = zext i32 %tmp734 to i192
  %tmp736 = shl nuw nsw i192 %tmp735, 128
  %tmp709 = bitcast float %620 to i32
  %tmp710 = zext i32 %tmp709 to i192
  %tmp711 = shl nuw i192 %tmp710, 160
  %mask665 = or i192 %tmp770, %tmp684
  %mask753 = or i192 %mask665, %tmp664
  %mask737 = or i192 %mask753, %tmp736
  %mask712 = or i192 %mask737, %tmp752
  %ins713 = or i192 %mask712, %tmp711
  %627 = add nsw i32 %631, 1
  br label %bb49

bb49:                                             ; preds = %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit, %bb2
  %mask6051027 = phi i512 [ %mask60510281244, %bb2 ], [ %mask6051030, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %ins7771023 = phi i192 [ %ins707, %bb2 ], [ %ins713, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %mask8261020.off0 = phi float [ 1.000000e+00, %bb2 ], [ %494, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %mask8261020.off01193 = phi float [ 1.000000e+00, %bb2 ], [ %495, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %mask8261020.off64 = phi float [ 1.000000e+00, %bb2 ], [ %496, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %mask8881015.off0 = phi i32 [ %mask8881016.off01245, %bb2 ], [ %tmp881, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %mask8881015.off32 = phi i32 [ %mask8881016.off321246, %bb2 ], [ %tmp866, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %mask8881015.off64 = phi i32 [ %mask8881016.off641247, %bb2 ], [ %tmp850, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %628 = phi float [ %53, %bb2 ], [ %493, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %629 = phi float [ %52, %bb2 ], [ %492, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %630 = phi float [ %51, %bb2 ], [ %491, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp97.i.0 = phi i128 [ %memtmp97.i.11252, %bb2 ], [ %ins1115, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp91.i.0 = phi i128 [ %memtmp91.i.11253, %bb2 ], [ %ins1137, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp46.i.1 = phi i128 [ %memtmp46.i.21254, %bb2 ], [ %memtmp46.i.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp4.i.0 = phi i128 [ %memtmp4.i.11258, %bb2 ], [ %ins1357, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp47.i.2 = phi i128 [ %memtmp47.i.41270, %bb2 ], [ %memtmp47.i.1, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %memtmp4.i195.1 = phi i128 [ %memtmp4.i195.31274, %bb2 ], [ %memtmp4.i195.0, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %631 = phi i32 [ 0, %bb2 ], [ %627, %_ZN13PinHoleCamera11hemi_sphereE9HitRecord3Ray.exit ]
  %632 = icmp slt i32 %631, 5
  br i1 %632, label %bb3, label %bb50

bb50:                                             ; preds = %bb49, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit
  %mask6051029 = phi i512 [ %mask6051030, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %mask6051027, %bb49 ]
  %mask8881017.off0 = phi i32 [ %tmp881, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %mask8881015.off0, %bb49 ]
  %mask8881017.off32 = phi i32 [ %tmp866, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %mask8881015.off32, %bb49 ]
  %mask8881017.off64 = phi i32 [ %tmp850, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %mask8881015.off64, %bb49 ]
  %633 = phi float [ %493, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %628, %bb49 ]
  %634 = phi float [ %492, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %629, %bb49 ]
  %635 = phi float [ %491, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %630, %bb49 ]
  %memtmp47.i.3 = phi i128 [ %memtmp47.i.1, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp47.i.2, %bb49 ]
  %memtmp4.i195.2 = phi i128 [ %memtmp4.i195.0, %_ZN6Shader10lambertianER3BVH9HitRecord3Ray10PointLight5Color.exit ], [ %memtmp4.i195.1, %bb49 ]
  %636 = add nsw i32 %storemerge11282, 1
  %exitcond1366 = icmp eq i32 %636, 5
  br i1 %exitcond1366, label %bb52, label %bb2

bb52:                                             ; preds = %bb50
  %637 = fmul float %635, 0x3FC99999A0000000
  %638 = fmul float %634, 0x3FC99999A0000000
  %639 = fmul float %633, 0x3FC99999A0000000
  %640 = fcmp olt float %637, 0.000000e+00
  br i1 %640, label %bb5.i, label %bb1.i

bb1.i:                                            ; preds = %bb52
  %641 = fcmp ogt float %637, 1.000000e+00
  br i1 %641, label %bb5.i, label %bb4.i

bb4.i:                                            ; preds = %bb1.i
  br label %bb5.i

bb5.i:                                            ; preds = %bb4.i, %bb1.i, %bb52
  %r.i.0 = phi float [ %637, %bb4.i ], [ 0.000000e+00, %bb52 ], [ 1.000000e+00, %bb1.i ]
  %642 = fcmp olt float %639, 0.000000e+00
  br i1 %642, label %bb12.i, label %bb8.i

bb8.i:                                            ; preds = %bb5.i
  %643 = fcmp ogt float %639, 1.000000e+00
  br i1 %643, label %bb12.i, label %bb11.i

bb11.i:                                           ; preds = %bb8.i
  br label %bb12.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i, %bb5.i
  %b.i.0 = phi float [ %639, %bb11.i ], [ 0.000000e+00, %bb5.i ], [ 1.000000e+00, %bb8.i ]
  %644 = fcmp olt float %638, 0.000000e+00
  br i1 %644, label %_ZN5Image3setEii5Color.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %645 = fcmp ogt float %638, 1.000000e+00
  br i1 %645, label %_ZN5Image3setEii5Color.exit, label %bb18.i

bb18.i:                                           ; preds = %bb15.i
  br label %_ZN5Image3setEii5Color.exit

_ZN5Image3setEii5Color.exit:                      ; preds = %bb18.i, %bb15.i, %bb12.i
  %g.i.0 = phi float [ %638, %bb18.i ], [ 0.000000e+00, %bb12.i ], [ 1.000000e+00, %bb15.i ]
  %646 = mul nsw i32 %39, %0
  %647 = add nsw i32 %646, %40
  %648 = mul nsw i32 %647, 3
  %649 = add nsw i32 %648, %2
  call void @llvm.trax.storef(float %r.i.0, i32 %649, i32 0) nounwind
  call void @llvm.trax.storef(float %g.i.0, i32 %649, i32 1) nounwind
  call void @llvm.trax.storef(float %b.i.0, i32 %649, i32 2) nounwind
  %650 = call i32 @llvm.trax.atominc(i32 0)
  %651 = icmp sgt i32 %33, %650
  br i1 %651, label %bb, label %return

return:                                           ; preds = %_ZN5Image3setEii5Color.exit, %entry
  ret i32 0
}

declare i32 @llvm.trax.atominc(i32) nounwind
