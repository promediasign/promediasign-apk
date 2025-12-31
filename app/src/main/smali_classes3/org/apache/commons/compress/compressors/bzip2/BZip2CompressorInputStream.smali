.class public Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    }
.end annotation


# instance fields
.field private bin:Lorg/apache/commons/compress/utils/BitInputStream;

.field private blockRandomised:Z

.field private blockSize100k:I

.field private computedBlockCRC:I

.field private computedCombinedCRC:I

.field private final crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field private currentState:I

.field private data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

.field private final decompressConcatenated:Z

.field private last:I

.field private nInUse:I

.field private origPtr:I

.field private storedBlockCRC:I

.field private storedCombinedCRC:I

.field private su_ch2:I

.field private su_chPrev:I

.field private su_count:I

.field private su_i2:I

.field private su_j2:I

.field private su_rNToGo:I

.field private su_rTPos:I

.field private su_tPos:I

.field private su_z:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    new-instance v1, Lorg/apache/commons/compress/utils/BitInputStream;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-ne p1, v2, :cond_0

    new-instance v2, Lorg/apache/commons/compress/utils/CloseShieldFilterInputStream;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/utils/CloseShieldFilterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v2

    :cond_0
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p1, v2}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->decompressConcatenated:Z

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init(Z)Z

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    return-void
.end method

.method private static bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I
    .locals 1

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result p0

    return p0
.end method

