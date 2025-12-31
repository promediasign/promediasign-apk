.class public Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final ONE_THOUSAND:Ljava/math/BigInteger;

.field private static final ZERO:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private gid:Ljava/math/BigInteger;

.field private uid:Ljava/math/BigInteger;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x7875

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ONE_THOUSAND:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ONE_THOUSAND:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    return-void
.end method

.method public static trimLeadingZeroesForceMinLength([B)[B
    .locals 4

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v3, p0, v1

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p0

    sub-int/2addr v0, v2

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v1, v0, [B

    array-length v3, p0

    sub-int/2addr v3, v2

    sub-int v3, v0, v3

    sub-int/2addr v0, v3

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    iget v2, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getCentralDirectoryData()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getGID()J
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->bigToLong(Ljava/math/BigInteger;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v4, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v5, v3, 0x3

    add-int/2addr v5, v4

    new-array v5, v5, [B

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    :cond_3
    iget v6, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->unsignedIntToSignedByte(I)B

    move-result v6

    aput-byte v6, v5, v2

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->unsignedIntToSignedByte(I)B

    move-result v6

    const/4 v7, 0x1

    aput-byte v6, v5, v7

    const/4 v6, 0x2

    if-eqz v0, :cond_4

    invoke-static {v0, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int/2addr v6, v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->unsignedIntToSignedByte(I)B

    move-result v0

    aput-byte v0, v5, v6

    if-eqz v1, :cond_5

    invoke-static {v1, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    return-object v5
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, v2

    :goto_1
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v2
.end method

.method public getUID()J
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->bigToLong(Ljava/math/BigInteger;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const v0, -0x12d687

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    mul-int v1, v1, v0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->reset()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    const-string v1, " bytes"

    .line 6
    .line 7
    if-lt p3, v0, :cond_2

    .line 8
    .line 9
    add-int/lit8 v0, p2, 0x1

    .line 10
    .line 11
    aget-byte v2, p1, p2

    .line 12
    .line 13
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->signedByteToUnsignedInt(B)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    .line 18
    .line 19
    add-int/lit8 p2, p2, 0x2

    .line 20
    .line 21
    aget-byte v0, p1, v0

    .line 22
    .line 23
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->signedByteToUnsignedInt(B)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/lit8 v2, v0, 0x3

    .line 28
    .line 29
    const-string v3, " doesn\'t fit into "

    .line 30
    .line 31
    if-gt v2, p3, :cond_1

    .line 32
    .line 33
    add-int/2addr v0, p2

    .line 34
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance v4, Ljava/math/BigInteger;

    .line 39
    .line 40
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/4 v5, 0x1

    .line 45
    invoke-direct {v4, v5, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 46
    .line 47
    .line 48
    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    .line 49
    .line 50
    add-int/lit8 p2, v0, 0x1

    .line 51
    .line 52
    aget-byte v0, p1, v0

    .line 53
    .line 54
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->signedByteToUnsignedInt(B)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v2, v0

    .line 59
    if-gt v2, p3, :cond_0

    .line 60
    .line 61
    add-int/2addr v0, p2

    .line 62
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance p2, Ljava/math/BigInteger;

    .line 67
    .line 68
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p2, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 73
    .line 74
    .line 75
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/util/zip/ZipException;

    .line 79
    .line 80
    const-string p2, "X7875_NewUnix invalid: gidSize "

    .line 81
    .line 82
    invoke-static {p2, v0, v3, p3, v1}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_1
    new-instance p1, Ljava/util/zip/ZipException;

    .line 91
    .line 92
    const-string p2, "X7875_NewUnix invalid: uidSize "

    .line 93
    .line 94
    invoke-static {p2, v0, v3, p3, v1}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_2
    new-instance p1, Ljava/util/zip/ZipException;

    .line 103
    .line 104
    const-string p2, "X7875_NewUnix length is too short, only "

    .line 105
    .line 106
    invoke-static {p3, p2, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1
.end method

.method public setGID(J)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->longToBig(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    return-void
.end method

.method public setUID(J)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->longToBig(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x7875 Zip Extra Field: UID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " GID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
