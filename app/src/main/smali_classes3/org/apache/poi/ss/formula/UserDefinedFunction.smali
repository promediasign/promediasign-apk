.class final Lorg/apache/poi/ss/formula/UserDefinedFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/UserDefinedFunction;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/UserDefinedFunction;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/UserDefinedFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 v2, 0x0

    aget-object v3, p1, v2

    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;->getFunctionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v4

    if-eqz v4, :cond_0

    sub-int/2addr v0, v1

    new-array v3, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v4, v3, p2}, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    invoke-direct {p1, v3}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "First argument should be a NameEval, but got ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "function name argument missing"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
