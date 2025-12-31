.class public final Lorg/apache/poi/ss/formula/constant/ConstantValueParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_REPRESENTATION:Ljava/lang/Object;


# direct methods
.method public static encode(Lorg/apache/poi/util/LittleEndianOutput;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->encodeSingleValue(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static encodeSingleValue(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->EMPTY_REPRESENTATION:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-interface {p0, v1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x1

    :cond_1
    invoke-interface {p0, v1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    return-void

    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Double;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    return-void

    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    return-void

    :cond_4
    instance-of v0, p1, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    const/16 v0, 0x10

    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->getErrorCode()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected value type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getEncodedSize(Ljava/lang/Object;)I
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->EMPTY_REPRESENTATION:Ljava/lang/Object;

    const/16 v1, 0x8

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Boolean;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Double;

    if-eq v0, v2, :cond_2

    const-class v2, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static getEncodedSize([Ljava/lang/Object;)I
    .locals 3

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static parse(Lorg/apache/poi/util/LittleEndianInput;I)[Ljava/lang/Object;
    .locals 3

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->readAConstantValue(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static readAConstantValue(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

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
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x10

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->valueOf(I)Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 36
    .line 37
    const-string v1, "Unknown grbit value ("

    .line 38
    .line 39
    const-string v2, ")"

    .line 40
    .line 41
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_1
    invoke-static {p0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->readBoolean(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_2
    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/Double;

    .line 60
    .line 61
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_4
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    .line 70
    .line 71
    .line 72
    sget-object p0, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->EMPTY_REPRESENTATION:Ljava/lang/Object;

    .line 73
    .line 74
    return-object p0
.end method

.method private static readBoolean(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-int p0, v0

    .line 6
    int-to-byte p0, p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    const-string v1, "unexpected boolean encoding ("

    .line 18
    .line 19
    const-string v2, ")"

    .line 20
    .line 21
    invoke-static {p0, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    return-object p0
.end method
