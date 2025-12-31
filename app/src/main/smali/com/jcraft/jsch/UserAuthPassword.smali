.class Lcom/jcraft/jsch/UserAuthPassword;
.super Lcom/jcraft/jsch/UserAuth;
.source "SourceFile"


# instance fields
.field private final SSH_MSG_USERAUTH_PASSWD_CHANGEREQ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->SSH_MSG_USERAUTH_PASSWD_CHANGEREQ:I

    return-void
.end method


# virtual methods
.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "ssh-connection"

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 6
    .line 7
    .line 8
    iget-object v3, p1, Lcom/jcraft/jsch/Session;->password:[B

    .line 9
    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->username:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v5, "@"

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v5, p1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget v5, p1, Lcom/jcraft/jsch/Session;->port:I

    .line 35
    .line 36
    const/16 v6, 0x16

    .line 37
    .line 38
    if-eq v5, v6, :cond_0

    .line 39
    .line 40
    const-string v5, ":"

    .line 41
    .line 42
    invoke-static {v4, v5}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget v5, p1, Lcom/jcraft/jsch/Session;->port:I

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :cond_0
    move-object v10, v4

    .line 56
    :cond_1
    :goto_0
    :try_start_0
    iget v4, p1, Lcom/jcraft/jsch/Session;->auth_failures:I

    .line 57
    .line 58
    iget v5, p1, Lcom/jcraft/jsch/Session;->max_auth_tries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    if-lt v4, v5, :cond_3

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return v1

    .line 68
    :cond_3
    const-string v11, "password"

    .line 69
    .line 70
    if-nez v3, :cond_8

    .line 71
    .line 72
    :try_start_1
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    if-nez v4, :cond_5

    .line 75
    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 79
    .line 80
    .line 81
    :cond_4
    return v1

    .line 82
    :cond_5
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v6, "Password for "

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-interface {v4, v5}, Lcom/jcraft/jsch/UserInfo;->promptPassword(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_7

    .line 104
    .line 105
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 106
    .line 107
    invoke-interface {v4}, Lcom/jcraft/jsch/UserInfo;->getPassword()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    if-eqz v4, :cond_6

    .line 112
    .line 113
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :cond_6
    new-instance p1, Lcom/jcraft/jsch/JSchAuthCancelException;

    .line 122
    .line 123
    invoke-direct {p1, v11}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_7
    new-instance p1, Lcom/jcraft/jsch/JSchAuthCancelException;

    .line 128
    .line 129
    invoke-direct {p1, v11}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->username:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 142
    .line 143
    .line 144
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 145
    .line 146
    const/16 v13, 0x32

    .line 147
    .line 148
    invoke-virtual {v4, v13}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 149
    .line 150
    .line 151
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 152
    .line 153
    invoke-virtual {v4, v12}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 154
    .line 155
    .line 156
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 157
    .line 158
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 163
    .line 164
    .line 165
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 166
    .line 167
    invoke-static {v11}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 172
    .line 173
    .line 174
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 175
    .line 176
    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 177
    .line 178
    .line 179
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 180
    .line 181
    invoke-virtual {v4, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 182
    .line 183
    .line 184
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 185
    .line 186
    goto/16 :goto_3

    .line 187
    .line 188
    :cond_9
    :goto_2
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 189
    .line 190
    invoke-virtual {p1, v4}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    iput-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 195
    .line 196
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    .line 197
    .line 198
    .line 199
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    and-int/lit16 v4, v4, 0xff

    .line 201
    .line 202
    const/16 v5, 0x34

    .line 203
    .line 204
    if-ne v4, v5, :cond_b

    .line 205
    .line 206
    if-eqz v3, :cond_a

    .line 207
    .line 208
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 209
    .line 210
    .line 211
    :cond_a
    return v0

    .line 212
    :cond_b
    const/16 v5, 0x35

    .line 213
    .line 214
    if-ne v4, v5, :cond_c

    .line 215
    .line 216
    :try_start_3
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 217
    .line 218
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 219
    .line 220
    .line 221
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 222
    .line 223
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 224
    .line 225
    .line 226
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 227
    .line 228
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 229
    .line 230
    .line 231
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 232
    .line 233
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 238
    .line 239
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 240
    .line 241
    .line 242
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 247
    .line 248
    if-eqz v5, :cond_9

    .line 249
    .line 250
    invoke-interface {v5, v4}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_c
    const/16 v5, 0x3c

    .line 255
    .line 256
    if-ne v4, v5, :cond_12

    .line 257
    .line 258
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 259
    .line 260
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 261
    .line 262
    .line 263
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 264
    .line 265
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 266
    .line 267
    .line 268
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 269
    .line 270
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 271
    .line 272
    .line 273
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 274
    .line 275
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 280
    .line 281
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 282
    .line 283
    .line 284
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 285
    .line 286
    if-eqz v5, :cond_f

    .line 287
    .line 288
    instance-of v6, v5, Lcom/jcraft/jsch/UIKeyboardInteractive;

    .line 289
    .line 290
    if-nez v6, :cond_d

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_d
    check-cast v5, Lcom/jcraft/jsch/UIKeyboardInteractive;

    .line 294
    .line 295
    const-string v6, "Password Change Required"

    .line 296
    .line 297
    const-string v7, "New Password: "

    .line 298
    .line 299
    filled-new-array {v7}, [Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    new-array v9, v0, [Z

    .line 304
    .line 305
    aput-boolean v1, v9, v1

    .line 306
    .line 307
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    move-object v4, v5

    .line 312
    move-object v5, v10

    .line 313
    invoke-interface/range {v4 .. v9}, Lcom/jcraft/jsch/UIKeyboardInteractive;->promptKeyboardInteractive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    if-eqz v4, :cond_e

    .line 318
    .line 319
    aget-object v4, v4, v1

    .line 320
    .line 321
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 326
    .line 327
    invoke-virtual {v5}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 328
    .line 329
    .line 330
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 331
    .line 332
    invoke-virtual {v5, v13}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 333
    .line 334
    .line 335
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 336
    .line 337
    invoke-virtual {v5, v12}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 338
    .line 339
    .line 340
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 341
    .line 342
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 347
    .line 348
    .line 349
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 350
    .line 351
    invoke-static {v11}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 356
    .line 357
    .line 358
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 359
    .line 360
    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 361
    .line 362
    .line 363
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 364
    .line 365
    invoke-virtual {v5, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 366
    .line 367
    .line 368
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 369
    .line 370
    invoke-virtual {v5, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 371
    .line 372
    .line 373
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 374
    .line 375
    .line 376
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 377
    .line 378
    :goto_3
    invoke-virtual {p1, v4}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 379
    .line 380
    .line 381
    goto/16 :goto_2

    .line 382
    .line 383
    :cond_e
    new-instance p1, Lcom/jcraft/jsch/JSchAuthCancelException;

    .line 384
    .line 385
    invoke-direct {p1, v11}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw p1

    .line 389
    :cond_f
    :goto_4
    if-eqz v5, :cond_10

    .line 390
    .line 391
    const-string p1, "Password must be changed."

    .line 392
    .line 393
    invoke-interface {v5, p1}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 394
    .line 395
    .line 396
    :cond_10
    if-eqz v3, :cond_11

    .line 397
    .line 398
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 399
    .line 400
    .line 401
    :cond_11
    return v1

    .line 402
    :cond_12
    const/16 v5, 0x33

    .line 403
    .line 404
    if-ne v4, v5, :cond_14

    .line 405
    .line 406
    :try_start_4
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 407
    .line 408
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 409
    .line 410
    .line 411
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 412
    .line 413
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 414
    .line 415
    .line 416
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 417
    .line 418
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 419
    .line 420
    .line 421
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 422
    .line 423
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 428
    .line 429
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 430
    .line 431
    .line 432
    move-result v5

    .line 433
    if-nez v5, :cond_13

    .line 434
    .line 435
    iget v4, p1, Lcom/jcraft/jsch/Session;->auth_failures:I

    .line 436
    .line 437
    add-int/2addr v4, v0

    .line 438
    iput v4, p1, Lcom/jcraft/jsch/Session;->auth_failures:I

    .line 439
    .line 440
    if-eqz v3, :cond_1

    .line 441
    .line 442
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 443
    .line 444
    .line 445
    const/4 v3, 0x0

    .line 446
    goto/16 :goto_0

    .line 447
    .line 448
    :cond_13
    new-instance p1, Lcom/jcraft/jsch/JSchPartialAuthException;

    .line 449
    .line 450
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 458
    :cond_14
    if-eqz v3, :cond_15

    .line 459
    .line 460
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 461
    .line 462
    .line 463
    :cond_15
    return v1

    .line 464
    :goto_5
    if-eqz v3, :cond_16

    .line 465
    .line 466
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 467
    .line 468
    .line 469
    :cond_16
    throw p1
.end method
