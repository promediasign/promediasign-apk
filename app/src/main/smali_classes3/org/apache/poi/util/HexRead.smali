.class public Lorg/apache/poi/util/HexRead;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readData(Ljava/io/InputStream;I)[B
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/16 v5, 0x30

    const/4 v6, -0x1

    if-gt v5, v4, :cond_1

    const/16 v5, 0x39

    if-gt v4, v5, :cond_1

    add-int/lit8 v4, v4, -0x30

    goto :goto_2

    :cond_1
    const/16 v5, 0x41

    if-gt v5, v4, :cond_2

    const/16 v5, 0x46

    if-gt v4, v5, :cond_2

    add-int/lit8 v4, v4, -0x37

    goto :goto_2

    :cond_2
    const/16 v5, 0x61

    if-gt v5, v4, :cond_3

    const/16 v5, 0x66

    if-gt v4, v5, :cond_3

    add-int/lit8 v4, v4, -0x57

    goto :goto_2

    :cond_3
    const/16 v5, 0x23

    if-ne v5, v4, :cond_4

    invoke-static {p0}, Lorg/apache/poi/util/HexRead;->readToEOL(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_4
    if-eq v6, v4, :cond_6

    if-ne p1, v4, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    const/4 v4, -0x1

    :goto_2
    if-eq v4, v6, :cond_0

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    int-to-byte v4, v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Byte;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Byte;

    array-length p1, p0

    new-array p1, p1, [B

    :goto_4
    array-length v0, p0

    if-ge v1, v0, :cond_7

    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-object p1
.end method

.method public static readData(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    const/16 v4, 0xa

    if-eq v1, v4, :cond_3

    const/16 v4, 0xd

    if-eq v1, v4, :cond_3

    const/16 v4, 0x5b

    if-eq v1, v4, :cond_2

    const/16 v5, 0x5d

    if-eq v1, v5, :cond_0

    if-eqz v3, :cond_4

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, v4}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Section \'"

    const-string v1, "\' not found"

    .line 2
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public static readData(Ljava/lang/String;)[B
    .locals 1

    .line 9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static readData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 10
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readFromString(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lorg/apache/poi/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, -0x1

    invoke-static {v0, p0}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static readToEOL(Ljava/io/InputStream;)V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method
