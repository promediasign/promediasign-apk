.class final Lorg/apache/poi/ss/formula/OperandClassTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _formulaType:Lorg/apache/poi/ss/formula/FormulaType;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/FormulaType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/OperandClassTransformer;->_formulaType:Lorg/apache/poi/ss/formula/FormulaType;

    return-void
.end method

.method private static isSimpleValueFunction(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 5

    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getDefaultOperandClass()B

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getNumberOfOperands()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getParameterClass(I)B

    move-result v4

    if-eq v4, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    return v1
.end method

.method private static isSingleArgSum(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSum()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setSimpleValueFuncClass(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;BZ)V
    .locals 1

    const/16 v0, 0x40

    if-nez p3, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    :goto_1
    return-void
.end method

.method private transformClass(BBZ)B
    .locals 1

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    const/16 p1, 0x40

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    if-eq p2, v0, :cond_1

    .line 8
    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string p3, "Unexpected operand class ("

    .line 15
    .line 16
    const-string v0, ")"

    .line 17
    .line 18
    invoke-static {p2, p3, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    if-nez p3, :cond_2

    .line 27
    .line 28
    return v0

    .line 29
    :cond_2
    :goto_0
    return p1

    .line 30
    :cond_3
    if-nez p3, :cond_4

    .line 31
    .line 32
    return p1

    .line 33
    :cond_4
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method private transformFunctionNode(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;[Lorg/apache/poi/ss/formula/ParseNode;BZ)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getDefaultOperandClass()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, ")"

    .line 7
    .line 8
    const-string v3, "Unexpected operand class ("

    .line 9
    .line 10
    const/16 v4, 0x20

    .line 11
    .line 12
    const/16 v5, 0x40

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    if-eqz p4, :cond_4

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-eq v0, v4, :cond_1

    .line 20
    .line 21
    if-ne v0, v5, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    invoke-static {v0, v3, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    .line 38
    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_2
    if-nez p3, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    :goto_0
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    if-ne v0, p3, :cond_5

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_5
    if-eqz p3, :cond_b

    .line 58
    .line 59
    if-eq p3, v4, :cond_a

    .line 60
    .line 61
    if-ne p3, v5, :cond_9

    .line 62
    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    if-ne v0, v4, :cond_6

    .line 66
    .line 67
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    invoke-static {v0, v3, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_7
    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    .line 82
    .line 83
    .line 84
    :goto_1
    if-ne v0, v4, :cond_8

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_8
    :goto_2
    const/4 v1, 0x0

    .line 88
    goto :goto_3

    .line 89
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    invoke-static {p3, v3, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_a
    invoke-virtual {p1, v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_b
    if-eq v0, v4, :cond_a

    .line 104
    .line 105
    if-ne v0, v5, :cond_c

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    invoke-static {v0, v3, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :goto_3
    array-length p3, p2

    .line 119
    if-ge v6, p3, :cond_d

    .line 120
    .line 121
    aget-object p3, p2, v6

    .line 122
    .line 123
    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getParameterClass(I)B

    .line 124
    .line 125
    .line 126
    move-result p4

    .line 127
    invoke-direct {p0, p3, p4, v1}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v6, v6, 0x1

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_d
    return-void
.end method

.method private transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p1

    invoke-static {v0}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->isSimpleValueFunction(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v2

    invoke-direct {p0, v3, p2, v1}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->setSimpleValueFuncClass(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;BZ)V

    return-void

    :cond_2
    invoke-static {v0}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->isSingleArgSum(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    :cond_3
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    if-nez v1, :cond_9

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    if-nez v1, :cond_9

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    if-nez v1, :cond_9

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    if-nez v1, :cond_9

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    if-nez v1, :cond_9

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/IntersectionPtg;

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformFunctionNode(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;[Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    return-void

    :cond_5
    array-length p1, p1

    if-lez p1, :cond_7

    sget-object p1, Lorg/apache/poi/ss/formula/ptg/RangePtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-ne v0, p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Node should not have any children"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isBaseToken()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_8
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformClass(BBZ)B

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    return-void

    :cond_9
    :goto_1
    if-nez p2, :cond_a

    const/16 p2, 0x20

    :cond_a
    :goto_2
    array-length v0, p1

    if-ge v2, v0, :cond_b

    aget-object v0, p1, v2

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    return-void
.end method


# virtual methods
.method public transformFormula(Lorg/apache/poi/ss/formula/ParseNode;)V
    .locals 3

    sget-object v0, Lorg/apache/poi/ss/formula/OperandClassTransformer$1;->$SwitchMap$org$apache$poi$ss$formula$FormulaType:[I

    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperandClassTransformer;->_formulaType:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incomplete code - formula type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperandClassTransformer;->_formulaType:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") not supported yet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x40

    goto :goto_1

    :cond_3
    const/16 v0, 0x20

    :goto_1
    invoke-direct {p0, p1, v0, v2}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    return-void
.end method
