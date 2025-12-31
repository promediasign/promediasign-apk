.class public abstract Lorg/apache/commons/codec/binary/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytesUtf8(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/StringUtils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private static newString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static newStringUsAscii([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/StringUtils;->newString([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newStringUtf8([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/StringUtils;->newString([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
