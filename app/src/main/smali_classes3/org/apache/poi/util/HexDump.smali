.class public Lorg/apache/poi/util/HexDump;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final EOL:Ljava/lang/String;

.field public static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/HexDump;->EOL:Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/HexDump;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static byteToHex(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-long v1, p0

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/4 p0, 0x2

    const-string v3, "0x"

    invoke-static {v0, v1, v2, p0, v3}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dump([BJI)Ljava/lang/String;
    .locals 1

    .line 1
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/util/HexDump;->dump([BJII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dump([BJII)Ljava/lang/String;
    .locals 9

    if-eqz p0, :cond_9

    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const v0, 0x7fffffff

    if-eq p4, v0, :cond_2

    if-ltz p4, :cond_2

    add-int/2addr p4, p3

    if-gez p4, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, p0

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_1

    :cond_2
    :goto_0
    array-length p4, p0

    :goto_1
    if-ltz p3, :cond_8

    array-length v0, p0

    if-ge p3, v0, :cond_8

    int-to-long v0, p3

    add-long/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_2
    if-ge p3, p4, :cond_7

    sub-int v1, p4, p3

    const/16 v2, 0x10

    if-le v1, v2, :cond_3

    const/16 v1, 0x10

    :cond_3
    const/16 v3, 0x8

    const-string v4, ""

    invoke-static {v0, p1, p2, v3, v4}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_5

    if-ge v4, v1, :cond_4

    add-int v5, v4, p3

    aget-byte v5, p0, v5

    int-to-long v5, v5

    const/4 v7, 0x2

    const-string v8, " "

    invoke-static {v0, v5, v6, v7, v8}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v5, "   "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    if-ge v3, v1, :cond_6

    add-int v2, v3, p3

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toAscii(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    sget-object v2, Lorg/apache/poi/util/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v1

    add-long/2addr p1, v1

    add-int/lit8 p3, p3, 0x10

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p1, "illegal index: "

    const-string p2, " into array of length "

    .line 2
    invoke-static {p3, p1, p2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3
    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "No Data"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lorg/apache/poi/util/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V
    .locals 9

    .line 8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p3

    if-eq p3, v1, :cond_2

    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 v2, p3, -0x1

    if-lez p3, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p3

    if-ne p3, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move p3, v2

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v8, v3

    const-wide/16 v4, 0x0

    move-object v6, p1

    move v7, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;II)V

    return-void
.end method

.method public static declared-synchronized dump([BJLjava/io/OutputStream;I)V
    .locals 7

    .line 9
    const-class v0, Lorg/apache/poi/util/HexDump;

    monitor-enter v0

    const v6, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    :try_start_0
    invoke-static/range {v1 .. v6}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static dump([BJLjava/io/OutputStream;II)V
    .locals 2

    .line 10
    if-eqz p3, :cond_0

    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Lorg/apache/poi/util/HexDump;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-static {p0, p1, p2, p4, p5}, Lorg/apache/poi/util/HexDump;->dump([BJII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot write to nullstream"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToHex(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-long v1, p0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 p0, 0x8

    const-string v3, "0x"

    invoke-static {v0, v1, v2, p0, v3}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static longToHex(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x10

    const-string v2, "0x"

    invoke-static {v0, p0, p1, v1, v2}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/FileInputStream;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v1}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static shortToHex(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-long v1, p0

    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    const/4 p0, 0x4

    const-string v3, "0x"

    invoke-static {v0, v1, v2, p0, v3}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toAscii(I)C
    .locals 3

    const/16 v0, 0xff

    and-int/2addr p0, v0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    const/16 v2, 0x2e

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0xdd

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x2e

    :goto_0
    return p0
.end method

.method public static toHex(B)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit16 p0, p0, 0xff

    int-to-long v2, p0

    const-string p0, ""

    invoke-static {v0, v2, v3, v1, p0}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex(I)Ljava/lang/String;
    .locals 6

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-string p0, ""

    invoke-static {v0, v2, v3, v1, p0}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex(J)Ljava/lang/String;
    .locals 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, ""

    invoke-static {v0, p0, p1, v1, v2}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "[]"

    :goto_1
    return-object p0
.end method

.method public static toHex(S)Ljava/lang/String;
    .locals 4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const v2, 0xffff

    and-int/2addr p0, v2

    int-to-long v2, p0

    const-string p0, ""

    invoke-static {v0, v2, v3, v1, p0}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-byte v2, p0, v1

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex([BI)Ljava/lang/String;
    .locals 9

    .line 7
    array-length v0, p0

    if-nez v0, :cond_0

    const-string p0, ": 0"

    return-object p0

    :cond_0
    array-length v0, p0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x0

    const-string v4, ""

    invoke-static {v0, v2, v3, v1, v4}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    array-length v7, p0

    if-ge v6, v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    if-ne v5, p1, :cond_1

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v7, v6

    invoke-static {v0, v7, v8, v1, v4}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    if-lez v6, :cond_2

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    aget-byte v7, p0, v6

    invoke-static {v7}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex([S)Ljava/lang/String;
    .locals 3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-short v2, p0, v1

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p4, p3, [C

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_1

    const-wide/16 v0, 0xf

    and-long/2addr v0, p1

    long-to-int v1, v0

    const/16 v0, 0xa

    if-ge v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x30

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x37

    :goto_1
    int-to-char v0, v1

    aput-char v0, p4, p3

    const/4 v0, 0x4

    ushr-long/2addr p1, v0

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void
.end method
