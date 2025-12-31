.class public Lnet/lingala/zip4j/util/RawIO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final intBuff:[B

.field private final longBuff:[B

.field private final shortBuff:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    return-void
.end method

.method private readFully(Ljava/io/InputStream;[BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[BII)I

    move-result p1

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Could not fill buffer"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private resetBytes([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method


# virtual methods
.method public readIntLittleEndian(Ljava/io/InputStream;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readFully(Ljava/io/InputStream;[BI)V

    iget-object p1, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian([B)I

    move-result p1

    return p1
.end method

.method public readIntLittleEndian([B)I
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian([BI)I

    move-result p1

    return p1
.end method

.method public readIntLittleEndian([BI)I
    .locals 2

    .line 3
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1
.end method

.method public readLongLittleEndian(Ljava/io/InputStream;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    array-length v1, v0

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readFully(Ljava/io/InputStream;[BI)V

    iget-object p1, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLittleEndian(Ljava/io/InputStream;I)J
    .locals 1

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/util/RawIO;->resetBytes([B)V

    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-direct {p0, p1, v0, p2}, Lnet/lingala/zip4j/util/RawIO;->readFully(Ljava/io/InputStream;[BI)V

    iget-object p1, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide p1

    return-wide p1
.end method

.method public readLongLittleEndian([BI)J
    .locals 8

    .line 3
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/util/RawIO;->resetBytes([B)V

    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, p2, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 p2, 0x7

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v4, p2

    shl-long/2addr v4, v1

    const/4 p2, 0x6

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v6, p2

    or-long/2addr v4, v6

    shl-long/2addr v4, v1

    const/4 p2, 0x5

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v6, p2

    or-long/2addr v4, v6

    shl-long/2addr v4, v1

    const/4 p2, 0x4

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v6, p2

    or-long/2addr v4, v6

    shl-long/2addr v4, v1

    const/4 p2, 0x3

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v6, p2

    or-long/2addr v4, v6

    shl-long/2addr v4, v1

    const/4 p2, 0x2

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v6, p2

    or-long/2addr v4, v6

    shl-long/2addr v4, v1

    const/4 p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v6, p2

    or-long/2addr v4, v6

    shl-long v0, v4, v1

    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public readShortLittleEndian(Ljava/io/InputStream;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    array-length v1, v0

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readFully(Ljava/io/InputStream;[BI)V

    iget-object p1, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result p1

    return p1
.end method

.method public readShortLittleEndian([BI)I
    .locals 1

    .line 2
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method
