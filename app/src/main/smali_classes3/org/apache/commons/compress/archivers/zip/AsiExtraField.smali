.class public Lorg/apache/commons/compress/archivers/zip/AsiExtraField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final WORD:I = 0x4


# instance fields
.field private crc:Ljava/util/zip/CRC32;

.field private dirFlag:Z

.field private gid:I

.field private link:Ljava/lang/String;

.field private mode:I

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x756e

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->dirFlag:Z

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCentralDirectoryData()[B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLocalFileDataData()[B

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    return v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLinkedFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 9

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v0

    add-int/lit8 v1, v0, -0x4

    new-array v2, v1, [B

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode()I

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v6, v3

    int-to-long v6, v6

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v6, v4, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getUserId()I

    move-result v6

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v6

    const/4 v8, 0x6

    invoke-static {v6, v4, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getGroupId()I

    move-result v6

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v6

    const/16 v8, 0x8

    invoke-static {v6, v4, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0xa

    array-length v6, v3

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    new-array v0, v0, [B

    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v3

    invoke-static {v3, v4, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v4, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    return v0
.end method

.method public getMode(I)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->isLink()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xa000

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4000

    goto :goto_0

    :cond_1
    const v0, 0x8000

    :goto_0
    and-int/lit16 p1, p1, 0xfff

    or-int/2addr p1, v0

    return p1
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->dirFlag:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->isLink()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLink()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->parseFromLocalFileData([BII)V

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 5

    .line 1
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-int/lit8 v2, p3, -0x4

    .line 6
    .line 7
    new-array v3, v2, [B

    .line 8
    .line 9
    add-int/lit8 p2, p2, 0x4

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    .line 21
    .line 22
    invoke-virtual {p1, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    cmp-long v2, v0, p1

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 p2, 0x2

    .line 40
    invoke-static {v3, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    long-to-int p2, v0

    .line 45
    new-array v0, p2, [B

    .line 46
    .line 47
    const/4 v1, 0x6

    .line 48
    invoke-static {v3, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    .line 53
    .line 54
    const/16 v1, 0x8

    .line 55
    .line 56
    invoke-static {v3, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    .line 61
    .line 62
    if-nez p2, :cond_0

    .line 63
    .line 64
    const-string p2, ""

    .line 65
    .line 66
    :goto_0
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    add-int/lit8 p3, p3, -0xe

    .line 70
    .line 71
    if-gt p2, p3, :cond_2

    .line 72
    .line 73
    const/16 p3, 0xa

    .line 74
    .line 75
    invoke-static {v3, p3, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    .line 77
    .line 78
    new-instance p2, Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([B)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :goto_1
    and-int/lit16 p2, p1, 0x4000

    .line 85
    .line 86
    if-eqz p2, :cond_1

    .line 87
    .line 88
    const/4 v4, 0x1

    .line 89
    :cond_1
    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->setDirectory(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->setMode(I)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    new-instance p1, Ljava/util/zip/ZipException;

    .line 97
    .line 98
    const-string p3, "Bad symbolic link name length "

    .line 99
    .line 100
    const-string v0, " in ASI extra field"

    .line 101
    .line 102
    invoke-static {p2, p3, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_3
    new-instance p3, Ljava/util/zip/ZipException;

    .line 111
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v3, "Bad CRC checksum, expected "

    .line 115
    .line 116
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, " instead of "

    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {p3, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p3
.end method

.method public setDirectory(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->dirFlag:Z

    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    return-void
.end method

.method public setLinkedFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    return-void
.end method