.method private static bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method private static bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    long-to-int p1, p0

    return p1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected end of stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkBounds(IILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Corrupted input, "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-ge p0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 9
    .line 10
    const-string p1, " value too big"

    .line 11
    .line 12
    invoke-static {v0, p2, p1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 21
    .line 22
    const-string p1, " value negative"

    .line 23
    .line 24
    invoke-static {v0, p2, p1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method private complete()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->decompressConcatenated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init(Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BZip2 CRC error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createHuffmanDecodingTables(II)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v2, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    iget-object v4, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    iget-object v5, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    const/4 v6, 0x0

    move/from16 v7, p2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v9, v2, v8

    const/16 v10, 0x20

    move/from16 v11, p1

    const/4 v15, 0x0

    :cond_0
    :goto_1
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_2

    aget-char v12, v9, v11

    if-le v12, v15, :cond_1

    move v15, v12

    :cond_1
    if-ge v12, v10, :cond_0

    move v10, v12

    goto :goto_1

    :cond_2
    aget-object v11, v4, v8

    aget-object v12, v5, v8

    aget-object v13, v1, v8

    aget-object v14, v2, v8

    move v9, v15

    move v15, v10

    move/from16 v16, v9

    move/from16 v17, p1

    invoke-static/range {v11 .. v17}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->hbCreateDecodeTables([I[I[I[CIII)V

    aput v10, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private endBlock()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    return-void

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    shl-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1f

    or-int/2addr v0, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BZip2 CRC error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAndMoveToFrontDecode()V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iput v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    .line 12
    .line 13
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->recvDecodingTables()V

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 17
    .line 18
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 19
    .line 20
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    .line 21
    .line 22
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 23
    .line 24
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 25
    .line 26
    iget-object v7, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->getAndMoveToFrontDecode_yy:[C

    .line 27
    .line 28
    iget-object v8, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 29
    .line 30
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 31
    .line 32
    iget-object v10, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 33
    .line 34
    iget-object v2, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 35
    .line 36
    iget v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    .line 37
    .line 38
    const v12, 0x186a0

    .line 39
    .line 40
    .line 41
    mul-int v11, v11, v12

    .line 42
    .line 43
    const/16 v13, 0x100

    .line 44
    .line 45
    :goto_0
    const/4 v14, -0x1

    .line 46
    add-int/2addr v13, v14

    .line 47
    const/4 v15, 0x0

    .line 48
    if-ltz v13, :cond_0

    .line 49
    .line 50
    int-to-char v14, v13

    .line 51
    aput-char v14, v7, v13

    .line 52
    .line 53
    aput v15, v4, v13

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget v13, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    .line 57
    .line 58
    const/4 v14, 0x1

    .line 59
    add-int/2addr v13, v14

    .line 60
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode0()I

    .line 61
    .line 62
    .line 63
    move-result v16

    .line 64
    aget-byte v12, v5, v15

    .line 65
    .line 66
    and-int/lit16 v12, v12, 0xff

    .line 67
    .line 68
    const/4 v15, 0x6

    .line 69
    const-string v14, "zt"

    .line 70
    .line 71
    invoke-static {v12, v15, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    aget-object v18, v10, v12

    .line 75
    .line 76
    aget-object v19, v9, v12

    .line 77
    .line 78
    aget-object v20, v2, v12

    .line 79
    .line 80
    aget v12, v8, v12

    .line 81
    .line 82
    const/16 v21, 0x31

    .line 83
    .line 84
    move/from16 v22, v12

    .line 85
    .line 86
    move/from16 v15, v16

    .line 87
    .line 88
    const/4 v12, -0x1

    .line 89
    const/16 v23, 0x0

    .line 90
    .line 91
    const/16 v24, 0x31

    .line 92
    .line 93
    :goto_1
    if-eq v15, v13, :cond_d

    .line 94
    .line 95
    move/from16 v25, v13

    .line 96
    .line 97
    const-string v13, "zvec"

    .line 98
    .line 99
    const-string v0, "groupNo"

    .line 100
    .line 101
    move-object/from16 v26, v13

    .line 102
    .line 103
    const-string v13, "yy"

    .line 104
    .line 105
    move-object/from16 v27, v1

    .line 106
    .line 107
    const-string v1, " exceeds "

    .line 108
    .line 109
    move-object/from16 v28, v1

    .line 110
    .line 111
    const-string v1, "zn"

    .line 112
    .line 113
    move-object/from16 v29, v1

    .line 114
    .line 115
    if-eqz v15, :cond_1

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    if-ne v15, v1, :cond_2

    .line 119
    .line 120
    :cond_1
    move-object/from16 v31, v8

    .line 121
    .line 122
    move-object/from16 v8, v26

    .line 123
    .line 124
    move-object/from16 v32, v28

    .line 125
    .line 126
    move-object/from16 v1, v29

    .line 127
    .line 128
    move/from16 v26, v15

    .line 129
    .line 130
    move v15, v11

    .line 131
    move-object/from16 v11, v27

    .line 132
    .line 133
    goto/16 :goto_6

    .line 134
    .line 135
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 136
    .line 137
    if-ge v12, v11, :cond_7

    .line 138
    .line 139
    const/16 v1, 0x101

    .line 140
    .line 141
    move/from16 v30, v11

    .line 142
    .line 143
    const-string v11, "nextSym"

    .line 144
    .line 145
    invoke-static {v15, v1, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v1, v15, -0x1

    .line 149
    .line 150
    aget-char v11, v7, v1

    .line 151
    .line 152
    move-object/from16 v31, v8

    .line 153
    .line 154
    const/16 v8, 0x100

    .line 155
    .line 156
    invoke-static {v11, v8, v13}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    aget-byte v8, v6, v11

    .line 160
    .line 161
    and-int/lit16 v13, v8, 0xff

    .line 162
    .line 163
    aget v28, v4, v13

    .line 164
    .line 165
    const/16 v17, 0x1

    .line 166
    .line 167
    add-int/lit8 v28, v28, 0x1

    .line 168
    .line 169
    aput v28, v4, v13

    .line 170
    .line 171
    aput-byte v8, v3, v12

    .line 172
    .line 173
    const/16 v8, 0x10

    .line 174
    .line 175
    if-gt v15, v8, :cond_4

    .line 176
    .line 177
    :goto_2
    if-lez v1, :cond_3

    .line 178
    .line 179
    add-int/lit8 v8, v1, -0x1

    .line 180
    .line 181
    aget-char v13, v7, v8

    .line 182
    .line 183
    aput-char v13, v7, v1

    .line 184
    .line 185
    move v1, v8

    .line 186
    goto :goto_2

    .line 187
    :cond_3
    const/4 v8, 0x0

    .line 188
    goto :goto_3

    .line 189
    :cond_4
    const/4 v8, 0x0

    .line 190
    const/4 v13, 0x1

    .line 191
    invoke-static {v7, v8, v7, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    .line 193
    .line 194
    :goto_3
    aput-char v11, v7, v8

    .line 195
    .line 196
    if-nez v24, :cond_5

    .line 197
    .line 198
    add-int/lit8 v1, v23, 0x1

    .line 199
    .line 200
    const/16 v8, 0x4652

    .line 201
    .line 202
    invoke-static {v1, v8, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    aget-byte v0, v5, v1

    .line 206
    .line 207
    and-int/lit16 v0, v0, 0xff

    .line 208
    .line 209
    const/4 v8, 0x6

    .line 210
    invoke-static {v0, v8, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    aget-object v8, v10, v0

    .line 214
    .line 215
    aget-object v11, v9, v0

    .line 216
    .line 217
    aget-object v13, v2, v0

    .line 218
    .line 219
    aget v0, v31, v0

    .line 220
    .line 221
    move/from16 v23, v1

    .line 222
    .line 223
    move-object/from16 v18, v8

    .line 224
    .line 225
    move-object/from16 v19, v11

    .line 226
    .line 227
    move-object/from16 v20, v13

    .line 228
    .line 229
    move-object/from16 v1, v29

    .line 230
    .line 231
    const/16 v8, 0x102

    .line 232
    .line 233
    const/16 v24, 0x31

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_5
    add-int/lit8 v24, v24, -0x1

    .line 237
    .line 238
    move/from16 v0, v22

    .line 239
    .line 240
    move-object/from16 v1, v29

    .line 241
    .line 242
    const/16 v8, 0x102

    .line 243
    .line 244
    :goto_4
    invoke-static {v0, v8, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 245
    .line 246
    .line 247
    move-object/from16 v11, v27

    .line 248
    .line 249
    invoke-static {v11, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 250
    .line 251
    .line 252
    move-result v13

    .line 253
    move v15, v0

    .line 254
    :goto_5
    aget v8, v19, v15

    .line 255
    .line 256
    if-le v13, v8, :cond_6

    .line 257
    .line 258
    add-int/lit8 v15, v15, 0x1

    .line 259
    .line 260
    const/16 v8, 0x102

    .line 261
    .line 262
    invoke-static {v15, v8, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    shl-int/lit8 v13, v13, 0x1

    .line 266
    .line 267
    const/4 v8, 0x1

    .line 268
    invoke-static {v11, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 269
    .line 270
    .line 271
    move-result v22

    .line 272
    or-int v13, v13, v22

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_6
    aget v1, v18, v15

    .line 276
    .line 277
    sub-int/2addr v13, v1

    .line 278
    move-object/from16 v8, v26

    .line 279
    .line 280
    const/16 v1, 0x102

    .line 281
    .line 282
    invoke-static {v13, v1, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    aget v15, v20, v13

    .line 286
    .line 287
    move/from16 v22, v0

    .line 288
    .line 289
    move-object v1, v11

    .line 290
    move/from16 v13, v25

    .line 291
    .line 292
    move/from16 v11, v30

    .line 293
    .line 294
    move-object/from16 v8, v31

    .line 295
    .line 296
    move-object/from16 v0, p0

    .line 297
    .line 298
    goto/16 :goto_1

    .line 299
    .line 300
    :cond_7
    move/from16 v30, v11

    .line 301
    .line 302
    new-instance v0, Ljava/io/IOException;

    .line 303
    .line 304
    const-string v1, "Block overrun in MTF, "

    .line 305
    .line 306
    move-object/from16 v3, v28

    .line 307
    .line 308
    move/from16 v2, v30

    .line 309
    .line 310
    invoke-static {v1, v12, v3, v2}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw v0

    .line 318
    :goto_6
    move/from16 v30, v15

    .line 319
    .line 320
    move/from16 v15, v26

    .line 321
    .line 322
    const/16 v27, -0x1

    .line 323
    .line 324
    move/from16 v26, v24

    .line 325
    .line 326
    move/from16 v24, v23

    .line 327
    .line 328
    move/from16 v23, v22

    .line 329
    .line 330
    move-object/from16 v22, v20

    .line 331
    .line 332
    move-object/from16 v20, v19

    .line 333
    .line 334
    move-object/from16 v19, v18

    .line 335
    .line 336
    const/16 v18, 0x1

    .line 337
    .line 338
    :goto_7
    if-nez v15, :cond_8

    .line 339
    .line 340
    add-int v27, v27, v18

    .line 341
    .line 342
    move-object/from16 v28, v3

    .line 343
    .line 344
    goto :goto_8

    .line 345
    :cond_8
    move-object/from16 v28, v3

    .line 346
    .line 347
    const/4 v3, 0x1

    .line 348
    if-ne v15, v3, :cond_b

    .line 349
    .line 350
    shl-int/lit8 v3, v18, 0x1

    .line 351
    .line 352
    add-int v27, v27, v3

    .line 353
    .line 354
    :goto_8
    if-nez v26, :cond_9

    .line 355
    .line 356
    add-int/lit8 v3, v24, 0x1

    .line 357
    .line 358
    const/16 v15, 0x4652

    .line 359
    .line 360
    invoke-static {v3, v15, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 361
    .line 362
    .line 363
    aget-byte v15, v5, v3

    .line 364
    .line 365
    and-int/lit16 v15, v15, 0xff

    .line 366
    .line 367
    move-object/from16 v29, v0

    .line 368
    .line 369
    const/4 v0, 0x6

    .line 370
    invoke-static {v15, v0, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 371
    .line 372
    .line 373
    aget-object v19, v10, v15

    .line 374
    .line 375
    aget-object v20, v9, v15

    .line 376
    .line 377
    aget-object v22, v2, v15

    .line 378
    .line 379
    aget v23, v31, v15

    .line 380
    .line 381
    move/from16 v24, v3

    .line 382
    .line 383
    move/from16 v3, v23

    .line 384
    .line 385
    const/16 v15, 0x102

    .line 386
    .line 387
    const/16 v26, 0x31

    .line 388
    .line 389
    goto :goto_9

    .line 390
    :cond_9
    move-object/from16 v29, v0

    .line 391
    .line 392
    const/4 v0, 0x6

    .line 393
    add-int/lit8 v26, v26, -0x1

    .line 394
    .line 395
    move/from16 v3, v23

    .line 396
    .line 397
    const/16 v15, 0x102

    .line 398
    .line 399
    :goto_9
    invoke-static {v3, v15, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-static {v11, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 403
    .line 404
    .line 405
    move-result v16

    .line 406
    move/from16 v0, v16

    .line 407
    .line 408
    move/from16 v16, v3

    .line 409
    .line 410
    :goto_a
    aget v15, v20, v16

    .line 411
    .line 412
    if-le v0, v15, :cond_a

    .line 413
    .line 414
    add-int/lit8 v15, v16, 0x1

    .line 415
    .line 416
    move-object/from16 v33, v2

    .line 417
    .line 418
    const/16 v2, 0x102

    .line 419
    .line 420
    invoke-static {v15, v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 421
    .line 422
    .line 423
    shl-int/lit8 v0, v0, 0x1

    .line 424
    .line 425
    const/4 v2, 0x1

    .line 426
    invoke-static {v11, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 427
    .line 428
    .line 429
    move-result v16

    .line 430
    or-int v0, v0, v16

    .line 431
    .line 432
    move/from16 v16, v15

    .line 433
    .line 434
    move-object/from16 v2, v33

    .line 435
    .line 436
    goto :goto_a

    .line 437
    :cond_a
    move-object/from16 v33, v2

    .line 438
    .line 439
    const/4 v2, 0x1

    .line 440
    aget v15, v19, v16

    .line 441
    .line 442
    sub-int/2addr v0, v15

    .line 443
    const/16 v15, 0x102

    .line 444
    .line 445
    invoke-static {v0, v15, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 446
    .line 447
    .line 448
    aget v0, v22, v0

    .line 449
    .line 450
    shl-int/lit8 v18, v18, 0x1

    .line 451
    .line 452
    move v15, v0

    .line 453
    move/from16 v23, v3

    .line 454
    .line 455
    move-object/from16 v3, v28

    .line 456
    .line 457
    move-object/from16 v0, v29

    .line 458
    .line 459
    move-object/from16 v2, v33

    .line 460
    .line 461
    goto :goto_7

    .line 462
    :cond_b
    move-object/from16 v33, v2

    .line 463
    .line 464
    const/4 v0, 0x0

    .line 465
    const/4 v2, 0x1

    .line 466
    aget-char v1, v7, v0

    .line 467
    .line 468
    const/16 v3, 0x100

    .line 469
    .line 470
    invoke-static {v1, v3, v13}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 471
    .line 472
    .line 473
    aget-byte v1, v6, v1

    .line 474
    .line 475
    and-int/lit16 v8, v1, 0xff

    .line 476
    .line 477
    aget v13, v4, v8

    .line 478
    .line 479
    add-int/lit8 v16, v27, 0x1

    .line 480
    .line 481
    add-int v16, v16, v13

    .line 482
    .line 483
    aput v16, v4, v8

    .line 484
    .line 485
    add-int/lit8 v12, v12, 0x1

    .line 486
    .line 487
    add-int v8, v12, v27

    .line 488
    .line 489
    add-int/lit8 v13, v8, 0x1

    .line 490
    .line 491
    move-object/from16 v0, v28

    .line 492
    .line 493
    invoke-static {v0, v12, v13, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 494
    .line 495
    .line 496
    move/from16 v1, v30

    .line 497
    .line 498
    if-ge v8, v1, :cond_c

    .line 499
    .line 500
    move-object v3, v0

    .line 501
    move v12, v8

    .line 502
    move-object/from16 v18, v19

    .line 503
    .line 504
    move-object/from16 v19, v20

    .line 505
    .line 506
    move-object/from16 v20, v22

    .line 507
    .line 508
    move/from16 v22, v23

    .line 509
    .line 510
    move/from16 v23, v24

    .line 511
    .line 512
    move/from16 v13, v25

    .line 513
    .line 514
    move/from16 v24, v26

    .line 515
    .line 516
    move-object/from16 v8, v31

    .line 517
    .line 518
    move-object/from16 v2, v33

    .line 519
    .line 520
    move-object/from16 v0, p0

    .line 521
    .line 522
    move-object/from16 v34, v11

    .line 523
    .line 524
    move v11, v1

    .line 525
    move-object/from16 v1, v34

    .line 526
    .line 527
    goto/16 :goto_1

    .line 528
    .line 529
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 530
    .line 531
    const-string v2, "Block overrun while expanding RLE in MTF, "

    .line 532
    .line 533
    move-object/from16 v3, v32

    .line 534
    .line 535
    invoke-static {v2, v8, v3, v1}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    throw v0

    .line 543
    :cond_d
    iput v12, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 544
    .line 545
    return-void
.end method

.method private getAndMoveToFrontDecode0()I
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x6

    const-string v3, "zt"

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    aget-object v2, v2, v1

    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    aget v3, v3, v1

    const/16 v4, 0x102

    const-string v5, "zn"

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-static {v6, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v6

    :goto_0
    aget v7, v2, v3

    if-le v6, v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    shl-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v7

    or-int/2addr v6, v7

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    aget-object v2, v2, v1

    aget v2, v2, v3

    sub-int/2addr v6, v2

    const-string v2, "zvec"

    invoke-static {v6, v4, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    aget-object v0, v0, v1

    aget v0, v0, v6

    return v0
.end method

.method private static hbCreateDecodeTables([I[I[I[CIII)V
    .locals 6

    const/4 v0, 0x0

    move v1, p4

    const/4 v2, 0x0

    :goto_0
    if-gt v1, p5, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p6, :cond_1

    aget-char v4, p3, v3

    if-ne v4, v1, :cond_0

    add-int/lit8 v4, v2, 0x1

    aput v3, p2, v2

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p2, 0x17

    const/16 v1, 0x17

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_3

    aput v0, p1, v1

    aput v0, p0, v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x1

    if-ge v1, p6, :cond_4

    aget-char v3, p3, v1

    const/16 v4, 0x102

    const-string v5, "length"

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    add-int/2addr v3, v2

    aget v4, p1, v3

    add-int/2addr v4, v2

    aput v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    aget p3, p1, v0

    const/4 p6, 0x1

    :goto_4
    if-ge p6, p2, :cond_5

    aget v1, p1, p6

    add-int/2addr p3, v1

    aput p3, p1, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_4

    :cond_5
    aget p2, p1, p4

    move p3, p4

    :goto_5
    if-gt p3, p5, :cond_6

    add-int/lit8 p6, p3, 0x1

    aget v1, p1, p6

    sub-int p2, v1, p2

    add-int/2addr p2, v0

    add-int/lit8 v0, p2, -0x1

    aput v0, p0, p3

    shl-int/lit8 v0, p2, 0x1

    move p3, p6

    move p2, v1

    goto :goto_5

    :cond_6
    add-int/2addr p4, v2

    :goto_6
    if-gt p4, p5, :cond_7

    add-int/lit8 p2, p4, -0x1

    aget p2, p0, p2

    add-int/2addr p2, v2

    shl-int/2addr p2, v2

    aget p3, p1, p4

    sub-int/2addr p2, p3

    aput p2, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method private init(Z)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->clearBitCache()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v1

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v3

    const/16 v4, 0x42

    if-ne v0, v4, :cond_4

    const/16 v0, 0x5a

    if-ne v1, v0, :cond_4

    const/16 v0, 0x68

    if-eq v3, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result p1

    const/16 v0, 0x31

    if-lt p1, v0, :cond_3

    const/16 v0, 0x39

    if-gt p1, v0, :cond_3

    add-int/lit8 p1, p1, -0x30

    iput p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    const/4 p1, 0x1

    return p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "BZip2 block size is invalid"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    new-instance v0, Ljava/io/IOException;

    if-eqz p1, :cond_5

    const-string p1, "Stream is not in the BZip2 format"

    goto :goto_1

    :cond_5
    const-string p1, "Garbage after a valid BZip2 stream"

    :goto_1
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "No InputStream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initBlock()V
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v1

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v2

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v3

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v4

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v5

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v6

    const/16 v7, 0x17

    if-ne v1, v7, :cond_2

    const/16 v7, 0x72

    if-ne v2, v7, :cond_2

    const/16 v7, 0x45

    if-ne v3, v7, :cond_2

    const/16 v7, 0x38

    if-ne v4, v7, :cond_2

    const/16 v7, 0x50

    if-ne v5, v7, :cond_2

    const/16 v7, 0x90

    if-eq v6, v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->complete()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_2
    :goto_0
    const/16 v7, 0x31

    const/4 v8, 0x0

    if-ne v1, v7, :cond_5

    const/16 v1, 0x41

    if-ne v2, v1, :cond_5

    const/16 v1, 0x59

    if-ne v3, v1, :cond_5

    const/16 v2, 0x26

    if-ne v4, v2, :cond_5

    const/16 v2, 0x53

    if-ne v5, v2, :cond_5

    if-ne v6, v1, :cond_5

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v8, 0x1

    :cond_3
    iput-boolean v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v0, :cond_4

    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode()V

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->initialiseCRC()V

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    return-void

    :cond_5
    iput v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad block header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeMaps()V
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x100

    if-ge v2, v4, :cond_1

    aget-boolean v4, v1, v2

    if-eqz v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    int-to-byte v5, v2

    aput-byte v5, v0, v3

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    return-void
.end method

.method private read0()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()I

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartB()I

    move-result v0

    return v0

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()I

    move-result v0

    return v0

    :pswitch_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartB()I

    move-result v0

    return v0

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_6
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result v0

    return v0

    :pswitch_7
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method private readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method private recvDecodingTables()V
    .locals 15

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v2, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->recvDecodingTables_pos:[B

    iget-object v4, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    iget-object v5, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selectorMtf:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x10

    const/4 v10, 0x1

    if-ge v7, v9, :cond_1

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v9

    if-eqz v9, :cond_0

    shl-int v9, v10, v7

    or-int/2addr v8, v9

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([ZZ)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_4

    shl-int v11, v10, v7

    and-int/2addr v11, v8

    if-eqz v11, :cond_3

    shl-int/lit8 v11, v7, 0x4

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v9, :cond_3

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v13

    if-eqz v13, :cond_2

    add-int v13, v11, v12

    aput-boolean v10, v2, v13

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->makeMaps()V

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    add-int/lit8 v2, v2, 0x2

    const/4 v7, 0x3

    invoke-static {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v7

    const/16 v8, 0xf

    invoke-static {v0, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v8

    if-ltz v8, :cond_10

    const/16 v9, 0x103

    const-string v11, "alphaSize"

    invoke-static {v2, v9, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    const/4 v9, 0x7

    const-string v11, "nGroups"

    invoke-static {v7, v9, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    const/4 v9, 0x0

    :goto_3
    const/16 v11, 0x4652

    if-ge v9, v8, :cond_7

    const/4 v12, 0x0

    :goto_4
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v13

    if-eqz v13, :cond_5

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_5
    if-ge v9, v11, :cond_6

    int-to-byte v11, v12

    aput-byte v11, v5, v9

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    if-le v8, v11, :cond_8

    const/16 v8, 0x4652

    :cond_8
    move v9, v7

    :goto_5
    const/4 v11, -0x1

    add-int/2addr v9, v11

    if-ltz v9, :cond_9

    int-to-byte v11, v9

    aput-byte v11, v3, v9

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_b

    aget-byte v12, v5, v9

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x6

    const-string v14, "selectorMtf"

    invoke-static {v12, v13, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    aget-byte v13, v3, v12

    :goto_7
    if-lez v12, :cond_a

    add-int/lit8 v14, v12, -0x1

    aget-byte v14, v3, v14

    aput-byte v14, v3, v12

    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    :cond_a
    aput-byte v13, v3, v6

    aput-byte v13, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v7, :cond_f

    const/4 v4, 0x5

    invoke-static {v0, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v4

    aget-object v5, v1, v3

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v2, :cond_e

    :goto_a
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, -0x1

    goto :goto_b

    :cond_c
    const/4 v9, 0x1

    :goto_b
    add-int/2addr v4, v9

    goto :goto_a

    :cond_d
    int-to-char v9, v4

    aput-char v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_f
    invoke-direct {p0, v2, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->createHuffmanDecodingTables(II)V

    return-void

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted input, nSelectors value negative"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setupBlock()I
    .locals 11

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->cftab:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->initTT(I)[I

    move-result-object v0

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v5, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    const/4 v6, 0x0

    aput v6, v1, v6

    iget-object v4, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    const/16 v7, 0x100

    invoke-static {v4, v6, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v4, v1, v6

    :goto_0
    if-gt v3, v7, :cond_1

    aget v8, v1, v3

    add-int/2addr v4, v8

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    const/4 v4, 0x0

    :goto_1
    if-gt v4, v3, :cond_2

    aget-byte v8, v5, v4

    and-int/lit16 v8, v8, 0xff

    aget v9, v1, v8

    add-int/lit8 v10, v9, 0x1

    aput v10, v1, v8

    const-string v8, "tt index"

    invoke-static {v9, v2, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    aput v4, v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    if-ltz v1, :cond_4

    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iput v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    if-eqz v0, :cond_3

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v0

    return v0

    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v0

    return v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream corrupted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method private setupNoRandPartA()I
    .locals 4

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    array-length v0, v0

    const-string v3, "su_tPos"

    invoke-static {v2, v0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    const/4 v0, 0x6

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    return v1

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result v0

    return v0
.end method

.method private setupNoRandPartB()I
    .locals 3

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    array-length v1, v1

    const-string v2, "su_tPos"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    iput-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()I

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v0

    return v0
.end method

.method private setupNoRandPartC()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    const/4 v1, 0x7

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v0

    return v0
.end method

.method private setupRandPartA()I
    .locals 5

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    if-gt v0, v1, :cond_3

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    array-length v0, v0

    const-string v3, "su_tPos"

    invoke-static {v2, v0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    const/16 v4, 0x200

    if-ne v0, v4, :cond_1

    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-ne v0, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    xor-int v0, v1, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    return v0

    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result v0

    return v0
.end method

.method private setupRandPartB()I
    .locals 5

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    iput-char v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    array-length v0, v0

    const-string v2, "su_tPos"

    invoke-static {v4, v0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    const/16 v4, 0x200

    if-ne v0, v4, :cond_2

    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    :cond_2
    :goto_1
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-ne v0, v3, :cond_3

    iget-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    xor-int/2addr v0, v3

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()I

    move-result v0

    return v0

    :cond_4
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    goto :goto_0
.end method

.method private setupRandPartC()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    return v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public read()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 4

    const-string v0, ") < 0."

    const-string v1, "offs("

    if-ltz p2, :cond_6

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    array-length v2, p1

    if-gt v0, v2, :cond_4

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v1, :cond_3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move p3, p2

    :goto_0
    if-ge p3, v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v2, p3, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, p3

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    move p3, v2

    goto :goto_0

    :cond_1
    if-ne p3, p2, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    sub-int p1, p3, p2

    :goto_1
    return p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, ") + len("

    const-string v3, ") > dest.length("

    .line 2
    invoke-static {v1, p2, v2, p3, v3}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 3
    array-length p1, p1

    const-string p3, ")."

    .line 4
    invoke-static {p3, p1, p2}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "len("

    .line 6
    invoke-static {p3, p2, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 8
    invoke-static {p2, v1, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
