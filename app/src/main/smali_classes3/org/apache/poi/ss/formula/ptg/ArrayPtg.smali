.class public final Lorg/apache/poi/ss/formula/ptg/ArrayPtg;
.super Lorg/apache/poi/ss/formula/ptg/Ptg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;
    }
.end annotation


# static fields
.field public static final PLAIN_TOKEN_SIZE:I = 0x8

.field public static final sid:B = 0x20t


# instance fields
.field private final _arrayValues:[Ljava/lang/Object;

.field private final _nColumns:I

.field private final _nRows:I

.field private final _reserved0Int:I

.field private final _reserved1Short:I

.field private final _reserved2Byte:I


# direct methods
.method public constructor <init>(IIIII[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    iput p2, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    iput p3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    iput p4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    iput p5, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    invoke-virtual {p6}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([[Ljava/lang/Object;)V
    .locals 9

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p1

    int-to-short v3, v1

    iput v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    int-to-short v4, v2

    iput v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    mul-int v3, v3, v4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_0

    invoke-virtual {p0, v6, v4}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v7

    aget-object v8, v5, v6

    aput-object v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    return-void
.end method

.method private static getConstantText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    instance-of v0, p0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "\""

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p0, v1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    check-cast p0, Ljava/lang/Double;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    check-cast p0, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    const-string p0, "TRUE"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string p0, "FALSE"

    .line 52
    .line 53
    :goto_0
    return-object p0

    .line 54
    :cond_3
    instance-of v0, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    check-cast p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    .line 59
    .line 60
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->getText()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "Unexpected constant class ("

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p0, ")"

    .line 86
    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    .line 99
    .line 100
    const-string v0, "Array item cannot be null"

    .line 101
    .line 102
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    return v0
.end method

.method public getDefaultOperandClass()B
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public getRowCount()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public getTokenArrayValues()[[Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-virtual {p0, v4, v2}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v6

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "array values not read yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueIndex(II)I
    .locals 4

    .line 1
    const-string v0, ")"

    .line 2
    .line 3
    const-string v1, ") is outside the allowed range (0.."

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    .line 8
    .line 9
    if-ge p1, v2, :cond_1

    .line 10
    .line 11
    if-ltz p2, :cond_0

    .line 12
    .line 13
    iget v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    .line 14
    .line 15
    if-ge p2, v3, :cond_0

    .line 16
    .line 17
    mul-int p2, p2, v2

    .line 18
    .line 19
    add-int/2addr p2, p1

    .line 20
    return p2

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v2, "Specified rowIx ("

    .line 24
    .line 25
    invoke-static {p2, v2, v1}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    .line 30
    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string v2, "Specified colIx ("

    .line 50
    .line 51
    invoke-static {p1, v2, v1}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    .line 56
    .line 57
    add-int/lit8 v1, v1, -0x1

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p2
.end method

.method public isBaseToken()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    if-ge v2, v3, :cond_3

    if-lez v2, :cond_0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    if-ge v3, v4, :cond_2

    if-lez v3, :cond_1

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v4}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getConstantText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[ArrayPtg]\nnRows = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getRowCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\nnCols = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getColumnCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "  #values#uninitialised#\n"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->toFormulaString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    return-void
.end method

.method public writeTokenValueBytes(Lorg/apache/poi/util/LittleEndianOutput;)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->encode(Lorg/apache/poi/util/LittleEndianOutput;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-static {p1}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize([Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    return p1
.end method
