.class public Lorg/apache/poi/xssf/binary/XSSFBUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castToInt(J)I
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    long-to-int p1, p0

    return p1

    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "val ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") can\'t be cast to int"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get24BitInt([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p1, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    shl-int/lit8 p1, v0, 0x8

    add-int/2addr p0, p1

    add-int/2addr p0, v1

    return p0
.end method

.method public static readXLNullableWideString([BILjava/lang/StringBuilder;)I
    .locals 5

    .line 1
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-ltz v4, :cond_3

    .line 10
    .line 11
    const-wide v2, 0xffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    if-gtz v4, :cond_2

    .line 23
    .line 24
    long-to-int v1, v0

    .line 25
    mul-int/lit8 v1, v1, 0x2

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x4

    .line 28
    .line 29
    add-int v0, p1, v1

    .line 30
    .line 31
    array-length v2, p0

    .line 32
    if-gt v0, v2, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/lang/String;

    .line 35
    .line 36
    const-string v2, "UTF-16LE"

    .line 37
    .line 38
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v0, p0, p1, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x4

    .line 49
    .line 50
    return v1

    .line 51
    :cond_1
    new-instance p2, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    .line 52
    .line 53
    const-string v0, "trying to read beyond data length:offset="

    .line 54
    .line 55
    const-string v2, ", numBytes="

    .line 56
    .line 57
    const-string v3, ", data.length="

    .line 58
    .line 59
    invoke-static {v0, p1, v2, v1, v3}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    array-length p0, p0

    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-direct {p2, p0}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p2

    .line 75
    :cond_2
    new-instance p0, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    .line 76
    .line 77
    const-string p1, "too many chars to read"

    .line 78
    .line 79
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_3
    new-instance p0, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    .line 84
    .line 85
    const-string p1, "too few chars to read"

    .line 86
    .line 87
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public static readXLWideString([BILjava/lang/StringBuilder;)I
    .locals 5

    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    const-wide v2, 0xffffffffL

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 p1, p1, 0x4

    add-int v0, p1, v1

    array-length v2, p0

    if-gt v0, v2, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x4

    return v1

    :cond_0
    new-instance p0, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string p1, "trying to read beyond data length"

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string p1, "too many chars to read"

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string p1, "too few chars to read"

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
