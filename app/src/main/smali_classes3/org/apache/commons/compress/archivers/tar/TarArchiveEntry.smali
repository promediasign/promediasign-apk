.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# static fields
.field private static final EMPTY_TAR_ARCHIVE_ENTRIES:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;


# instance fields
.field private checkSumOK:Z

.field private devMajor:I

.field private devMinor:I

.field private final extraPaxHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final file:Ljava/io/File;

.field private groupId:J

.field private groupName:Ljava/lang/String;

.field private isExtended:Z

.field private linkFlag:B

.field private linkName:Ljava/lang/String;

.field private magic:Ljava/lang/String;

.field private modTime:J

.field private mode:I

.field private name:Ljava/lang/String;

.field private paxGNU1XSparse:Z

.field private paxGNUSparse:Z

.field private final preserveAbsolutePath:Z

.field private realSize:J

.field private size:J

.field private sparseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation
.end field

.field private starSparse:Z

.field private userId:J

.field private userName:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->EMPTY_TAR_ARCHIVE_ENTRIES:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    const-string v1, "ustar\u0000"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    const-string v1, "00"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNU1XSparse:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    const-string v2, "user.name"

    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->preserveAbsolutePath:Z

    return-void
.end method

.method public constructor <init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Z)V

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;ZZ)V

    return-void
.end method

