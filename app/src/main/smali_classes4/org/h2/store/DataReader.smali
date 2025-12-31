.class public Lorg/h2/store/DataReader;
.super Ljava/io/Reader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/store/DataReader$FastEOFException;
    }
.end annotation


# instance fields
.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lorg/h2/store/DataReader;->in:Ljava/io/InputStream;

    return-void
.end method

.method private readChar()C
    .locals 3

    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    int-to-char v0, v1

    return v0

    :cond_0
    const/16 v2, 0xe0

    if-lt v1, v2, :cond_1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    :cond_1
    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    goto :goto_0
.end method

.method private readString(I)Ljava/lang/String;
    .locals 3

    .line 2
    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-direct {p0}, Lorg/h2/store/DataReader;->readChar()C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public read([CII)I
    .locals 1

    const/4 p2, 0x0

    if-nez p3, :cond_0

    return p2

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/DataReader;->readChar()C

    move-result v0

    aput-char v0, p1, p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    nop

    if-nez p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    return p2

    :cond_2
    return p3
.end method

.method public readByte()B
    .locals 1

    iget-object v0, p0, Lorg/h2/store/DataReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    int-to-byte v0, v0

    return v0

    :cond_0
    new-instance v0, Lorg/h2/store/DataReader$FastEOFException;

    invoke-direct {v0}, Lorg/h2/store/DataReader$FastEOFException;-><init>()V

    throw v0
.end method

.method public readFully([BI)V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/DataReader;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result p1

    if-lt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/h2/store/DataReader$FastEOFException;

    invoke-direct {p1}, Lorg/h2/store/DataReader$FastEOFException;-><init>()V

    throw p1
.end method

.method public readString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/h2/store/DataReader;->readString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readVarInt()I
    .locals 2

    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    shl-int/lit8 v1, v1, 0x1c

    goto :goto_0
.end method

.method public readVarLong()J
    .locals 11

    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v4, 0x7f

    and-long/2addr v0, v4

    const/4 v6, 0x7

    :goto_0
    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v7

    int-to-long v7, v7

    and-long v9, v7, v4

    shl-long/2addr v9, v6

    or-long/2addr v0, v9

    cmp-long v9, v7, v2

    if-ltz v9, :cond_1

    return-wide v0

    :cond_1
    add-int/lit8 v6, v6, 0x7

    goto :goto_0
.end method
