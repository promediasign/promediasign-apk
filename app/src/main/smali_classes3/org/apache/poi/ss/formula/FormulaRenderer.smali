.class public Lorg/apache/poi/ss/formula/FormulaRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOperands(Ljava/util/Stack;I)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;I)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-array v0, p1, [Ljava/lang/String;

    .line 2
    .line 3
    add-int/lit8 v1, p1, -0x1

    .line 4
    .line 5
    :goto_0
    if-ltz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/String;

    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p0, "Too few arguments supplied to operation. Expected ("

    .line 25
    .line 26
    const-string v0, ") operands but got ("

    .line 27
    .line 28
    invoke-static {p1, p0, v0}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sub-int/2addr p1, v1

    .line 33
    add-int/lit8 p1, p1, -0x1

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, ")"

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    return-object v0
.end method

.method public static toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_d

    array-length v0, p1

    if-eqz v0, :cond_d

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_a

    aget-object v3, p1, v2

    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    if-nez v4, :cond_9

    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    if-nez v4, :cond_9

    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1
    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    if-eqz v4, :cond_6

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedIf()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedChoose()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSkip()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSpace()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSemiVolatile()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSum()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getNumberOfOperands()I

    move-result v4

    invoke-static {v0, v4}, Lorg/apache/poi/ss/formula/FormulaRenderer;->getOperands(Ljava/util/Stack;I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->toFormulaString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected tAttr: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    instance-of v4, v3, Lorg/apache/poi/ss/formula/WorkbookDependentFormula;

    if-eqz v4, :cond_7

    check-cast v3, Lorg/apache/poi/ss/formula/WorkbookDependentFormula;

    invoke-interface {v3, p0}, Lorg/apache/poi/ss/formula/WorkbookDependentFormula;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toFormulaString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_8
    check-cast v3, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;->getNumberOfOperands()I

    move-result v4

    invoke-static {v0, v4}, Lorg/apache/poi/ss/formula/FormulaRenderer;->getOperands(Ljava/util/Stack;I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;->toFormulaString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_9
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "too much stuff left on the stack"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Stack underflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ptgs must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
