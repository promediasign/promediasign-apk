.class public abstract Lorg/apache/poi/ss/formula/functions/FinanceFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function3Arg;
.implements Lorg/apache/poi/ss/formula/functions/Function4Arg;


# static fields
.field private static final DEFAULT_ARG3:Lorg/apache/poi/ss/formula/eval/ValueEval;

.field private static final DEFAULT_ARG4:Lorg/apache/poi/ss/formula/eval/ValueEval;

.field public static final FV:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final NPER:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final PMT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final PV:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    sput-object v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG3:Lorg/apache/poi/ss/formula/eval/ValueEval;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    sput-object v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG4:Lorg/apache/poi/ss/formula/eval/ValueEval;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/FinanceFunction$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->FV:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/FinanceFunction$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->NPER:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction$3;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/FinanceFunction$3;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->PMT:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction$4;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/FinanceFunction$4;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->PV:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract evaluate(DDDDZ)D
.end method

.method public evaluate([D)D
    .locals 17

    .line 1
    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_0

    aget-wide v5, v0, v5

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong number of arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-wide v5, v3

    :goto_0
    aget-wide v1, v0, v2

    move-wide v14, v1

    goto :goto_1

    :cond_2
    move-wide v5, v3

    move-wide v14, v5

    :goto_1
    const/4 v1, 0x0

    aget-wide v8, v0, v1

    const/4 v2, 0x1

    aget-wide v10, v0, v2

    const/4 v7, 0x2

    aget-wide v12, v0, v7

    cmpl-double v0, v5, v3

    if-eqz v0, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v16}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(DDDDZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7

    .line 2
    sget-object v6, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG3:Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8

    .line 3
    sget-object v7, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG4:Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 13

    .line 4
    move v0, p1

    move v1, p2

    move-object/from16 v2, p3

    :try_start_0
    invoke-static {v2, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    move-object/from16 v4, p4

    invoke-static {v4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v4

    move-object/from16 v6, p5

    invoke-static {v6, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6

    move-object/from16 v8, p6

    invoke-static {v8, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v8

    move-object/from16 v10, p7

    invoke-static {v10, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    const-wide/16 v10, 0x0

    cmpl-double v12, v0, v10

    if-eqz v12, :cond_0

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_0
    move-object v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(DDDDZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 15

    .line 5
    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v1, v5, :cond_5

    const/4 v6, 0x4

    if-eq v1, v6, :cond_3

    const/4 v7, 0x5

    if-eq v1, v7, :cond_0

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_0
    aget-object v1, v0, v5

    sget-object v5, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v1, v5, :cond_1

    sget-object v1, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG3:Lorg/apache/poi/ss/formula/eval/ValueEval;

    :cond_1
    move-object v13, v1

    aget-object v1, v0, v6

    if-ne v1, v5, :cond_2

    sget-object v1, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG4:Lorg/apache/poi/ss/formula/eval/ValueEval;

    :cond_2
    move-object v14, v1

    aget-object v10, v0, v4

    aget-object v11, v0, v3

    aget-object v12, v0, v2

    move-object v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v7 .. v14}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    :cond_3
    aget-object v1, v0, v5

    sget-object v5, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v1, v5, :cond_4

    sget-object v1, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG3:Lorg/apache/poi/ss/formula/eval/ValueEval;

    :cond_4
    move-object v11, v1

    aget-object v8, v0, v4

    aget-object v9, v0, v3

    aget-object v10, v0, v2

    sget-object v12, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG4:Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-object v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v5 .. v12}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    :cond_5
    aget-object v4, v0, v4

    aget-object v5, v0, v3

    aget-object v6, v0, v2

    sget-object v7, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG3:Lorg/apache/poi/ss/formula/eval/ValueEval;

    sget-object v8, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->DEFAULT_ARG4:Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v1 .. v8}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method
