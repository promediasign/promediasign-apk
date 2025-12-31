.class public abstract Landroidx/media3/container/NalUnitUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/NalUnitUtil$SpsData;,
        Landroidx/media3/container/NalUnitUtil$H265SpsData;,
        Landroidx/media3/container/NalUnitUtil$PpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final NAL_START_CODE:[B

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 9

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    if-ne v3, v6, :cond_0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x7

    if-ne v7, v8, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v2, v6

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    if-eqz v5, :cond_2

    const/4 v3, 0x0

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public static findNalUnit([BII[Z)I
    .locals 8

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    if-nez v0, :cond_1

    return p2

    :cond_1
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_2

    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_2
    const/4 v3, 0x2

    if-le v0, v2, :cond_3

    aget-boolean v4, p3, v2

    if-eqz v4, :cond_3

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_3

    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v3

    return p1

    :cond_3
    if-le v0, v3, :cond_4

    aget-boolean v4, p3, v3

    if-eqz v4, :cond_4

    aget-byte v4, p0, p1

    if-nez v4, :cond_4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_4

    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v2

    return p1

    :cond_4
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_1
    if-ge p1, v4, :cond_7

    aget-byte v5, p0, p1

    and-int/lit16 v6, v5, 0xfe

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, p1, -0x2

    aget-byte v7, p0, v6

    if-nez v7, :cond_6

    add-int/lit8 v7, p1, -0x1

    aget-byte v7, p0, v7

    if-nez v7, :cond_6

    if-ne v5, v2, :cond_6

    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    return v6

    :cond_6
    add-int/lit8 p1, p1, -0x2

    :goto_2
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_7
    if-le v0, v3, :cond_9

    add-int/lit8 p1, p2, -0x3

    aget-byte p1, p0, p1

    if-nez p1, :cond_8

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_8

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_8

    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    goto :goto_4

    :cond_9
    if-ne v0, v3, :cond_a

    aget-boolean p1, p3, v3

    if-eqz p1, :cond_8

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_8

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_8

    goto :goto_3

    :cond_a
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_8

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_8

    goto :goto_3

    :goto_4
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_c

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_b

    aget-byte p1, p0, v4

    if-nez p1, :cond_b

    :goto_5
    const/4 p1, 0x1

    goto :goto_6

    :cond_b
    const/4 p1, 0x0

    goto :goto_6

    :cond_c
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_b

    aget-byte p1, p0, v4

    if-nez p1, :cond_b

    goto :goto_5

    :goto_6
    aput-boolean p1, p3, v2

    aget-byte p0, p0, v4

    if-nez p0, :cond_d

    const/4 v1, 0x1

    :cond_d
    aput-boolean v1, p3, v3

    return p2
.end method

.method private static findNextUnescapeIndex([BII)I
    .locals 2

    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static getH265NalUnitType([BI)I
    .locals 0

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x7e

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getNalUnitType([BI)I
    .locals 0

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .locals 3

    const-string v0, "video/avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    :cond_0
    const-string v0, "video/hevc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v1

    const/16 p1, 0x27

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static parseH265SpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .locals 0

    add-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1, p2}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseH265SpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .locals 25

    .line 1
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p1

    .line 6
    .line 7
    move/from16 v3, p2

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-virtual {v0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const/4 v4, 0x5

    .line 34
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x0

    .line 40
    :goto_0
    const/16 v11, 0x20

    .line 41
    .line 42
    const/4 v12, 0x1

    .line 43
    if-ge v10, v11, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    if-eqz v11, :cond_0

    .line 50
    .line 51
    shl-int v11, v12, v10

    .line 52
    .line 53
    or-int/2addr v9, v11

    .line 54
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v10, 0x6

    .line 58
    new-array v13, v10, [I

    .line 59
    .line 60
    const/4 v11, 0x0

    .line 61
    :goto_1
    const/16 v14, 0x8

    .line 62
    .line 63
    if-ge v11, v10, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 66
    .line 67
    .line 68
    move-result v14

    .line 69
    aput v14, v13, v11

    .line 70
    .line 71
    add-int/lit8 v11, v11, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 75
    .line 76
    .line 77
    move-result v15

    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v11, 0x0

    .line 80
    :goto_2
    if-ge v10, v2, :cond_5

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 83
    .line 84
    .line 85
    move-result v16

    .line 86
    if-eqz v16, :cond_3

    .line 87
    .line 88
    add-int/lit8 v11, v11, 0x59

    .line 89
    .line 90
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 91
    .line 92
    .line 93
    move-result v16

    .line 94
    if-eqz v16, :cond_4

    .line 95
    .line 96
    add-int/lit8 v11, v11, 0x8

    .line 97
    .line 98
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    invoke-virtual {v0, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 102
    .line 103
    .line 104
    if-lez v2, :cond_6

    .line 105
    .line 106
    rsub-int/lit8 v10, v2, 0x8

    .line 107
    .line 108
    mul-int/lit8 v10, v10, 0x2

    .line 109
    .line 110
    invoke-virtual {v0, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 111
    .line 112
    .line 113
    :cond_6
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 114
    .line 115
    .line 116
    move-result v16

    .line 117
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-ne v10, v1, :cond_7

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 131
    .line 132
    .line 133
    move-result v17

    .line 134
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 135
    .line 136
    .line 137
    move-result v18

    .line 138
    if-eqz v18, :cond_b

    .line 139
    .line 140
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 141
    .line 142
    .line 143
    move-result v18

    .line 144
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 145
    .line 146
    .line 147
    move-result v19

    .line 148
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 149
    .line 150
    .line 151
    move-result v20

    .line 152
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 153
    .line 154
    .line 155
    move-result v21

    .line 156
    if-eq v10, v12, :cond_9

    .line 157
    .line 158
    if-ne v10, v3, :cond_8

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_8
    const/16 v22, 0x1

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_9
    :goto_3
    const/16 v22, 0x2

    .line 165
    .line 166
    :goto_4
    if-ne v10, v12, :cond_a

    .line 167
    .line 168
    const/16 v23, 0x2

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_a
    const/16 v23, 0x1

    .line 172
    .line 173
    :goto_5
    add-int v18, v18, v19

    .line 174
    .line 175
    mul-int v18, v18, v22

    .line 176
    .line 177
    sub-int v11, v11, v18

    .line 178
    .line 179
    add-int v20, v20, v21

    .line 180
    .line 181
    mul-int v20, v20, v23

    .line 182
    .line 183
    sub-int v17, v17, v20

    .line 184
    .line 185
    :cond_b
    move/from16 v24, v17

    .line 186
    .line 187
    move/from16 v17, v11

    .line 188
    .line 189
    move/from16 v11, v24

    .line 190
    .line 191
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 192
    .line 193
    .line 194
    move-result v18

    .line 195
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 196
    .line 197
    .line 198
    move-result v19

    .line 199
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 200
    .line 201
    .line 202
    move-result v20

    .line 203
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 204
    .line 205
    .line 206
    move-result v21

    .line 207
    if-eqz v21, :cond_c

    .line 208
    .line 209
    const/16 v21, 0x0

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_c
    move/from16 v21, v2

    .line 213
    .line 214
    :goto_6
    move/from16 v8, v21

    .line 215
    .line 216
    :goto_7
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 223
    .line 224
    .line 225
    if-gt v8, v2, :cond_d

    .line 226
    .line 227
    add-int/lit8 v8, v8, 0x1

    .line 228
    .line 229
    goto :goto_7

    .line 230
    :cond_d
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_e

    .line 244
    .line 245
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-eqz v2, :cond_e

    .line 250
    .line 251
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipH265ScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 252
    .line 253
    .line 254
    :cond_e
    invoke-virtual {v0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_f

    .line 262
    .line 263
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 273
    .line 274
    .line 275
    :cond_f
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipShortTermReferencePictureSets(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_10

    .line 283
    .line 284
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    const/4 v8, 0x0

    .line 289
    :goto_8
    if-ge v8, v2, :cond_10

    .line 290
    .line 291
    add-int/lit8 v12, v20, 0x5

    .line 292
    .line 293
    invoke-virtual {v0, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 294
    .line 295
    .line 296
    add-int/lit8 v8, v8, 0x1

    .line 297
    .line 298
    const/4 v12, 0x1

    .line 299
    goto :goto_8

    .line 300
    :cond_10
    invoke-virtual {v0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    const/4 v4, -0x1

    .line 308
    const/high16 v8, 0x3f800000    # 1.0f

    .line 309
    .line 310
    if-eqz v2, :cond_1a

    .line 311
    .line 312
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-eqz v2, :cond_13

    .line 317
    .line 318
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    const/16 v12, 0xff

    .line 323
    .line 324
    if-ne v2, v12, :cond_11

    .line 325
    .line 326
    const/16 v2, 0x10

    .line 327
    .line 328
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 329
    .line 330
    .line 331
    move-result v12

    .line 332
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-eqz v12, :cond_13

    .line 337
    .line 338
    if-eqz v2, :cond_13

    .line 339
    .line 340
    int-to-float v8, v12

    .line 341
    int-to-float v2, v2

    .line 342
    div-float/2addr v8, v2

    .line 343
    goto :goto_9

    .line 344
    :cond_11
    sget-object v12, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 345
    .line 346
    array-length v3, v12

    .line 347
    if-ge v2, v3, :cond_12

    .line 348
    .line 349
    aget v8, v12, v2

    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_12
    const-string v3, "Unexpected aspect_ratio_idc value: "

    .line 353
    .line 354
    const-string v12, "NalUnitUtil"

    .line 355
    .line 356
    invoke-static {v2, v3, v12}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :cond_13
    :goto_9
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-eqz v2, :cond_14

    .line 364
    .line 365
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 366
    .line 367
    .line 368
    :cond_14
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-eqz v2, :cond_17

    .line 373
    .line 374
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_15

    .line 382
    .line 383
    const/4 v3, 0x1

    .line 384
    goto :goto_a

    .line 385
    :cond_15
    const/4 v3, 0x2

    .line 386
    :goto_a
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_16

    .line 391
    .line 392
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 401
    .line 402
    .line 403
    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    goto :goto_b

    .line 412
    :cond_16
    const/4 v1, -0x1

    .line 413
    goto :goto_b

    .line 414
    :cond_17
    const/4 v1, -0x1

    .line 415
    const/4 v3, -0x1

    .line 416
    :goto_b
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-eqz v2, :cond_18

    .line 421
    .line 422
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 426
    .line 427
    .line 428
    :cond_18
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-eqz v0, :cond_19

    .line 436
    .line 437
    mul-int/lit8 v11, v11, 0x2

    .line 438
    .line 439
    :cond_19
    move/from16 v20, v1

    .line 440
    .line 441
    move v2, v4

    .line 442
    move v1, v8

    .line 443
    move v0, v11

    .line 444
    goto :goto_c

    .line 445
    :cond_1a
    move v0, v11

    .line 446
    const/high16 v1, 0x3f800000    # 1.0f

    .line 447
    .line 448
    const/4 v2, -0x1

    .line 449
    const/4 v3, -0x1

    .line 450
    const/16 v20, -0x1

    .line 451
    .line 452
    :goto_c
    new-instance v21, Landroidx/media3/container/NalUnitUtil$H265SpsData;

    .line 453
    .line 454
    move-object/from16 v4, v21

    .line 455
    .line 456
    move v8, v9

    .line 457
    move v9, v10

    .line 458
    move/from16 v10, v18

    .line 459
    .line 460
    move/from16 v11, v19

    .line 461
    .line 462
    move-object v12, v13

    .line 463
    move v13, v15

    .line 464
    move/from16 v14, v16

    .line 465
    .line 466
    move/from16 v15, v17

    .line 467
    .line 468
    move/from16 v16, v0

    .line 469
    .line 470
    move/from16 v17, v1

    .line 471
    .line 472
    move/from16 v18, v2

    .line 473
    .line 474
    move/from16 v19, v3

    .line 475
    .line 476
    invoke-direct/range {v4 .. v20}, Landroidx/media3/container/NalUnitUtil$H265SpsData;-><init>(IZIIIII[IIIIIFIII)V

    .line 477
    .line 478
    .line 479
    return-object v21
.end method

.method public static parsePpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$PpsData;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2}, Landroidx/media3/container/NalUnitUtil;->parsePpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$PpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parsePpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$PpsData;
    .locals 1

    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p0

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p1

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result p2

    new-instance v0, Landroidx/media3/container/NalUnitUtil$PpsData;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v0
.end method

.method public static parseSpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$SpsData;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseSpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$SpsData;
    .locals 26

    .line 1
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p1

    .line 6
    .line 7
    move/from16 v3, p2

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/16 v2, 0x64

    .line 31
    .line 32
    const/4 v7, 0x3

    .line 33
    const/4 v9, 0x1

    .line 34
    if-eq v3, v2, :cond_1

    .line 35
    .line 36
    const/16 v2, 0x6e

    .line 37
    .line 38
    if-eq v3, v2, :cond_1

    .line 39
    .line 40
    const/16 v2, 0x7a

    .line 41
    .line 42
    if-eq v3, v2, :cond_1

    .line 43
    .line 44
    const/16 v2, 0xf4

    .line 45
    .line 46
    if-eq v3, v2, :cond_1

    .line 47
    .line 48
    const/16 v2, 0x2c

    .line 49
    .line 50
    if-eq v3, v2, :cond_1

    .line 51
    .line 52
    const/16 v2, 0x53

    .line 53
    .line 54
    if-eq v3, v2, :cond_1

    .line 55
    .line 56
    const/16 v2, 0x56

    .line 57
    .line 58
    if-eq v3, v2, :cond_1

    .line 59
    .line 60
    const/16 v2, 0x76

    .line 61
    .line 62
    if-eq v3, v2, :cond_1

    .line 63
    .line 64
    const/16 v2, 0x80

    .line 65
    .line 66
    if-eq v3, v2, :cond_1

    .line 67
    .line 68
    const/16 v2, 0x8a

    .line 69
    .line 70
    if-ne v3, v2, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 v2, 0x1

    .line 74
    const/4 v11, 0x0

    .line 75
    const/4 v12, 0x0

    .line 76
    const/4 v13, 0x0

    .line 77
    goto :goto_5

    .line 78
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-ne v2, v7, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/4 v11, 0x0

    .line 90
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    if-eqz v14, :cond_6

    .line 106
    .line 107
    if-eq v2, v7, :cond_3

    .line 108
    .line 109
    const/16 v14, 0x8

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    const/16 v14, 0xc

    .line 113
    .line 114
    :goto_2
    const/4 v15, 0x0

    .line 115
    :goto_3
    if-ge v15, v14, :cond_6

    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 118
    .line 119
    .line 120
    move-result v16

    .line 121
    if-eqz v16, :cond_5

    .line 122
    .line 123
    const/4 v10, 0x6

    .line 124
    if-ge v15, v10, :cond_4

    .line 125
    .line 126
    const/16 v10, 0x10

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_4
    const/16 v10, 0x40

    .line 130
    .line 131
    :goto_4
    invoke-static {v0, v10}, Landroidx/media3/container/NalUnitUtil;->skipScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;I)V

    .line 132
    .line 133
    .line 134
    :cond_5
    add-int/lit8 v15, v15, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    move/from16 v25, v13

    .line 138
    .line 139
    move v13, v11

    .line 140
    move v11, v12

    .line 141
    move/from16 v12, v25

    .line 142
    .line 143
    :goto_5
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    add-int/lit8 v15, v10, 0x4

    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    if-nez v14, :cond_7

    .line 154
    .line 155
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    add-int/lit8 v10, v10, 0x4

    .line 160
    .line 161
    move v1, v10

    .line 162
    :goto_6
    const/16 v18, 0x0

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_7
    if-ne v14, v9, :cond_9

    .line 166
    .line 167
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    int-to-long v7, v1

    .line 182
    move/from16 v18, v10

    .line 183
    .line 184
    const/4 v1, 0x0

    .line 185
    :goto_7
    int-to-long v9, v1

    .line 186
    cmp-long v19, v9, v7

    .line 187
    .line 188
    if-gez v19, :cond_8

    .line 189
    .line 190
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 191
    .line 192
    .line 193
    add-int/lit8 v1, v1, 0x1

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_8
    const/4 v1, 0x0

    .line 197
    goto :goto_8

    .line 198
    :cond_9
    const/4 v1, 0x0

    .line 199
    goto :goto_6

    .line 200
    :goto_8
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    const/4 v9, 0x1

    .line 212
    add-int/2addr v8, v9

    .line 213
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    add-int/2addr v10, v9

    .line 218
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 219
    .line 220
    .line 221
    move-result v19

    .line 222
    rsub-int/lit8 v9, v19, 0x2

    .line 223
    .line 224
    mul-int v9, v9, v10

    .line 225
    .line 226
    if-nez v19, :cond_a

    .line 227
    .line 228
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 229
    .line 230
    .line 231
    :cond_a
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 232
    .line 233
    .line 234
    const/16 v10, 0x10

    .line 235
    .line 236
    mul-int/lit8 v8, v8, 0x10

    .line 237
    .line 238
    mul-int/lit8 v9, v9, 0x10

    .line 239
    .line 240
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    const/16 v20, 0x2

    .line 245
    .line 246
    if-eqz v10, :cond_e

    .line 247
    .line 248
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 249
    .line 250
    .line 251
    move-result v10

    .line 252
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 253
    .line 254
    .line 255
    move-result v21

    .line 256
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 257
    .line 258
    .line 259
    move-result v22

    .line 260
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 261
    .line 262
    .line 263
    move-result v23

    .line 264
    if-nez v2, :cond_b

    .line 265
    .line 266
    rsub-int/lit8 v2, v19, 0x2

    .line 267
    .line 268
    move/from16 p0, v14

    .line 269
    .line 270
    const/4 v14, 0x1

    .line 271
    const/16 v17, 0x1

    .line 272
    .line 273
    goto :goto_b

    .line 274
    :cond_b
    move/from16 p0, v14

    .line 275
    .line 276
    const/4 v14, 0x3

    .line 277
    if-ne v2, v14, :cond_c

    .line 278
    .line 279
    const/4 v14, 0x1

    .line 280
    const/16 v17, 0x1

    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_c
    const/4 v14, 0x1

    .line 284
    const/16 v17, 0x2

    .line 285
    .line 286
    :goto_9
    if-ne v2, v14, :cond_d

    .line 287
    .line 288
    const/4 v2, 0x2

    .line 289
    goto :goto_a

    .line 290
    :cond_d
    const/4 v2, 0x1

    .line 291
    :goto_a
    rsub-int/lit8 v24, v19, 0x2

    .line 292
    .line 293
    mul-int v2, v2, v24

    .line 294
    .line 295
    :goto_b
    add-int v10, v10, v21

    .line 296
    .line 297
    mul-int v10, v10, v17

    .line 298
    .line 299
    sub-int/2addr v8, v10

    .line 300
    add-int v22, v22, v23

    .line 301
    .line 302
    mul-int v22, v22, v2

    .line 303
    .line 304
    sub-int v9, v9, v22

    .line 305
    .line 306
    goto :goto_c

    .line 307
    :cond_e
    move/from16 p0, v14

    .line 308
    .line 309
    const/4 v14, 0x1

    .line 310
    :goto_c
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    const/high16 v17, 0x3f800000    # 1.0f

    .line 315
    .line 316
    if-eqz v2, :cond_16

    .line 317
    .line 318
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_11

    .line 323
    .line 324
    const/16 v2, 0x8

    .line 325
    .line 326
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 327
    .line 328
    .line 329
    move-result v10

    .line 330
    const/16 v2, 0xff

    .line 331
    .line 332
    if-ne v10, v2, :cond_f

    .line 333
    .line 334
    const/16 v2, 0x10

    .line 335
    .line 336
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 337
    .line 338
    .line 339
    move-result v10

    .line 340
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-eqz v10, :cond_11

    .line 345
    .line 346
    if-eqz v2, :cond_11

    .line 347
    .line 348
    int-to-float v10, v10

    .line 349
    int-to-float v2, v2

    .line 350
    div-float v17, v10, v2

    .line 351
    .line 352
    goto :goto_d

    .line 353
    :cond_f
    sget-object v2, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 354
    .line 355
    array-length v14, v2

    .line 356
    if-ge v10, v14, :cond_10

    .line 357
    .line 358
    aget v17, v2, v10

    .line 359
    .line 360
    goto :goto_d

    .line 361
    :cond_10
    const-string v2, "Unexpected aspect_ratio_idc value: "

    .line 362
    .line 363
    const-string v14, "NalUnitUtil"

    .line 364
    .line 365
    invoke-static {v10, v2, v14}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :cond_11
    :goto_d
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-eqz v2, :cond_12

    .line 373
    .line 374
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 375
    .line 376
    .line 377
    :cond_12
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-eqz v2, :cond_15

    .line 382
    .line 383
    const/4 v2, 0x3

    .line 384
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-eqz v2, :cond_13

    .line 392
    .line 393
    const/16 v16, 0x1

    .line 394
    .line 395
    goto :goto_e

    .line 396
    :cond_13
    const/16 v16, 0x2

    .line 397
    .line 398
    :goto_e
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    if-eqz v2, :cond_14

    .line 403
    .line 404
    const/16 v2, 0x8

    .line 405
    .line 406
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 407
    .line 408
    .line 409
    move-result v10

    .line 410
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 411
    .line 412
    .line 413
    move-result v14

    .line 414
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 415
    .line 416
    .line 417
    invoke-static {v10}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    invoke-static {v14}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    move/from16 v21, v0

    .line 426
    .line 427
    move v0, v2

    .line 428
    move/from16 v20, v16

    .line 429
    .line 430
    move/from16 v10, v17

    .line 431
    .line 432
    goto :goto_11

    .line 433
    :cond_14
    move/from16 v20, v16

    .line 434
    .line 435
    move/from16 v10, v17

    .line 436
    .line 437
    const/4 v0, -0x1

    .line 438
    :goto_f
    const/16 v21, -0x1

    .line 439
    .line 440
    goto :goto_11

    .line 441
    :cond_15
    move/from16 v10, v17

    .line 442
    .line 443
    const/4 v0, -0x1

    .line 444
    :goto_10
    const/16 v20, -0x1

    .line 445
    .line 446
    goto :goto_f

    .line 447
    :cond_16
    const/4 v0, -0x1

    .line 448
    const/high16 v10, 0x3f800000    # 1.0f

    .line 449
    .line 450
    goto :goto_10

    .line 451
    :goto_11
    new-instance v22, Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 452
    .line 453
    move-object/from16 v2, v22

    .line 454
    .line 455
    move/from16 v16, p0

    .line 456
    .line 457
    move/from16 v14, v19

    .line 458
    .line 459
    move/from16 v17, v1

    .line 460
    .line 461
    move/from16 v19, v21

    .line 462
    .line 463
    move/from16 v21, v0

    .line 464
    .line 465
    invoke-direct/range {v2 .. v21}, Landroidx/media3/container/NalUnitUtil$SpsData;-><init>(IIIIIIIFIIZZIIIZIII)V

    .line 466
    .line 467
    .line 468
    return-object v22
.end method

.method private static skipH265ScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_3

    :cond_0
    shl-int/lit8 v4, v1, 0x1

    add-int/2addr v4, v2

    shl-int v4, v5, v4

    const/16 v6, 0x40

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_1

    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    const/4 v5, 0x3

    :cond_3
    add-int/2addr v3, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static skipScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;I)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v0, v0, 0x100

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static skipShortTermReferencePictureSets(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_11

    const/4 v7, 0x1

    if-eqz v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_c

    add-int v8, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    add-int/2addr v10, v7

    mul-int/lit8 v9, v9, 0x2

    rsub-int/lit8 v9, v9, 0x1

    mul-int v9, v9, v10

    add-int/lit8 v10, v8, 0x1

    new-array v11, v10, [Z

    const/4 v12, 0x0

    :goto_1
    if-gt v12, v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    aput-boolean v13, v11, v12

    goto :goto_2

    :cond_0
    aput-boolean v7, v11, v12

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    new-array v7, v10, [I

    new-array v10, v10, [I

    add-int/lit8 v12, v5, -0x1

    const/4 v13, 0x0

    :goto_3
    if-ltz v12, :cond_3

    aget v14, v3, v12

    add-int/2addr v14, v9

    if-gez v14, :cond_2

    add-int v15, v4, v12

    aget-boolean v15, v11, v15

    if-eqz v15, :cond_2

    add-int/lit8 v15, v13, 0x1

    aput v14, v7, v13

    move v13, v15

    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    :cond_3
    if-gez v9, :cond_4

    aget-boolean v12, v11, v8

    if-eqz v12, :cond_4

    add-int/lit8 v12, v13, 0x1

    aput v9, v7, v13

    move v13, v12

    :cond_4
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v4, :cond_6

    aget v14, v2, v12

    add-int/2addr v14, v9

    if-gez v14, :cond_5

    aget-boolean v15, v11, v12

    if-eqz v15, :cond_5

    add-int/lit8 v15, v13, 0x1

    aput v14, v7, v13

    move v13, v15

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    invoke-static {v7, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    add-int/lit8 v12, v4, -0x1

    const/4 v14, 0x0

    :goto_5
    if-ltz v12, :cond_8

    aget v15, v2, v12

    add-int/2addr v15, v9

    if-lez v15, :cond_7

    aget-boolean v16, v11, v12

    if-eqz v16, :cond_7

    add-int/lit8 v16, v14, 0x1

    aput v15, v10, v14

    move/from16 v14, v16

    :cond_7
    add-int/lit8 v12, v12, -0x1

    goto :goto_5

    :cond_8
    if-lez v9, :cond_9

    aget-boolean v2, v11, v8

    if-eqz v2, :cond_9

    add-int/lit8 v2, v14, 0x1

    aput v9, v10, v14

    move v14, v2

    :cond_9
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v5, :cond_b

    aget v8, v3, v2

    add-int/2addr v8, v9

    if-lez v8, :cond_a

    add-int v12, v4, v2

    aget-boolean v12, v11, v12

    if-eqz v12, :cond_a

    add-int/lit8 v12, v14, 0x1

    aput v8, v10, v14

    move v14, v12

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    invoke-static {v10, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move-object v3, v2

    move-object v2, v7

    move v4, v13

    move v5, v14

    goto :goto_b

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v2, :cond_e

    if-lez v5, :cond_d

    add-int/lit8 v8, v5, -0x1

    aget v8, v4, v8

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    add-int/2addr v9, v7

    sub-int/2addr v8, v9

    aput v8, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_e
    new-array v5, v3, [I

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v3, :cond_10

    if-lez v8, :cond_f

    add-int/lit8 v9, v8, -0x1

    aget v9, v5, v9

    goto :goto_a

    :cond_f
    const/4 v9, 0x0

    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    add-int/2addr v10, v7

    add-int/2addr v10, v9

    aput v10, v5, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_10
    move-object/from16 v17, v4

    move v4, v2

    move-object/from16 v2, v17

    move-object/from16 v18, v5

    move v5, v3

    move-object/from16 v3, v18

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method public static unescapeStream([BI)I
    .locals 8

    sget-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v2, p1, :cond_2

    :try_start_0
    invoke-static {p0, v2, p1}, Landroidx/media3/container/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v2

    if-ge v2, p1, :cond_0

    sget-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    array-length v5, v4

    if-gt v5, v3, :cond_1

    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    sget-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_0

    :cond_2
    sub-int/2addr p1, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    sget-object v6, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    aget v6, v6, v2

    sub-int/2addr v6, v5

    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v7, v4, 0x1

    aput-byte v1, p0, v4

    add-int/lit8 v4, v4, 0x2

    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    sub-int v1, p1, v4

    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return p1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
