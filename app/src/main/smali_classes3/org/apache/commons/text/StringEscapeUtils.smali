.class public abstract Lorg/apache/commons/text/StringEscapeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/StringEscapeUtils$XsiUnescaper;
    }
.end annotation


# static fields
.field public static final ESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML10:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML11:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XML:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    const-string v0, "\""

    .line 2
    .line 3
    const-string v1, "\\\""

    .line 4
    .line 5
    const-string v2, "\\"

    .line 6
    .line 7
    const-string v3, "\\\\"

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    new-instance v5, Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 14
    .line 15
    new-instance v6, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 16
    .line 17
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-direct {v6, v4}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 25
    .line 26
    sget-object v7, Lorg/apache/commons/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE:Ljava/util/Map;

    .line 27
    .line 28
    invoke-direct {v4, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    const/16 v8, 0x20

    .line 32
    .line 33
    const/16 v9, 0x7f

    .line 34
    .line 35
    invoke-static {v8, v9}, Lorg/apache/commons/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/text/translate/JavaUnicodeEscaper;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    const/4 v11, 0x3

    .line 40
    new-array v12, v11, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 41
    .line 42
    const/4 v13, 0x0

    .line 43
    aput-object v6, v12, v13

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    aput-object v4, v12, v6

    .line 47
    .line 48
    const/4 v4, 0x2

    .line 49
    aput-object v10, v12, v4

    .line 50
    .line 51
    invoke-direct {v5, v12}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 52
    .line 53
    .line 54
    sput-object v5, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 55
    .line 56
    const-string v5, "\'"

    .line 57
    .line 58
    const-string v10, "\\\'"

    .line 59
    .line 60
    invoke-static {v5, v10, v0, v1}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    const-string v14, "/"

    .line 68
    .line 69
    const-string v15, "\\/"

    .line 70
    .line 71
    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    new-instance v4, Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 75
    .line 76
    new-instance v6, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 77
    .line 78
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    invoke-direct {v6, v12}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 83
    .line 84
    .line 85
    new-instance v12, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 86
    .line 87
    invoke-direct {v12, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v8, v9}, Lorg/apache/commons/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/text/translate/JavaUnicodeEscaper;

    .line 91
    .line 92
    .line 93
    move-result-object v17

    .line 94
    new-array v9, v11, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 95
    .line 96
    aput-object v6, v9, v13

    .line 97
    .line 98
    const/4 v6, 0x1

    .line 99
    aput-object v12, v9, v6

    .line 100
    .line 101
    const/4 v6, 0x2

    .line 102
    aput-object v17, v9, v6

    .line 103
    .line 104
    invoke-direct {v4, v9}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 105
    .line 106
    .line 107
    sput-object v4, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 108
    .line 109
    invoke-static {v0, v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    new-instance v6, Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 117
    .line 118
    new-instance v9, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 119
    .line 120
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-direct {v9, v4}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 125
    .line 126
    .line 127
    new-instance v4, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 128
    .line 129
    invoke-direct {v4, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 130
    .line 131
    .line 132
    const/16 v7, 0x7e

    .line 133
    .line 134
    invoke-static {v8, v7}, Lorg/apache/commons/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/text/translate/JavaUnicodeEscaper;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    new-array v8, v11, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 139
    .line 140
    aput-object v9, v8, v13

    .line 141
    .line 142
    const/4 v9, 0x1

    .line 143
    aput-object v4, v8, v9

    .line 144
    .line 145
    const/4 v4, 0x2

    .line 146
    aput-object v7, v8, v4

    .line 147
    .line 148
    invoke-direct {v6, v8}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 149
    .line 150
    .line 151
    sput-object v6, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 152
    .line 153
    const-string v4, "\u0000"

    .line 154
    .line 155
    const-string v6, ""

    .line 156
    .line 157
    const-string v7, "\u0001"

    .line 158
    .line 159
    invoke-static {v4, v6, v7, v6}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    const-string v8, "\u0002"

    .line 164
    .line 165
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    const-string v8, "\u0003"

    .line 169
    .line 170
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    const-string v8, "\u0004"

    .line 174
    .line 175
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    const-string v8, "\u0005"

    .line 179
    .line 180
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    const-string v8, "\u0006"

    .line 184
    .line 185
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    const-string v8, "\u0007"

    .line 189
    .line 190
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    const-string v8, "\u0008"

    .line 194
    .line 195
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    const-string v8, "\u000b"

    .line 199
    .line 200
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    const-string v9, "\u000c"

    .line 204
    .line 205
    invoke-virtual {v7, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    const-string v12, "\u000e"

    .line 209
    .line 210
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    const-string v12, "\u000f"

    .line 214
    .line 215
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    const-string v12, "\u0010"

    .line 219
    .line 220
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    const-string v12, "\u0011"

    .line 224
    .line 225
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    const-string v12, "\u0012"

    .line 229
    .line 230
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    const-string v12, "\u0013"

    .line 234
    .line 235
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    const-string v12, "\u0014"

    .line 239
    .line 240
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    const-string v12, "\u0015"

    .line 244
    .line 245
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    const-string v12, "\u0016"

    .line 249
    .line 250
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    const-string v12, "\u0017"

    .line 254
    .line 255
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    const-string v12, "\u0018"

    .line 259
    .line 260
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    const-string v12, "\u0019"

    .line 264
    .line 265
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    const-string v12, "\u001a"

    .line 269
    .line 270
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    const-string v12, "\u001b"

    .line 274
    .line 275
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    const-string v12, "\u001c"

    .line 279
    .line 280
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    const-string v12, "\u001d"

    .line 284
    .line 285
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    const-string v12, "\u001e"

    .line 289
    .line 290
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    const-string v12, "\u001f"

    .line 294
    .line 295
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    const-string v12, "\ufffe"

    .line 299
    .line 300
    invoke-virtual {v7, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    const-string v14, "\uffff"

    .line 304
    .line 305
    invoke-virtual {v7, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    new-instance v15, Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 309
    .line 310
    new-instance v11, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 311
    .line 312
    sget-object v13, Lorg/apache/commons/text/translate/EntityArrays;->BASIC_ESCAPE:Ljava/util/Map;

    .line 313
    .line 314
    invoke-direct {v11, v13}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 315
    .line 316
    .line 317
    move-object/from16 v19, v5

    .line 318
    .line 319
    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 320
    .line 321
    move-object/from16 v20, v10

    .line 322
    .line 323
    sget-object v10, Lorg/apache/commons/text/translate/EntityArrays;->APOS_ESCAPE:Ljava/util/Map;

    .line 324
    .line 325
    invoke-direct {v5, v10}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 326
    .line 327
    .line 328
    move-object/from16 v21, v0

    .line 329
    .line 330
    new-instance v0, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 331
    .line 332
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    invoke-direct {v0, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 337
    .line 338
    .line 339
    const/16 v7, 0x84

    .line 340
    .line 341
    move-object/from16 v22, v1

    .line 342
    .line 343
    const/16 v1, 0x7f

    .line 344
    .line 345
    invoke-static {v1, v7}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    .line 346
    .line 347
    .line 348
    move-result-object v23

    .line 349
    const/16 v1, 0x86

    .line 350
    .line 351
    const/16 v7, 0x9f

    .line 352
    .line 353
    invoke-static {v1, v7}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    .line 354
    .line 355
    .line 356
    move-result-object v24

    .line 357
    new-instance v25, Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;

    .line 358
    .line 359
    invoke-direct/range {v25 .. v25}, Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    .line 360
    .line 361
    .line 362
    const/4 v1, 0x6

    .line 363
    new-array v7, v1, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 364
    .line 365
    const/16 v18, 0x0

    .line 366
    .line 367
    aput-object v11, v7, v18

    .line 368
    .line 369
    const/4 v11, 0x1

    .line 370
    aput-object v5, v7, v11

    .line 371
    .line 372
    const/4 v5, 0x2

    .line 373
    aput-object v0, v7, v5

    .line 374
    .line 375
    const/4 v0, 0x3

    .line 376
    aput-object v23, v7, v0

    .line 377
    .line 378
    const/4 v0, 0x4

    .line 379
    aput-object v24, v7, v0

    .line 380
    .line 381
    const/4 v5, 0x5

    .line 382
    aput-object v25, v7, v5

    .line 383
    .line 384
    invoke-direct {v15, v7}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 385
    .line 386
    .line 387
    sput-object v15, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 388
    .line 389
    const-string v7, "&#11;"

    .line 390
    .line 391
    invoke-static {v4, v6, v8, v7}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    const-string v7, "&#12;"

    .line 396
    .line 397
    invoke-virtual {v4, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v4, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    new-instance v7, Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 407
    .line 408
    new-instance v8, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 409
    .line 410
    invoke-direct {v8, v13}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 411
    .line 412
    .line 413
    new-instance v9, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 414
    .line 415
    invoke-direct {v9, v10}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 416
    .line 417
    .line 418
    new-instance v10, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 419
    .line 420
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    invoke-direct {v10, v4}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 425
    .line 426
    .line 427
    const/16 v4, 0x8

    .line 428
    .line 429
    const/4 v11, 0x1

    .line 430
    invoke-static {v11, v4}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    .line 431
    .line 432
    .line 433
    move-result-object v12

    .line 434
    const/16 v14, 0xe

    .line 435
    .line 436
    const/16 v15, 0x1f

    .line 437
    .line 438
    invoke-static {v14, v15}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    .line 439
    .line 440
    .line 441
    move-result-object v14

    .line 442
    const/16 v1, 0x84

    .line 443
    .line 444
    const/16 v15, 0x7f

    .line 445
    .line 446
    invoke-static {v15, v1}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    const/16 v5, 0x9f

    .line 451
    .line 452
    const/16 v15, 0x86

    .line 453
    .line 454
    invoke-static {v15, v5}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    new-instance v15, Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;

    .line 459
    .line 460
    invoke-direct {v15}, Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    .line 461
    .line 462
    .line 463
    new-array v4, v4, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 464
    .line 465
    const/16 v16, 0x0

    .line 466
    .line 467
    aput-object v8, v4, v16

    .line 468
    .line 469
    aput-object v9, v4, v11

    .line 470
    .line 471
    const/4 v8, 0x2

    .line 472
    aput-object v10, v4, v8

    .line 473
    .line 474
    const/4 v8, 0x3

    .line 475
    aput-object v12, v4, v8

    .line 476
    .line 477
    aput-object v14, v4, v0

    .line 478
    .line 479
    const/4 v8, 0x5

    .line 480
    aput-object v1, v4, v8

    .line 481
    .line 482
    const/4 v1, 0x6

    .line 483
    aput-object v5, v4, v1

    .line 484
    .line 485
    const/4 v1, 0x7

    .line 486
    aput-object v15, v4, v1

    .line 487
    .line 488
    invoke-direct {v7, v4}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 489
    .line 490
    .line 491
    sput-object v7, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 492
    .line 493
    new-instance v1, Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 494
    .line 495
    new-instance v4, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 496
    .line 497
    invoke-direct {v4, v13}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 498
    .line 499
    .line 500
    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 501
    .line 502
    sget-object v7, Lorg/apache/commons/text/translate/EntityArrays;->ISO8859_1_ESCAPE:Ljava/util/Map;

    .line 503
    .line 504
    invoke-direct {v5, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 505
    .line 506
    .line 507
    const/4 v8, 0x2

    .line 508
    new-array v9, v8, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 509
    .line 510
    const/4 v8, 0x0

    .line 511
    aput-object v4, v9, v8

    .line 512
    .line 513
    const/4 v4, 0x1

    .line 514
    aput-object v5, v9, v4

    .line 515
    .line 516
    invoke-direct {v1, v9}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 517
    .line 518
    .line 519
    sput-object v1, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 520
    .line 521
    new-instance v1, Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 522
    .line 523
    new-instance v4, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 524
    .line 525
    invoke-direct {v4, v13}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 526
    .line 527
    .line 528
    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 529
    .line 530
    invoke-direct {v5, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 531
    .line 532
    .line 533
    new-instance v7, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 534
    .line 535
    sget-object v8, Lorg/apache/commons/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE:Ljava/util/Map;

    .line 536
    .line 537
    invoke-direct {v7, v8}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 538
    .line 539
    .line 540
    const/4 v8, 0x3

    .line 541
    new-array v9, v8, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 542
    .line 543
    const/4 v8, 0x0

    .line 544
    aput-object v4, v9, v8

    .line 545
    .line 546
    const/4 v4, 0x1

    .line 547
    aput-object v5, v9, v4

    .line 548
    .line 549
    const/4 v4, 0x2

    .line 550
    aput-object v7, v9, v4

    .line 551
    .line 552
    invoke-direct {v1, v9}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 553
    .line 554
    .line 555
    sput-object v1, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 556
    .line 557
    new-instance v1, Lorg/apache/commons/text/translate/CsvTranslators$CsvEscaper;

    .line 558
    .line 559
    invoke-direct {v1}, Lorg/apache/commons/text/translate/CsvTranslators$CsvEscaper;-><init>()V

    .line 560
    .line 561
    .line 562
    sput-object v1, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 563
    .line 564
    const-string v1, "|"

    .line 565
    .line 566
    const-string v4, "\\|"

    .line 567
    .line 568
    const-string v5, "&"

    .line 569
    .line 570
    const-string v7, "\\&"

    .line 571
    .line 572
    invoke-static {v1, v4, v5, v7}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    const-string v4, ";"

    .line 577
    .line 578
    const-string v5, "\\;"

    .line 579
    .line 580
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    const-string v4, "<"

    .line 584
    .line 585
    const-string v5, "\\<"

    .line 586
    .line 587
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    const-string v4, ">"

    .line 591
    .line 592
    const-string v5, "\\>"

    .line 593
    .line 594
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    const-string v4, "("

    .line 598
    .line 599
    const-string v5, "\\("

    .line 600
    .line 601
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    const-string v4, ")"

    .line 605
    .line 606
    const-string v5, "\\)"

    .line 607
    .line 608
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    const-string v4, "$"

    .line 612
    .line 613
    const-string v5, "\\$"

    .line 614
    .line 615
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    const-string v4, "`"

    .line 619
    .line 620
    const-string v5, "\\`"

    .line 621
    .line 622
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-object/from16 v4, v21

    .line 629
    .line 630
    move-object/from16 v5, v22

    .line 631
    .line 632
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-object/from16 v7, v19

    .line 636
    .line 637
    move-object/from16 v8, v20

    .line 638
    .line 639
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    const-string v9, " "

    .line 643
    .line 644
    const-string v10, "\\ "

    .line 645
    .line 646
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    const-string v9, "\t"

    .line 650
    .line 651
    const-string v10, "\\\t"

    .line 652
    .line 653
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    const-string v9, "\r\n"

    .line 657
    .line 658
    invoke-virtual {v1, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    const-string v9, "\n"

    .line 662
    .line 663
    invoke-virtual {v1, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    const-string v9, "*"

    .line 667
    .line 668
    const-string v10, "\\*"

    .line 669
    .line 670
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    const-string v9, "?"

    .line 674
    .line 675
    const-string v10, "\\?"

    .line 676
    .line 677
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    const-string v9, "["

    .line 681
    .line 682
    const-string v10, "\\["

    .line 683
    .line 684
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    const-string v9, "#"

    .line 688
    .line 689
    const-string v10, "\\#"

    .line 690
    .line 691
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    const-string v9, "~"

    .line 695
    .line 696
    const-string v10, "\\~"

    .line 697
    .line 698
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    const-string v9, "="

    .line 702
    .line 703
    const-string v10, "\\="

    .line 704
    .line 705
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    const-string v9, "%"

    .line 709
    .line 710
    const-string v10, "\\%"

    .line 711
    .line 712
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    new-instance v9, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 716
    .line 717
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    invoke-direct {v9, v1}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 722
    .line 723
    .line 724
    sput-object v9, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 725
    .line 726
    invoke-static {v3, v2, v5, v4}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    new-instance v2, Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 737
    .line 738
    new-instance v3, Lorg/apache/commons/text/translate/OctalUnescaper;

    .line 739
    .line 740
    invoke-direct {v3}, Lorg/apache/commons/text/translate/OctalUnescaper;-><init>()V

    .line 741
    .line 742
    .line 743
    new-instance v4, Lorg/apache/commons/text/translate/UnicodeUnescaper;

    .line 744
    .line 745
    invoke-direct {v4}, Lorg/apache/commons/text/translate/UnicodeUnescaper;-><init>()V

    .line 746
    .line 747
    .line 748
    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 749
    .line 750
    sget-object v6, Lorg/apache/commons/text/translate/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE:Ljava/util/Map;

    .line 751
    .line 752
    invoke-direct {v5, v6}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 753
    .line 754
    .line 755
    new-instance v6, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 756
    .line 757
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    invoke-direct {v6, v1}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 762
    .line 763
    .line 764
    new-array v1, v0, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 765
    .line 766
    const/4 v7, 0x0

    .line 767
    aput-object v3, v1, v7

    .line 768
    .line 769
    const/4 v3, 0x1

    .line 770
    aput-object v4, v1, v3

    .line 771
    .line 772
    const/4 v3, 0x2

    .line 773
    aput-object v5, v1, v3

    .line 774
    .line 775
    const/4 v3, 0x3

    .line 776
    aput-object v6, v1, v3

    .line 777
    .line 778
    invoke-direct {v2, v1}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 779
    .line 780
    .line 781
    sput-object v2, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 782
    .line 783
    sput-object v2, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 784
    .line 785
    sput-object v2, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 786
    .line 787
    new-instance v1, Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 788
    .line 789
    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 790
    .line 791
    sget-object v3, Lorg/apache/commons/text/translate/EntityArrays;->BASIC_UNESCAPE:Ljava/util/Map;

    .line 792
    .line 793
    invoke-direct {v2, v3}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 794
    .line 795
    .line 796
    new-instance v4, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 797
    .line 798
    sget-object v5, Lorg/apache/commons/text/translate/EntityArrays;->ISO8859_1_UNESCAPE:Ljava/util/Map;

    .line 799
    .line 800
    invoke-direct {v4, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 801
    .line 802
    .line 803
    new-instance v6, Lorg/apache/commons/text/translate/NumericEntityUnescaper;

    .line 804
    .line 805
    const/4 v7, 0x0

    .line 806
    new-array v8, v7, [Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    .line 807
    .line 808
    invoke-direct {v6, v8}, Lorg/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    .line 809
    .line 810
    .line 811
    const/4 v8, 0x3

    .line 812
    new-array v9, v8, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 813
    .line 814
    aput-object v2, v9, v7

    .line 815
    .line 816
    const/4 v2, 0x1

    .line 817
    aput-object v4, v9, v2

    .line 818
    .line 819
    const/4 v2, 0x2

    .line 820
    aput-object v6, v9, v2

    .line 821
    .line 822
    invoke-direct {v1, v9}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 823
    .line 824
    .line 825
    sput-object v1, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 826
    .line 827
    new-instance v1, Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 828
    .line 829
    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 830
    .line 831
    invoke-direct {v2, v3}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 832
    .line 833
    .line 834
    new-instance v4, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 835
    .line 836
    invoke-direct {v4, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 837
    .line 838
    .line 839
    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 840
    .line 841
    sget-object v6, Lorg/apache/commons/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE:Ljava/util/Map;

    .line 842
    .line 843
    invoke-direct {v5, v6}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 844
    .line 845
    .line 846
    new-instance v6, Lorg/apache/commons/text/translate/NumericEntityUnescaper;

    .line 847
    .line 848
    const/4 v7, 0x0

    .line 849
    new-array v8, v7, [Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    .line 850
    .line 851
    invoke-direct {v6, v8}, Lorg/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    .line 852
    .line 853
    .line 854
    new-array v0, v0, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 855
    .line 856
    aput-object v2, v0, v7

    .line 857
    .line 858
    const/4 v2, 0x1

    .line 859
    aput-object v4, v0, v2

    .line 860
    .line 861
    const/4 v2, 0x2

    .line 862
    aput-object v5, v0, v2

    .line 863
    .line 864
    const/4 v2, 0x3

    .line 865
    aput-object v6, v0, v2

    .line 866
    .line 867
    invoke-direct {v1, v0}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 868
    .line 869
    .line 870
    sput-object v1, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 871
    .line 872
    new-instance v0, Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 873
    .line 874
    new-instance v1, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 875
    .line 876
    invoke-direct {v1, v3}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 877
    .line 878
    .line 879
    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 880
    .line 881
    sget-object v3, Lorg/apache/commons/text/translate/EntityArrays;->APOS_UNESCAPE:Ljava/util/Map;

    .line 882
    .line 883
    invoke-direct {v2, v3}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 884
    .line 885
    .line 886
    new-instance v3, Lorg/apache/commons/text/translate/NumericEntityUnescaper;

    .line 887
    .line 888
    const/4 v4, 0x0

    .line 889
    new-array v5, v4, [Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    .line 890
    .line 891
    invoke-direct {v3, v5}, Lorg/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    .line 892
    .line 893
    .line 894
    const/4 v5, 0x3

    .line 895
    new-array v5, v5, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 896
    .line 897
    aput-object v1, v5, v4

    .line 898
    .line 899
    const/4 v1, 0x1

    .line 900
    aput-object v2, v5, v1

    .line 901
    .line 902
    const/4 v1, 0x2

    .line 903
    aput-object v3, v5, v1

    .line 904
    .line 905
    invoke-direct {v0, v5}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 906
    .line 907
    .line 908
    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 909
    .line 910
    new-instance v0, Lorg/apache/commons/text/translate/CsvTranslators$CsvUnescaper;

    .line 911
    .line 912
    invoke-direct {v0}, Lorg/apache/commons/text/translate/CsvTranslators$CsvUnescaper;-><init>()V

    .line 913
    .line 914
    .line 915
    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 916
    .line 917
    new-instance v0, Lorg/apache/commons/text/StringEscapeUtils$XsiUnescaper;

    .line 918
    .line 919
    invoke-direct {v0}, Lorg/apache/commons/text/StringEscapeUtils$XsiUnescaper;-><init>()V

    .line 920
    .line 921
    .line 922
    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    .line 923
    .line 924
    return-void
.end method

.method public static final unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
