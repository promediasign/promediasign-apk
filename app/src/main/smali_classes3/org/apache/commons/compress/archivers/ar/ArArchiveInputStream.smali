.class public Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "SourceFile"


# static fields
.field private static final BSD_LONGNAME_PREFIX_LEN:I = 0x3


# instance fields
.field private closed:Z

.field private currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

.field private entryOffset:J

.field private final input:Ljava/io/InputStream;

.field private final metaData:[B

.field private namebuffer:[B

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    const/16 v0, 0x3a

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    return-void
.end method

.method private asInt([BII)I
    .locals 6

    .line 1
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIIZ)I

    move-result p1

    return p1
.end method

.method private asInt([BIII)I
    .locals 6

    .line 2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIIZ)I

    move-result p1

    return p1
.end method

.method private asInt([BIIIZ)I
    .locals 0

    .line 3
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1, p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private asInt([BIIZ)I
    .locals 6

    .line 4
    const/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIIZ)I

    move-result p1

    return p1
.end method

.method private asLong([BII)J
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method private getBSDLongName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->BSD_LONGNAME_PREFIX_LEN:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-array v0, p1, [B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    if-ne v1, p1, :cond_0

    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private getExtendedName(I)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    move v0, p1

    .line 6
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    if-ge v0, v2, :cond_3

    .line 10
    .line 11
    aget-byte v2, v1, v0

    .line 12
    .line 13
    const/16 v3, 0xa

    .line 14
    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    add-int/lit8 v2, v0, -0x1

    .line 24
    .line 25
    aget-byte v2, v1, v2

    .line 26
    .line 27
    const/16 v3, 0x2f

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    :cond_2
    sub-int/2addr v0, p1

    .line 34
    invoke-static {v1, p1, v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 40
    .line 41
    const-string v1, "Failed to read entry: "

    .line 42
    .line 43
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 52
    .line 53
    const-string v0, "Cannot process GNU long filename as no // record was found"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method private static isBSDLongName(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "^#1/\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGNULongName(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "^/\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isGNUStringTable(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "//"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static matches([BI)Z
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    aget-byte p1, p0, v1

    const/16 v0, 0x21

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    aget-byte v0, p0, p1

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v2, 0x61

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    const/16 v2, 0x72

    if-ne v0, v2, :cond_0

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_0

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    const/16 v2, 0x68

    if-ne v0, v2, :cond_0

    const/4 v0, 0x6

    aget-byte v0, p0, v0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_0

    const/4 v0, 0x7

    aget-byte p0, p0, v0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private readGNUStringTable([BII)Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BII)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    new-array p2, p1, [B

    .line 6
    .line 7
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 8
    .line 9
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p3, p2, v0, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    int-to-long v0, p2

    .line 17
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 18
    .line 19
    .line 20
    if-ne p2, p1, :cond_0

    .line 21
    .line 22
    new-instance p2, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 23
    .line 24
    const-string p3, "//"

    .line 25
    .line 26
    int-to-long v0, p1

    .line 27
    invoke-direct {p2, p3, v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :cond_0
    new-instance p3, Ljava/io/IOException;

    .line 32
    .line 33
    const-string v0, "Failed to read complete // record: expected="

    .line 34
    .line 35
    const-string v1, " read="

    .line 36
    .line 37
    invoke-static {v0, p1, v1, p2}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p3
.end method

.method private trackReadBytes(J)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(J)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    return-void
.end method

.method public getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-wide v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    .line 11
    .line 12
    .line 13
    move-result-wide v5

    .line 14
    add-long/2addr v5, v3

    .line 15
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 16
    .line 17
    iget-wide v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 18
    .line 19
    sub-long/2addr v5, v3

    .line 20
    invoke-static {v1, v5, v6}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-direct {v0, v3, v4}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 25
    .line 26
    .line 27
    iput-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 28
    .line 29
    :cond_0
    iget-wide v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 30
    .line 31
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    cmp-long v1, v3, v5

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    const-string v1, "!<arch>\n"

    .line 38
    .line 39
    invoke-static {v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    array-length v3, v1

    .line 44
    new-array v3, v3, [B

    .line 45
    .line 46
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 47
    .line 48
    invoke-static {v4, v3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    int-to-long v7, v4

    .line 53
    invoke-direct {v0, v7, v8}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 54
    .line 55
    .line 56
    array-length v7, v1

    .line 57
    if-ne v4, v7, :cond_2

    .line 58
    .line 59
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v4, "Invalid header "

    .line 71
    .line 72
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 91
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v3, "Failed to read header. Occured at byte: "

    .line 95
    .line 96
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v1

    .line 114
    :cond_3
    :goto_0
    iget-wide v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 115
    .line 116
    const-wide/16 v7, 0x2

    .line 117
    .line 118
    rem-long/2addr v3, v7

    .line 119
    cmp-long v1, v3, v5

    .line 120
    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-gez v1, :cond_4

    .line 130
    .line 131
    return-object v2

    .line 132
    :cond_4
    const-wide/16 v3, 0x1

    .line 133
    .line 134
    invoke-direct {v0, v3, v4}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 135
    .line 136
    .line 137
    :cond_5
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 138
    .line 139
    iget-object v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 140
    .line 141
    invoke-static {v1, v3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    int-to-long v3, v1

    .line 146
    invoke-direct {v0, v3, v4}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 147
    .line 148
    .line 149
    if-nez v1, :cond_6

    .line 150
    .line 151
    return-object v2

    .line 152
    :cond_6
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 153
    .line 154
    array-length v2, v2

    .line 155
    if-lt v1, v2, :cond_d

    .line 156
    .line 157
    const-string v1, "`\n"

    .line 158
    .line 159
    invoke-static {v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    array-length v2, v1

    .line 164
    new-array v2, v2, [B

    .line 165
    .line 166
    iget-object v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 167
    .line 168
    invoke-static {v3, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    int-to-long v4, v3

    .line 173
    invoke-direct {v0, v4, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 174
    .line 175
    .line 176
    array-length v4, v1

    .line 177
    if-ne v3, v4, :cond_c

    .line 178
    .line 179
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_b

    .line 184
    .line 185
    iget-wide v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 186
    .line 187
    iput-wide v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 188
    .line 189
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 190
    .line 191
    const/4 v2, 0x0

    .line 192
    const/16 v3, 0x10

    .line 193
    .line 194
    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isGNUStringTable(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    const/16 v5, 0xa

    .line 207
    .line 208
    const/16 v6, 0x30

    .line 209
    .line 210
    if-eqz v4, :cond_7

    .line 211
    .line 212
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 213
    .line 214
    invoke-direct {v0, v1, v6, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->readGNUStringTable([BII)Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    iput-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 219
    .line 220
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    return-object v1

    .line 225
    :cond_7
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 226
    .line 227
    invoke-direct {v0, v4, v6, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asLong([BII)J

    .line 228
    .line 229
    .line 230
    move-result-wide v4

    .line 231
    const-string v6, "/"

    .line 232
    .line 233
    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    const/4 v7, 0x1

    .line 238
    if-eqz v6, :cond_9

    .line 239
    .line 240
    invoke-static {v1, v7, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    :cond_8
    :goto_1
    move-object v13, v1

    .line 245
    move-wide v14, v4

    .line 246
    goto :goto_2

    .line 247
    :cond_9
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isGNULongName(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-eqz v2, :cond_a

    .line 252
    .line 253
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getExtendedName(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    goto :goto_1

    .line 266
    :cond_a
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isBSDLongName(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_8

    .line 271
    .line 272
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getBSDLongName(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    int-to-long v8, v2

    .line 281
    sub-long/2addr v4, v8

    .line 282
    iget-wide v10, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 283
    .line 284
    add-long/2addr v10, v8

    .line 285
    iput-wide v10, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 286
    .line 287
    goto :goto_1

    .line 288
    :goto_2
    new-instance v1, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 289
    .line 290
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 291
    .line 292
    const/16 v4, 0x1c

    .line 293
    .line 294
    const/4 v5, 0x6

    .line 295
    invoke-direct {v0, v2, v4, v5, v7}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIZ)I

    .line 296
    .line 297
    .line 298
    move-result v16

    .line 299
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 300
    .line 301
    const/16 v4, 0x22

    .line 302
    .line 303
    invoke-direct {v0, v2, v4, v5, v7}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIZ)I

    .line 304
    .line 305
    .line 306
    move-result v17

    .line 307
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 308
    .line 309
    const/16 v4, 0x28

    .line 310
    .line 311
    const/16 v5, 0x8

    .line 312
    .line 313
    invoke-direct {v0, v2, v4, v5, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIII)I

    .line 314
    .line 315
    .line 316
    move-result v18

    .line 317
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 318
    .line 319
    const/16 v4, 0xc

    .line 320
    .line 321
    invoke-direct {v0, v2, v3, v4}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asLong([BII)J

    .line 322
    .line 323
    .line 324
    move-result-wide v19

    .line 325
    move-object v12, v1

    .line 326
    invoke-direct/range {v12 .. v20}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;JIIIJ)V

    .line 327
    .line 328
    .line 329
    iput-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 330
    .line 331
    return-object v1

    .line 332
    :cond_b
    new-instance v1, Ljava/io/IOException;

    .line 333
    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    const-string v3, "Invalid entry trailer. not read the content? Occured at byte: "

    .line 337
    .line 338
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    .line 342
    .line 343
    .line 344
    move-result-wide v3

    .line 345
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw v1

    .line 356
    :cond_c
    new-instance v1, Ljava/io/IOException;

    .line 357
    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    const-string v3, "Failed to read entry trailer. Occured at byte: "

    .line 361
    .line 362
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    .line 366
    .line 367
    .line 368
    move-result-wide v3

    .line 369
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw v1

    .line 380
    :cond_d
    new-instance v1, Ljava/io/IOException;

    .line 381
    .line 382
    const-string v2, "Truncated ar archive"

    .line 383
    .line 384
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw v1
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 7

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v3

    add-long/2addr v3, v1

    if-ltz p3, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    cmp-long v2, v0, v3

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v5, p3

    sub-long/2addr v3, v0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    int-to-long p2, p1

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No current ar entry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
