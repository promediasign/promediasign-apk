.class public Lorg/apache/xmlbeans/impl/tool/Diff;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/tool/Diff$FileNameComparator;,
        Lorg/apache/xmlbeans/impl/tool/Diff$ZipEntryNameComparator;,
        Lorg/apache/xmlbeans/impl/tool/Diff$XsbFilenameFilter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static synthetic class$org$apache$xmlbeans$impl$tool$Diff:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/tool/Diff;->class$org$apache$xmlbeans$impl$tool$Diff:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.tool.Diff"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/Diff;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/tool/Diff;->class$org$apache$xmlbeans$impl$tool$Diff:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/tool/Diff;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method

.method public static dirsAsTypeSystems(Ljava/io/File;Ljava/io/File;Ljava/util/List;)V
    .locals 11

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/tool/Diff;->$assertionsDisabled:Z

    .line 2
    .line 3
    const-string v1, "Parameters must be directories"

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 15
    .line 16
    invoke-direct {p0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 30
    .line 31
    invoke-direct {p0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_3
    :goto_1
    new-instance v0, Ljava/io/File;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuffer;

    .line 38
    .line 39
    const-string v2, "schema"

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    .line 45
    .line 46
    const-string v4, "/system"

    .line 47
    .line 48
    invoke-static {v1, v3, v4}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Ljava/io/File;

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuffer;

    .line 58
    .line 59
    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v3, v2, v4}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x0

    .line 77
    const-string v5, "\""

    .line 78
    .line 79
    if-eqz v2, :cond_8

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_8

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    array-length v7, v2

    .line 96
    const/4 v8, 0x1

    .line 97
    if-ne v7, v8, :cond_4

    .line 98
    .line 99
    array-length v7, v6

    .line 100
    if-ne v7, v8, :cond_4

    .line 101
    .line 102
    aget-object v0, v2, v3

    .line 103
    .line 104
    aget-object v1, v6, v3

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    array-length v7, v2

    .line 108
    if-nez v7, :cond_5

    .line 109
    .line 110
    move-object v0, v4

    .line 111
    :cond_5
    array-length v7, v6

    .line 112
    if-nez v7, :cond_6

    .line 113
    .line 114
    move-object v1, v4

    .line 115
    :cond_6
    array-length v2, v2

    .line 116
    const-string v7, "More than one typesystem found in dir \""

    .line 117
    .line 118
    if-le v2, v8, :cond_7

    .line 119
    .line 120
    new-instance p1, Ljava/lang/StringBuffer;

    .line 121
    .line 122
    invoke-direct {p1, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    :goto_2
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_7
    array-length v2, v6

    .line 144
    if-le v2, v8, :cond_a

    .line 145
    .line 146
    new-instance p0, Ljava/lang/StringBuffer;

    .line 147
    .line 148
    invoke-direct {p0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    goto :goto_2

    .line 166
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-nez v2, :cond_9

    .line 171
    .line 172
    move-object v0, v4

    .line 173
    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-nez v2, :cond_a

    .line 178
    .line 179
    move-object v1, v4

    .line 180
    :cond_a
    :goto_3
    if-nez v0, :cond_b

    .line 181
    .line 182
    if-nez v1, :cond_b

    .line 183
    .line 184
    return-void

    .line 185
    :cond_b
    if-eqz v0, :cond_15

    .line 186
    .line 187
    if-nez v1, :cond_c

    .line 188
    .line 189
    goto/16 :goto_8

    .line 190
    .line 191
    :cond_c
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/Diff;->isDiffIndex()Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    new-instance p1, Lorg/apache/xmlbeans/impl/tool/Diff$XsbFilenameFilter;

    .line 196
    .line 197
    invoke-direct {p1, v4}, Lorg/apache/xmlbeans/impl/tool/Diff$XsbFilenameFilter;-><init>(Lorg/apache/xmlbeans/impl/tool/Diff$1;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v1, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    new-instance v6, Lorg/apache/xmlbeans/impl/tool/Diff$FileNameComparator;

    .line 209
    .line 210
    invoke-direct {v6, v4}, Lorg/apache/xmlbeans/impl/tool/Diff$FileNameComparator;-><init>(Lorg/apache/xmlbeans/impl/tool/Diff$1;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v2, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 214
    .line 215
    .line 216
    invoke-static {p1, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 217
    .line 218
    .line 219
    const/4 v4, 0x0

    .line 220
    :cond_d
    :goto_4
    array-length v6, v2

    .line 221
    const-string v7, "\" contains an extra file: \""

    .line 222
    .line 223
    const-string v8, "Dir \""

    .line 224
    .line 225
    if-ge v3, v6, :cond_12

    .line 226
    .line 227
    array-length v6, p1

    .line 228
    if-ge v4, v6, :cond_12

    .line 229
    .line 230
    aget-object v6, v2, v3

    .line 231
    .line 232
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    aget-object v9, p1, v4

    .line 237
    .line 238
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    invoke-virtual {v6, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    if-nez v10, :cond_10

    .line 247
    .line 248
    if-nez p0, :cond_e

    .line 249
    .line 250
    aget-object v6, v2, v3

    .line 251
    .line 252
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    const-string v7, "index.xsb"

    .line 257
    .line 258
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    if-nez v6, :cond_f

    .line 263
    .line 264
    :cond_e
    aget-object v6, v2, v3

    .line 265
    .line 266
    aget-object v7, p1, v4

    .line 267
    .line 268
    invoke-static {v6, v7, p2}, Lorg/apache/xmlbeans/impl/tool/Diff;->filesAsXsb(Ljava/io/File;Ljava/io/File;Ljava/util/List;)V

    .line 269
    .line 270
    .line 271
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 272
    .line 273
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_10
    if-gez v10, :cond_11

    .line 277
    .line 278
    new-instance v9, Ljava/lang/StringBuffer;

    .line 279
    .line 280
    invoke-direct {v9, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    add-int/lit8 v3, v3, 0x1

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_11
    if-lez v10, :cond_d

    .line 310
    .line 311
    new-instance v6, Ljava/lang/StringBuffer;

    .line 312
    .line 313
    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v8

    .line 320
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_12
    :goto_6
    array-length p0, v2

    .line 341
    if-ge v3, p0, :cond_13

    .line 342
    .line 343
    new-instance p0, Ljava/lang/StringBuffer;

    .line 344
    .line 345
    invoke-direct {p0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    .line 357
    .line 358
    aget-object v6, v2, v3

    .line 359
    .line 360
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v6

    .line 364
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    add-int/lit8 v3, v3, 0x1

    .line 378
    .line 379
    goto :goto_6

    .line 380
    :cond_13
    :goto_7
    array-length p0, p1

    .line 381
    if-ge v4, p0, :cond_14

    .line 382
    .line 383
    new-instance p0, Ljava/lang/StringBuffer;

    .line 384
    .line 385
    invoke-direct {p0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    .line 397
    .line 398
    aget-object v0, p1, v4

    .line 399
    .line 400
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    .line 406
    .line 407
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    .line 409
    .line 410
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p0

    .line 414
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    add-int/lit8 v4, v4, 0x1

    .line 418
    .line 419
    goto :goto_7

    .line 420
    :cond_14
    return-void

    .line 421
    :cond_15
    :goto_8
    const-string v2, "No typesystems found in dir \""

    .line 422
    .line 423
    if-nez v0, :cond_16

    .line 424
    .line 425
    new-instance v0, Ljava/lang/StringBuffer;

    .line 426
    .line 427
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p0

    .line 440
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    :cond_16
    if-nez v1, :cond_17

    .line 444
    .line 445
    new-instance p0, Ljava/lang/StringBuffer;

    .line 446
    .line 447
    invoke-direct {p0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    .line 455
    .line 456
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object p0

    .line 460
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    :cond_17
    return-void
.end method

.method public static filesAsXsb(Ljava/io/File;Ljava/io/File;Ljava/util/List;)V
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/tool/Diff;->$assertionsDisabled:Z

    const-string v1, "\" does not exist."

    const-string v2, "File \""

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_3
    :goto_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, v1, p1, p2}, Lorg/apache/xmlbeans/impl/tool/Diff;->streamsAsXsb(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static isDiffIndex()Z
    .locals 3

    const-string v0, "xmlbeans.diff.diffIndex"

    invoke-static {v0}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static jarsAsTypeSystems(Ljava/util/jar/JarFile;Ljava/util/jar/JarFile;Ljava/util/List;)V
    .locals 10

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    const-string v5, ".xsb"

    const-string v6, "/system/s"

    const-string v7, "schema"

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v8, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v9, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/zip/ZipEntry;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/zip/ZipEntry;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/zip/ZipEntry;

    new-instance v2, Lorg/apache/xmlbeans/impl/tool/Diff$ZipEntryNameComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xmlbeans/impl/tool/Diff$ZipEntryNameComparator;-><init>(Lorg/apache/xmlbeans/impl/tool/Diff$1;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_3
    :goto_2
    array-length v4, v0

    const-string v5, "\""

    const-string v6, "\" contains an extra file: \""

    const-string v7, "Jar \""

    if-ge v2, v4, :cond_6

    array-length v4, v1

    if-ge v3, v4, :cond_6

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v8, v1, v3

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_4

    aget-object v4, v0, v2

    aget-object v5, v1, v3

    invoke-static {v4, p0, v5, p1, p2}, Lorg/apache/xmlbeans/impl/tool/Diff;->zipEntriesAsXsb(Ljava/util/zip/ZipEntry;Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;Ljava/util/jar/JarFile;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    if-gez v9, :cond_5

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    if-lez v9, :cond_3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    :goto_4
    array-length v4, v0

    if-ge v2, v4, :cond_7

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v8, v0, v2

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    array-length p0, v1

    if-ge v3, p0, :cond_8

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Usage: diff <jarname1> <jarname2> to compare two jars"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "  or   diff <dirname1> <dirname2> to compare two dirs"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "\" not found."

    const-string v4, "File \""

    if-nez v2, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v2, Ljava/io/File;

    const/4 v5, 0x1

    aget-object v6, p0, v5

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object p0, p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Both parameters have to be directories if the first parameter is a directory."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v0, v2, p0}, Lorg/apache/xmlbeans/impl/tool/Diff;->dirsAsTypeSystems(Ljava/io/File;Ljava/io/File;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Both parameters have to be jar files if the first parameter is a jar file."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    :try_start_0
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    invoke-static {v3, v0, p0}, Lorg/apache/xmlbeans/impl/tool/Diff;->jarsAsTypeSystems(Ljava/util/jar/JarFile;Ljava/util/jar/JarFile;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_6

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "No differences encountered."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Differences:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method public static readersAsText(Ljava/io/Reader;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/util/Diff;->readersAsText(Ljava/io/Reader;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static streamsAsXsb(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    const-string v3, ""

    invoke-static {p0, v3, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dump(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/PrintStream;)V

    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p2, v3, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dump(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/PrintStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    new-instance p0, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/StringReader;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/tool/Diff;->readersAsText(Ljava/io/Reader;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static zipEntriesAsXsb(Ljava/util/zip/ZipEntry;Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;Ljava/util/jar/JarFile;Ljava/util/List;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p3, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p3

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p3, p2, p4}, Lorg/apache/xmlbeans/impl/tool/Diff;->streamsAsXsb(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
