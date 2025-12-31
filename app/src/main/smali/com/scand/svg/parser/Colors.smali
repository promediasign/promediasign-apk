.class public abstract Lcom/scand/svg/parser/Colors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static COLOR_MAP:Ljava/util/HashMap;

.field private static CSS_COLORS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 15
    .line 16
    const v1, -0xf0701

    .line 17
    .line 18
    .line 19
    const-string v2, "aliceblue"

    .line 20
    .line 21
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 25
    .line 26
    const v1, -0x51429

    .line 27
    .line 28
    .line 29
    const-string v2, "antiquewhite"

    .line 30
    .line 31
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 35
    .line 36
    const v1, -0xff0001

    .line 37
    .line 38
    .line 39
    const-string v2, "aqua"

    .line 40
    .line 41
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 45
    .line 46
    const v1, -0x80002c

    .line 47
    .line 48
    .line 49
    const-string v2, "aquamarine"

    .line 50
    .line 51
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 55
    .line 56
    const v1, -0xf0001

    .line 57
    .line 58
    .line 59
    const-string v2, "azure"

    .line 60
    .line 61
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 65
    .line 66
    const v1, -0xa0a24

    .line 67
    .line 68
    .line 69
    const-string v2, "beige"

    .line 70
    .line 71
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 75
    .line 76
    const/16 v1, -0x1b3c

    .line 77
    .line 78
    const-string v2, "bisque"

    .line 79
    .line 80
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 84
    .line 85
    const/high16 v1, -0x1000000

    .line 86
    .line 87
    const-string v2, "black"

    .line 88
    .line 89
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 93
    .line 94
    const/16 v1, -0x1433

    .line 95
    .line 96
    const-string v2, "blanchedalmond"

    .line 97
    .line 98
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 102
    .line 103
    const v1, -0xffff01

    .line 104
    .line 105
    .line 106
    const-string v2, "blue"

    .line 107
    .line 108
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 112
    .line 113
    const v1, -0x75d41e

    .line 114
    .line 115
    .line 116
    const-string v2, "blueviolet"

    .line 117
    .line 118
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 122
    .line 123
    const v1, -0x5ad5d6

    .line 124
    .line 125
    .line 126
    const-string v2, "brown"

    .line 127
    .line 128
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 132
    .line 133
    const v1, -0x214779

    .line 134
    .line 135
    .line 136
    const-string v2, "burlywood"

    .line 137
    .line 138
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 142
    .line 143
    const v1, -0xa06160

    .line 144
    .line 145
    .line 146
    const-string v2, "cadetblue"

    .line 147
    .line 148
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 152
    .line 153
    const v1, -0x800100

    .line 154
    .line 155
    .line 156
    const-string v2, "chartreuse"

    .line 157
    .line 158
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 162
    .line 163
    const v1, -0x2d96e2

    .line 164
    .line 165
    .line 166
    const-string v2, "chocolate"

    .line 167
    .line 168
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 172
    .line 173
    const v1, -0x80b0

    .line 174
    .line 175
    .line 176
    const-string v2, "coral"

    .line 177
    .line 178
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 182
    .line 183
    const v1, -0x9b6a13

    .line 184
    .line 185
    .line 186
    const-string v2, "cornflowerblue"

    .line 187
    .line 188
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 189
    .line 190
    .line 191
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 192
    .line 193
    const/16 v1, -0x724

    .line 194
    .line 195
    const-string v2, "cornsilk"

    .line 196
    .line 197
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 201
    .line 202
    const v1, -0x23ebc4

    .line 203
    .line 204
    .line 205
    const-string v2, "crimson"

    .line 206
    .line 207
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 211
    .line 212
    const v1, -0xff0001

    .line 213
    .line 214
    .line 215
    const-string v2, "cyan"

    .line 216
    .line 217
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 221
    .line 222
    const v1, -0xffff75

    .line 223
    .line 224
    .line 225
    const-string v2, "darkblue"

    .line 226
    .line 227
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 231
    .line 232
    const v1, -0xff7475

    .line 233
    .line 234
    .line 235
    const-string v2, "darkcyan"

    .line 236
    .line 237
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 241
    .line 242
    const v1, -0x4779f5

    .line 243
    .line 244
    .line 245
    const-string v2, "darkgoldenrod"

    .line 246
    .line 247
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 248
    .line 249
    .line 250
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 251
    .line 252
    const v1, -0x565657

    .line 253
    .line 254
    .line 255
    const-string v2, "darkgray"

    .line 256
    .line 257
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 258
    .line 259
    .line 260
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 261
    .line 262
    const-string v2, "darkgrey"

    .line 263
    .line 264
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 268
    .line 269
    const v1, -0xff9c00

    .line 270
    .line 271
    .line 272
    const-string v2, "darkgreen"

    .line 273
    .line 274
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 278
    .line 279
    const v1, -0x424895

    .line 280
    .line 281
    .line 282
    const-string v2, "darkkhaki"

    .line 283
    .line 284
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 285
    .line 286
    .line 287
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 288
    .line 289
    const v1, -0x74ff75

    .line 290
    .line 291
    .line 292
    const-string v2, "darkmagenta"

    .line 293
    .line 294
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 295
    .line 296
    .line 297
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 298
    .line 299
    const v1, -0xaa94d1

    .line 300
    .line 301
    .line 302
    const-string v2, "darkolivegreen"

    .line 303
    .line 304
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 305
    .line 306
    .line 307
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 308
    .line 309
    const/16 v1, -0x7400

    .line 310
    .line 311
    const-string v2, "darkorange"

    .line 312
    .line 313
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 314
    .line 315
    .line 316
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 317
    .line 318
    const v1, -0x66cd34

    .line 319
    .line 320
    .line 321
    const-string v2, "darkorchid"

    .line 322
    .line 323
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 324
    .line 325
    .line 326
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 327
    .line 328
    const/high16 v1, -0x750000

    .line 329
    .line 330
    const-string v2, "darkred"

    .line 331
    .line 332
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 333
    .line 334
    .line 335
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 336
    .line 337
    const v1, -0x166986

    .line 338
    .line 339
    .line 340
    const-string v2, "darksalmon"

    .line 341
    .line 342
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 343
    .line 344
    .line 345
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 346
    .line 347
    const v1, -0x704371

    .line 348
    .line 349
    .line 350
    const-string v2, "darkseagreen"

    .line 351
    .line 352
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 353
    .line 354
    .line 355
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 356
    .line 357
    const v1, -0xb7c275

    .line 358
    .line 359
    .line 360
    const-string v2, "darkslateblue"

    .line 361
    .line 362
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 363
    .line 364
    .line 365
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 366
    .line 367
    const v1, -0xd0b0b1

    .line 368
    .line 369
    .line 370
    const-string v2, "darkslategray"

    .line 371
    .line 372
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 373
    .line 374
    .line 375
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 376
    .line 377
    const-string v2, "darkslategrey"

    .line 378
    .line 379
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 380
    .line 381
    .line 382
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 383
    .line 384
    const v1, -0xff312f

    .line 385
    .line 386
    .line 387
    const-string v2, "darkturquoise"

    .line 388
    .line 389
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 390
    .line 391
    .line 392
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 393
    .line 394
    const v1, -0x6bff2d

    .line 395
    .line 396
    .line 397
    const-string v2, "darkviolet"

    .line 398
    .line 399
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 400
    .line 401
    .line 402
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 403
    .line 404
    const v1, -0xeb6d

    .line 405
    .line 406
    .line 407
    const-string v2, "deeppink"

    .line 408
    .line 409
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 410
    .line 411
    .line 412
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 413
    .line 414
    const v1, -0xff4001

    .line 415
    .line 416
    .line 417
    const-string v2, "deepskyblue"

    .line 418
    .line 419
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 420
    .line 421
    .line 422
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 423
    .line 424
    const v1, -0x969697

    .line 425
    .line 426
    .line 427
    const-string v2, "dimgray"

    .line 428
    .line 429
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 430
    .line 431
    .line 432
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 433
    .line 434
    const-string v2, "dimgrey"

    .line 435
    .line 436
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 437
    .line 438
    .line 439
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 440
    .line 441
    const v1, -0xe16f01

    .line 442
    .line 443
    .line 444
    const-string v2, "dodgerblue"

    .line 445
    .line 446
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 447
    .line 448
    .line 449
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 450
    .line 451
    const v1, -0x4dddde

    .line 452
    .line 453
    .line 454
    const-string v2, "firebrick"

    .line 455
    .line 456
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 457
    .line 458
    .line 459
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 460
    .line 461
    const/16 v1, -0x510

    .line 462
    .line 463
    const-string v2, "floralwhite"

    .line 464
    .line 465
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 466
    .line 467
    .line 468
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 469
    .line 470
    const v1, -0xdd74de

    .line 471
    .line 472
    .line 473
    const-string v2, "forestgreen"

    .line 474
    .line 475
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 476
    .line 477
    .line 478
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 479
    .line 480
    const v1, -0xff01

    .line 481
    .line 482
    .line 483
    const-string v2, "fuchsia"

    .line 484
    .line 485
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 486
    .line 487
    .line 488
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 489
    .line 490
    const v1, -0x232324

    .line 491
    .line 492
    .line 493
    const-string v2, "gainsboro"

    .line 494
    .line 495
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 496
    .line 497
    .line 498
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 499
    .line 500
    const v1, -0x70701

    .line 501
    .line 502
    .line 503
    const-string v2, "ghostwhite"

    .line 504
    .line 505
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 506
    .line 507
    .line 508
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 509
    .line 510
    const/16 v1, -0x2900

    .line 511
    .line 512
    const-string v2, "gold"

    .line 513
    .line 514
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 515
    .line 516
    .line 517
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 518
    .line 519
    const v1, -0x255ae0

    .line 520
    .line 521
    .line 522
    const-string v2, "goldenrod"

    .line 523
    .line 524
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 525
    .line 526
    .line 527
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 528
    .line 529
    const v1, -0x7f7f80

    .line 530
    .line 531
    .line 532
    const-string v2, "gray"

    .line 533
    .line 534
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 535
    .line 536
    .line 537
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 538
    .line 539
    const-string v2, "grey"

    .line 540
    .line 541
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 542
    .line 543
    .line 544
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 545
    .line 546
    const v1, -0xff8000

    .line 547
    .line 548
    .line 549
    const-string v2, "green"

    .line 550
    .line 551
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 552
    .line 553
    .line 554
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 555
    .line 556
    const v1, -0x5200d1

    .line 557
    .line 558
    .line 559
    const-string v2, "greenyellow"

    .line 560
    .line 561
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 562
    .line 563
    .line 564
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 565
    .line 566
    const v1, -0xf0010

    .line 567
    .line 568
    .line 569
    const-string v2, "honeydew"

    .line 570
    .line 571
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 572
    .line 573
    .line 574
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 575
    .line 576
    const v1, -0x964c

    .line 577
    .line 578
    .line 579
    const-string v2, "hotpink"

    .line 580
    .line 581
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 582
    .line 583
    .line 584
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 585
    .line 586
    const v1, -0x32a3a4

    .line 587
    .line 588
    .line 589
    const-string v2, "indianred"

    .line 590
    .line 591
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 592
    .line 593
    .line 594
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 595
    .line 596
    const v1, -0xb4ff7e

    .line 597
    .line 598
    .line 599
    const-string v2, "indigo"

    .line 600
    .line 601
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 602
    .line 603
    .line 604
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 605
    .line 606
    const/16 v1, -0x10

    .line 607
    .line 608
    const-string v2, "ivory"

    .line 609
    .line 610
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 611
    .line 612
    .line 613
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 614
    .line 615
    const v1, -0xf1974

    .line 616
    .line 617
    .line 618
    const-string v2, "khaki"

    .line 619
    .line 620
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 621
    .line 622
    .line 623
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 624
    .line 625
    const v1, -0x191906

    .line 626
    .line 627
    .line 628
    const-string v2, "lavender"

    .line 629
    .line 630
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 631
    .line 632
    .line 633
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 634
    .line 635
    const/16 v1, -0xf0b

    .line 636
    .line 637
    const-string v2, "lavenderblush"

    .line 638
    .line 639
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 640
    .line 641
    .line 642
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 643
    .line 644
    const v1, -0x830400

    .line 645
    .line 646
    .line 647
    const-string v2, "lawngreen"

    .line 648
    .line 649
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 650
    .line 651
    .line 652
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 653
    .line 654
    const/16 v1, -0x533

    .line 655
    .line 656
    const-string v2, "lemonchiffon"

    .line 657
    .line 658
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 659
    .line 660
    .line 661
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 662
    .line 663
    const v1, -0x52271a

    .line 664
    .line 665
    .line 666
    const-string v2, "lightblue"

    .line 667
    .line 668
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 669
    .line 670
    .line 671
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 672
    .line 673
    const v1, -0xf7f80

    .line 674
    .line 675
    .line 676
    const-string v2, "lightcoral"

    .line 677
    .line 678
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 679
    .line 680
    .line 681
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 682
    .line 683
    const v1, -0x1f0001

    .line 684
    .line 685
    .line 686
    const-string v2, "lightcyan"

    .line 687
    .line 688
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 689
    .line 690
    .line 691
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 692
    .line 693
    const v1, -0x5052e

    .line 694
    .line 695
    .line 696
    const-string v2, "lightgoldenrodyellow"

    .line 697
    .line 698
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 699
    .line 700
    .line 701
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 702
    .line 703
    const v1, -0x2c2c2d

    .line 704
    .line 705
    .line 706
    const-string v2, "lightgray"

    .line 707
    .line 708
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 709
    .line 710
    .line 711
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 712
    .line 713
    const-string v2, "lightgrey"

    .line 714
    .line 715
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 716
    .line 717
    .line 718
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 719
    .line 720
    const v1, -0x6f1170

    .line 721
    .line 722
    .line 723
    const-string v2, "lightgreen"

    .line 724
    .line 725
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 726
    .line 727
    .line 728
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 729
    .line 730
    const/16 v1, -0x493f

    .line 731
    .line 732
    const-string v2, "lightpink"

    .line 733
    .line 734
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 735
    .line 736
    .line 737
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 738
    .line 739
    const/16 v1, -0x5f86

    .line 740
    .line 741
    const-string v2, "lightsalmon"

    .line 742
    .line 743
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 744
    .line 745
    .line 746
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 747
    .line 748
    const v1, -0xdf4d56

    .line 749
    .line 750
    .line 751
    const-string v2, "lightseagreen"

    .line 752
    .line 753
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 754
    .line 755
    .line 756
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 757
    .line 758
    const v1, -0x783106

    .line 759
    .line 760
    .line 761
    const-string v2, "lightskyblue"

    .line 762
    .line 763
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 764
    .line 765
    .line 766
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 767
    .line 768
    const v1, -0x887767

    .line 769
    .line 770
    .line 771
    const-string v2, "lightslategray"

    .line 772
    .line 773
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 774
    .line 775
    .line 776
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 777
    .line 778
    const-string v2, "lightslategrey"

    .line 779
    .line 780
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 781
    .line 782
    .line 783
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 784
    .line 785
    const v1, -0x4f3b22

    .line 786
    .line 787
    .line 788
    const-string v2, "lightsteelblue"

    .line 789
    .line 790
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 791
    .line 792
    .line 793
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 794
    .line 795
    const/16 v1, -0x20

    .line 796
    .line 797
    const-string v2, "lightyellow"

    .line 798
    .line 799
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 800
    .line 801
    .line 802
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 803
    .line 804
    const v1, -0xff0100

    .line 805
    .line 806
    .line 807
    const-string v2, "lime"

    .line 808
    .line 809
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 810
    .line 811
    .line 812
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 813
    .line 814
    const v1, -0xcd32ce

    .line 815
    .line 816
    .line 817
    const-string v2, "limegreen"

    .line 818
    .line 819
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 820
    .line 821
    .line 822
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 823
    .line 824
    const v1, -0x50f1a

    .line 825
    .line 826
    .line 827
    const-string v2, "linen"

    .line 828
    .line 829
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 830
    .line 831
    .line 832
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 833
    .line 834
    const v1, -0xff01

    .line 835
    .line 836
    .line 837
    const-string v2, "magenta"

    .line 838
    .line 839
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 840
    .line 841
    .line 842
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 843
    .line 844
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 845
    .line 846
    const-string v2, "maroon"

    .line 847
    .line 848
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 849
    .line 850
    .line 851
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 852
    .line 853
    const v1, -0x993256

    .line 854
    .line 855
    .line 856
    const-string v2, "mediumaquamarine"

    .line 857
    .line 858
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 859
    .line 860
    .line 861
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 862
    .line 863
    const v1, -0xffff33

    .line 864
    .line 865
    .line 866
    const-string v2, "mediumblue"

    .line 867
    .line 868
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 869
    .line 870
    .line 871
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 872
    .line 873
    const v1, -0x45aa2d

    .line 874
    .line 875
    .line 876
    const-string v2, "mediumorchid"

    .line 877
    .line 878
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 879
    .line 880
    .line 881
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 882
    .line 883
    const v1, -0x6c8f28

    .line 884
    .line 885
    .line 886
    const-string v2, "mediumpurple"

    .line 887
    .line 888
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 889
    .line 890
    .line 891
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 892
    .line 893
    const v1, -0xc34c8f

    .line 894
    .line 895
    .line 896
    const-string v2, "mediumseagreen"

    .line 897
    .line 898
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 899
    .line 900
    .line 901
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 902
    .line 903
    const v1, -0x849712

    .line 904
    .line 905
    .line 906
    const-string v2, "mediumslateblue"

    .line 907
    .line 908
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 909
    .line 910
    .line 911
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 912
    .line 913
    const v1, -0xff0566

    .line 914
    .line 915
    .line 916
    const-string v2, "mediumspringgreen"

    .line 917
    .line 918
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 919
    .line 920
    .line 921
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 922
    .line 923
    const v1, -0xb72e34

    .line 924
    .line 925
    .line 926
    const-string v2, "mediumturquoise"

    .line 927
    .line 928
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 929
    .line 930
    .line 931
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 932
    .line 933
    const v1, -0x38ea7b

    .line 934
    .line 935
    .line 936
    const-string v2, "mediumvioletred"

    .line 937
    .line 938
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 939
    .line 940
    .line 941
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 942
    .line 943
    const v1, -0xe6e690

    .line 944
    .line 945
    .line 946
    const-string v2, "midnightblue"

    .line 947
    .line 948
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 949
    .line 950
    .line 951
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 952
    .line 953
    const v1, -0xa0006

    .line 954
    .line 955
    .line 956
    const-string v2, "mintcream"

    .line 957
    .line 958
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 959
    .line 960
    .line 961
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 962
    .line 963
    const/16 v1, -0x1b1f

    .line 964
    .line 965
    const-string v2, "mistyrose"

    .line 966
    .line 967
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 968
    .line 969
    .line 970
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 971
    .line 972
    const/16 v1, -0x1b4b

    .line 973
    .line 974
    const-string v2, "moccasin"

    .line 975
    .line 976
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 977
    .line 978
    .line 979
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 980
    .line 981
    const/16 v1, -0x2153

    .line 982
    .line 983
    const-string v2, "navajowhite"

    .line 984
    .line 985
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 986
    .line 987
    .line 988
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 989
    .line 990
    const v1, -0xffff80

    .line 991
    .line 992
    .line 993
    const-string v2, "navy"

    .line 994
    .line 995
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 996
    .line 997
    .line 998
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 999
    .line 1000
    const v1, -0x20a1a

    .line 1001
    .line 1002
    .line 1003
    const-string v2, "oldlace"

    .line 1004
    .line 1005
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1006
    .line 1007
    .line 1008
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1009
    .line 1010
    const v1, -0x7f8000

    .line 1011
    .line 1012
    .line 1013
    const-string v2, "olive"

    .line 1014
    .line 1015
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1016
    .line 1017
    .line 1018
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1019
    .line 1020
    const v1, -0x9471dd

    .line 1021
    .line 1022
    .line 1023
    const-string v2, "olivedrab"

    .line 1024
    .line 1025
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1026
    .line 1027
    .line 1028
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1029
    .line 1030
    const/16 v1, -0x5b00

    .line 1031
    .line 1032
    const-string v2, "orange"

    .line 1033
    .line 1034
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1035
    .line 1036
    .line 1037
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1038
    .line 1039
    const v1, -0xbb00

    .line 1040
    .line 1041
    .line 1042
    const-string v2, "orangered"

    .line 1043
    .line 1044
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1045
    .line 1046
    .line 1047
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1048
    .line 1049
    const v1, -0x258f2a

    .line 1050
    .line 1051
    .line 1052
    const-string v2, "orchid"

    .line 1053
    .line 1054
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1055
    .line 1056
    .line 1057
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1058
    .line 1059
    const v1, -0x111756

    .line 1060
    .line 1061
    .line 1062
    const-string v2, "palegoldenrod"

    .line 1063
    .line 1064
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1065
    .line 1066
    .line 1067
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1068
    .line 1069
    const v1, -0x670468

    .line 1070
    .line 1071
    .line 1072
    const-string v2, "palegreen"

    .line 1073
    .line 1074
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1075
    .line 1076
    .line 1077
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1078
    .line 1079
    const v1, -0x501112

    .line 1080
    .line 1081
    .line 1082
    const-string v2, "paleturquoise"

    .line 1083
    .line 1084
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1085
    .line 1086
    .line 1087
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1088
    .line 1089
    const v1, -0x278f6d

    .line 1090
    .line 1091
    .line 1092
    const-string v2, "palevioletred"

    .line 1093
    .line 1094
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1095
    .line 1096
    .line 1097
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1098
    .line 1099
    const/16 v1, -0x102b

    .line 1100
    .line 1101
    const-string v2, "papayawhip"

    .line 1102
    .line 1103
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1104
    .line 1105
    .line 1106
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1107
    .line 1108
    const/16 v1, -0x2547

    .line 1109
    .line 1110
    const-string v2, "peachpuff"

    .line 1111
    .line 1112
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1113
    .line 1114
    .line 1115
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1116
    .line 1117
    const v1, -0x327ac1

    .line 1118
    .line 1119
    .line 1120
    const-string v2, "peru"

    .line 1121
    .line 1122
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1123
    .line 1124
    .line 1125
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1126
    .line 1127
    const/16 v1, -0x3f35

    .line 1128
    .line 1129
    const-string v2, "pink"

    .line 1130
    .line 1131
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1132
    .line 1133
    .line 1134
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1135
    .line 1136
    const v1, -0x225f23

    .line 1137
    .line 1138
    .line 1139
    const-string v2, "plum"

    .line 1140
    .line 1141
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1142
    .line 1143
    .line 1144
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1145
    .line 1146
    const v1, -0x4f1f1a

    .line 1147
    .line 1148
    .line 1149
    const-string v2, "powderblue"

    .line 1150
    .line 1151
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1152
    .line 1153
    .line 1154
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1155
    .line 1156
    const v1, -0x7fff80

    .line 1157
    .line 1158
    .line 1159
    const-string v2, "purple"

    .line 1160
    .line 1161
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1162
    .line 1163
    .line 1164
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1165
    .line 1166
    const/high16 v1, -0x10000

    .line 1167
    .line 1168
    const-string v2, "red"

    .line 1169
    .line 1170
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1171
    .line 1172
    .line 1173
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1174
    .line 1175
    const v1, -0x437071

    .line 1176
    .line 1177
    .line 1178
    const-string v2, "rosybrown"

    .line 1179
    .line 1180
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1181
    .line 1182
    .line 1183
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1184
    .line 1185
    const v1, -0xbe961f

    .line 1186
    .line 1187
    .line 1188
    const-string v2, "royalblue"

    .line 1189
    .line 1190
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1191
    .line 1192
    .line 1193
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1194
    .line 1195
    const v1, -0x74baed

    .line 1196
    .line 1197
    .line 1198
    const-string v2, "saddlebrown"

    .line 1199
    .line 1200
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1201
    .line 1202
    .line 1203
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1204
    .line 1205
    const v1, -0x57f8e

    .line 1206
    .line 1207
    .line 1208
    const-string v2, "salmon"

    .line 1209
    .line 1210
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1211
    .line 1212
    .line 1213
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1214
    .line 1215
    const v1, -0xb5ba0

    .line 1216
    .line 1217
    .line 1218
    const-string v2, "sandybrown"

    .line 1219
    .line 1220
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1221
    .line 1222
    .line 1223
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1224
    .line 1225
    const v1, -0xd174a9

    .line 1226
    .line 1227
    .line 1228
    const-string v2, "seagreen"

    .line 1229
    .line 1230
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1231
    .line 1232
    .line 1233
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1234
    .line 1235
    const/16 v1, -0xa12

    .line 1236
    .line 1237
    const-string v2, "seashell"

    .line 1238
    .line 1239
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1240
    .line 1241
    .line 1242
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1243
    .line 1244
    const v1, -0x5fadd3

    .line 1245
    .line 1246
    .line 1247
    const-string v2, "sienna"

    .line 1248
    .line 1249
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1250
    .line 1251
    .line 1252
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1253
    .line 1254
    const v1, -0x3f3f40

    .line 1255
    .line 1256
    .line 1257
    const-string v2, "silver"

    .line 1258
    .line 1259
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1260
    .line 1261
    .line 1262
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1263
    .line 1264
    const v1, -0x783115

    .line 1265
    .line 1266
    .line 1267
    const-string v2, "skyblue"

    .line 1268
    .line 1269
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1270
    .line 1271
    .line 1272
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1273
    .line 1274
    const v1, -0x95a533

    .line 1275
    .line 1276
    .line 1277
    const-string v2, "slateblue"

    .line 1278
    .line 1279
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1280
    .line 1281
    .line 1282
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1283
    .line 1284
    const v1, -0x8f7f70

    .line 1285
    .line 1286
    .line 1287
    const-string v2, "slategray"

    .line 1288
    .line 1289
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1290
    .line 1291
    .line 1292
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1293
    .line 1294
    const-string v2, "slategrey"

    .line 1295
    .line 1296
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1297
    .line 1298
    .line 1299
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1300
    .line 1301
    const/16 v1, -0x506

    .line 1302
    .line 1303
    const-string v2, "snow"

    .line 1304
    .line 1305
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1306
    .line 1307
    .line 1308
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1309
    .line 1310
    const v1, -0xff0081

    .line 1311
    .line 1312
    .line 1313
    const-string v2, "springgreen"

    .line 1314
    .line 1315
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1316
    .line 1317
    .line 1318
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1319
    .line 1320
    const v1, -0xb97d4c

    .line 1321
    .line 1322
    .line 1323
    const-string v2, "steelblue"

    .line 1324
    .line 1325
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1326
    .line 1327
    .line 1328
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1329
    .line 1330
    const v1, -0x2d4b74

    .line 1331
    .line 1332
    .line 1333
    const-string v2, "tan"

    .line 1334
    .line 1335
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1336
    .line 1337
    .line 1338
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1339
    .line 1340
    const v1, -0xff7f80

    .line 1341
    .line 1342
    .line 1343
    const-string v2, "teal"

    .line 1344
    .line 1345
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1346
    .line 1347
    .line 1348
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1349
    .line 1350
    const v1, -0x274028

    .line 1351
    .line 1352
    .line 1353
    const-string v2, "thistle"

    .line 1354
    .line 1355
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1356
    .line 1357
    .line 1358
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1359
    .line 1360
    const v1, -0x9cb9

    .line 1361
    .line 1362
    .line 1363
    const-string v2, "tomato"

    .line 1364
    .line 1365
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1366
    .line 1367
    .line 1368
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1369
    .line 1370
    const v1, -0xbf1f30

    .line 1371
    .line 1372
    .line 1373
    const-string v2, "turquoise"

    .line 1374
    .line 1375
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1376
    .line 1377
    .line 1378
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1379
    .line 1380
    const v1, -0x117d12

    .line 1381
    .line 1382
    .line 1383
    const-string v2, "violet"

    .line 1384
    .line 1385
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1386
    .line 1387
    .line 1388
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1389
    .line 1390
    const v1, -0xa214d

    .line 1391
    .line 1392
    .line 1393
    const-string v2, "wheat"

    .line 1394
    .line 1395
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1396
    .line 1397
    .line 1398
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1399
    .line 1400
    const/4 v1, -0x1

    .line 1401
    const-string v2, "white"

    .line 1402
    .line 1403
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1404
    .line 1405
    .line 1406
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1407
    .line 1408
    const/16 v1, 0xff0

    .line 1409
    .line 1410
    const-string v2, "windowtext"

    .line 1411
    .line 1412
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1413
    .line 1414
    .line 1415
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1416
    .line 1417
    const/4 v1, -0x1

    .line 1418
    const-string v2, "window"

    .line 1419
    .line 1420
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1421
    .line 1422
    .line 1423
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1424
    .line 1425
    const v1, -0xa0a0b

    .line 1426
    .line 1427
    .line 1428
    const-string v2, "whitesmoke"

    .line 1429
    .line 1430
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1431
    .line 1432
    .line 1433
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1434
    .line 1435
    const/16 v1, -0x100

    .line 1436
    .line 1437
    const-string v2, "yellow"

    .line 1438
    .line 1439
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1440
    .line 1441
    .line 1442
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1443
    .line 1444
    const v1, -0x6532ce

    .line 1445
    .line 1446
    .line 1447
    const-string v2, "yellowgreen"

    .line 1448
    .line 1449
    invoke-static {v0, v2, v1}, LA/g;->C(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 1450
    .line 1451
    .line 1452
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1453
    .line 1454
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 1455
    .line 1456
    .line 1457
    move-result v0

    .line 1458
    new-array v0, v0, [Ljava/lang/String;

    .line 1459
    .line 1460
    sput-object v0, Lcom/scand/svg/parser/Colors;->CSS_COLORS:[Ljava/lang/String;

    .line 1461
    .line 1462
    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    .line 1463
    .line 1464
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v0

    .line 1468
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v0

    .line 1472
    const/4 v1, 0x0

    .line 1473
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1474
    .line 1475
    .line 1476
    move-result v2

    .line 1477
    if-eqz v2, :cond_0

    .line 1478
    .line 1479
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v2

    .line 1483
    check-cast v2, Ljava/lang/String;

    .line 1484
    .line 1485
    sget-object v3, Lcom/scand/svg/parser/Colors;->CSS_COLORS:[Ljava/lang/String;

    .line 1486
    .line 1487
    add-int/lit8 v4, v1, 0x1

    .line 1488
    .line 1489
    aput-object v2, v3, v1

    .line 1490
    .line 1491
    move v1, v4

    .line 1492
    goto :goto_0

    .line 1493
    :cond_0
    return-void
.end method

.method public static getColor(Ljava/lang/String;)Lcom/scand/svg/parser/support/ColorSVG;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/scand/svg/parser/Colors;->CSS_COLORS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/scand/svg/parser/Colors;->COLOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    new-instance v0, Lcom/scand/svg/parser/support/ColorSVG;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/scand/svg/parser/support/ColorSVG;-><init>(I)V

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
