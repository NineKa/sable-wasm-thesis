%indvars.iv144 = phi i64 [ 0, %78 ], [ %indvars.iv.next145.1, %79 ]
%.090 = phi i32 [ 1, %78 ], [ %102, %79 ]
%80 = trunc i64 %indvars.iv144 to i32
%81 = add i32 %.096, %80
%82 = urem i32 %.090, 1000
%83 = sitofp i32 %82 to double
%84 = fdiv double %83, 1.000000e+03
%85 = load %__sable_memory_t*, %__sable_memory_t** %12, align 8
%86 = ptrtoint %__sable_memory_t* %85 to i64
%87 = zext i32 %81 to i64
%88 = add nuw i64 %86, %87
%89 = inttoptr i64 %88 to double*
store double %84, double* %89, align 8
%90 = add nuw nsw i32 %.090, %.0100
%91 = trunc i64 %indvars.iv144 to i32
%92 = or i32 %91, 8
%93 = add i32 %.096, %92
%94 = urem i32 %90, 1000
%95 = sitofp i32 %94 to double
%96 = fdiv double %95, 1.000000e+03
%97 = load %__sable_memory_t*, %__sable_memory_t** %12, align 8
%98 = ptrtoint %__sable_memory_t* %97 to i64
%99 = zext i32 %93 to i64
%100 = add nuw i64 %98, %99
%101 = inttoptr i64 %100 to double*
store double %96, double* %101, align 8