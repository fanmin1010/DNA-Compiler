; ModuleID = 'DNAs'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@fmt_int = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt_str = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@context = private unnamed_addr constant [6 x i8] c"Lose \00"
@context.1 = private unnamed_addr constant [9 x i8] c"yourself\00"
@context.2 = private unnamed_addr constant [4 x i8] c"to \00"
@context.3 = private unnamed_addr constant [6 x i8] c"dance\00"
@.str = private unnamed_addr constant [16 x i8] c"Hello I'm in C\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %David = alloca i8*, i32 8
  %David1 = getelementptr i8*, i8** %David, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @context, i32 0, i32 0), i8** %David1
  %David2 = getelementptr i8*, i8** %David, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @context.1, i32 0, i32 0), i8** %David2
  %David3 = getelementptr i8*, i8** %David, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @context.2, i32 0, i32 0), i8** %David3
  %David4 = getelementptr i8*, i8** %David, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @context.3, i32 0, i32 0), i8** %David4
  %i = alloca i32
  store i32 0, i32* %i
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i8 = load i32, i32* %i
  %bop9 = icmp slt i32 %i8, 4
  br i1 %bop9, label %while_body, label %merge

while_body:                                       ; preds = %while
  %i5 = load i32, i32* %i
  %David6 = getelementptr i8*, i8** %David, i32 %i5
  %tmp = load i8*, i8** %David6
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt_str, i32 0, i32 0), i8* %tmp)
  %i7 = load i32, i32* %i
  %bop = add i32 %i7, 1
  store i32 %bop, i32* %i
  br label %while

merge:                                            ; preds = %while
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @test(i32 %a, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = sext i32 %3 to i64
  %5 = inttoptr i64 %4 to i8*
  %6 = call i32 (i8*, ...) @printf(i8* %5)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %8, %9
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @printMyInt(i32 %toPrint) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %toPrint, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = inttoptr i64 %4 to i8*
  %6 = call i32 (i8*, ...) @printf(i8* %5)
  %7 = load i32, i32* %1, align 4
  ret i32 %7
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
