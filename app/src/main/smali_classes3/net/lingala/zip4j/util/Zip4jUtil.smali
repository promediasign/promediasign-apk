.class public abstract Lnet/lingala/zip4j/util/Zip4jUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convertCharArrayToByteArray([CZ)[B
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->convertCharArrayToByteArrayUsingUtf8([C)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->convertCharArrayToByteArrayUsingDefaultCharset([C)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static convertCharArrayToByteArrayUsingDefaultCharset([C)[B
    .locals 3

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static convertCharArrayToByteArrayUsingUtf8([C)[B
    .locals 2

    :try_start_0
    sget-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->convertCharArrayToByteArrayUsingDefaultCharset([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static getCompressionMethod(Lnet/lingala/zip4j/model/AbstractFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 2

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object p0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "AesExtraDataRecord not present in local header for aes encrypted data"

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    array-length v1, p1

    if-eq v0, v1, :cond_1

    invoke-static {p0, p1, v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->readUntilBufferIsFull(Ljava/io/InputStream;[BI)I

    move-result v0

    array-length p0, p1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot read fully into byte buffer"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected EOF reached when trying to read stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 3

    .line 2
    if-ltz p2, :cond_6

    if-ltz p3, :cond_5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_4

    :goto_0
    if-eq v0, p3, :cond_3

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length greater than buffer size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative offset"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readUntilBufferIsFull(Ljava/io/InputStream;[BI)I
    .locals 4

    if-ltz p2, :cond_3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    sub-int/2addr v1, p2

    const/4 v2, 0x1

    :goto_0
    array-length v3, p1

    if-ge p2, v3, :cond_2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    const/16 v0, 0xf

    if-ge v2, v0, :cond_2

    invoke-virtual {p0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_1

    add-int/2addr p2, v0

    sub-int/2addr v1, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return p2

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid readLength"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
