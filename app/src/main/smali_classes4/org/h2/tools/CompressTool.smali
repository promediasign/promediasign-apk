.class public Lorg/h2/tools/CompressTool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x60000


# instance fields
.field private cachedBuffer:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compress([BILorg/h2/compress/Compressor;[B)I
    .locals 3

    .line 1
    invoke-interface {p2}, Lorg/h2/compress/Compressor;->getAlgorithm()I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p3, v1

    const/4 v0, 0x1

    invoke-static {p3, v0, p1}, Lorg/h2/tools/CompressTool;->writeVariableInt([BII)I

    move-result v2

    add-int/2addr v2, v0

    invoke-interface {p2, p0, p1, p3, v2}, Lorg/h2/compress/Compressor;->compress([BI[BI)I

    move-result p2

    add-int v0, p1, v2

    if-gt p2, v0, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    aput-byte v1, p3, v1

    invoke-static {p0, v1, p3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v0

    :cond_1
    return p2
.end method

.method public static expand([B[BI)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/h2/tools/CompressTool;->getCompressor(I)Lorg/h2/compress/Compressor;

    move-result-object v2

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lorg/h2/tools/CompressTool;->readVariableInt([BI)I

    move-result v8

    invoke-static {v8}, Lorg/h2/tools/CompressTool;->getVariableIntLength(I)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    array-length v1, p0

    sub-int v5, v1, v4

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-interface/range {v2 .. v8}, Lorg/h2/compress/Compressor;->expand([BII[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const p1, 0x15ff8

    new-array p2, v0, [Ljava/lang/String;

    invoke-static {p1, p0, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private getBuffer(I)[B
    .locals 1

    const/high16 v0, 0x60000

    if-le p1, v0, :cond_0

    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/h2/tools/CompressTool;->cachedBuffer:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    if-ge v0, p1, :cond_2

    :cond_1
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/h2/tools/CompressTool;->cachedBuffer:[B

    :cond_2
    iget-object p1, p0, Lorg/h2/tools/CompressTool;->cachedBuffer:[B

    return-object p1
.end method

.method public static getCompressAlgorithm(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "LZF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "DEFLATE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const v0, 0x15ff7

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static getCompressor(I)Lorg/h2/compress/Compressor;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    new-instance p0, Lorg/h2/compress/CompressDeflate;

    invoke-direct {p0}, Lorg/h2/compress/CompressDeflate;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const v0, 0x15ff7

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lorg/h2/compress/CompressLZF;

    invoke-direct {p0}, Lorg/h2/compress/CompressLZF;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lorg/h2/compress/CompressNo;

    invoke-direct {p0}, Lorg/h2/compress/CompressNo;-><init>()V

    return-object p0
.end method

.method private static getCompressor(Ljava/lang/String;)Lorg/h2/compress/Compressor;
    .locals 3

    .line 2
    if-nez p0, :cond_0

    const-string p0, "LZF"

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0}, Lorg/h2/tools/CompressTool;->getCompressAlgorithm(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lorg/h2/tools/CompressTool;->getCompressor(I)Lorg/h2/compress/Compressor;

    move-result-object p0

    invoke-interface {p0, v1}, Lorg/h2/compress/Compressor;->setOptions(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getInstance()Lorg/h2/tools/CompressTool;
    .locals 1

    new-instance v0, Lorg/h2/tools/CompressTool;

    invoke-direct {v0}, Lorg/h2/tools/CompressTool;-><init>()V

    return-object v0
.end method

.method public static getVariableIntLength(I)I
    .locals 2

    const/4 v0, 0x5

    if-gez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x80

    if-ge p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v1, 0x4000

    if-ge p0, v1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/high16 v1, 0x200000

    if-ge p0, v1, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/high16 v1, 0x10000000

    if-ge p0, v1, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    return v0
.end method

.method public static readVariableInt([BI)I
    .locals 4

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v2, v1, 0xff

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    return v2

    :cond_0
    const/16 v3, 0xc0

    if-ge v2, v3, :cond_1

    and-int/lit8 p1, v1, 0x3f

    shl-int/lit8 p1, p1, 0x8

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p1, p0

    return p1

    :cond_1
    const/16 v3, 0xe0

    if-ge v2, v3, :cond_2

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 p1, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    aget-byte p0, p0, p1

    :goto_0
    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    return v1

    :cond_2
    const/16 v3, 0xf0

    if-ge v2, v3, :cond_3

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    add-int/lit8 p1, p1, 0x3

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    aget-byte p0, p0, p1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v2, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x4

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static wrapInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "GZIP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string v1, "ZIP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_3
    const-string p2, "DEFLATE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_4
    const-string p2, "LZF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p1, Lorg/h2/compress/LZFInputStream;

    invoke-direct {p1, p0}, Lorg/h2/compress/LZFInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    :goto_1
    return-object p0

    :cond_6
    const p0, 0x15ff7

    invoke-static {p0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {p0, v0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static wrapOutputStream(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1

    :try_start_0
    const-string v0, "GZIP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string v0, "ZIP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance p0, Ljava/util/zip/ZipEntry;

    invoke-direct {p0, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    goto :goto_0

    :cond_1
    const-string p2, "DEFLATE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    const-string p2, "LZF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p1, Lorg/h2/compress/LZFOutputStream;

    invoke-direct {p1, p0}, Lorg/h2/compress/LZFOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    :goto_1
    return-object p0

    :cond_4
    const p0, 0x15ff7

    invoke-static {p0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static writeVariableInt([BII)I
    .locals 6

    const/4 v0, 0x5

    const/16 v1, -0x10

    const/4 v2, 0x4

    if-gez p2, :cond_0

    add-int/lit8 v3, p1, 0x1

    aput-byte v1, p0, p1

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v4, p2, 0x18

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, p1, 0x3

    shr-int/lit8 v4, p2, 0x10

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    add-int/2addr p1, v2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v3

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return v0

    :cond_0
    const/16 v3, 0x80

    if-ge p2, v3, :cond_1

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v4, 0x4000

    const/4 v5, 0x2

    if-ge p2, v4, :cond_2

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    int-to-byte p1, p2

    aput-byte p1, p0, v0

    return v5

    :cond_2
    const/high16 v3, 0x200000

    const/4 v4, 0x3

    if-ge p2, v3, :cond_3

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/2addr p1, v5

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return v4

    :cond_3
    const/high16 v3, 0x10000000

    if-ge p2, v3, :cond_4

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x18

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v3, p2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    add-int/2addr p1, v4

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return v2

    :cond_4
    add-int/lit8 v3, p1, 0x1

    aput-byte v1, p0, p1

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v4, p2, 0x18

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, p1, 0x3

    shr-int/lit8 v4, p2, 0x10

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    add-int/2addr p1, v2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v3

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return v0
.end method


# virtual methods
.method public compress([BLjava/lang/String;)[B
    .locals 3

    .line 2
    array-length v0, p1

    array-length v1, p1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    const-string p2, "NO"

    :cond_0
    invoke-static {p2}, Lorg/h2/tools/CompressTool;->getCompressor(Ljava/lang/String;)Lorg/h2/compress/Compressor;

    move-result-object p2

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x64

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/h2/tools/CompressTool;->getBuffer(I)[B

    move-result-object v0

    array-length v1, p1

    invoke-static {p1, v1, p2, v0}, Lorg/h2/tools/CompressTool;->compress([BILorg/h2/compress/Compressor;[B)I

    move-result p1

    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public expand([B)[B
    .locals 9

    .line 2
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    invoke-static {v1}, Lorg/h2/tools/CompressTool;->getCompressor(I)Lorg/h2/compress/Compressor;

    move-result-object v2

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Lorg/h2/tools/CompressTool;->readVariableInt([BI)I

    move-result v8

    invoke-static {v8}, Lorg/h2/tools/CompressTool;->getVariableIntLength(I)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v8}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v1

    array-length v3, p1

    sub-int v5, v3, v4

    const/4 v7, 0x0

    move-object v3, p1

    move-object v6, v1

    invoke-interface/range {v2 .. v8}, Lorg/h2/compress/Compressor;->expand([BII[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const v1, 0x15ff8

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