.method private evaluateType([B)I
    .locals 3

    const-string v0, "ustar "

    const/16 v1, 0x101

    const/4 v2, 0x6

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const-string v0, "ustar\u0000"

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "tar\u0000"

    const/16 v1, 0x1fc

    const/4 v2, 0x4

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_3

    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x3a

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_3

    const/16 v3, 0x61

    if-lt v1, v3, :cond_0

    const/16 v3, 0x7a

    if-le v1, v3, :cond_1

    :cond_0
    const/16 v3, 0x41

    if-lt v1, v3, :cond_3

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_3

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v2, "netware"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-nez p1, :cond_4

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method private parseOctalOrBinary([BIIZ)J
    .locals 0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide p1

    return-wide p1
.end method

.method private parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;ZZ)V
    .locals 7

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    invoke-static {p1, v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1, v1, v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :goto_0
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    invoke-direct {p0, p1, v0, v2, p4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    long-to-int v4, v3

    .line 24
    iput v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 25
    .line 26
    const/16 v3, 0x6c

    .line 27
    .line 28
    invoke-direct {p0, p1, v3, v2, p4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    long-to-int v4, v3

    .line 33
    int-to-long v3, v4

    .line 34
    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    .line 35
    .line 36
    const/16 v3, 0x74

    .line 37
    .line 38
    invoke-direct {p0, p1, v3, v2, p4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    long-to-int v4, v3

    .line 43
    int-to-long v3, v4

    .line 44
    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    .line 45
    .line 46
    const/16 v3, 0x7c

    .line 47
    .line 48
    const/16 v4, 0xc

    .line 49
    .line 50
    invoke-static {p1, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 55
    .line 56
    const/16 v3, 0x88

    .line 57
    .line 58
    invoke-direct {p0, p1, v3, v4, p4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    .line 63
    .line 64
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->verifyCheckSum([B)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->checkSumOK:Z

    .line 69
    .line 70
    const/16 v3, 0x9c

    .line 71
    .line 72
    aget-byte v3, p1, v3

    .line 73
    .line 74
    iput-byte v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 75
    .line 76
    const/16 v3, 0x9d

    .line 77
    .line 78
    if-eqz p3, :cond_1

    .line 79
    .line 80
    invoke-static {p1, v3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-static {p1, v3, v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :goto_1
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 90
    .line 91
    const/16 v0, 0x101

    .line 92
    .line 93
    const/4 v3, 0x6

    .line 94
    invoke-static {p1, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    .line 99
    .line 100
    const/16 v0, 0x107

    .line 101
    .line 102
    const/4 v3, 0x2

    .line 103
    invoke-static {p1, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 108
    .line 109
    const/16 v0, 0x20

    .line 110
    .line 111
    const/16 v5, 0x109

    .line 112
    .line 113
    if-eqz p3, :cond_2

    .line 114
    .line 115
    invoke-static {p1, v5, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    invoke-static {p1, v5, v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    :goto_2
    iput-object v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 125
    .line 126
    const/16 v5, 0x129

    .line 127
    .line 128
    if-eqz p3, :cond_3

    .line 129
    .line 130
    invoke-static {p1, v5, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    goto :goto_3

    .line 135
    :cond_3
    invoke-static {p1, v5, v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :goto_3
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 140
    .line 141
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 142
    .line 143
    const/16 v5, 0x33

    .line 144
    .line 145
    if-eq v0, v5, :cond_4

    .line 146
    .line 147
    const/16 v5, 0x34

    .line 148
    .line 149
    if-ne v0, v5, :cond_5

    .line 150
    .line 151
    :cond_4
    const/16 v0, 0x149

    .line 152
    .line 153
    invoke-direct {p0, p1, v0, v2, p4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    long-to-int v0, v5

    .line 158
    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    .line 159
    .line 160
    const/16 v0, 0x151

    .line 161
    .line 162
    invoke-direct {p0, p1, v0, v2, p4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    .line 163
    .line 164
    .line 165
    move-result-wide v5

    .line 166
    long-to-int p4, v5

    .line 167
    iput p4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    .line 168
    .line 169
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->evaluateType([B)I

    .line 170
    .line 171
    .line 172
    move-result p4

    .line 173
    const/4 v0, 0x4

    .line 174
    if-eq p4, v3, :cond_a

    .line 175
    .line 176
    const-string v1, "/"

    .line 177
    .line 178
    const/16 v2, 0x159

    .line 179
    .line 180
    if-eq p4, v0, :cond_8

    .line 181
    .line 182
    const/16 p4, 0x9b

    .line 183
    .line 184
    if-eqz p3, :cond_6

    .line 185
    .line 186
    invoke-static {p1, v2, p4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    goto :goto_4

    .line 191
    :cond_6
    invoke-static {p1, v2, p4, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    :goto_4
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    if-eqz p2, :cond_7

    .line 200
    .line 201
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-nez p2, :cond_7

    .line 208
    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {p3, v1, p2}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 221
    .line 222
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    if-lez p2, :cond_e

    .line 227
    .line 228
    :goto_5
    invoke-static {p1, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_8
    const/16 p4, 0x83

    .line 245
    .line 246
    if-eqz p3, :cond_9

    .line 247
    .line 248
    invoke-static {p1, v2, p4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    goto :goto_6

    .line 253
    :cond_9
    invoke-static {p1, v2, p4, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    if-lez p2, :cond_e

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_a
    new-instance p2, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .line 268
    .line 269
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->sparseHeaders:Ljava/util/List;

    .line 270
    .line 271
    :goto_7
    if-ge v1, v0, :cond_d

    .line 272
    .line 273
    mul-int/lit8 p2, v1, 0x18

    .line 274
    .line 275
    add-int/lit16 p2, p2, 0x182

    .line 276
    .line 277
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseSparse([BI)Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    .line 282
    .line 283
    .line 284
    move-result-wide p3

    .line 285
    const-wide/16 v2, 0x0

    .line 286
    .line 287
    cmp-long v5, p3, v2

    .line 288
    .line 289
    if-gtz v5, :cond_b

    .line 290
    .line 291
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    .line 292
    .line 293
    .line 294
    move-result-wide p3

    .line 295
    cmp-long v5, p3, v2

    .line 296
    .line 297
    if-lez v5, :cond_c

    .line 298
    .line 299
    :cond_b
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->sparseHeaders:Ljava/util/List;

    .line 300
    .line 301
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_d
    const/16 p2, 0x1e2

    .line 308
    .line 309
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBoolean([BI)Z

    .line 310
    .line 311
    .line 312
    move-result p2

    .line 313
    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isExtended:Z

    .line 314
    .line 315
    const/16 p2, 0x1e3

    .line 316
    .line 317
    invoke-static {p1, p2, v4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    .line 318
    .line 319
    .line 320
    move-result-wide p1

    .line 321
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    .line 322
    .line 323
    :cond_e
    :goto_8
    return-void
.end method

.method private processPaxHeader(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "linkpath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "SCHILY.filetype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "uname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "mtime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "gname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "gid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "GNU.sparse.size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string v0, "GNU.sparse.realsize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "SCHILY.devminor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_c
    const-string v0, "SCHILY.devmajor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLinkName(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string p1, "sparse"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fillStarSparseData(Ljava/util/Map;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserName(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    double-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setModTime(J)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupName(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setName(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserId(J)V

    goto :goto_1

    :pswitch_8
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupId(J)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fillGNUSparse0xData(Ljava/util/Map;)V

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fillGNUSparse1xData(Ljava/util/Map;)V

    goto :goto_1

    :pswitch_b
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setDevMinor(I)V

    goto :goto_1

    :pswitch_c
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setDevMajor(I)V

    :cond_d
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7240fdec -> :sswitch_c
        -0x723d4bf0 -> :sswitch_b
        -0x108a42f3 -> :sswitch_a
        -0x98f3691 -> :sswitch_9
        0x18fc2 -> :sswitch_8
        0x1c450 -> :sswitch_7
        0x346425 -> :sswitch_6
        0x35e001 -> :sswitch_5
        0x5deef72 -> :sswitch_4
        0x63654ba -> :sswitch_3
        0x6a43880 -> :sswitch_2
        0x1fa1f206 -> :sswitch_1
        0x473a871f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->equals(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Z
    .locals 1

    .line 2
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fillGNUSparse0xData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNUSparse:Z

    const-string v0, "GNU.sparse.size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    const-string v0, "GNU.sparse.name"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public fillGNUSparse1xData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNUSparse:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNU1XSparse:Z

    const-string v0, "GNU.sparse.realsize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    const-string v0, "GNU.sparse.name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public fillStarSparseData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->starSparse:Z

    const-string v0, "SCHILY.realsize"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRealSize()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    return-wide v0
.end method

.method public getSparseHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->sparseHeaders:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCheckSumOK()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->checkSumOK:Z

    return v0
.end method

.method public isDirectory()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0

    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x35

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxHeader()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGlobalPaxHeader()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isExtended()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isExtended:Z

    return v0
.end method

.method public isGNULongLinkEntry()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGNULongNameEntry()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGNUSparse()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isOldGNUSparse()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxGNUSparse()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isGlobalPaxHeader()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOldGNUSparse()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x53

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaxGNU1XSparse()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNU1XSparse:Z

    return v0
.end method

.method public isPaxGNUSparse()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNUSparse:Z

    return v0
.end method

.method public isPaxHeader()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    const/16 v1, 0x58

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSparse()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNUSparse()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isStarSparse()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStarSparse()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->starSparse:Z

    return v0
.end method

.method public setDevMajor(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "Major device number is out of range: "

    .line 9
    .line 10
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public setDevMinor(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "Minor device number is out of range: "

    .line 9
    .line 10
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public setGroupId(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setLinkName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    return-void
.end method

.method public setModTime(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->preserveAbsolutePath:Z

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Size is out of range: "

    .line 13
    .line 14
    invoke-static {v1, p1, p2}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public setSparseHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->sparseHeaders:Ljava/util/List;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    return-void
.end method

.method public updateEntryFromPaxHeaders(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->processPaxHeader(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method
