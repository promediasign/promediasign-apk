.class final Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/FormulaRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpecialCachedValue"
.end annotation


# static fields
.field public static final BOOLEAN:I = 0x1

.field public static final EMPTY:I = 0x3

.field public static final ERROR_CODE:I = 0x2

.field public static final STRING:I


# instance fields
.field private final _variableData:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->_variableData:[B

    return-void
.end method

.method private static create(II)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 2

    .line 1
    int-to-byte p0, p0

    int-to-byte p1, p1

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    const/4 p0, 0x1

    aput-byte v1, v0, p0

    const/4 p0, 0x2

    aput-byte p1, v0, p0

    const/4 p0, 0x3

    aput-byte v1, v0, p0

    const/4 p0, 0x4

    aput-byte v1, v0, p0

    const/4 p0, 0x5

    aput-byte v1, v0, p0

    new-instance p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;-><init>([B)V

    return-object p0
.end method

.method public static create(J)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 5

    const-wide/high16 v0, -0x1000000000000L

    and-long v2, p0, v0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x6

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    long-to-int v4, p0

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/16 v4, 0x8

    shr-long/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    aget-byte p0, v1, v2

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Bad special value code ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v1, v2

    const-string v1, ")"

    .line 2
    invoke-static {v1, v0, p1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    new-instance p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;-><init>([B)V

    return-object p0
.end method

.method public static createCachedBoolean(Z)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object p0

    return-object p0
.end method

.method public static createCachedEmptyValue()Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    return-object v0
.end method

.method public static createCachedErrorCode(I)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object p0

    return-object p0
.end method

.method public static createForString()Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    return-object v0
.end method

.method private formatValue()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getTypeCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const-string v1, "#error(type="

    .line 17
    .line 18
    const-string v2, ")#"

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_0
    const-string v0, "<empty>"

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getDataValue()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getDataValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    const-string v0, "FALSE"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const-string v0, "TRUE"

    .line 47
    .line 48
    :goto_0
    return-object v0

    .line 49
    :cond_4
    const-string v0, "<string>"

    .line 50
    .line 51
    return-object v0
.end method

.method private getDataValue()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->_variableData:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public formatDebugString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->_variableData:[B

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getTypeCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getDataValue()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a boolean cached value - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getErrorValue()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getTypeCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getDataValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not an error cached value - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->_variableData:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getValueType()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getTypeCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v2, "Unexpected type id ("

    .line 26
    .line 27
    const-string v3, ")"

    .line 28
    .line 29
    invoke-static {v0, v2, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    return v0

    .line 44
    :cond_2
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    .line 45
    .line 46
    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    return v0

    .line 51
    :cond_3
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->_variableData:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    const v0, 0xffff

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x5b

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->formatValue()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/16 v2, 0x5d

    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
