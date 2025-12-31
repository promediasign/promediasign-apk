.class Lcom/jcraft/jsch/UserAuthKeyboardInteractive;
.super Lcom/jcraft/jsch/UserAuth;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    instance-of v2, v2, Lcom/jcraft/jsch/UIKeyboardInteractive;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->username:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, "@"

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget v4, v1, Lcom/jcraft/jsch/Session;->port:I

    .line 43
    .line 44
    const/16 v5, 0x16

    .line 45
    .line 46
    if-eq v4, v5, :cond_1

    .line 47
    .line 48
    const-string v4, ":"

    .line 49
    .line 50
    invoke-static {v2, v4}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget v4, v1, Lcom/jcraft/jsch/Session;->port:I

    .line 55
    .line 56
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :cond_1
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->password:[B

    .line 64
    .line 65
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->username:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    const/4 v5, 0x0

    .line 72
    :goto_0
    iget v6, v1, Lcom/jcraft/jsch/Session;->auth_failures:I

    .line 73
    .line 74
    iget v7, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    .line 75
    .line 76
    if-lt v6, v7, :cond_2

    .line 77
    .line 78
    return v3

    .line 79
    :cond_2
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 80
    .line 81
    invoke-virtual {v6}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 82
    .line 83
    .line 84
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 85
    .line 86
    const/16 v7, 0x32

    .line 87
    .line 88
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 89
    .line 90
    .line 91
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 92
    .line 93
    invoke-virtual {v6, v10}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 94
    .line 95
    .line 96
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 97
    .line 98
    const-string v7, "ssh-connection"

    .line 99
    .line 100
    invoke-static {v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 105
    .line 106
    .line 107
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 108
    .line 109
    const-string v11, "keyboard-interactive"

    .line 110
    .line 111
    invoke-static {v11}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 116
    .line 117
    .line 118
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 119
    .line 120
    sget-object v7, Lcom/jcraft/jsch/Util;->empty:[B

    .line 121
    .line 122
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 123
    .line 124
    .line 125
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 126
    .line 127
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 128
    .line 129
    .line 130
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 131
    .line 132
    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 133
    .line 134
    .line 135
    const/4 v12, 0x1

    .line 136
    move-object v13, v4

    .line 137
    move v14, v5

    .line 138
    const/4 v4, 0x1

    .line 139
    :cond_3
    :goto_1
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 140
    .line 141
    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    iput-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 146
    .line 147
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    and-int/lit16 v5, v5, 0xff

    .line 152
    .line 153
    const/16 v6, 0x34

    .line 154
    .line 155
    if-ne v5, v6, :cond_4

    .line 156
    .line 157
    return v12

    .line 158
    :cond_4
    const/16 v6, 0x35

    .line 159
    .line 160
    if-ne v5, v6, :cond_5

    .line 161
    .line 162
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 163
    .line 164
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 165
    .line 166
    .line 167
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 168
    .line 169
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 170
    .line 171
    .line 172
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 173
    .line 174
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 175
    .line 176
    .line 177
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 178
    .line 179
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 184
    .line 185
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 186
    .line 187
    .line 188
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 193
    .line 194
    if-eqz v6, :cond_3

    .line 195
    .line 196
    invoke-interface {v6, v5}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_5
    const/16 v6, 0x33

    .line 201
    .line 202
    if-ne v5, v6, :cond_9

    .line 203
    .line 204
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 205
    .line 206
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 207
    .line 208
    .line 209
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 210
    .line 211
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 212
    .line 213
    .line 214
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 215
    .line 216
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 217
    .line 218
    .line 219
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 220
    .line 221
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 226
    .line 227
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    if-nez v6, :cond_8

    .line 232
    .line 233
    if-eqz v4, :cond_6

    .line 234
    .line 235
    return v3

    .line 236
    :cond_6
    iget v4, v1, Lcom/jcraft/jsch/Session;->auth_failures:I

    .line 237
    .line 238
    add-int/2addr v4, v12

    .line 239
    iput v4, v1, Lcom/jcraft/jsch/Session;->auth_failures:I

    .line 240
    .line 241
    if-nez v14, :cond_7

    .line 242
    .line 243
    move-object v4, v13

    .line 244
    move v5, v14

    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_7
    new-instance v1, Lcom/jcraft/jsch/JSchAuthCancelException;

    .line 248
    .line 249
    invoke-direct {v1, v11}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v1

    .line 253
    :cond_8
    new-instance v1, Lcom/jcraft/jsch/JSchPartialAuthException;

    .line 254
    .line 255
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v1

    .line 263
    :cond_9
    const/16 v4, 0x3c

    .line 264
    .line 265
    if-ne v5, v4, :cond_15

    .line 266
    .line 267
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 268
    .line 269
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 270
    .line 271
    .line 272
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 273
    .line 274
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 275
    .line 276
    .line 277
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 278
    .line 279
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 280
    .line 281
    .line 282
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 283
    .line 284
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 293
    .line 294
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 303
    .line 304
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 312
    .line 313
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 314
    .line 315
    .line 316
    move-result v15

    .line 317
    new-array v8, v15, [Ljava/lang/String;

    .line 318
    .line 319
    new-array v9, v15, [Z

    .line 320
    .line 321
    const/4 v4, 0x0

    .line 322
    :goto_2
    if-ge v4, v15, :cond_b

    .line 323
    .line 324
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 325
    .line 326
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    aput-object v5, v8, v4

    .line 335
    .line 336
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 337
    .line 338
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 339
    .line 340
    .line 341
    move-result v5

    .line 342
    if-eqz v5, :cond_a

    .line 343
    .line 344
    const/4 v5, 0x1

    .line 345
    goto :goto_3

    .line 346
    :cond_a
    const/4 v5, 0x0

    .line 347
    :goto_3
    aput-boolean v5, v9, v4

    .line 348
    .line 349
    add-int/lit8 v4, v4, 0x1

    .line 350
    .line 351
    goto :goto_2

    .line 352
    :cond_b
    const/16 v16, 0x0

    .line 353
    .line 354
    if-eqz v13, :cond_c

    .line 355
    .line 356
    if-ne v15, v12, :cond_c

    .line 357
    .line 358
    aget-boolean v4, v9, v3

    .line 359
    .line 360
    if-nez v4, :cond_c

    .line 361
    .line 362
    aget-object v4, v8, v3

    .line 363
    .line 364
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    const-string v5, "password:"

    .line 369
    .line 370
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    if-ltz v4, :cond_c

    .line 375
    .line 376
    new-array v4, v12, [[B

    .line 377
    .line 378
    aput-object v13, v4, v3

    .line 379
    .line 380
    move-object/from16 v13, v16

    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_c
    if-gtz v15, :cond_d

    .line 384
    .line 385
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    if-gtz v4, :cond_d

    .line 390
    .line 391
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    if-lez v4, :cond_f

    .line 396
    .line 397
    :cond_d
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 398
    .line 399
    if-eqz v4, :cond_f

    .line 400
    .line 401
    check-cast v4, Lcom/jcraft/jsch/UIKeyboardInteractive;

    .line 402
    .line 403
    move-object v5, v2

    .line 404
    invoke-interface/range {v4 .. v9}, Lcom/jcraft/jsch/UIKeyboardInteractive;->promptKeyboardInteractive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    if-eqz v4, :cond_f

    .line 409
    .line 410
    array-length v5, v4

    .line 411
    new-array v5, v5, [[B

    .line 412
    .line 413
    const/4 v6, 0x0

    .line 414
    :goto_4
    array-length v7, v4

    .line 415
    if-ge v6, v7, :cond_e

    .line 416
    .line 417
    aget-object v7, v4, v6

    .line 418
    .line 419
    invoke-static {v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    aput-object v7, v5, v6

    .line 424
    .line 425
    add-int/lit8 v6, v6, 0x1

    .line 426
    .line 427
    goto :goto_4

    .line 428
    :cond_e
    move-object v4, v5

    .line 429
    goto :goto_5

    .line 430
    :cond_f
    move-object/from16 v4, v16

    .line 431
    .line 432
    :goto_5
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 433
    .line 434
    invoke-virtual {v5}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 435
    .line 436
    .line 437
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 438
    .line 439
    const/16 v6, 0x3d

    .line 440
    .line 441
    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 442
    .line 443
    .line 444
    if-lez v15, :cond_13

    .line 445
    .line 446
    if-eqz v4, :cond_10

    .line 447
    .line 448
    array-length v5, v4

    .line 449
    if-eq v15, v5, :cond_13

    .line 450
    .line 451
    :cond_10
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 452
    .line 453
    if-nez v4, :cond_11

    .line 454
    .line 455
    invoke-virtual {v5, v15}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 456
    .line 457
    .line 458
    const/4 v5, 0x0

    .line 459
    :goto_6
    if-ge v5, v15, :cond_12

    .line 460
    .line 461
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 462
    .line 463
    sget-object v7, Lcom/jcraft/jsch/Util;->empty:[B

    .line 464
    .line 465
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 466
    .line 467
    .line 468
    add-int/lit8 v5, v5, 0x1

    .line 469
    .line 470
    goto :goto_6

    .line 471
    :cond_11
    invoke-virtual {v5, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 472
    .line 473
    .line 474
    :cond_12
    if-nez v4, :cond_14

    .line 475
    .line 476
    const/4 v14, 0x1

    .line 477
    goto :goto_8

    .line 478
    :cond_13
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 479
    .line 480
    invoke-virtual {v5, v15}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 481
    .line 482
    .line 483
    const/4 v5, 0x0

    .line 484
    :goto_7
    if-ge v5, v15, :cond_14

    .line 485
    .line 486
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 487
    .line 488
    aget-object v7, v4, v5

    .line 489
    .line 490
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 491
    .line 492
    .line 493
    add-int/lit8 v5, v5, 0x1

    .line 494
    .line 495
    goto :goto_7

    .line 496
    :cond_14
    :goto_8
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 497
    .line 498
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 499
    .line 500
    .line 501
    const/4 v4, 0x0

    .line 502
    goto/16 :goto_1

    .line 503
    .line 504
    :cond_15
    return v3
.end method
