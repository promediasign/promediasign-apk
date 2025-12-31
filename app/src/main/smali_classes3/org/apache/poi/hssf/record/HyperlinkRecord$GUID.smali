.class final Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/HyperlinkRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GUID"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x10


# instance fields
.field private final _d1:I

.field private final _d2:I

.field private final _d3:I

.field private final _d4:J


# direct methods
.method public constructor <init>(IIIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d1:I

    iput p2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d2:I

    iput p3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d3:I

    iput-wide p4, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d4:J

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 6

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;-><init>(IIIJ)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseShort([CI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseShort([CI)I

    move-result v1

    add-int v3, v0, v1

    const/16 v0, 0x9

    invoke-static {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseShort([CI)I

    move-result v4

    const/16 v0, 0xe

    invoke-static {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseShort([CI)I

    move-result v5

    const/16 v0, 0x17

    :goto_0
    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-char v1, p0, v1

    aput-char v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseLELong([CI)J

    move-result-wide v6

    new-instance p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;-><init>(IIIJ)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "supplied text is the wrong length for a GUID"

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseHexChar(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_2
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad hex char \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseLELong([CI)J
    .locals 6

    add-int/lit8 v0, p1, 0xe

    const-wide/16 v1, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    const/4 v3, 0x4

    shl-long/2addr v1, v3

    aget-char v4, p0, v0

    invoke-static {v4}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseHexChar(C)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    shl-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x1

    aget-char v3, p0, v3

    invoke-static {v3}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseHexChar(C)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private static parseShort([CI)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    shl-int/lit8 v1, v1, 0x4

    add-int v2, p1, v0

    aget-char v2, p0, v2

    invoke-static {v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseHexChar(C)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d1:I

    iget v2, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d1:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d2:I

    iget v2, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d2:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d3:I

    iget v2, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d3:I

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d4:J

    iget-wide v4, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d4:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public formatAsString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x24

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d1:I

    .line 9
    .line 10
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "-"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d2:I

    .line 28
    .line 29
    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d3:I

    .line 44
    .line 45
    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->getD4()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    invoke-static {v3, v4}, Lorg/apache/poi/util/HexDump;->longToHex(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/4 v4, 0x6

    .line 68
    invoke-static {v3, v2, v4, v0, v1}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v3, v4, v0}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method

.method public getD1()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d1:I

    return v0
.end method

.method public getD2()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d2:I

    return v0
.end method

.method public getD3()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d3:I

    return v0
.end method

.method public getD4()J
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [B

    iget-wide v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d4:J

    const/4 v4, 0x7

    :goto_0
    if-ltz v4, :cond_0

    const-wide/16 v5, 0xff

    and-long/2addr v5, v2

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v1, v4

    shr-long/2addr v2, v0

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d3:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d4:J

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-class v1, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 9
    .line 10
    const-string v2, " ["

    .line 11
    .line 12
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->y(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->formatAsString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "]"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
