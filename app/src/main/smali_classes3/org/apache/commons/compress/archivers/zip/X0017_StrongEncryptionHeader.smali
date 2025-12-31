.class public Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.source "SourceFile"


# instance fields
.field private algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field private bitlen:I

.field private erdData:[B

.field private flags:I

.field private format:I

.field private hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field private hashSize:I

.field private ivData:[B

.field private keyBlob:[B

.field private rcount:J

.field private recipientKeyHash:[B

.field private vCRC32:[B

.field private vData:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    return-void
.end method

.method private assertDynamicLengthFits(Ljava/lang/String;III)V
    .locals 3

    .line 1
    add-int v0, p3, p2

    .line 2
    .line 3
    if-gt v0, p4, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/zip/ZipException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Invalid X0017_StrongEncryptionHeader: "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, " "

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " doesn\'t fit into "

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " bytes of data at position "

    .line 32
    .line 33
    invoke-static {v1, p4, p3, p1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method


# virtual methods
.method public getEncryptionAlgorithm()Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    return-object v0
.end method

.method public getHashAlgorithm()Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    return-object v0
.end method

.method public getRecordCount()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    return-wide v0
.end method

.method public parseCentralDirectoryFormat([BII)V
    .locals 5

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->assertMinimalLength(II)V

    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->format:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->bitlen:I

    add-int/lit8 v0, p2, 0x6

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->flags:I

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->assertMinimalLength(II)V

    add-int/lit8 p3, p2, 0xc

    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    add-int/lit8 p2, p2, 0xe

    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    :goto_0
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    cmp-long p3, v2, p1

    if-gez p3, :cond_1

    const/4 p1, 0x0

    :goto_1
    iget p2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    if-ge p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 p1, 0x1

    add-long/2addr v2, p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public parseFileFormat([BII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    invoke-virtual {v0, v3, v2}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->assertMinimalLength(II)V

    .line 9
    .line 10
    .line 11
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const-string v5, "ivSize"

    .line 16
    .line 17
    invoke-direct {v0, v5, v4, v3, v2}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertDynamicLengthFits(Ljava/lang/String;III)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v5, p2, 0x4

    .line 21
    .line 22
    invoke-static {v1, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    iput-object v5, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->ivData:[B

    .line 27
    .line 28
    add-int/lit8 v5, v4, 0x10

    .line 29
    .line 30
    invoke-virtual {v0, v5, v2}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->assertMinimalLength(II)V

    .line 31
    .line 32
    .line 33
    add-int v6, p2, v4

    .line 34
    .line 35
    add-int/lit8 v7, v6, 0x6

    .line 36
    .line 37
    invoke-static {v1, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    iput v7, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->format:I

    .line 42
    .line 43
    add-int/lit8 v7, v6, 0x8

    .line 44
    .line 45
    invoke-static {v1, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    iput-object v7, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 54
    .line 55
    add-int/lit8 v7, v6, 0xa

    .line 56
    .line 57
    invoke-static {v1, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    iput v7, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->bitlen:I

    .line 62
    .line 63
    add-int/lit8 v7, v6, 0xc

    .line 64
    .line 65
    invoke-static {v1, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    iput v7, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->flags:I

    .line 70
    .line 71
    add-int/lit8 v7, v6, 0xe

    .line 72
    .line 73
    invoke-static {v1, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    const-string v8, "erdSize"

    .line 78
    .line 79
    invoke-direct {v0, v8, v7, v5, v2}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertDynamicLengthFits(Ljava/lang/String;III)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v5, v6, 0x10

    .line 83
    .line 84
    invoke-static {v1, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    iput-object v8, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->erdData:[B

    .line 89
    .line 90
    add-int/lit8 v8, v4, 0x14

    .line 91
    .line 92
    add-int/2addr v8, v7

    .line 93
    invoke-virtual {v0, v8, v2}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->assertMinimalLength(II)V

    .line 94
    .line 95
    .line 96
    add-int/2addr v5, v7

    .line 97
    invoke-static {v1, v5}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    .line 98
    .line 99
    .line 100
    move-result-wide v9

    .line 101
    iput-wide v9, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    .line 102
    .line 103
    const-wide/16 v11, 0x0

    .line 104
    .line 105
    const-string v5, " is too small to hold CRC"

    .line 106
    .line 107
    const-string v13, "Invalid X0017_StrongEncryptionHeader: vSize "

    .line 108
    .line 109
    const-string v14, "vSize"

    .line 110
    .line 111
    const/16 v15, 0x16

    .line 112
    .line 113
    cmp-long v16, v9, v11

    .line 114
    .line 115
    if-nez v16, :cond_1

    .line 116
    .line 117
    add-int/lit8 v8, v8, 0x2

    .line 118
    .line 119
    invoke-virtual {v0, v8, v2}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->assertMinimalLength(II)V

    .line 120
    .line 121
    .line 122
    add-int/lit8 v8, v6, 0x14

    .line 123
    .line 124
    add-int/2addr v8, v7

    .line 125
    invoke-static {v1, v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    add-int/2addr v4, v15

    .line 130
    add-int/2addr v4, v7

    .line 131
    invoke-direct {v0, v14, v8, v4, v2}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertDynamicLengthFits(Ljava/lang/String;III)V

    .line 132
    .line 133
    .line 134
    if-lt v8, v3, :cond_0

    .line 135
    .line 136
    add-int/2addr v6, v15

    .line 137
    add-int/2addr v6, v7

    .line 138
    add-int/lit8 v2, v8, -0x4

    .line 139
    .line 140
    invoke-static {v1, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iput-object v2, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vData:[B

    .line 145
    .line 146
    add-int/2addr v6, v8

    .line 147
    sub-int/2addr v6, v3

    .line 148
    invoke-static {v1, v6, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iput-object v1, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_0
    new-instance v1, Ljava/util/zip/ZipException;

    .line 157
    .line 158
    invoke-static {v8, v13, v5}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v1

    .line 166
    :cond_1
    add-int/lit8 v8, v8, 0x6

    .line 167
    .line 168
    invoke-virtual {v0, v8, v2}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->assertMinimalLength(II)V

    .line 169
    .line 170
    .line 171
    add-int/lit8 v8, v6, 0x14

    .line 172
    .line 173
    add-int/2addr v8, v7

    .line 174
    invoke-static {v1, v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    invoke-static {v8}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    iput-object v8, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 183
    .line 184
    add-int/lit8 v8, v6, 0x16

    .line 185
    .line 186
    add-int/2addr v8, v7

    .line 187
    invoke-static {v1, v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    iput v9, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    .line 192
    .line 193
    add-int/lit8 v9, v6, 0x18

    .line 194
    .line 195
    add-int/2addr v9, v7

    .line 196
    invoke-static {v1, v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    iget v11, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    .line 201
    .line 202
    new-array v12, v11, [B

    .line 203
    .line 204
    iput-object v12, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->recipientKeyHash:[B

    .line 205
    .line 206
    if-lt v10, v11, :cond_3

    .line 207
    .line 208
    sub-int v11, v10, v11

    .line 209
    .line 210
    new-array v11, v11, [B

    .line 211
    .line 212
    iput-object v11, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->keyBlob:[B

    .line 213
    .line 214
    add-int/lit8 v11, v4, 0x18

    .line 215
    .line 216
    add-int/2addr v11, v7

    .line 217
    const-string v12, "resize"

    .line 218
    .line 219
    invoke-direct {v0, v12, v10, v11, v2}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertDynamicLengthFits(Ljava/lang/String;III)V

    .line 220
    .line 221
    .line 222
    iget-object v11, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->recipientKeyHash:[B

    .line 223
    .line 224
    iget v12, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    .line 225
    .line 226
    const/4 v15, 0x0

    .line 227
    invoke-static {v1, v9, v11, v15, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    .line 229
    .line 230
    iget v11, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    .line 231
    .line 232
    add-int/2addr v9, v11

    .line 233
    iget-object v12, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->keyBlob:[B

    .line 234
    .line 235
    sub-int v11, v10, v11

    .line 236
    .line 237
    invoke-static {v1, v9, v12, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    .line 239
    .line 240
    add-int/lit8 v9, v4, 0x1a

    .line 241
    .line 242
    add-int/2addr v9, v7

    .line 243
    add-int/2addr v9, v10

    .line 244
    add-int/lit8 v9, v9, 0x2

    .line 245
    .line 246
    invoke-virtual {v0, v9, v2}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->assertMinimalLength(II)V

    .line 247
    .line 248
    .line 249
    add-int/lit8 v6, v6, 0x1a

    .line 250
    .line 251
    add-int/2addr v6, v7

    .line 252
    add-int/2addr v6, v10

    .line 253
    invoke-static {v1, v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    if-lt v6, v3, :cond_2

    .line 258
    .line 259
    const/16 v9, 0x16

    .line 260
    .line 261
    invoke-static {v4, v9, v7, v10}, LA/g;->a(IIII)I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    invoke-direct {v0, v14, v6, v4, v2}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertDynamicLengthFits(Ljava/lang/String;III)V

    .line 266
    .line 267
    .line 268
    add-int/lit8 v2, v6, -0x4

    .line 269
    .line 270
    new-array v4, v2, [B

    .line 271
    .line 272
    iput-object v4, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vData:[B

    .line 273
    .line 274
    new-array v5, v3, [B

    .line 275
    .line 276
    iput-object v5, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    .line 277
    .line 278
    add-int/2addr v8, v10

    .line 279
    invoke-static {v1, v8, v4, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    .line 281
    .line 282
    add-int/2addr v8, v6

    .line 283
    sub-int/2addr v8, v3

    .line 284
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    .line 285
    .line 286
    invoke-static {v1, v8, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    .line 288
    .line 289
    :goto_0
    return-void

    .line 290
    :cond_2
    new-instance v1, Ljava/util/zip/ZipException;

    .line 291
    .line 292
    invoke-static {v6, v13, v5}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v1

    .line 300
    :cond_3
    new-instance v1, Ljava/util/zip/ZipException;

    .line 301
    .line 302
    const-string v2, "Invalid X0017_StrongEncryptionHeader: resize "

    .line 303
    .line 304
    const-string v3, " is too small to hold hashSize"

    .line 305
    .line 306
    invoke-static {v10, v2, v3}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    iget v3, v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    .line 311
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v1
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->parseFromCentralDirectoryData([BII)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->parseCentralDirectoryFormat([BII)V

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->parseFromLocalFileData([BII)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->parseFileFormat([BII)V

    return-void
.end method
