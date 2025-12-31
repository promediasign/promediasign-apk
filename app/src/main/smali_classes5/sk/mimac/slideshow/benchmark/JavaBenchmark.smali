.class public Lsk/mimac/slideshow/benchmark/JavaBenchmark;
.super Lsk/mimac/slideshow/benchmark/AbstractBenchmark;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/benchmark/AbstractBenchmark;-><init>()V

    return-void
.end method


# virtual methods
.method public doCalculations()V
    .locals 14

    .line 1
    const/16 v0, 0x708

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v3, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    :goto_0
    const/16 v6, 0x4268

    .line 17
    .line 18
    if-ge v5, v6, :cond_4

    .line 19
    .line 20
    rem-int/lit8 v6, v5, 0x3

    .line 21
    .line 22
    const-string v7, " / "

    .line 23
    .line 24
    const-string v8, "Data "

    .line 25
    .line 26
    if-nez v6, :cond_2

    .line 27
    .line 28
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    rem-int/lit8 v9, v5, 0x5

    .line 37
    .line 38
    if-ne v9, v1, :cond_0

    .line 39
    .line 40
    const-string v9, "x"

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception v6

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    const-string v9, ""

    .line 46
    .line 47
    :goto_1
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_3

    .line 59
    :goto_2
    rem-int/lit8 v9, v5, 0x1d

    .line 60
    .line 61
    if-nez v9, :cond_1

    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    array-length v6, v6

    .line 68
    goto :goto_3

    .line 69
    :cond_1
    const/4 v6, -0x1

    .line 70
    :goto_3
    invoke-static {v5, v8, v7}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    int-to-double v10, v5

    .line 75
    const-wide v12, 0x401e561e4f765fd9L    # 7.5841

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    mul-double v10, v10, v12

    .line 81
    .line 82
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    .line 83
    .line 84
    .line 85
    move-result-wide v10

    .line 86
    const-wide v12, 0x400921fb54442d18L    # Math.PI

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    mul-double v10, v10, v12

    .line 92
    .line 93
    const-wide v12, 0x40224a8c154c985fL    # 9.1456

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    div-double/2addr v10, v12

    .line 99
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    .line 100
    .line 101
    .line 102
    move-result-wide v10

    .line 103
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    :goto_4
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_2
    rem-int/lit8 v6, v5, 0x4

    .line 121
    .line 122
    if-nez v6, :cond_3

    .line 123
    .line 124
    invoke-static {v5, v8, v7}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    int-to-double v9, v5

    .line 129
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 130
    .line 131
    .line 132
    move-result-wide v9

    .line 133
    const-wide v11, 0x400b333333333333L    # 3.4

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    sub-double/2addr v9, v11

    .line 139
    invoke-static {v9, v10}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    :goto_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    goto :goto_4

    .line 151
    :cond_3
    invoke-static {v5, v8, v7}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 156
    .line 157
    int-to-double v9, v5

    .line 158
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 159
    .line 160
    .line 161
    move-result-wide v9

    .line 162
    const-wide v11, 0x3ff19999a0000000L    # 1.100000023841858

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    mul-double v9, v9, v11

    .line 168
    .line 169
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    new-array v10, v1, [Ljava/lang/Object;

    .line 174
    .line 175
    aput-object v9, v10, v4

    .line 176
    .line 177
    const-string v9, "%.2f"

    .line 178
    .line 179
    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    rem-int/lit16 v7, v5, 0x708

    .line 193
    .line 194
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    new-instance v7, Ljava/lang/Object;

    .line 202
    .line 203
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    add-int/2addr v5, v1

    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    array-length v1, v1

    .line 225
    if-ne v1, v6, :cond_6

    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    array-length v1, v1

    .line 236
    if-ne v1, v0, :cond_5

    .line 237
    .line 238
    return-void

    .line 239
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 240
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v3, "Map size doesn\'t match (expected=1800, actual="

    .line 244
    .line 245
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v0

    .line 263
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 264
    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v3, "List size doesn\'t match (expected=17000, actual="

    .line 268
    .line 269
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Mathematical calculations"

    return-object v0
.end method
