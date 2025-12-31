.class public Lcom/sun/jna/Pointer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Pointer$Opaque;
    }
.end annotation


# static fields
.field public static final NULL:Lcom/sun/jna/Pointer;


# instance fields
.field protected peer:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sun/jna/Pointer;->peer:J

    return-void
.end method

.method public static final createConstant(I)Lcom/sun/jna/Pointer;
    .locals 3

    .line 1
    new-instance v0, Lcom/sun/jna/Pointer$Opaque;

    int-to-long v1, p0

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/sun/jna/Pointer$Opaque;-><init>(JLcom/sun/jna/Pointer$1;)V

    return-object v0
.end method

.method public static final createConstant(J)Lcom/sun/jna/Pointer;
    .locals 2

    .line 2
    new-instance v0, Lcom/sun/jna/Pointer$Opaque;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sun/jna/Pointer$Opaque;-><init>(JLcom/sun/jna/Pointer$1;)V

    return-object v0
.end method

.method public static nativeValue(Lcom/sun/jna/Pointer;)J
    .locals 2

    .line 1
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    :goto_0
    return-wide v0
.end method

.method public static nativeValue(Lcom/sun/jna/Pointer;J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/sun/jna/Pointer;->peer:J

    return-void
.end method

.method private readArray(JLjava/lang/Object;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    if-ne p4, v0, :cond_0

    .line 8
    .line 9
    move-object v3, p3

    .line 10
    check-cast v3, [B

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    move-object v0, p0

    .line 14
    move-wide v1, p1

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[BII)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    if-ne p4, v0, :cond_1

    .line 23
    .line 24
    move-object v3, p3

    .line 25
    check-cast v3, [S

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    move-object v0, p0

    .line 29
    move-wide v1, p1

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[SII)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    if-ne p4, v0, :cond_2

    .line 38
    .line 39
    move-object v3, p3

    .line 40
    check-cast v3, [C

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    move-object v0, p0

    .line 44
    move-wide v1, p1

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[CII)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    if-ne p4, v0, :cond_3

    .line 53
    .line 54
    move-object v3, p3

    .line 55
    check-cast v3, [I

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    move-object v0, p0

    .line 59
    move-wide v1, p1

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[III)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    if-ne p4, v0, :cond_4

    .line 68
    .line 69
    move-object v3, p3

    .line 70
    check-cast v3, [J

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    move-object v0, p0

    .line 74
    move-wide v1, p1

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[JII)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 81
    .line 82
    if-ne p4, v0, :cond_5

    .line 83
    .line 84
    move-object v3, p3

    .line 85
    check-cast v3, [F

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    move-object v0, p0

    .line 89
    move-wide v1, p1

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[FII)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_5

    .line 94
    .line 95
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 96
    .line 97
    if-ne p4, v0, :cond_6

    .line 98
    .line 99
    move-object v3, p3

    .line 100
    check-cast v3, [D

    .line 101
    .line 102
    const/4 v4, 0x0

    .line 103
    move-object v0, p0

    .line 104
    move-wide v1, p1

    .line 105
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[DII)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_6
    const-class v0, Lcom/sun/jna/Pointer;

    .line 111
    .line 112
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_7

    .line 117
    .line 118
    move-object v3, p3

    .line 119
    check-cast v3, [Lcom/sun/jna/Pointer;

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    move-object v0, p0

    .line 123
    move-wide v1, p1

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[Lcom/sun/jna/Pointer;II)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_5

    .line 128
    .line 129
    :cond_7
    const-class v0, Lcom/sun/jna/Structure;

    .line 130
    .line 131
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const/4 v1, 0x0

    .line 136
    if-eqz v0, :cond_b

    .line 137
    .line 138
    check-cast p3, [Lcom/sun/jna/Structure;

    .line 139
    .line 140
    const-class v0, Lcom/sun/jna/Structure$ByReference;

    .line 141
    .line 142
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    array-length v0, p3

    .line 149
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/jna/Pointer;->getPointerArray(JI)[Lcom/sun/jna/Pointer;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    :goto_0
    array-length p2, p3

    .line 154
    if-ge v1, p2, :cond_c

    .line 155
    .line 156
    aget-object p2, p3, v1

    .line 157
    .line 158
    aget-object v0, p1, v1

    .line 159
    .line 160
    invoke-static {p4, p2, v0}, Lcom/sun/jna/Structure;->updateStructureByReference(Ljava/lang/Class;Lcom/sun/jna/Structure;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    aput-object p2, p3, v1

    .line 165
    .line 166
    add-int/lit8 v1, v1, 0x1

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_8
    aget-object v0, p3, v1

    .line 170
    .line 171
    const/4 v2, 0x1

    .line 172
    if-nez v0, :cond_9

    .line 173
    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->share(J)Lcom/sun/jna/Pointer;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {p4, v0}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/sun/jna/Structure;->conditionalAutoRead()V

    .line 183
    .line 184
    .line 185
    aput-object v0, p3, v1

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_9
    long-to-int p4, p1

    .line 189
    invoke-virtual {v0, p0, p4, v2}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/sun/jna/Structure;->read()V

    .line 193
    .line 194
    .line 195
    :goto_1
    array-length p4, p3

    .line 196
    invoke-virtual {v0, p4}, Lcom/sun/jna/Structure;->toArray(I)[Lcom/sun/jna/Structure;

    .line 197
    .line 198
    .line 199
    move-result-object p4

    .line 200
    const/4 v0, 0x1

    .line 201
    :goto_2
    array-length v1, p3

    .line 202
    if-ge v0, v1, :cond_c

    .line 203
    .line 204
    aget-object v1, p3, v0

    .line 205
    .line 206
    if-nez v1, :cond_a

    .line 207
    .line 208
    aget-object v1, p4, v0

    .line 209
    .line 210
    aput-object v1, p3, v0

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_a
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->size()I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    mul-int v3, v3, v0

    .line 218
    .line 219
    int-to-long v3, v3

    .line 220
    add-long/2addr v3, p1

    .line 221
    long-to-int v4, v3

    .line 222
    invoke-virtual {v1, p0, v4, v2}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 223
    .line 224
    .line 225
    aget-object v1, p3, v0

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->read()V

    .line 228
    .line 229
    .line 230
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_b
    const-class v0, Lcom/sun/jna/NativeMapped;

    .line 234
    .line 235
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_d

    .line 240
    .line 241
    move-object v0, p3

    .line 242
    check-cast v0, [Lcom/sun/jna/NativeMapped;

    .line 243
    .line 244
    check-cast v0, [Lcom/sun/jna/NativeMapped;

    .line 245
    .line 246
    invoke-static {p4}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-static {v3, p3}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    .line 255
    .line 256
    .line 257
    move-result p3

    .line 258
    array-length v3, v0

    .line 259
    div-int/2addr p3, v3

    .line 260
    :goto_4
    array-length v3, v0

    .line 261
    if-ge v1, v3, :cond_c

    .line 262
    .line 263
    mul-int v3, p3, v1

    .line 264
    .line 265
    int-to-long v3, v3

    .line 266
    add-long/2addr v3, p1

    .line 267
    invoke-virtual {v2}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    aget-object v6, v0, v1

    .line 272
    .line 273
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sun/jna/Pointer;->getValue(JLjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    new-instance v4, Lcom/sun/jna/FromNativeContext;

    .line 278
    .line 279
    invoke-direct {v4, p4}, Lcom/sun/jna/FromNativeContext;-><init>(Ljava/lang/Class;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v3, v4}, Lcom/sun/jna/NativeMappedConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    check-cast v3, Lcom/sun/jna/NativeMapped;

    .line 287
    .line 288
    aput-object v3, v0, v1

    .line 289
    .line 290
    add-int/lit8 v1, v1, 0x1

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_c
    :goto_5
    return-void

    .line 294
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 295
    .line 296
    const-string p2, "Reading array of "

    .line 297
    .line 298
    const-string p3, " from memory not supported"

    .line 299
    .line 300
    invoke-static {p4, p2, p3}, Lch/qos/logback/core/joran/util/a;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw p1
.end method

.method private writeArray(JLjava/lang/Object;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    if-ne p4, v0, :cond_0

    .line 4
    .line 5
    move-object v4, p3

    .line 6
    check-cast v4, [B

    .line 7
    .line 8
    array-length v6, v4

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move-wide v2, p1

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/Pointer;->write(J[BII)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    if-ne p4, v0, :cond_1

    .line 20
    .line 21
    move-object v4, p3

    .line 22
    check-cast v4, [S

    .line 23
    .line 24
    array-length v6, v4

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v1, p0

    .line 27
    move-wide v2, p1

    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/Pointer;->write(J[SII)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    if-ne p4, v0, :cond_2

    .line 36
    .line 37
    move-object v4, p3

    .line 38
    check-cast v4, [C

    .line 39
    .line 40
    array-length v6, v4

    .line 41
    const/4 v5, 0x0

    .line 42
    move-object v1, p0

    .line 43
    move-wide v2, p1

    .line 44
    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/Pointer;->write(J[CII)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    if-ne p4, v0, :cond_3

    .line 52
    .line 53
    move-object v4, p3

    .line 54
    check-cast v4, [I

    .line 55
    .line 56
    array-length v6, v4

    .line 57
    const/4 v5, 0x0

    .line 58
    move-object v1, p0

    .line 59
    move-wide v2, p1

    .line 60
    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/Pointer;->write(J[III)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    if-ne p4, v0, :cond_4

    .line 68
    .line 69
    move-object v4, p3

    .line 70
    check-cast v4, [J

    .line 71
    .line 72
    array-length v6, v4

    .line 73
    const/4 v5, 0x0

    .line 74
    move-object v1, p0

    .line 75
    move-wide v2, p1

    .line 76
    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/Pointer;->write(J[JII)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_6

    .line 80
    .line 81
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 82
    .line 83
    if-ne p4, v0, :cond_5

    .line 84
    .line 85
    move-object v4, p3

    .line 86
    check-cast v4, [F

    .line 87
    .line 88
    array-length v6, v4

    .line 89
    const/4 v5, 0x0

    .line 90
    move-object v1, p0

    .line 91
    move-wide v2, p1

    .line 92
    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/Pointer;->write(J[FII)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_6

    .line 96
    .line 97
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 98
    .line 99
    if-ne p4, v0, :cond_6

    .line 100
    .line 101
    move-object v4, p3

    .line 102
    check-cast v4, [D

    .line 103
    .line 104
    array-length v6, v4

    .line 105
    const/4 v5, 0x0

    .line 106
    move-object v1, p0

    .line 107
    move-wide v2, p1

    .line 108
    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/Pointer;->write(J[DII)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_6

    .line 112
    .line 113
    :cond_6
    const-class v0, Lcom/sun/jna/Pointer;

    .line 114
    .line 115
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    move-object v4, p3

    .line 122
    check-cast v4, [Lcom/sun/jna/Pointer;

    .line 123
    .line 124
    array-length v6, v4

    .line 125
    const/4 v5, 0x0

    .line 126
    move-object v1, p0

    .line 127
    move-wide v2, p1

    .line 128
    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/Pointer;->write(J[Lcom/sun/jna/Pointer;II)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_6

    .line 132
    .line 133
    :cond_7
    const-class v0, Lcom/sun/jna/Structure;

    .line 134
    .line 135
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const/4 v1, 0x0

    .line 140
    if-eqz v0, :cond_d

    .line 141
    .line 142
    check-cast p3, [Lcom/sun/jna/Structure;

    .line 143
    .line 144
    const-class v0, Lcom/sun/jna/Structure$ByReference;

    .line 145
    .line 146
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_a

    .line 151
    .line 152
    array-length v7, p3

    .line 153
    new-array v5, v7, [Lcom/sun/jna/Pointer;

    .line 154
    .line 155
    :goto_0
    array-length p4, p3

    .line 156
    if-ge v1, p4, :cond_9

    .line 157
    .line 158
    aget-object p4, p3, v1

    .line 159
    .line 160
    if-nez p4, :cond_8

    .line 161
    .line 162
    const/4 p4, 0x0

    .line 163
    aput-object p4, v5, v1

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_8
    invoke-virtual {p4}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 167
    .line 168
    .line 169
    move-result-object p4

    .line 170
    aput-object p4, v5, v1

    .line 171
    .line 172
    aget-object p4, p3, v1

    .line 173
    .line 174
    invoke-virtual {p4}, Lcom/sun/jna/Structure;->write()V

    .line 175
    .line 176
    .line 177
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_9
    const/4 v6, 0x0

    .line 181
    move-object v2, p0

    .line 182
    move-wide v3, p1

    .line 183
    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Pointer;->write(J[Lcom/sun/jna/Pointer;II)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    :cond_a
    aget-object v0, p3, v1

    .line 189
    .line 190
    const/4 v2, 0x1

    .line 191
    if-nez v0, :cond_b

    .line 192
    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->share(J)Lcom/sun/jna/Pointer;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {p4, v0}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    aput-object v0, p3, v1

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_b
    long-to-int p4, p1

    .line 205
    invoke-virtual {v0, p0, p4, v2}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 206
    .line 207
    .line 208
    :goto_2
    invoke-virtual {v0}, Lcom/sun/jna/Structure;->write()V

    .line 209
    .line 210
    .line 211
    array-length p4, p3

    .line 212
    invoke-virtual {v0, p4}, Lcom/sun/jna/Structure;->toArray(I)[Lcom/sun/jna/Structure;

    .line 213
    .line 214
    .line 215
    move-result-object p4

    .line 216
    const/4 v0, 0x1

    .line 217
    :goto_3
    array-length v1, p3

    .line 218
    if-ge v0, v1, :cond_e

    .line 219
    .line 220
    aget-object v1, p3, v0

    .line 221
    .line 222
    if-nez v1, :cond_c

    .line 223
    .line 224
    aget-object v1, p4, v0

    .line 225
    .line 226
    aput-object v1, p3, v0

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_c
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->size()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    mul-int v3, v3, v0

    .line 234
    .line 235
    int-to-long v3, v3

    .line 236
    add-long/2addr v3, p1

    .line 237
    long-to-int v4, v3

    .line 238
    invoke-virtual {v1, p0, v4, v2}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 239
    .line 240
    .line 241
    :goto_4
    aget-object v1, p3, v0

    .line 242
    .line 243
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->write()V

    .line 244
    .line 245
    .line 246
    add-int/lit8 v0, v0, 0x1

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_d
    const-class v0, Lcom/sun/jna/NativeMapped;

    .line 250
    .line 251
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_f

    .line 256
    .line 257
    move-object v0, p3

    .line 258
    check-cast v0, [Lcom/sun/jna/NativeMapped;

    .line 259
    .line 260
    check-cast v0, [Lcom/sun/jna/NativeMapped;

    .line 261
    .line 262
    invoke-static {p4}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 263
    .line 264
    .line 265
    move-result-object p4

    .line 266
    invoke-virtual {p4}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-static {v3, p3}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    .line 275
    .line 276
    .line 277
    move-result p3

    .line 278
    array-length v3, v0

    .line 279
    div-int/2addr p3, v3

    .line 280
    :goto_5
    array-length v3, v0

    .line 281
    if-ge v1, v3, :cond_e

    .line 282
    .line 283
    aget-object v3, v0, v1

    .line 284
    .line 285
    new-instance v4, Lcom/sun/jna/ToNativeContext;

    .line 286
    .line 287
    invoke-direct {v4}, Lcom/sun/jna/ToNativeContext;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p4, v3, v4}, Lcom/sun/jna/NativeMappedConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    mul-int v4, v1, p3

    .line 295
    .line 296
    int-to-long v4, v4

    .line 297
    add-long/2addr v4, p1

    .line 298
    invoke-virtual {p0, v4, v5, v3, v2}, Lcom/sun/jna/Pointer;->setValue(JLjava/lang/Object;Ljava/lang/Class;)V

    .line 299
    .line 300
    .line 301
    add-int/lit8 v1, v1, 0x1

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_e
    :goto_6
    return-void

    .line 305
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 306
    .line 307
    const-string p2, "Writing array of "

    .line 308
    .line 309
    const-string p3, " to memory not supported"

    .line 310
    .line 311
    invoke-static {p4, p2, p3}, Lch/qos/logback/core/joran/util/a;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw p1
.end method


# virtual methods
.method public clear(J)V
    .locals 6

    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->setMemory(JJB)V

    return-void
.end method

.method public dump(JI)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/io/StringWriter;

    mul-int/lit8 v1, p3, 0x2

    add-int/lit8 v1, v1, 0xd

    div-int/lit8 v2, p3, 0x4

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "memory dump"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    const-string v3, "]"

    if-ge v2, p3, :cond_3

    int-to-long v4, v2

    add-long/2addr v4, p1

    invoke-virtual {p0, v4, v5}, Lcom/sun/jna/Pointer;->getByte(J)B

    move-result v4

    rem-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_0

    const-string v6, "["

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    if-ltz v4, :cond_1

    const/16 v6, 0x10

    if-ge v4, v6, :cond_1

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x3

    if-ne v5, v4, :cond_2

    add-int/lit8 v4, p3, -0x1

    if-ge v2, v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    const/16 p2, 0x5d

    if-eq p1, p2, :cond_4

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/sun/jna/Pointer;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/sun/jna/Pointer;

    iget-wide v2, p1, Lcom/sun/jna/Pointer;->peer:J

    iget-wide v4, p0, Lcom/sun/jna/Pointer;->peer:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getByte(J)B
    .locals 2

    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getByte(Lcom/sun/jna/Pointer;JJ)B

    move-result p1

    return p1
.end method

.method public getByteArray(JI)[B
    .locals 7

    new-array v6, p3, [B

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[BII)V

    return-object v6
.end method

.method public getByteBuffer(JJ)Ljava/nio/ByteBuffer;
    .locals 7

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/sun/jna/Native;->getDirectByteBuffer(Lcom/sun/jna/Pointer;JJJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getChar(J)C
    .locals 2

    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getChar(Lcom/sun/jna/Pointer;JJ)C

    move-result p1

    return p1
.end method

.method public getCharArray(JI)[C
    .locals 7

    new-array v6, p3, [C

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[CII)V

    return-object v6
.end method

.method public getDouble(J)D
    .locals 2

    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getDouble(Lcom/sun/jna/Pointer;JJ)D

    move-result-wide p1

    return-wide p1
.end method

.method public getDoubleArray(JI)[D
    .locals 7

    new-array v6, p3, [D

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[DII)V

    return-object v6
.end method

.method public getFloat(J)F
    .locals 2

    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getFloat(Lcom/sun/jna/Pointer;JJ)F

    move-result p1

    return p1
.end method

.method public getFloatArray(JI)[F
    .locals 7

    new-array v6, p3, [F

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[FII)V

    return-object v6
.end method

.method public getInt(J)I
    .locals 2

    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getInt(Lcom/sun/jna/Pointer;JJ)I

    move-result p1

    return p1
.end method

.method public getIntArray(JI)[I
    .locals 7

    new-array v6, p3, [I

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[III)V

    return-object v6
.end method

.method public getLong(J)J
    .locals 2

    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getLong(Lcom/sun/jna/Pointer;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLongArray(JI)[J
    .locals 7

    new-array v6, p3, [J

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[JII)V

    return-object v6
.end method

.method public getNativeLong(J)Lcom/sun/jna/NativeLong;
    .locals 3

    new-instance v0, Lcom/sun/jna/NativeLong;

    sget v1, Lcom/sun/jna/NativeLong;->SIZE:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getLong(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result p1

    int-to-long p1, p1

    :goto_0
    invoke-direct {v0, p1, p2}, Lcom/sun/jna/NativeLong;-><init>(J)V

    return-object v0
.end method

.method public getPointer(J)Lcom/sun/jna/Pointer;
    .locals 2

    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1
.end method

.method public getPointerArray(J)[Lcom/sun/jna/Pointer;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    add-int/2addr v3, v1

    int-to-long v4, v3

    add-long/2addr v4, p1

    invoke-virtual {p0, v4, v5}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-array p1, v2, [Lcom/sun/jna/Pointer;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sun/jna/Pointer;

    return-object p1
.end method

.method public getPointerArray(JI)[Lcom/sun/jna/Pointer;
    .locals 7

    .line 2
    new-array v6, p3, [Lcom/sun/jna/Pointer;

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[Lcom/sun/jna/Pointer;II)V

    return-object v6
.end method

.method public getShort(J)S
    .locals 2

    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getShort(Lcom/sun/jna/Pointer;JJ)S

    move-result p1

    return p1
.end method

.method public getShortArray(JI)[S
    .locals 7

    new-array v6, p3, [S

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[SII)V

    return-object v6
.end method

.method public getString(J)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/sun/jna/Native;->getString(Lcom/sun/jna/Pointer;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringArray(J)[Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, -0x1

    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Pointer;->getStringArray(JILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringArray(JI)[Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/Pointer;->getStringArray(JILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringArray(JILjava/lang/String;)[Ljava/lang/String;
    .locals 11

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    const-string v2, "--WIDE-STRING--"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eq p3, v1, :cond_3

    int-to-long v6, v5

    add-long/2addr v6, p1

    invoke-virtual {p0, v6, v7}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v8, v6, 0x1

    if-ge v6, p3, :cond_5

    if-nez v1, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3, v4, p4}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ge v8, p3, :cond_2

    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    add-int/2addr v7, v1

    int-to-long v9, v7

    add-long/2addr v9, p1

    invoke-virtual {p0, v9, v10}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    :cond_2
    move v6, v8

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_2
    int-to-long v6, p3

    add-long/2addr v6, p1

    invoke-virtual {p0, v6, v7}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v3, v4, p4}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    add-int/2addr p3, v1

    goto :goto_2

    :cond_5
    new-array p1, v5, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getStringArray(JLjava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 4
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sun/jna/Pointer;->getStringArray(JILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(JLjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/sun/jna/Structure;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    check-cast p4, Lcom/sun/jna/Structure;

    .line 11
    .line 12
    const-class v0, Lcom/sun/jna/Structure$ByReference;

    .line 13
    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p3, p4, p1}, Lcom/sun/jna/Structure;->updateStructureByReference(Ljava/lang/Class;Lcom/sun/jna/Structure;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :cond_0
    :goto_0
    move-object p4, p1

    .line 29
    goto/16 :goto_c

    .line 30
    .line 31
    :cond_1
    long-to-int p2, p1

    .line 32
    invoke-virtual {p4, p0, p2, v1}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4}, Lcom/sun/jna/Structure;->read()V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_c

    .line 39
    .line 40
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    if-eq p3, v0, :cond_21

    .line 43
    .line 44
    const-class v0, Ljava/lang/Boolean;

    .line 45
    .line 46
    if-ne p3, v0, :cond_3

    .line 47
    .line 48
    goto/16 :goto_a

    .line 49
    .line 50
    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    if-eq p3, v0, :cond_20

    .line 53
    .line 54
    const-class v0, Ljava/lang/Byte;

    .line 55
    .line 56
    if-ne p3, v0, :cond_4

    .line 57
    .line 58
    goto/16 :goto_9

    .line 59
    .line 60
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 61
    .line 62
    if-eq p3, v0, :cond_1f

    .line 63
    .line 64
    const-class v0, Ljava/lang/Short;

    .line 65
    .line 66
    if-ne p3, v0, :cond_5

    .line 67
    .line 68
    goto/16 :goto_8

    .line 69
    .line 70
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 71
    .line 72
    if-eq p3, v0, :cond_1e

    .line 73
    .line 74
    const-class v0, Ljava/lang/Character;

    .line 75
    .line 76
    if-ne p3, v0, :cond_6

    .line 77
    .line 78
    goto/16 :goto_7

    .line 79
    .line 80
    :cond_6
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 81
    .line 82
    if-eq p3, v0, :cond_1d

    .line 83
    .line 84
    const-class v0, Ljava/lang/Integer;

    .line 85
    .line 86
    if-ne p3, v0, :cond_7

    .line 87
    .line 88
    goto/16 :goto_6

    .line 89
    .line 90
    :cond_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 91
    .line 92
    if-eq p3, v0, :cond_1c

    .line 93
    .line 94
    const-class v0, Ljava/lang/Long;

    .line 95
    .line 96
    if-ne p3, v0, :cond_8

    .line 97
    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :cond_8
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 101
    .line 102
    if-eq p3, v0, :cond_1b

    .line 103
    .line 104
    const-class v0, Ljava/lang/Float;

    .line 105
    .line 106
    if-ne p3, v0, :cond_9

    .line 107
    .line 108
    goto/16 :goto_4

    .line 109
    .line 110
    :cond_9
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 111
    .line 112
    if-eq p3, v0, :cond_1a

    .line 113
    .line 114
    const-class v0, Ljava/lang/Double;

    .line 115
    .line 116
    if-ne p3, v0, :cond_a

    .line 117
    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :cond_a
    const-class v0, Lcom/sun/jna/Pointer;

    .line 121
    .line 122
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    const/4 v1, 0x0

    .line 127
    if-eqz v0, :cond_d

    .line 128
    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_c

    .line 134
    .line 135
    instance-of p2, p4, Lcom/sun/jna/Pointer;

    .line 136
    .line 137
    if-eqz p2, :cond_b

    .line 138
    .line 139
    move-object v1, p4

    .line 140
    check-cast v1, Lcom/sun/jna/Pointer;

    .line 141
    .line 142
    :cond_b
    if-eqz v1, :cond_0

    .line 143
    .line 144
    iget-wide p2, p1, Lcom/sun/jna/Pointer;->peer:J

    .line 145
    .line 146
    iget-wide v2, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 147
    .line 148
    cmp-long p4, p2, v2

    .line 149
    .line 150
    if-eqz p4, :cond_c

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_c
    :goto_1
    move-object p4, v1

    .line 154
    goto/16 :goto_c

    .line 155
    .line 156
    :cond_d
    const-class v0, Ljava/lang/String;

    .line 157
    .line 158
    const-wide/16 v2, 0x0

    .line 159
    .line 160
    if-ne p3, v0, :cond_e

    .line 161
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-eqz p1, :cond_c

    .line 167
    .line 168
    invoke-virtual {p1, v2, v3}, Lcom/sun/jna/Pointer;->getString(J)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_e
    const-class v0, Lcom/sun/jna/WString;

    .line 175
    .line 176
    if-ne p3, v0, :cond_f

    .line 177
    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-eqz p1, :cond_c

    .line 183
    .line 184
    new-instance p2, Lcom/sun/jna/WString;

    .line 185
    .line 186
    invoke-virtual {p1, v2, v3}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-direct {p2, p1}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    move-object p4, p2

    .line 194
    goto/16 :goto_c

    .line 195
    .line 196
    :cond_f
    const-class v0, Lcom/sun/jna/Callback;

    .line 197
    .line 198
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_11

    .line 203
    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    if-nez p1, :cond_10

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_10
    check-cast p4, Lcom/sun/jna/Callback;

    .line 212
    .line 213
    invoke-static {p4}, Lcom/sun/jna/CallbackReference;->getFunctionPointer(Lcom/sun/jna/Callback;)Lcom/sun/jna/Pointer;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-virtual {p1, p2}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    if-nez p2, :cond_23

    .line 222
    .line 223
    invoke-static {p3, p1}, Lcom/sun/jna/CallbackReference;->getCallback(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Callback;

    .line 224
    .line 225
    .line 226
    move-result-object p4

    .line 227
    goto/16 :goto_c

    .line 228
    .line 229
    :cond_11
    sget-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    .line 230
    .line 231
    if-eqz v0, :cond_15

    .line 232
    .line 233
    const-class v0, Ljava/nio/Buffer;

    .line 234
    .line 235
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_15

    .line 240
    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    if-nez p1, :cond_12

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_12
    if-nez p4, :cond_13

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_13
    move-object p2, p4

    .line 252
    check-cast p2, Ljava/nio/Buffer;

    .line 253
    .line 254
    invoke-static {p2}, Lcom/sun/jna/Native;->getDirectBufferPointer(Ljava/nio/Buffer;)Lcom/sun/jna/Pointer;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    :goto_2
    if-eqz v1, :cond_14

    .line 259
    .line 260
    invoke-virtual {v1, p1}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-eqz p1, :cond_14

    .line 265
    .line 266
    goto/16 :goto_c

    .line 267
    .line 268
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 269
    .line 270
    const-string p2, "Can\'t autogenerate a direct buffer on memory read"

    .line 271
    .line 272
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw p1

    .line 276
    :cond_15
    const-class v0, Lcom/sun/jna/NativeMapped;

    .line 277
    .line 278
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_17

    .line 283
    .line 284
    check-cast p4, Lcom/sun/jna/NativeMapped;

    .line 285
    .line 286
    if-eqz p4, :cond_16

    .line 287
    .line 288
    invoke-interface {p4}, Lcom/sun/jna/NativeMapped;->nativeType()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Pointer;->getValue(JLjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    new-instance p2, Lcom/sun/jna/FromNativeContext;

    .line 297
    .line 298
    invoke-direct {p2, p3}, Lcom/sun/jna/FromNativeContext;-><init>(Ljava/lang/Class;)V

    .line 299
    .line 300
    .line 301
    invoke-interface {p4, p1, p2}, Lcom/sun/jna/NativeMapped;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p2

    .line 309
    if-eqz p2, :cond_0

    .line 310
    .line 311
    goto/16 :goto_c

    .line 312
    .line 313
    :cond_16
    invoke-static {p3}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 314
    .line 315
    .line 316
    move-result-object p4

    .line 317
    invoke-virtual {p4}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Pointer;->getValue(JLjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    new-instance p2, Lcom/sun/jna/FromNativeContext;

    .line 326
    .line 327
    invoke-direct {p2, p3}, Lcom/sun/jna/FromNativeContext;-><init>(Ljava/lang/Class;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p4, p1, p2}, Lcom/sun/jna/NativeMappedConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    goto/16 :goto_0

    .line 335
    .line 336
    :cond_17
    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_19

    .line 341
    .line 342
    if-eqz p4, :cond_18

    .line 343
    .line 344
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    move-result-object p3

    .line 348
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/sun/jna/Pointer;->readArray(JLjava/lang/Object;Ljava/lang/Class;)V

    .line 349
    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 353
    .line 354
    const-string p2, "Need an initialized array"

    .line 355
    .line 356
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw p1

    .line 360
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 361
    .line 362
    const-string p2, "Reading \""

    .line 363
    .line 364
    const-string p4, "\" from memory is not supported"

    .line 365
    .line 366
    invoke-static {p3, p2, p4}, Lch/qos/logback/core/joran/util/a;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw p1

    .line 374
    :cond_1a
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getDouble(J)D

    .line 375
    .line 376
    .line 377
    move-result-wide p1

    .line 378
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 379
    .line 380
    .line 381
    move-result-object p4

    .line 382
    goto :goto_c

    .line 383
    :cond_1b
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getFloat(J)F

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 388
    .line 389
    .line 390
    move-result-object p4

    .line 391
    goto :goto_c

    .line 392
    :cond_1c
    :goto_5
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getLong(J)J

    .line 393
    .line 394
    .line 395
    move-result-wide p1

    .line 396
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 397
    .line 398
    .line 399
    move-result-object p4

    .line 400
    goto :goto_c

    .line 401
    :cond_1d
    :goto_6
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getInt(J)I

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 406
    .line 407
    .line 408
    move-result-object p4

    .line 409
    goto :goto_c

    .line 410
    :cond_1e
    :goto_7
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getChar(J)C

    .line 411
    .line 412
    .line 413
    move-result p1

    .line 414
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 415
    .line 416
    .line 417
    move-result-object p4

    .line 418
    goto :goto_c

    .line 419
    :cond_1f
    :goto_8
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getShort(J)S

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 424
    .line 425
    .line 426
    move-result-object p4

    .line 427
    goto :goto_c

    .line 428
    :cond_20
    :goto_9
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getByte(J)B

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 433
    .line 434
    .line 435
    move-result-object p4

    .line 436
    goto :goto_c

    .line 437
    :cond_21
    :goto_a
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getInt(J)I

    .line 438
    .line 439
    .line 440
    move-result p1

    .line 441
    if-eqz p1, :cond_22

    .line 442
    .line 443
    goto :goto_b

    .line 444
    :cond_22
    const/4 v1, 0x0

    .line 445
    :goto_b
    invoke-static {v1}, Lcom/sun/jna/Function;->valueOf(Z)Ljava/lang/Boolean;

    .line 446
    .line 447
    .line 448
    move-result-object p4

    .line 449
    :cond_23
    :goto_c
    return-object p4
.end method

.method public getWideString(J)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getWideString(Lcom/sun/jna/Pointer;JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWideStringArray(J)[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/jna/Pointer;->getWideStringArray(JI)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWideStringArray(JI)[Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "--WIDE-STRING--"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/Pointer;->getStringArray(JILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method public indexOf(JB)J
    .locals 6

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->indexOf(Lcom/sun/jna/Pointer;JJB)J

    move-result-wide p1

    return-wide p1
.end method

.method public read(J[BII)V
    .locals 8

    .line 1
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[BII)V

    return-void
.end method

.method public read(J[CII)V
    .locals 8

    .line 2
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[CII)V

    return-void
.end method

.method public read(J[DII)V
    .locals 8

    .line 3
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[DII)V

    return-void
.end method

.method public read(J[FII)V
    .locals 8

    .line 4
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[FII)V

    return-void
.end method

.method public read(J[III)V
    .locals 8

    .line 5
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[III)V

    return-void
.end method

.method public read(J[JII)V
    .locals 8

    .line 6
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[JII)V

    return-void
.end method

.method public read(J[Lcom/sun/jna/Pointer;II)V
    .locals 8

    .line 7
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_2

    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int v1, v1, v0

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    add-int v2, v0, p4

    aget-object v3, p3, v2

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/sun/jna/Pointer;->peer:J

    iget-wide v6, v3, Lcom/sun/jna/Pointer;->peer:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    :cond_0
    aput-object v1, p3, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public read(J[SII)V
    .locals 8

    .line 8
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[SII)V

    return-void
.end method

.method public setByte(JB)V
    .locals 6

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setByte(Lcom/sun/jna/Pointer;JJB)V

    return-void
.end method

.method public setChar(JC)V
    .locals 6

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setChar(Lcom/sun/jna/Pointer;JJC)V

    return-void
.end method

.method public setDouble(JD)V
    .locals 7

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/sun/jna/Native;->setDouble(Lcom/sun/jna/Pointer;JJD)V

    return-void
.end method

.method public setFloat(JF)V
    .locals 6

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setFloat(Lcom/sun/jna/Pointer;JJF)V

    return-void
.end method

.method public setInt(JI)V
    .locals 6

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setInt(Lcom/sun/jna/Pointer;JJI)V

    return-void
.end method

.method public setLong(JJ)V
    .locals 7

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/sun/jna/Native;->setLong(Lcom/sun/jna/Pointer;JJJ)V

    return-void
.end method

.method public setMemory(JJB)V
    .locals 8

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->setMemory(Lcom/sun/jna/Pointer;JJJB)V

    return-void
.end method

.method public setNativeLong(JLcom/sun/jna/NativeLong;)V
    .locals 2

    sget v0, Lcom/sun/jna/NativeLong;->SIZE:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/sun/jna/IntegerType;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Pointer;->setLong(JJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/sun/jna/IntegerType;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setInt(JI)V

    :goto_0
    return-void
.end method

.method public setPointer(JLcom/sun/jna/Pointer;)V
    .locals 7

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    if-eqz p3, :cond_0

    iget-wide v3, p3, Lcom/sun/jna/Pointer;->peer:J

    :goto_0
    move-wide v5, v3

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/jna/Native;->setPointer(Lcom/sun/jna/Pointer;JJJ)V

    return-void
.end method

.method public setShort(JS)V
    .locals 6

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setShort(Lcom/sun/jna/Pointer;JJS)V

    return-void
.end method

.method public setString(JLcom/sun/jna/WString;)V
    .locals 0

    .line 1
    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/sun/jna/WString;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setWideString(JLjava/lang/String;)V

    return-void
.end method

.method public setString(JLjava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/Pointer;->setString(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setString(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 3
    invoke-static {p3, p4}, Lcom/sun/jna/Native;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p3

    array-length v5, p3

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[BII)V

    array-length p3, p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setByte(JB)V

    return-void
.end method

.method public setValue(JLjava/lang/Object;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p4, v0, :cond_22

    .line 5
    .line 6
    const-class v0, Ljava/lang/Boolean;

    .line 7
    .line 8
    if-ne p4, v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_12

    .line 11
    .line 12
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    if-eq p4, v0, :cond_20

    .line 15
    .line 16
    const-class v0, Ljava/lang/Byte;

    .line 17
    .line 18
    if-ne p4, v0, :cond_1

    .line 19
    .line 20
    goto/16 :goto_10

    .line 21
    .line 22
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    if-eq p4, v0, :cond_1e

    .line 25
    .line 26
    const-class v0, Ljava/lang/Short;

    .line 27
    .line 28
    if-ne p4, v0, :cond_2

    .line 29
    .line 30
    goto/16 :goto_e

    .line 31
    .line 32
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    if-eq p4, v0, :cond_1c

    .line 35
    .line 36
    const-class v0, Ljava/lang/Character;

    .line 37
    .line 38
    if-ne p4, v0, :cond_3

    .line 39
    .line 40
    goto/16 :goto_c

    .line 41
    .line 42
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    if-eq p4, v0, :cond_19

    .line 45
    .line 46
    const-class v0, Ljava/lang/Integer;

    .line 47
    .line 48
    if-ne p4, v0, :cond_4

    .line 49
    .line 50
    goto/16 :goto_a

    .line 51
    .line 52
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 53
    .line 54
    if-eq p4, v0, :cond_17

    .line 55
    .line 56
    const-class v0, Ljava/lang/Long;

    .line 57
    .line 58
    if-ne p4, v0, :cond_5

    .line 59
    .line 60
    goto/16 :goto_8

    .line 61
    .line 62
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    if-eq p4, v0, :cond_15

    .line 65
    .line 66
    const-class v0, Ljava/lang/Float;

    .line 67
    .line 68
    if-ne p4, v0, :cond_6

    .line 69
    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 73
    .line 74
    if-eq p4, v0, :cond_13

    .line 75
    .line 76
    const-class v0, Ljava/lang/Double;

    .line 77
    .line 78
    if-ne p4, v0, :cond_7

    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_7
    const-class v0, Lcom/sun/jna/Pointer;

    .line 83
    .line 84
    if-ne p4, v0, :cond_8

    .line 85
    .line 86
    :goto_0
    check-cast p3, Lcom/sun/jna/Pointer;

    .line 87
    .line 88
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_13

    .line 92
    .line 93
    :cond_8
    const-class v0, Ljava/lang/String;

    .line 94
    .line 95
    if-ne p4, v0, :cond_9

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_9
    const-class v0, Lcom/sun/jna/WString;

    .line 99
    .line 100
    if-ne p4, v0, :cond_a

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_a
    const-class v0, Lcom/sun/jna/Structure;

    .line 104
    .line 105
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const/4 v1, 0x0

    .line 110
    if-eqz v0, :cond_d

    .line 111
    .line 112
    check-cast p3, Lcom/sun/jna/Structure;

    .line 113
    .line 114
    const-class v0, Lcom/sun/jna/Structure$ByReference;

    .line 115
    .line 116
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 117
    .line 118
    .line 119
    move-result p4

    .line 120
    if-eqz p4, :cond_c

    .line 121
    .line 122
    if-nez p3, :cond_b

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_b
    invoke-virtual {p3}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :goto_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    .line 130
    .line 131
    .line 132
    if-eqz p3, :cond_23

    .line 133
    .line 134
    invoke-virtual {p3}, Lcom/sun/jna/Structure;->autoWrite()V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_13

    .line 138
    .line 139
    :cond_c
    long-to-int p2, p1

    .line 140
    const/4 p1, 0x1

    .line 141
    invoke-virtual {p3, p0, p2, p1}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3}, Lcom/sun/jna/Structure;->write()V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_13

    .line 148
    .line 149
    :cond_d
    const-class v0, Lcom/sun/jna/Callback;

    .line 150
    .line 151
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_e

    .line 156
    .line 157
    check-cast p3, Lcom/sun/jna/Callback;

    .line 158
    .line 159
    invoke-static {p3}, Lcom/sun/jna/CallbackReference;->getFunctionPointer(Lcom/sun/jna/Callback;)Lcom/sun/jna/Pointer;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    goto :goto_1

    .line 164
    :cond_e
    sget-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    .line 165
    .line 166
    if-eqz v0, :cond_10

    .line 167
    .line 168
    const-class v0, Ljava/nio/Buffer;

    .line 169
    .line 170
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_10

    .line 175
    .line 176
    if-nez p3, :cond_f

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_f
    check-cast p3, Ljava/nio/Buffer;

    .line 180
    .line 181
    invoke-static {p3}, Lcom/sun/jna/Native;->getDirectBufferPointer(Ljava/nio/Buffer;)Lcom/sun/jna/Pointer;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    :goto_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_13

    .line 189
    .line 190
    :cond_10
    const-class v0, Lcom/sun/jna/NativeMapped;

    .line 191
    .line 192
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_11

    .line 197
    .line 198
    invoke-static {p4}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 199
    .line 200
    .line 201
    move-result-object p4

    .line 202
    invoke-virtual {p4}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    new-instance v1, Lcom/sun/jna/ToNativeContext;

    .line 207
    .line 208
    invoke-direct {v1}, Lcom/sun/jna/ToNativeContext;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p4, p3, v1}, Lcom/sun/jna/NativeMappedConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/Pointer;->setValue(JLjava/lang/Object;Ljava/lang/Class;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_13

    .line 219
    .line 220
    :cond_11
    invoke-virtual {p4}, Ljava/lang/Class;->isArray()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_12

    .line 225
    .line 226
    invoke-virtual {p4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    move-result-object p4

    .line 230
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/jna/Pointer;->writeArray(JLjava/lang/Object;Ljava/lang/Class;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_13

    .line 234
    .line 235
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 236
    .line 237
    const-string p2, "Writing "

    .line 238
    .line 239
    const-string p3, " to memory is not supported"

    .line 240
    .line 241
    invoke-static {p4, p2, p3}, Lch/qos/logback/core/joran/util/a;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw p1

    .line 249
    :cond_13
    :goto_4
    if-nez p3, :cond_14

    .line 250
    .line 251
    const-wide/16 p3, 0x0

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_14
    check-cast p3, Ljava/lang/Double;

    .line 255
    .line 256
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    .line 257
    .line 258
    .line 259
    move-result-wide p3

    .line 260
    :goto_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/jna/Pointer;->setDouble(JD)V

    .line 261
    .line 262
    .line 263
    goto :goto_13

    .line 264
    :cond_15
    :goto_6
    if-nez p3, :cond_16

    .line 265
    .line 266
    const/4 p3, 0x0

    .line 267
    goto :goto_7

    .line 268
    :cond_16
    check-cast p3, Ljava/lang/Float;

    .line 269
    .line 270
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 271
    .line 272
    .line 273
    move-result p3

    .line 274
    :goto_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setFloat(JF)V

    .line 275
    .line 276
    .line 277
    goto :goto_13

    .line 278
    :cond_17
    :goto_8
    if-nez p3, :cond_18

    .line 279
    .line 280
    const-wide/16 p3, 0x0

    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_18
    check-cast p3, Ljava/lang/Long;

    .line 284
    .line 285
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 286
    .line 287
    .line 288
    move-result-wide p3

    .line 289
    :goto_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/jna/Pointer;->setLong(JJ)V

    .line 290
    .line 291
    .line 292
    goto :goto_13

    .line 293
    :cond_19
    :goto_a
    if-nez p3, :cond_1a

    .line 294
    .line 295
    goto :goto_b

    .line 296
    :cond_1a
    check-cast p3, Ljava/lang/Integer;

    .line 297
    .line 298
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    :cond_1b
    :goto_b
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setInt(JI)V

    .line 303
    .line 304
    .line 305
    goto :goto_13

    .line 306
    :cond_1c
    :goto_c
    if-nez p3, :cond_1d

    .line 307
    .line 308
    goto :goto_d

    .line 309
    :cond_1d
    check-cast p3, Ljava/lang/Character;

    .line 310
    .line 311
    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    :goto_d
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setChar(JC)V

    .line 316
    .line 317
    .line 318
    goto :goto_13

    .line 319
    :cond_1e
    :goto_e
    if-nez p3, :cond_1f

    .line 320
    .line 321
    goto :goto_f

    .line 322
    :cond_1f
    check-cast p3, Ljava/lang/Short;

    .line 323
    .line 324
    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    :goto_f
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setShort(JS)V

    .line 329
    .line 330
    .line 331
    goto :goto_13

    .line 332
    :cond_20
    :goto_10
    if-nez p3, :cond_21

    .line 333
    .line 334
    goto :goto_11

    .line 335
    :cond_21
    check-cast p3, Ljava/lang/Byte;

    .line 336
    .line 337
    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    :goto_11
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setByte(JB)V

    .line 342
    .line 343
    .line 344
    goto :goto_13

    .line 345
    :cond_22
    :goto_12
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 346
    .line 347
    invoke-virtual {p4, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result p3

    .line 351
    if-eqz p3, :cond_1b

    .line 352
    .line 353
    const/4 v1, -0x1

    .line 354
    goto :goto_b

    .line 355
    :cond_23
    :goto_13
    return-void
.end method

.method public setWideString(JLjava/lang/String;)V
    .locals 6

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setWideString(Lcom/sun/jna/Pointer;JJLjava/lang/String;)V

    return-void
.end method

.method public share(J)Lcom/sun/jna/Pointer;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Pointer;->share(JJ)Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1
.end method

.method public share(JJ)Lcom/sun/jna/Pointer;
    .locals 2

    .line 2
    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p3, Lcom/sun/jna/Pointer;

    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    add-long/2addr v0, p1

    invoke-direct {p3, v0, v1}, Lcom/sun/jna/Pointer;-><init>(J)V

    return-object p3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "native@0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(J[BII)V
    .locals 8

    .line 1
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[BII)V

    return-void
.end method

.method public write(J[CII)V
    .locals 8

    .line 2
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[CII)V

    return-void
.end method

.method public write(J[DII)V
    .locals 8

    .line 3
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[DII)V

    return-void
.end method

.method public write(J[FII)V
    .locals 8

    .line 4
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[FII)V

    return-void
.end method

.method public write(J[III)V
    .locals 8

    .line 5
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[III)V

    return-void
.end method

.method public write(J[JII)V
    .locals 8

    .line 6
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[JII)V

    return-void
.end method

.method public write(J[Lcom/sun/jna/Pointer;II)V
    .locals 4

    .line 7
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int v1, v1, v0

    int-to-long v1, v1

    add-long/2addr v1, p1

    add-int v3, p4, v0

    aget-object v3, p3, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(J[SII)V
    .locals 8

    .line 8
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[SII)V

    return-void
.end method
