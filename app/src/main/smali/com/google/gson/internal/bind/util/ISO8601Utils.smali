.class public abstract Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "Mismatching time zone indicator: "

    .line 6
    .line 7
    const-string v3, "GMT"

    .line 8
    .line 9
    const-string v4, "00"

    .line 10
    .line 11
    const-string v5, "Invalid time zone indicator \'"

    .line 12
    .line 13
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    add-int/lit8 v7, v6, 0x4

    .line 18
    .line 19
    invoke-static {v1, v6, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    const/16 v9, 0x2d

    .line 24
    .line 25
    invoke-static {v1, v7, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    const/4 v11, 0x5

    .line 30
    if-eqz v10, :cond_0

    .line 31
    .line 32
    add-int/lit8 v7, v6, 0x5

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v6, v7, 0x2

    .line 35
    .line 36
    invoke-static {v1, v7, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    invoke-static {v1, v6, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    if-eqz v12, :cond_1

    .line 45
    .line 46
    add-int/lit8 v6, v7, 0x3

    .line 47
    .line 48
    :cond_1
    add-int/lit8 v7, v6, 0x2

    .line 49
    .line 50
    invoke-static {v1, v6, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    const/16 v13, 0x54

    .line 55
    .line 56
    invoke-static {v1, v7, v13}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    const/4 v14, 0x1

    .line 61
    const/4 v15, 0x0

    .line 62
    if-nez v13, :cond_2

    .line 63
    .line 64
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    if-gt v11, v7, :cond_2

    .line 69
    .line 70
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 71
    .line 72
    sub-int/2addr v10, v14

    .line 73
    invoke-direct {v0, v8, v10, v12}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v15}, Ljava/util/Calendar;->setLenient(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    goto/16 :goto_7

    .line 89
    .line 90
    :catch_1
    move-exception v0

    .line 91
    goto/16 :goto_7

    .line 92
    .line 93
    :catch_2
    move-exception v0

    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_2
    const/16 v11, 0x2b

    .line 97
    .line 98
    const/16 v15, 0x5a

    .line 99
    .line 100
    if-eqz v13, :cond_a

    .line 101
    .line 102
    add-int/lit8 v7, v6, 0x3

    .line 103
    .line 104
    add-int/lit8 v13, v6, 0x5

    .line 105
    .line 106
    invoke-static {v1, v7, v13}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    const/16 v14, 0x3a

    .line 111
    .line 112
    invoke-static {v1, v13, v14}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 113
    .line 114
    .line 115
    move-result v16

    .line 116
    if-eqz v16, :cond_3

    .line 117
    .line 118
    add-int/lit8 v13, v6, 0x6

    .line 119
    .line 120
    :cond_3
    add-int/lit8 v6, v13, 0x2

    .line 121
    .line 122
    invoke-static {v1, v13, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 123
    .line 124
    .line 125
    move-result v16

    .line 126
    invoke-static {v1, v6, v14}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    if-eqz v14, :cond_4

    .line 131
    .line 132
    add-int/lit8 v13, v13, 0x3

    .line 133
    .line 134
    move v6, v13

    .line 135
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    if-le v13, v6, :cond_9

    .line 140
    .line 141
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    if-eq v13, v15, :cond_9

    .line 146
    .line 147
    if-eq v13, v11, :cond_9

    .line 148
    .line 149
    if-eq v13, v9, :cond_9

    .line 150
    .line 151
    add-int/lit8 v13, v6, 0x2

    .line 152
    .line 153
    invoke-static {v1, v6, v13}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    const/16 v9, 0x3b

    .line 158
    .line 159
    if-le v14, v9, :cond_5

    .line 160
    .line 161
    const/16 v9, 0x3f

    .line 162
    .line 163
    if-ge v14, v9, :cond_5

    .line 164
    .line 165
    const/16 v14, 0x3b

    .line 166
    .line 167
    :cond_5
    const/16 v9, 0x2e

    .line 168
    .line 169
    invoke-static {v1, v13, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-eqz v9, :cond_8

    .line 174
    .line 175
    add-int/lit8 v9, v6, 0x3

    .line 176
    .line 177
    add-int/lit8 v13, v6, 0x4

    .line 178
    .line 179
    invoke-static {v1, v13}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    .line 180
    .line 181
    .line 182
    move-result v13

    .line 183
    add-int/lit8 v6, v6, 0x6

    .line 184
    .line 185
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    invoke-static {v1, v9, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 190
    .line 191
    .line 192
    move-result v17

    .line 193
    sub-int/2addr v6, v9

    .line 194
    const/4 v9, 0x1

    .line 195
    if-eq v6, v9, :cond_7

    .line 196
    .line 197
    const/4 v9, 0x2

    .line 198
    if-eq v6, v9, :cond_6

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_6
    mul-int/lit8 v17, v17, 0xa

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_7
    mul-int/lit8 v17, v17, 0x64

    .line 205
    .line 206
    :goto_0
    move v6, v7

    .line 207
    move v7, v13

    .line 208
    move/from16 v9, v16

    .line 209
    .line 210
    move/from16 v13, v17

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_8
    move v6, v7

    .line 214
    move v7, v13

    .line 215
    move/from16 v9, v16

    .line 216
    .line 217
    const/4 v13, 0x0

    .line 218
    goto :goto_1

    .line 219
    :cond_9
    move/from16 v9, v16

    .line 220
    .line 221
    const/4 v13, 0x0

    .line 222
    const/4 v14, 0x0

    .line 223
    move/from16 v18, v7

    .line 224
    .line 225
    move v7, v6

    .line 226
    move/from16 v6, v18

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_a
    const/4 v6, 0x0

    .line 230
    const/4 v9, 0x0

    .line 231
    const/4 v13, 0x0

    .line 232
    const/4 v14, 0x0

    .line 233
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 234
    .line 235
    .line 236
    move-result v11

    .line 237
    if-le v11, v7, :cond_13

    .line 238
    .line 239
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    if-ne v11, v15, :cond_b

    .line 244
    .line 245
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 246
    .line 247
    const/4 v3, 0x1

    .line 248
    add-int/2addr v7, v3

    .line 249
    goto/16 :goto_6

    .line 250
    .line 251
    :cond_b
    const/16 v15, 0x2b

    .line 252
    .line 253
    if-eq v11, v15, :cond_d

    .line 254
    .line 255
    const/16 v15, 0x2d

    .line 256
    .line 257
    if-ne v11, v15, :cond_c

    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 261
    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v4, "\'"

    .line 271
    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :cond_d
    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    const/4 v15, 0x5

    .line 292
    if-lt v11, v15, :cond_e

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_e
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    add-int/2addr v7, v4

    .line 304
    const-string v4, "+0000"

    .line 305
    .line 306
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-nez v4, :cond_12

    .line 311
    .line 312
    const-string v4, "+00:00"

    .line 313
    .line 314
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-eqz v4, :cond_f

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_f
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v11

    .line 337
    if-nez v11, :cond_11

    .line 338
    .line 339
    const-string v11, ":"

    .line 340
    .line 341
    const-string v15, ""

    .line 342
    .line 343
    invoke-virtual {v5, v11, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    if-eqz v5, :cond_10

    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_10
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    .line 355
    .line 356
    new-instance v6, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v0, " given, resolves to "

    .line 365
    .line 366
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-direct {v5, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v5

    .line 384
    :cond_11
    :goto_4
    move-object v0, v4

    .line 385
    goto :goto_6

    .line 386
    :cond_12
    :goto_5
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 387
    .line 388
    :goto_6
    new-instance v3, Ljava/util/GregorianCalendar;

    .line 389
    .line 390
    invoke-direct {v3, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 391
    .line 392
    .line 393
    const/4 v0, 0x0

    .line 394
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 395
    .line 396
    .line 397
    const/4 v0, 0x1

    .line 398
    invoke-virtual {v3, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 399
    .line 400
    .line 401
    sub-int/2addr v10, v0

    .line 402
    const/4 v0, 0x2

    .line 403
    invoke-virtual {v3, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 404
    .line 405
    .line 406
    const/4 v0, 0x5

    .line 407
    invoke-virtual {v3, v0, v12}, Ljava/util/Calendar;->set(II)V

    .line 408
    .line 409
    .line 410
    const/16 v0, 0xb

    .line 411
    .line 412
    invoke-virtual {v3, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 413
    .line 414
    .line 415
    const/16 v0, 0xc

    .line 416
    .line 417
    invoke-virtual {v3, v0, v9}, Ljava/util/Calendar;->set(II)V

    .line 418
    .line 419
    .line 420
    const/16 v0, 0xd

    .line 421
    .line 422
    invoke-virtual {v3, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 423
    .line 424
    .line 425
    const/16 v0, 0xe

    .line 426
    .line 427
    invoke-virtual {v3, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    return-object v0

    .line 438
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 439
    .line 440
    const-string v3, "No time zone indicator"

    .line 441
    .line 442
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_7
    if-nez v1, :cond_14

    .line 447
    .line 448
    const/4 v1, 0x0

    .line 449
    goto :goto_8

    .line 450
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    const-string v4, "\""

    .line 453
    .line 454
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const/16 v1, 0x22

    .line 461
    .line 462
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    if-eqz v3, :cond_15

    .line 474
    .line 475
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    if-eqz v4, :cond_16

    .line 480
    .line 481
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string v4, "("

    .line 484
    .line 485
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v4, ")"

    .line 500
    .line 501
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    :cond_16
    new-instance v4, Ljava/text/ParseException;

    .line 509
    .line 510
    const-string v5, "Failed to parse date ["

    .line 511
    .line 512
    const-string v6, "]: "

    .line 513
    .line 514
    invoke-static {v5, v1, v6, v3}, LA/g;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 526
    .line 527
    .line 528
    throw v4
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 5

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_4

    if-gt p1, p2, :cond_4

    const-string v0, "Invalid number: "

    const/16 v1, 0xa

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_0

    neg-int v3, v3

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v3, 0x0

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_2

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v3, v2

    move v2, v4

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    neg-int p0, v3

    return p0

    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
