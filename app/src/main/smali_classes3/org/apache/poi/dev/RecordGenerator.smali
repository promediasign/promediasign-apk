.class public Lorg/apache/poi/dev/RecordGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateRecords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " is not a directory."

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    array-length v0, v2

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    :goto_0
    if-ge v4, v0, :cond_6

    .line 43
    .line 44
    aget-object v5, v2, v4

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    const-string v7, "_record.xml"

    .line 57
    .line 58
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_2

    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const-string v7, "_type.xml"

    .line 69
    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move/from16 v16, v0

    .line 78
    .line 79
    move-object/from16 v17, v2

    .line 80
    .line 81
    move/from16 v18, v4

    .line 82
    .line 83
    move-object/from16 v2, p3

    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :cond_2
    :goto_1
    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v6, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const-string v7, "extends"

    .line 104
    .line 105
    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-interface {v7, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    const-string v8, "suffix"

    .line 122
    .line 123
    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-interface {v8, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    const-string v10, "name"

    .line 144
    .line 145
    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    const-string v10, "package"

    .line 158
    .line 159
    invoke-interface {v6, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    const/16 v10, 0x2e

    .line 168
    .line 169
    const/16 v11, 0x2f

    .line 170
    .line 171
    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    const-string v10, "/"

    .line 176
    .line 177
    move-object/from16 v11, p2

    .line 178
    .line 179
    invoke-static {v11, v10, v6}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v12

    .line 183
    new-instance v13, Ljava/io/File;

    .line 184
    .line 185
    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 189
    .line 190
    .line 191
    move-result v14

    .line 192
    const-string v15, "Could not create directory "

    .line 193
    .line 194
    if-eqz v14, :cond_5

    .line 195
    .line 196
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 197
    .line 198
    new-instance v14, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v3, "Created destination directory: "

    .line 201
    .line 202
    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v14

    .line 212
    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance v14, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v12, ".java"

    .line 227
    .line 228
    invoke-static {v14, v9, v8, v12}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    move/from16 v16, v0

    .line 233
    .line 234
    new-instance v0, Ljava/io/File;

    .line 235
    .line 236
    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    move-object/from16 v17, v2

    .line 240
    .line 241
    new-instance v2, Ljava/io/File;

    .line 242
    .line 243
    invoke-static {v1, v10}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    move-result-object v11

    .line 247
    move/from16 v18, v4

    .line 248
    .line 249
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 250
    .line 251
    move-object/from16 v19, v15

    .line 252
    .line 253
    invoke-virtual {v7, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v15

    .line 257
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v15, ".xsl"

    .line 261
    .line 262
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v5, v0, v2}, Lorg/apache/poi/dev/RecordGenerator;->transform(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string v2, "Generated "

    .line 278
    .line 279
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v2, ": "

    .line 286
    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    move-object/from16 v2, p3

    .line 306
    .line 307
    invoke-static {v0, v2, v10, v6}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    new-instance v6, Ljava/io/File;

    .line 312
    .line 313
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 317
    .line 318
    .line 319
    move-result v11

    .line 320
    if-eqz v11, :cond_4

    .line 321
    .line 322
    new-instance v6, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-virtual {v13, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v0, "/Test"

    .line 346
    .line 347
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-static {v3, v9, v8, v12}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    new-instance v3, Ljava/io/File;

    .line 355
    .line 356
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-nez v3, :cond_3

    .line 364
    .line 365
    invoke-static {v1, v10}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-virtual {v7, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v4, "_test.xsl"

    .line 377
    .line 378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    new-instance v4, Ljava/io/File;

    .line 386
    .line 387
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    new-instance v6, Ljava/io/File;

    .line 391
    .line 392
    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-static {v5, v4, v6}, Lorg/apache/poi/dev/RecordGenerator;->transform(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 396
    .line 397
    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    const-string v4, "Generated test: "

    .line 401
    .line 402
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    goto :goto_3

    .line 416
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v4, "Skipped test generation: "

    .line 419
    .line 420
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    goto :goto_2

    .line 424
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 425
    .line 426
    move-object/from16 v1, v19

    .line 427
    .line 428
    invoke-static {v6, v1}, Lch/qos/logback/core/joran/util/a;->h(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    throw v0

    .line 436
    :cond_5
    move-object v1, v15

    .line 437
    new-instance v0, Ljava/io/IOException;

    .line 438
    .line 439
    invoke-static {v13, v1}, Lch/qos/logback/core/joran/util/a;->h(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v0

    .line 447
    :goto_3
    add-int/lit8 v4, v18, 0x1

    .line 448
    .line 449
    move/from16 v0, v16

    .line 450
    .line 451
    move-object/from16 v2, v17

    .line 452
    .line 453
    const/4 v3, 0x0

    .line 454
    goto/16 :goto_0

    .line 455
    .line 456
    :cond_6
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    const-string v0, "org.apache.poi.generator.FieldIterator"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Usage:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "  java org.apache.poi.hssf.util.RecordGenerator RECORD_DEFINTIONS RECORD_STYLES DEST_SRC_PATH TEST_SRC_PATH"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-static {v0, v1, v2, p0}, Lorg/apache/poi/dev/RecordGenerator;->generateRecords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static transform(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 3

    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;

    move-result-object p2
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "method"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljavax/xml/transform/Transformer;->setOutputProperties(Ljava/util/Properties;)V

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    new-instance p1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {p1, p0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p2, p1, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error compiling XSL style sheet "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw p0
.end method
