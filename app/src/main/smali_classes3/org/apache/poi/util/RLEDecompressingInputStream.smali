.class public Lorg/apache/poi/util/RLEDecompressingInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final POWER2:[I


# instance fields
.field private final buf:[B

.field private final in:Ljava/io/InputStream;

.field private len:I

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/util/RLEDecompressingInputStream;->POWER2:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Header byte 0x01 expected, received 0x%02X"

    invoke-static {v3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static decompress([B)[B
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->decompress([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decompress([BII)[B
    .locals 2

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance p0, Lorg/apache/poi/util/RLEDecompressingInputStream;

    invoke-direct {p0, v1}, Lorg/apache/poi/util/RLEDecompressingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static getCopyLenBits(I)I
    .locals 2

    const/16 v0, 0xb

    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    sget-object v1, Lorg/apache/poi/util/RLEDecompressingInputStream;->POWER2:[I

    aget v1, v1, v0

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    rsub-int/lit8 p0, v0, 0xf

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0xc

    return p0
.end method

.method private readChunk()I
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort(Ljava/io/InputStream;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, -0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    and-int/lit16 v4, v2, 0xfff

    .line 16
    .line 17
    add-int/2addr v4, v0

    .line 18
    and-int/lit16 v5, v2, 0x7000

    .line 19
    .line 20
    const/16 v6, 0x3000

    .line 21
    .line 22
    if-ne v5, v6, :cond_b

    .line 23
    .line 24
    const v5, 0x8000

    .line 25
    .line 26
    .line 27
    and-int/2addr v2, v5

    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    .line 31
    .line 32
    iget-object v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1, v4}, Ljava/io/InputStream;->read([BII)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-lt v0, v4, :cond_1

    .line 39
    .line 40
    return v4

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 44
    .line 45
    const-string v1, "Not enough bytes read, expected "

    .line 46
    .line 47
    invoke-static {v4, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_2
    const/4 v2, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    :cond_3
    :goto_0
    if-ge v2, v4, :cond_a

    .line 58
    .line 59
    iget-object v6, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    add-int/2addr v2, v0

    .line 66
    if-ne v6, v3, :cond_4

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_4
    const/4 v7, 0x0

    .line 70
    :goto_1
    const/16 v8, 0x8

    .line 71
    .line 72
    if-ge v7, v8, :cond_3

    .line 73
    .line 74
    if-lt v2, v4, :cond_5

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    sget-object v8, Lorg/apache/poi/util/RLEDecompressingInputStream;->POWER2:[I

    .line 78
    .line 79
    aget v9, v8, v7

    .line 80
    .line 81
    and-int/2addr v9, v6

    .line 82
    if-nez v9, :cond_7

    .line 83
    .line 84
    iget-object v8, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    .line 85
    .line 86
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-ne v8, v3, :cond_6

    .line 91
    .line 92
    return v3

    .line 93
    :cond_6
    iget-object v9, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    .line 94
    .line 95
    add-int/lit8 v10, v5, 0x1

    .line 96
    .line 97
    int-to-byte v8, v8

    .line 98
    aput-byte v8, v9, v5

    .line 99
    .line 100
    add-int/2addr v2, v0

    .line 101
    move v5, v10

    .line 102
    goto :goto_3

    .line 103
    :cond_7
    iget-object v9, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    .line 104
    .line 105
    invoke-direct {p0, v9}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort(Ljava/io/InputStream;)I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-ne v9, v3, :cond_8

    .line 110
    .line 111
    return v3

    .line 112
    :cond_8
    add-int/lit8 v2, v2, 0x2

    .line 113
    .line 114
    add-int/lit8 v10, v5, -0x1

    .line 115
    .line 116
    invoke-static {v10}, Lorg/apache/poi/util/RLEDecompressingInputStream;->getCopyLenBits(I)I

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    shr-int v11, v9, v10

    .line 121
    .line 122
    add-int/2addr v11, v0

    .line 123
    aget v8, v8, v10

    .line 124
    .line 125
    sub-int/2addr v8, v0

    .line 126
    and-int/2addr v8, v9

    .line 127
    add-int/lit8 v8, v8, 0x3

    .line 128
    .line 129
    sub-int v9, v5, v11

    .line 130
    .line 131
    add-int/2addr v8, v9

    .line 132
    :goto_2
    if-ge v9, v8, :cond_9

    .line 133
    .line 134
    iget-object v10, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    .line 135
    .line 136
    add-int/lit8 v11, v5, 0x1

    .line 137
    .line 138
    aget-byte v12, v10, v9

    .line 139
    .line 140
    aput-byte v12, v10, v5

    .line 141
    .line 142
    add-int/2addr v9, v0

    .line 143
    move v5, v11

    .line 144
    goto :goto_2

    .line 145
    :cond_9
    :goto_3
    add-int/2addr v7, v0

    .line 146
    goto :goto_1

    .line 147
    :cond_a
    :goto_4
    return v5

    .line 148
    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 151
    .line 152
    const v5, 0xe000

    .line 153
    .line 154
    .line 155
    and-int/2addr v2, v5

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    new-array v0, v0, [Ljava/lang/Object;

    .line 161
    .line 162
    aput-object v2, v0, v1

    .line 163
    .line 164
    const-string v1, "Chunksize header A should be 0x3000, received 0x%04X"

    .line 165
    .line 166
    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v3
.end method

.method private readInt(Ljava/io/InputStream;)I
    .locals 4

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ne v3, v1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ne p1, v1, :cond_3

    return v1

    :cond_3
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method private readShort(Ljava/io/InputStream;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public available()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-lez v0, :cond_0

    iget v1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    if-lt v2, v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    iget v1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 6

    .line 3
    iget v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    move v2, p2

    move v0, p3

    :goto_0
    if-lez v0, :cond_3

    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    iget v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-lt v3, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-ne v3, v1, :cond_2

    if-le v2, p2, :cond_1

    sub-int v1, v2, p2

    :cond_1
    return v1

    :cond_2
    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    iget v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    iget v5, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    invoke-static {v4, v5, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    sub-int/2addr v0, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return p3
.end method

.method public readInt()I
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public readShort()I
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 5

    move-wide v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-lt v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    int-to-long v2, v3

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide p1
.end method
