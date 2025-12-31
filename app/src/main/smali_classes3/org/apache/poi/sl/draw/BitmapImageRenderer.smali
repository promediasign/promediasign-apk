.class public Lorg/apache/poi/sl/draw/BitmapImageRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/ImageRenderer;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field protected img:Ljava/awt/image/BufferedImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findTruncatedBlackBox(Ljava/awt/image/BufferedImage;II)I
    .locals 3

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-lez p2, :cond_2

    add-int/lit8 v0, p1, -0x1

    :goto_1
    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v1

    const/high16 v2, -0x1000000

    if-eq v1, v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_0
    div-int/lit8 v1, p1, 0xa

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static readImage(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/image/BufferedImage;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance v4, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    .line 19
    .line 20
    invoke-direct {v4, v1}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance v5, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    .line 24
    .line 25
    invoke-direct {v5, v1}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 26
    .line 27
    .line 28
    :try_start_1
    invoke-interface {v5}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    .line 29
    .line 30
    .line 31
    invoke-static {v5}, Ljavax/imageio/ImageIO;->getImageReaders(Ljava/lang/Object;)Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v0, v6

    .line 37
    move-object v7, v0

    .line 38
    :goto_0
    const/4 v8, 0x2

    .line 39
    if-nez v0, :cond_b

    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    if-eqz v9, :cond_b

    .line 46
    .line 47
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    check-cast v9, Ljavax/imageio/ImageReader;

    .line 52
    .line 53
    invoke-virtual {v9}, Ljavax/imageio/ImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    .line 54
    .line 55
    .line 56
    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 57
    const/4 v11, 0x0

    .line 58
    move-object/from16 v16, v5

    .line 59
    .line 60
    move-object v5, v0

    .line 61
    move-object v0, v7

    .line 62
    move-object/from16 v7, v16

    .line 63
    .line 64
    :goto_1
    if-nez v5, :cond_a

    .line 65
    .line 66
    const/4 v12, 0x3

    .line 67
    if-ge v11, v12, :cond_a

    .line 68
    .line 69
    :try_start_2
    invoke-interface {v7}, Ljavax/imageio/stream/ImageInputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    move-object v4, v7

    .line 75
    goto/16 :goto_9

    .line 76
    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    .line 79
    .line 80
    .line 81
    move-result v12

    .line 82
    if-eqz v12, :cond_a

    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v7}, Ljavax/imageio/stream/ImageInputStream;->close()V

    .line 95
    .line 96
    .line 97
    new-instance v0, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    .line 101
    .line 102
    move-object v7, v0

    .line 103
    :goto_2
    invoke-interface {v7}, Ljavax/imageio/stream/ImageInputStream;->mark()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    .line 105
    .line 106
    if-eqz v11, :cond_7

    .line 107
    .line 108
    if-eq v11, v3, :cond_4

    .line 109
    .line 110
    if-eq v11, v8, :cond_1

    .line 111
    .line 112
    goto/16 :goto_6

    .line 113
    .line 114
    :cond_1
    :try_start_4
    invoke-virtual {v9, v7, v2, v3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9, v2}, Ljavax/imageio/ImageReader;->getHeight(I)I

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    invoke-virtual {v9, v2}, Ljavax/imageio/ImageReader;->getWidth(I)I

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    invoke-virtual {v9, v2}, Ljavax/imageio/ImageReader;->getImageTypes(I)Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    if-eqz v14, :cond_3

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljavax/imageio/ImageTypeSpecifier;

    .line 140
    .line 141
    invoke-virtual {v0, v13, v12}, Ljavax/imageio/ImageTypeSpecifier;->createBufferedImage(II)Ljava/awt/image/BufferedImage;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v10, v5}, Ljavax/imageio/ImageReadParam;->setDestination(Ljava/awt/image/BufferedImage;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    .line 147
    .line 148
    :try_start_5
    invoke-virtual {v9, v2, v10}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 149
    .line 150
    .line 151
    :try_start_6
    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getType()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eq v0, v8, :cond_9

    .line 156
    .line 157
    invoke-static {v5, v13, v12}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->findTruncatedBlackBox(Ljava/awt/image/BufferedImage;II)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-ge v0, v12, :cond_9

    .line 162
    .line 163
    new-instance v14, Ljava/awt/image/BufferedImage;

    .line 164
    .line 165
    invoke-direct {v14, v13, v12, v8}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v14}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    .line 169
    .line 170
    .line 171
    move-result-object v12

    .line 172
    invoke-virtual {v12, v2, v2, v13, v0}, Ljava/awt/Graphics2D;->clipRect(IIII)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v12, v5, v2, v2, v6}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 176
    .line 177
    .line 178
    invoke-virtual {v12}, Ljava/awt/Graphics2D;->dispose()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->flush()V

    .line 182
    .line 183
    .line 184
    move-object v5, v14

    .line 185
    goto/16 :goto_6

    .line 186
    .line 187
    :catch_1
    move-exception v0

    .line 188
    goto :goto_4

    .line 189
    :catch_2
    move-exception v0

    .line 190
    goto/16 :goto_7

    .line 191
    .line 192
    :catchall_1
    move-exception v0

    .line 193
    move-object v14, v0

    .line 194
    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getType()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eq v0, v8, :cond_2

    .line 199
    .line 200
    invoke-static {v5, v13, v12}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->findTruncatedBlackBox(Ljava/awt/image/BufferedImage;II)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-ge v0, v12, :cond_2

    .line 205
    .line 206
    new-instance v15, Ljava/awt/image/BufferedImage;

    .line 207
    .line 208
    invoke-direct {v15, v13, v12, v8}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v15}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    invoke-virtual {v12, v2, v2, v13, v0}, Ljava/awt/Graphics2D;->clipRect(IIII)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v12, v5, v2, v2, v6}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 219
    .line 220
    .line 221
    invoke-virtual {v12}, Ljava/awt/Graphics2D;->dispose()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->flush()V

    .line 225
    .line 226
    .line 227
    move-object v5, v15

    .line 228
    :cond_2
    throw v14

    .line 229
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 230
    .line 231
    const-string v12, "unable to load even a truncated version of the image."

    .line 232
    .line 233
    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_4
    invoke-virtual {v9, v2}, Ljavax/imageio/ImageReader;->getImageTypes(I)Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v12

    .line 245
    if-eqz v12, :cond_6

    .line 246
    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v12

    .line 251
    check-cast v12, Ljavax/imageio/ImageTypeSpecifier;

    .line 252
    .line 253
    invoke-virtual {v12}, Ljavax/imageio/ImageTypeSpecifier;->getBufferedImageType()I

    .line 254
    .line 255
    .line 256
    move-result v13

    .line 257
    const/16 v14, 0xa

    .line 258
    .line 259
    if-ne v13, v14, :cond_5

    .line 260
    .line 261
    invoke-virtual {v10, v12}, Ljavax/imageio/ImageReadParam;->setDestinationType(Ljavax/imageio/ImageTypeSpecifier;)V

    .line 262
    .line 263
    .line 264
    :cond_6
    invoke-virtual {v9, v7, v2, v3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    .line 265
    .line 266
    .line 267
    :goto_3
    invoke-virtual {v9, v2, v10}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    goto :goto_6

    .line 272
    :cond_7
    invoke-virtual {v9, v7, v2, v3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :goto_4
    if-ge v11, v8, :cond_9

    .line 277
    .line 278
    :try_start_7
    new-instance v12, Ljava/io/IOException;

    .line 279
    .line 280
    new-instance v13, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    const-string v14, "ImageIO runtime exception - "

    .line 286
    .line 287
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    if-nez v11, :cond_8

    .line 291
    .line 292
    const-string v14, "normal"

    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_8
    const-string v14, "fallback"

    .line 296
    .line 297
    :goto_5
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v13

    .line 304
    invoke-direct {v12, v13, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    move-object v0, v12

    .line 308
    goto :goto_8

    .line 309
    :cond_9
    :goto_6
    move-object v0, v6

    .line 310
    goto :goto_8

    .line 311
    :goto_7
    if-ge v11, v8, :cond_9

    .line 312
    .line 313
    :goto_8
    add-int/2addr v11, v3

    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :cond_a
    invoke-virtual {v9}, Ljavax/imageio/ImageReader;->dispose()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 317
    .line 318
    .line 319
    move-object/from16 v16, v7

    .line 320
    .line 321
    move-object v7, v0

    .line 322
    move-object v0, v5

    .line 323
    move-object/from16 v5, v16

    .line 324
    .line 325
    goto/16 :goto_0

    .line 326
    .line 327
    :catchall_2
    move-exception v0

    .line 328
    move-object v4, v5

    .line 329
    goto :goto_9

    .line 330
    :cond_b
    invoke-interface {v5}, Ljavax/imageio/stream/ImageInputStream;->close()V

    .line 331
    .line 332
    .line 333
    if-nez v0, :cond_d

    .line 334
    .line 335
    if-nez v7, :cond_c

    .line 336
    .line 337
    sget-object v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->LOG:Lorg/apache/poi/util/POILogger;

    .line 338
    .line 339
    const-string v1, "Content-type: "

    .line 340
    .line 341
    const-string v4, " is not support. Image ignored."

    .line 342
    .line 343
    move-object/from16 v5, p1

    .line 344
    .line 345
    invoke-static {v1, v5, v4}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    new-array v3, v3, [Ljava/lang/Object;

    .line 350
    .line 351
    aput-object v1, v3, v2

    .line 352
    .line 353
    const/4 v1, 0x5

    .line 354
    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    return-object v6

    .line 358
    :cond_c
    throw v7

    .line 359
    :cond_d
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-eq v1, v8, :cond_e

    .line 364
    .line 365
    new-instance v1, Ljava/awt/image/BufferedImage;

    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    invoke-direct {v1, v3, v4, v8}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {v3, v0, v2, v2, v6}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3}, Ljava/awt/Graphics;->dispose()V

    .line 386
    .line 387
    .line 388
    return-object v1

    .line 389
    :cond_e
    return-object v0

    .line 390
    :catchall_3
    move-exception v0

    .line 391
    :goto_9
    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->close()V

    .line 392
    .line 393
    .line 394
    throw v0
.end method


# virtual methods
.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z

    move-result p1

    return p1
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    .locals 28

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-nez p3, :cond_1

    new-instance v4, Ljava/awt/Insets;

    invoke-direct {v4, v3, v3, v3, v3}, Ljava/awt/Insets;-><init>(IIII)V

    goto :goto_0

    :cond_1
    move-object/from16 v4, p3

    const/4 v3, 0x1

    :goto_0
    iget-object v5, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    iget-object v6, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v6}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    iget v7, v4, Ljava/awt/Insets;->left:I

    const v8, 0x186a0

    sub-int v7, v8, v7

    iget v9, v4, Ljava/awt/Insets;->right:I

    sub-int/2addr v7, v9

    int-to-double v9, v7

    const-wide v11, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v9, v11

    iget v7, v4, Ljava/awt/Insets;->top:I

    sub-int/2addr v8, v7

    iget v7, v4, Ljava/awt/Insets;->bottom:I

    sub-int/2addr v8, v7

    int-to-double v7, v8

    div-double/2addr v7, v11

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v13

    move/from16 p3, v3

    int-to-double v2, v5

    mul-double v9, v9, v2

    div-double v16, v13, v9

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v9

    int-to-double v5, v6

    mul-double v7, v7, v5

    div-double v22, v9, v7

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v7

    mul-double v2, v2, v16

    iget v9, v4, Ljava/awt/Insets;->left:I

    int-to-double v9, v9

    mul-double v2, v2, v9

    div-double/2addr v2, v11

    sub-double v24, v7, v2

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    mul-double v5, v5, v22

    iget v4, v4, Ljava/awt/Insets;->top:I

    int-to-double v7, v4

    mul-double v5, v5, v7

    div-double/2addr v5, v11

    sub-double v26, v2, v5

    new-instance v2, Ljava/awt/geom/AffineTransform;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object v15, v2

    invoke-direct/range {v15 .. v27}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v3

    if-eqz p3, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/awt/Graphics2D;->clip(Ljava/awt/Shape;)V

    :cond_2
    iget-object v4, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1, v4, v2}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {v1, v3}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    const/4 v1, 0x1

    return v1
.end method

.method public getDimension()Ljava/awt/Dimension;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_0

    new-instance v0, Ljava/awt/Dimension;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/awt/Dimension;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/Dimension;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    :goto_0
    return-object v0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public getImage(Ljava/awt/Dimension;)Ljava/awt/image/BufferedImage;
    .locals 10

    .line 2
    iget-object v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    int-to-double v2, v2

    new-instance v4, Ljava/awt/image/BufferedImage;

    double-to-int v5, v0

    double-to-int v6, v2

    const/4 v7, 0x2

    invoke-direct {v4, v5, v6, v7}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {p1}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v8

    new-instance p1, Ljava/awt/geom/AffineTransform;

    invoke-direct {p1}, Ljava/awt/geom/AffineTransform;-><init>()V

    div-double/2addr v5, v0

    div-double/2addr v8, v2

    invoke-virtual {p1, v5, v6, v8, v9}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    new-instance v0, Ljava/awt/image/AffineTransformOp;

    invoke-direct {v0, p1, v7}, Ljava/awt/image/AffineTransformOp;-><init>(Ljava/awt/geom/AffineTransform;I)V

    iget-object p1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0, p1, v4}, Ljava/awt/image/AffineTransformOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    return-object v4
.end method

.method public loadImage(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->readImage(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public loadImage([BLjava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p2}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->readImage(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public setAlpha(D)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->getDimension()Ljava/awt/Dimension;

    move-result-object v4

    new-instance v5, Ljava/awt/image/BufferedImage;

    invoke-virtual {v4}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v4}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v7

    double-to-int v4, v7

    invoke-direct {v5, v6, v4, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v4

    new-instance v6, Ljava/awt/image/RescaleOp;

    double-to-float p1, p1

    new-array p2, v1, [F

    aput v3, p2, v0

    const/4 v7, 0x1

    aput v3, p2, v7

    aput v3, p2, v2

    const/4 v2, 0x3

    aput p1, p2, v2

    new-array p1, v1, [F

    fill-array-data p1, :array_0

    const/4 v1, 0x0

    invoke-direct {v6, p2, p1, v1}, Ljava/awt/image/RescaleOp;-><init>([F[FLjava/awt/RenderingHints;)V

    iget-object p1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v4, p1, v6, v0, v0}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V

    invoke-virtual {v4}, Ljava/awt/Graphics2D;->dispose()V

    iput-object v5, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
