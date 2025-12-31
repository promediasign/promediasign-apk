.class public Lorg/conscrypt/ct/Serialization;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DER_LENGTH_LONG_FORM_FLAG:I = 0x80

.field private static final DER_TAG_MASK:I = 0x3f

.field private static final DER_TAG_OCTET_STRING:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readByte(Ljava/io/InputStream;)B
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    int-to-byte p0, p0

    return p0

    :cond_0
    new-instance p0, Lorg/conscrypt/ct/SerializationException;

    const-string v0, "Premature end of input, could not read byte."

    invoke-direct {p0, v0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v0, p0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readDEROctetString(Ljava/io/InputStream;)[B
    .locals 2

    invoke-static {p0}, Lorg/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    and-int/lit16 v0, v0, -0x81

    invoke-static {p0, v0}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v0

    :cond_0
    invoke-static {p0, v0}, Lorg/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/conscrypt/ct/SerializationException;

    const-string v1, "Wrong DER tag, expected OCTET STRING, got "

    .line 1
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readDEROctetString([B)[B
    .locals 1

    .line 7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/conscrypt/ct/Serialization;->readDEROctetString(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readFixedBytes(Ljava/io/InputStream;I)[B
    .locals 3

    const-string v0, "Premature end of input, expected "

    const-string v1, "Negative length: "

    if-ltz p1, :cond_1

    :try_start_0
    new-array v1, p1, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-lt p0, p1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lorg/conscrypt/ct/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, only read "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/conscrypt/ct/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p1, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {p1, p0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static readList(Ljava/io/InputStream;II)[[B
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lorg/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p0

    if-lez p0, :cond_0

    invoke-static {p1, p2}, Lorg/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [[B

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0

    :goto_1
    new-instance p1, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {p1, p0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static readList([BII)[[B
    .locals 1

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1, p2}, Lorg/conscrypt/ct/Serialization;->readList(Ljava/io/InputStream;II)[[B

    move-result-object p0

    return-object p0
.end method

.method public static readLong(Ljava/io/InputStream;I)J
    .locals 6

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-gt p1, v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, p1, :cond_0

    .line 11
    .line 12
    shl-long/2addr v1, v0

    .line 13
    invoke-static {p0}, Lorg/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    and-int/lit16 v4, v4, 0xff

    .line 18
    .line 19
    int-to-long v4, v4

    .line 20
    or-long/2addr v1, v4

    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-wide v1

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "Invalid width: "

    .line 28
    .line 29
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public static readNumber(Ljava/io/InputStream;I)I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-gt p1, v0, :cond_1

    .line 3
    .line 4
    if-ltz p1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v0, p1, :cond_0

    .line 9
    .line 10
    shl-int/lit8 v1, v1, 0x8

    .line 11
    .line 12
    invoke-static {p0}, Lorg/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    and-int/lit16 v2, v2, 0xff

    .line 17
    .line 18
    or-int/2addr v1, v2

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1

    .line 23
    :cond_1
    new-instance p0, Lorg/conscrypt/ct/SerializationException;

    .line 24
    .line 25
    const-string v0, "Invalid width: "

    .line 26
    .line 27
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public static readVariableBytes(Ljava/io/InputStream;I)[B
    .locals 0

    invoke-static {p0, p1}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result p1

    invoke-static {p0, p1}, Lorg/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static writeFixedBytes(Ljava/io/OutputStream;[B)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {p1, p0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static writeNumber(Ljava/io/OutputStream;JI)V
    .locals 5

    .line 1
    if-ltz p3, :cond_4

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    if-ge p3, v0, :cond_1

    .line 6
    .line 7
    mul-int/lit8 v0, p3, 0x8

    .line 8
    .line 9
    const-wide/16 v1, 0x1

    .line 10
    .line 11
    shl-long v0, v1, v0

    .line 12
    .line 13
    cmp-long v2, p1, v0

    .line 14
    .line 15
    if-gez v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Lorg/conscrypt/ct/SerializationException;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "Number too large, "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, " does not fit in "

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " bytes"

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_1
    :goto_0
    if-lez p3, :cond_3

    .line 52
    .line 53
    add-int/lit8 v0, p3, -0x1

    .line 54
    .line 55
    int-to-long v0, v0

    .line 56
    const-wide/16 v2, 0x8

    .line 57
    .line 58
    mul-long v0, v0, v2

    .line 59
    .line 60
    const-wide/16 v2, 0x40

    .line 61
    .line 62
    cmp-long v4, v0, v2

    .line 63
    .line 64
    if-gez v4, :cond_2

    .line 65
    .line 66
    long-to-int v1, v0

    .line 67
    shr-long v0, p1, v1

    .line 68
    .line 69
    const-wide/16 v2, 0xff

    .line 70
    .line 71
    and-long/2addr v0, v2

    .line 72
    long-to-int v1, v0

    .line 73
    int-to-byte v0, v1

    .line 74
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception p0

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :goto_1
    add-int/lit8 p3, p3, -0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :goto_2
    new-instance p1, Lorg/conscrypt/ct/SerializationException;

    .line 88
    .line 89
    invoke-direct {p1, p0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_3
    return-void

    .line 94
    :cond_4
    new-instance p0, Lorg/conscrypt/ct/SerializationException;

    .line 95
    .line 96
    const-string p1, "Negative width: "

    .line 97
    .line 98
    invoke-static {p3, p1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method public static writeVariableBytes(Ljava/io/OutputStream;[BI)V
    .locals 2

    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p2}, Lorg/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    invoke-static {p0, p1}, Lorg/conscrypt/ct/Serialization;->writeFixedBytes(Ljava/io/OutputStream;[B)V

    return-void
.end method
