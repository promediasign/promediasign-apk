.class public abstract Lorg/apache/poi/ss/formula/ptg/Ptg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLASS_ARRAY:B = 0x40t

.field public static final CLASS_REF:B = 0x0t

.field public static final CLASS_VALUE:B = 0x20t

.field public static final EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;


# instance fields
.field private ptgClass:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    return-void
.end method

.method private static createBasePtg(BLorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 5
    .line 6
    const-string v0, "Unexpected base token id ("

    .line 7
    .line 8
    const-string v1, ")"

    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :pswitch_1
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_2
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_3
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->read(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_4
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->read(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_5
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_6
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_7
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/MissingArgPtg;->instance:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_8
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_9
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_a
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/UnaryMinusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 62
    .line 63
    return-object p0

    .line 64
    :pswitch_b
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_c
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/RangePtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 68
    .line 69
    return-object p0

    .line 70
    :pswitch_d
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 71
    .line 72
    return-object p0

    .line 73
    :pswitch_e
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/IntersectionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 74
    .line 75
    return-object p0

    .line 76
    :pswitch_f
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/NotEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_10
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 80
    .line 81
    return-object p0

    .line 82
    :pswitch_11
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 83
    .line 84
    return-object p0

    .line 85
    :pswitch_12
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/EqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 86
    .line 87
    return-object p0

    .line 88
    :pswitch_13
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/LessEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 89
    .line 90
    return-object p0

    .line 91
    :pswitch_14
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/LessThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 92
    .line 93
    return-object p0

    .line 94
    :pswitch_15
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/ConcatPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 95
    .line 96
    return-object p0

    .line 97
    :pswitch_16
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/PowerPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 98
    .line 99
    return-object p0

    .line 100
    :pswitch_17
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/DividePtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 101
    .line 102
    return-object p0

    .line 103
    :pswitch_18
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/MultiplyPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 104
    .line 105
    return-object p0

    .line 106
    :pswitch_19
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/SubtractPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 107
    .line 108
    return-object p0

    .line 109
    :pswitch_1a
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/AddPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 110
    .line 111
    return-object p0

    .line 112
    :pswitch_1b
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/TblPtg;

    .line 113
    .line 114
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/TblPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 115
    .line 116
    .line 117
    return-object p0

    .line 118
    :pswitch_1c
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    .line 119
    .line 120
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/ExpPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 121
    .line 122
    .line 123
    return-object p0

    .line 124
    :pswitch_1d
    new-instance p1, Lorg/apache/poi/ss/formula/ptg/UnknownPtg;

    .line 125
    .line 126
    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/ptg/UnknownPtg;-><init>(I)V

    .line 127
    .line 128
    .line 129
    return-object p1

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static createClassifiedPtg(BLorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2

    and-int/lit8 v0, p0, 0x1f

    or-int/lit8 v0, v0, 0x20

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Unknown Ptg in Formula: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/AreaNPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaNPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/RefNPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefNPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_e
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/NamePtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_f
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/FuncPtg;->create(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/FuncPtg;

    move-result-object p0

    return-object p0

    :pswitch_11
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x39
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createPtg(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    invoke-static {v0, p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->createBasePtg(BLorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->createClassifiedPtg(BLorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    const/16 v2, 0x60

    const/16 v3, 0x40

    if-lt v0, v2, :cond_1

    invoke-virtual {p0, v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    goto :goto_0

    :cond_1
    if-lt v0, v3, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    :goto_0
    return-object p0
.end method

.method public static doesFormulaReferToDeletedCell([Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isDeletedCellRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getEncodedSize([Lorg/apache/poi/ss/formula/ptg/Ptg;)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static getEncodedSizeWithoutArrayData([Lorg/apache/poi/ss/formula/ptg/Ptg;)I
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static isDeletedCellRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    if-eqz v0, :cond_3

    return v1

    :cond_3
    instance-of p0, p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static readTokens(ILorg/apache/poi/util/LittleEndianInput;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    div-int/lit8 v1, p0, 0x2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->createPtg(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v4

    instance-of v5, v4, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-ne v2, p0, :cond_4

    invoke-static {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toPtgArray(Ljava/util/List;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    if-eqz v3, :cond_3

    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_3

    aget-object v0, p0, v1

    instance-of v2, v0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->finishReading(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    move-result-object v0

    aput-object v0, p0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Ptg array size mismatch"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static serializePtgs([Lorg/apache/poi/ss/formula/ptg/Ptg;[BI)I
    .locals 5

    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    array-length p1, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3, v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ptg;

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->writeTokenValueBytes(Lorg/apache/poi/util/LittleEndianOutput;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result p0

    sub-int/2addr p0, p2

    return p0
.end method

.method private static toPtgArray(Ljava/util/List;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/ptg/Ptg;",
            ">;)[",
            "Lorg/apache/poi/ss/formula/ptg/Ptg;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public abstract getDefaultOperandClass()B
.end method

.method public final getPtgClass()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    return v0
.end method

.method public final getRVAType()C
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isBaseToken()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x2e

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    const/16 v1, 0x20

    .line 15
    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    const/16 v1, 0x40

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x41

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "Unknown operand class ("

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-byte v2, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    .line 35
    .line 36
    const-string v3, ")"

    .line 37
    .line 38
    invoke-static {v3, v2, v1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    const/16 v0, 0x56

    .line 47
    .line 48
    return v0

    .line 49
    :cond_3
    const/16 v0, 0x52

    .line 50
    .line 51
    return v0
.end method

.method public abstract getSize()I
.end method

.method public abstract isBaseToken()Z
.end method

.method public final setClass(B)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isBaseToken()Z

    move-result v0

    if-nez v0, :cond_0

    iput-byte p1, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "setClass should not be called on a base token"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract toFormulaString()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract write(Lorg/apache/poi/util/LittleEndianOutput;)V
.end method
