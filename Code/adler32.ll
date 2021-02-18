define i32 @adler32(i8* %0, i64 %1) {
2:
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %10

4:                                                ; preds = %10
  %5 = shl nuw i32 %20, 16
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ 1, %2 ], [ %18, %4 ]
  %8 = phi i32 [ 0, %2 ], [ %5, %4 ]
  %9 = or i32 %8, %7
  ret i32 %9

10:                                               ; preds = %2, %10
  %11 = phi i64 [ %21, %10 ], [ 0, %2 ]
  %12 = phi i32 [ %20, %10 ], [ 0, %2 ]
  %13 = phi i32 [ %18, %10 ], [ 1, %2 ]
  %14 = getelementptr inbounds i8, i8* %0, i64 %11
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = add nuw nsw i32 %13, %16
  %18 = urem i32 %17, 65521
  %19 = add nuw nsw i32 %18, %12
  %20 = urem i32 %19, 65521
  %21 = add nuw i64 %11, 1
  %22 = icmp eq i64 %21, %1
  br i1 %22, label %4, label %10
}