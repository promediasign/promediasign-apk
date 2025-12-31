.class public abstract Lorg/apache/poi/xssf/binary/XSSFBParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final is:Lorg/apache/poi/util/LittleEndianInputStream;

.field private final records:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->records:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/BitSet;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    iput-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->records:Ljava/util/BitSet;

    return-void
.end method

.method private readNext(B)V
    .locals 9

    .line 1
    shr-int/lit8 v0, p1, 0x7

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/lit16 p1, p1, -0x81

    .line 14
    .line 15
    int-to-byte p1, p1

    .line 16
    and-int/lit16 v0, v0, -0x81

    .line 17
    .line 18
    int-to-byte v0, v0

    .line 19
    shl-int/lit8 v0, v0, 0x7

    .line 20
    .line 21
    add-int/2addr p1, v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    :goto_0
    const/4 v6, 0x4

    .line 28
    if-ge v4, v6, :cond_2

    .line 29
    .line 30
    if-nez v5, :cond_2

    .line 31
    .line 32
    iget-object v5, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    .line 33
    .line 34
    invoke-virtual {v5}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    shr-int/lit8 v6, v5, 0x7

    .line 39
    .line 40
    and-int/2addr v6, v1

    .line 41
    if-nez v6, :cond_1

    .line 42
    .line 43
    const/4 v6, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v6, 0x0

    .line 46
    :goto_1
    and-int/lit16 v5, v5, -0x81

    .line 47
    .line 48
    int-to-byte v5, v5

    .line 49
    mul-int/lit8 v7, v4, 0x7

    .line 50
    .line 51
    shl-int/2addr v5, v7

    .line 52
    int-to-long v7, v5

    .line 53
    add-long/2addr v2, v7

    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    move v5, v6

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->records:Ljava/util/BitSet;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    .line 70
    .line 71
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    cmp-long p1, v0, v2

    .line 76
    .line 77
    if-nez p1, :cond_4

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    new-instance p1, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    .line 81
    .line 82
    const-string v4, "End of file reached before expected.\tTried to skip "

    .line 83
    .line 84
    const-string v5, ", but only skipped "

    .line 85
    .line 86
    invoke-static {v4, v2, v3, v5}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_5
    :goto_2
    long-to-int v0, v2

    .line 102
    new-array v0, v0, [B

    .line 103
    .line 104
    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBParser;->handleRecord(I[B)V

    .line 110
    .line 111
    .line 112
    :goto_3
    return-void
.end method


# virtual methods
.method public abstract handleRecord(I[B)V
.end method

.method public parse()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBParser;->is:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBParser;->readNext(B)V

    goto :goto_0
.end method
