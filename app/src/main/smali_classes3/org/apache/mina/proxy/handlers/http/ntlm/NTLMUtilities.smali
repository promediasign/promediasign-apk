.class public Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createType1Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)[B
    .locals 3

    if-eqz p3, :cond_1

    array-length v0, p3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "osVersion parameter should be a 8 byte wide array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    or-int/lit16 p2, p2, 0x3000

    goto :goto_1

    :cond_2
    const/16 p2, 0x3003

    :goto_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMConstants;->NTLM_SIGNATURE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {p2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {p1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->getOEMStringAsByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->getOEMStringAsByteArray(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p3, :cond_3

    const/16 p2, 0x28

    goto :goto_2

    :cond_3
    const/16 p2, 0x20

    :goto_2
    array-length v1, p1

    int-to-short v1, v1

    array-length v2, p0

    add-int/2addr v2, p2

    invoke-static {v1, v2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBuffer(SI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    array-length v1, p0

    int-to-short v1, v1

    invoke-static {v1, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBuffer(SI)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    if-eqz p3, :cond_4

    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V

    :cond_4
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "workStation and domain must be non null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final createType3Message(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)[B
    .locals 5

    const/16 v0, 0x8

    if-eqz p2, :cond_5

    array-length v1, p2

    if-ne v1, v0, :cond_5

    if-eqz p6, :cond_1

    array-length v1, p6

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "osVersion should be a 8 byte wide array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    goto :goto_1

    :cond_2
    const/16 p5, 0x3003

    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v2, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMConstants;->NTLM_SIGNATURE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {p1, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->getLMResponse(Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-static {p1, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p5, p2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->isFlagSet(II)Z

    move-result p2

    invoke-static {p3, p2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->encodeString(Ljava/lang/String;Z)[B

    move-result-object p3

    invoke-static {p0, p2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->encodeString(Ljava/lang/String;Z)[B

    move-result-object p0

    invoke-static {p4, p2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->encodeString(Ljava/lang/String;Z)[B

    move-result-object p2

    if-eqz p6, :cond_3

    const/16 p4, 0x48

    goto :goto_2

    :cond_3
    const/16 p4, 0x40

    :goto_2
    array-length v3, p3

    add-int/2addr v3, p4

    array-length v4, p0

    add-int/2addr v3, v4

    array-length v4, p2

    add-int/2addr v3, v4

    array-length v4, v2

    int-to-short v4, v4

    invoke-static {v1, v4, v3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    move-result v3

    array-length v4, p1

    int-to-short v4, v4

    invoke-static {v1, v4, v3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    array-length v3, p3

    int-to-short v3, v3

    invoke-static {v1, v3, p4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    move-result p4

    array-length v3, p0

    int-to-short v3, v3

    invoke-static {v1, v3, p4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    move-result p4

    array-length v3, p2

    int-to-short v3, v3

    invoke-static {v1, v3, p4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I

    new-array p4, v0, [B

    fill-array-data p4, :array_0

    invoke-virtual {v1, p4}, Ljava/io/OutputStream;->write([B)V

    invoke-static {p5}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I)[B

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/io/OutputStream;->write([B)V

    if-eqz p6, :cond_4

    invoke-virtual {v1, p6}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "challenge[] should be a 8 byte wide array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        -0x66t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static final extractChallengeFromType2Message([B)[B
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static final extractFlagsFromType2Message([B)I
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v3, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->changeWordEndianess([BII)V

    invoke-static {v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte4([B)I

    move-result p0

    return p0
.end method

.method public static final extractTargetInfoFromType2Message([BLjava/lang/Integer;)[B
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractFlagsFromType2Message([B)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    const/high16 v0, 0x800000

    invoke-static {p1, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->isFlagSet(II)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/16 p1, 0x28

    invoke-static {p0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->readSecurityBufferTarget([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static final extractTargetNameFromType2Message([BLjava/lang/Integer;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc

    invoke-static {p0, v0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->readSecurityBufferTarget([BI)[B

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractFlagsFromType2Message([B)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->isFlagSet(II)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/String;

    const-string p1, "UTF-16LE"

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/String;

    const-string p1, "ASCII"

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method public static final getOsVersion()[B
    .locals 8

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WINDOWS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x3

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "cmd /C ver"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "version"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    add-int/2addr v5, v0

    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "."

    invoke-direct {v4, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    invoke-static {v0, v5, v4, v1, v3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeOSVersion(BBS[BI)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v4, v0, v3, v1, v3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeOSVersion(BBS[BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v1

    :catch_1
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMConstants;->DEFAULT_OS_VERSION:[B

    return-object v0

    :cond_6
    :goto_1
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMConstants;->DEFAULT_OS_VERSION:[B

    return-object v0
.end method

.method public static final printTargetInformationBlockFromType2Message([BLjava/lang/Integer;Ljava/io/PrintWriter;)V
    .locals 6

    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractFlagsFromType2Message([B)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractTargetInfoFromType2Message([BLjava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "No target information block found !"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    aget-byte v2, p0, v1

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---\nType "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-byte v2, p0, v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_6

    if-eq v2, v4, :cond_5

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    const/4 v5, 0x4

    if-eq v2, v5, :cond_3

    const/4 v5, 0x5

    if-eq v2, v5, :cond_2

    goto :goto_3

    :cond_2
    const-string v2, "Parent DNS domain name"

    :goto_2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v2, "DNS domain name"

    goto :goto_2

    :cond_4
    const-string v2, "Fully qualified DNS hostname"

    goto :goto_2

    :cond_5
    const-string v2, "Domain name"

    goto :goto_2

    :cond_6
    const-string v2, "Server name"

    goto :goto_2

    :goto_3
    new-array v2, v4, [B

    add-int/lit8 v5, v1, 0x2

    invoke-static {p0, v5, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v0, v4}, Lorg/apache/mina/proxy/utils/ByteUtilities;->changeByteEndianess([BII)V

    invoke-static {v2, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte2([BI)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Length: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "Data: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lorg/apache/mina/proxy/utils/ByteUtilities;->isFlagSet(II)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x4

    const-string v5, "UTF-16LE"

    invoke-direct {v3, p0, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :goto_4
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x4

    const-string v5, "ASCII"

    invoke-direct {v3, p0, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_4

    :goto_5
    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_1

    :cond_8
    :goto_6
    return-void
.end method

.method public static final readSecurityBufferTarget([BI)[B
    .locals 3

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v2, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->changeWordEndianess([BII)V

    invoke-static {v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte2([B)I

    move-result p1

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte4([BI)I

    move-result v0

    new-array v1, p1, [B

    invoke-static {p0, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static final writeOSVersion(BBS[BI)V
    .locals 0

    aput-byte p0, p3, p4

    add-int/lit8 p0, p4, 0x1

    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x2

    int-to-byte p1, p2

    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x3

    shr-int/lit8 p1, p2, 0x8

    int-to-byte p1, p1

    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x4

    const/4 p1, 0x0

    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x5

    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x6

    aput-byte p1, p3, p0

    add-int/lit8 p4, p4, 0x7

    const/16 p0, 0xf

    aput-byte p0, p3, p4

    return-void
.end method

.method public static final writeSecurityBuffer(SSI[BI)V
    .locals 0

    .line 1
    invoke-static {p0, p3, p4}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeShort(S[BI)[B

    add-int/lit8 p0, p4, 0x2

    invoke-static {p1, p3, p0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeShort(S[BI)[B

    add-int/lit8 p4, p4, 0x4

    invoke-static {p2, p3, p4}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I[BI)[B

    return-void
.end method

.method public static final writeSecurityBuffer(SI)[B
    .locals 2

    .line 2
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, p0, p1, v0, v1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBuffer(SSI[BI)V

    return-object v0
.end method

.method public static final writeSecurityBufferAndUpdatePointer(Ljava/io/ByteArrayOutputStream;SI)I
    .locals 1

    invoke-static {p1, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->writeSecurityBuffer(SI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    add-int/2addr p2, p1

    return p2
.end method
