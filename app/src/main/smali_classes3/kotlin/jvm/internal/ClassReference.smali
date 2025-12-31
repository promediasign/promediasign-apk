.class public final Lkotlin/jvm/internal/ClassReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KClass;
.implements Lkotlin/jvm/internal/ClassBasedDeclarationContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/ClassReference$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KClass<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;"
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/jvm/internal/ClassReference$Companion;

.field private static final FUNCTION_CLASSES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lkotlin/Function<",
            "*>;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final classFqNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final primitiveFqNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final primitiveWrapperFqNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final simpleNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lkotlin/jvm/internal/ClassReference$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/ClassReference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/jvm/internal/ClassReference;->Companion:Lkotlin/jvm/internal/ClassReference$Companion;

    .line 8
    .line 9
    const/16 v0, 0x17

    .line 10
    .line 11
    new-array v0, v0, [Ljava/lang/Class;

    .line 12
    .line 13
    const-class v1, Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    const-class v1, Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    aput-object v1, v0, v3

    .line 22
    .line 23
    const-class v1, Lkotlin/jvm/functions/Function2;

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    aput-object v1, v0, v4

    .line 27
    .line 28
    const-class v1, Lkotlin/jvm/functions/Function3;

    .line 29
    .line 30
    const/4 v4, 0x3

    .line 31
    aput-object v1, v0, v4

    .line 32
    .line 33
    const-class v1, Lkotlin/jvm/functions/Function4;

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    aput-object v1, v0, v4

    .line 37
    .line 38
    const-class v1, Lkotlin/jvm/functions/Function5;

    .line 39
    .line 40
    const/4 v4, 0x5

    .line 41
    aput-object v1, v0, v4

    .line 42
    .line 43
    const-class v1, Lkotlin/jvm/functions/Function6;

    .line 44
    .line 45
    const/4 v4, 0x6

    .line 46
    aput-object v1, v0, v4

    .line 47
    .line 48
    const-class v1, Lkotlin/jvm/functions/Function7;

    .line 49
    .line 50
    const/4 v4, 0x7

    .line 51
    aput-object v1, v0, v4

    .line 52
    .line 53
    const-class v1, Lkotlin/jvm/functions/Function8;

    .line 54
    .line 55
    const/16 v4, 0x8

    .line 56
    .line 57
    aput-object v1, v0, v4

    .line 58
    .line 59
    const-class v1, Lkotlin/jvm/functions/Function9;

    .line 60
    .line 61
    const/16 v4, 0x9

    .line 62
    .line 63
    aput-object v1, v0, v4

    .line 64
    .line 65
    const-class v1, Lkotlin/jvm/functions/Function10;

    .line 66
    .line 67
    const/16 v4, 0xa

    .line 68
    .line 69
    aput-object v1, v0, v4

    .line 70
    .line 71
    const-class v1, Lkotlin/jvm/functions/Function11;

    .line 72
    .line 73
    const/16 v4, 0xb

    .line 74
    .line 75
    aput-object v1, v0, v4

    .line 76
    .line 77
    const-class v1, Lkotlin/jvm/functions/Function12;

    .line 78
    .line 79
    const/16 v4, 0xc

    .line 80
    .line 81
    aput-object v1, v0, v4

    .line 82
    .line 83
    const-class v1, Lkotlin/jvm/functions/Function13;

    .line 84
    .line 85
    const/16 v4, 0xd

    .line 86
    .line 87
    aput-object v1, v0, v4

    .line 88
    .line 89
    const-class v1, Lkotlin/jvm/functions/Function14;

    .line 90
    .line 91
    const/16 v4, 0xe

    .line 92
    .line 93
    aput-object v1, v0, v4

    .line 94
    .line 95
    const-class v1, Lkotlin/jvm/functions/Function15;

    .line 96
    .line 97
    const/16 v4, 0xf

    .line 98
    .line 99
    aput-object v1, v0, v4

    .line 100
    .line 101
    const-class v1, Lkotlin/jvm/functions/Function16;

    .line 102
    .line 103
    const/16 v4, 0x10

    .line 104
    .line 105
    aput-object v1, v0, v4

    .line 106
    .line 107
    const-class v1, Lkotlin/jvm/functions/Function17;

    .line 108
    .line 109
    const/16 v4, 0x11

    .line 110
    .line 111
    aput-object v1, v0, v4

    .line 112
    .line 113
    const-class v1, Lkotlin/jvm/functions/Function18;

    .line 114
    .line 115
    const/16 v4, 0x12

    .line 116
    .line 117
    aput-object v1, v0, v4

    .line 118
    .line 119
    const-class v1, Lkotlin/jvm/functions/Function19;

    .line 120
    .line 121
    const/16 v4, 0x13

    .line 122
    .line 123
    aput-object v1, v0, v4

    .line 124
    .line 125
    const-class v1, Lkotlin/jvm/functions/Function20;

    .line 126
    .line 127
    const/16 v4, 0x14

    .line 128
    .line 129
    aput-object v1, v0, v4

    .line 130
    .line 131
    const-class v1, Lkotlin/jvm/functions/Function21;

    .line 132
    .line 133
    const/16 v4, 0x15

    .line 134
    .line 135
    aput-object v1, v0, v4

    .line 136
    .line 137
    const-class v1, Lkotlin/jvm/functions/Function22;

    .line 138
    .line 139
    const/16 v4, 0x16

    .line 140
    .line 141
    aput-object v1, v0, v4

    .line 142
    .line 143
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Ljava/lang/Iterable;

    .line 148
    .line 149
    new-instance v1, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;)I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_1

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    add-int/lit8 v5, v2, 0x1

    .line 173
    .line 174
    if-gez v2, :cond_0

    .line 175
    .line 176
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 177
    .line 178
    .line 179
    :cond_0
    check-cast v4, Ljava/lang/Class;

    .line 180
    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move v2, v5

    .line 193
    goto :goto_0

    .line 194
    :cond_1
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    sput-object v0, Lkotlin/jvm/internal/ClassReference;->FUNCTION_CLASSES:Ljava/util/Map;

    .line 199
    .line 200
    const-string v0, "boolean"

    .line 201
    .line 202
    const-string v1, "kotlin.Boolean"

    .line 203
    .line 204
    const-string v2, "char"

    .line 205
    .line 206
    const-string v3, "kotlin.Char"

    .line 207
    .line 208
    invoke-static {v0, v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    const-string v2, "byte"

    .line 213
    .line 214
    const-string v4, "kotlin.Byte"

    .line 215
    .line 216
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    const-string v2, "short"

    .line 220
    .line 221
    const-string v5, "kotlin.Short"

    .line 222
    .line 223
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    const-string v2, "int"

    .line 227
    .line 228
    const-string v6, "kotlin.Int"

    .line 229
    .line 230
    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    const-string v2, "float"

    .line 234
    .line 235
    const-string v7, "kotlin.Float"

    .line 236
    .line 237
    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    const-string v2, "long"

    .line 241
    .line 242
    const-string v8, "kotlin.Long"

    .line 243
    .line 244
    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    const-string v2, "double"

    .line 248
    .line 249
    const-string v9, "kotlin.Double"

    .line 250
    .line 251
    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    sput-object v0, Lkotlin/jvm/internal/ClassReference;->primitiveFqNames:Ljava/util/HashMap;

    .line 255
    .line 256
    const-string v2, "java.lang.Boolean"

    .line 257
    .line 258
    const-string v10, "java.lang.Character"

    .line 259
    .line 260
    invoke-static {v2, v1, v10, v3}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    const-string v2, "java.lang.Byte"

    .line 265
    .line 266
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    const-string v2, "java.lang.Short"

    .line 270
    .line 271
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    const-string v2, "java.lang.Integer"

    .line 275
    .line 276
    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    const-string v2, "java.lang.Float"

    .line 280
    .line 281
    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    const-string v2, "java.lang.Long"

    .line 285
    .line 286
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    const-string v2, "java.lang.Double"

    .line 290
    .line 291
    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    sput-object v1, Lkotlin/jvm/internal/ClassReference;->primitiveWrapperFqNames:Ljava/util/HashMap;

    .line 295
    .line 296
    const-string v2, "java.lang.Object"

    .line 297
    .line 298
    const-string v3, "kotlin.Any"

    .line 299
    .line 300
    const-string v4, "java.lang.String"

    .line 301
    .line 302
    const-string v5, "kotlin.String"

    .line 303
    .line 304
    invoke-static {v2, v3, v4, v5}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    const-string v3, "java.lang.CharSequence"

    .line 309
    .line 310
    const-string v4, "kotlin.CharSequence"

    .line 311
    .line 312
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    const-string v3, "java.lang.Throwable"

    .line 316
    .line 317
    const-string v4, "kotlin.Throwable"

    .line 318
    .line 319
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    const-string v3, "java.lang.Cloneable"

    .line 323
    .line 324
    const-string v4, "kotlin.Cloneable"

    .line 325
    .line 326
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    const-string v3, "java.lang.Number"

    .line 330
    .line 331
    const-string v4, "kotlin.Number"

    .line 332
    .line 333
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    const-string v3, "java.lang.Comparable"

    .line 337
    .line 338
    const-string v4, "kotlin.Comparable"

    .line 339
    .line 340
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    const-string v3, "java.lang.Enum"

    .line 344
    .line 345
    const-string v4, "kotlin.Enum"

    .line 346
    .line 347
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    const-string v3, "java.lang.annotation.Annotation"

    .line 351
    .line 352
    const-string v4, "kotlin.Annotation"

    .line 353
    .line 354
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    const-string v3, "java.lang.Iterable"

    .line 358
    .line 359
    const-string v4, "kotlin.collections.Iterable"

    .line 360
    .line 361
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    const-string v3, "java.util.Iterator"

    .line 365
    .line 366
    const-string v4, "kotlin.collections.Iterator"

    .line 367
    .line 368
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    const-string v3, "java.util.Collection"

    .line 372
    .line 373
    const-string v4, "kotlin.collections.Collection"

    .line 374
    .line 375
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    const-string v3, "java.util.List"

    .line 379
    .line 380
    const-string v4, "kotlin.collections.List"

    .line 381
    .line 382
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    const-string v3, "java.util.Set"

    .line 386
    .line 387
    const-string v4, "kotlin.collections.Set"

    .line 388
    .line 389
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    const-string v3, "java.util.ListIterator"

    .line 393
    .line 394
    const-string v4, "kotlin.collections.ListIterator"

    .line 395
    .line 396
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    const-string v3, "java.util.Map"

    .line 400
    .line 401
    const-string v4, "kotlin.collections.Map"

    .line 402
    .line 403
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    const-string v3, "java.util.Map$Entry"

    .line 407
    .line 408
    const-string v4, "kotlin.collections.Map.Entry"

    .line 409
    .line 410
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    const-string v3, "kotlin.jvm.internal.StringCompanionObject"

    .line 414
    .line 415
    const-string v4, "kotlin.String.Companion"

    .line 416
    .line 417
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    const-string v3, "kotlin.jvm.internal.EnumCompanionObject"

    .line 421
    .line 422
    const-string v4, "kotlin.Enum.Companion"

    .line 423
    .line 424
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    const-string v1, "primitiveFqNames.values"

    .line 438
    .line 439
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    check-cast v0, Ljava/lang/Iterable;

    .line 443
    .line 444
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-eqz v1, :cond_2

    .line 453
    .line 454
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    check-cast v1, Ljava/lang/String;

    .line 459
    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    const-string v4, "kotlin.jvm.internal."

    .line 463
    .line 464
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const-string v4, "kotlinName"

    .line 468
    .line 469
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-static {v1}, Lkotlin/text/StringsKt;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v4, "CompanionObject"

    .line 480
    .line 481
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    new-instance v4, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    const-string v1, ".Companion"

    .line 497
    .line 498
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    goto :goto_1

    .line 521
    :cond_2
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->FUNCTION_CLASSES:Ljava/util/Map;

    .line 522
    .line 523
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    if-eqz v1, :cond_3

    .line 536
    .line 537
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    check-cast v1, Ljava/util/Map$Entry;

    .line 542
    .line 543
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    check-cast v3, Ljava/lang/Class;

    .line 548
    .line 549
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    check-cast v1, Ljava/lang/Number;

    .line 554
    .line 555
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    const-string v5, "kotlin.Function"

    .line 566
    .line 567
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    goto :goto_2

    .line 581
    :cond_3
    sput-object v2, Lkotlin/jvm/internal/ClassReference;->classFqNames:Ljava/util/HashMap;

    .line 582
    .line 583
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 584
    .line 585
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 586
    .line 587
    .line 588
    move-result v1

    .line 589
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 605
    .line 606
    .line 607
    move-result v2

    .line 608
    if-eqz v2, :cond_4

    .line 609
    .line 610
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    check-cast v2, Ljava/util/Map$Entry;

    .line 615
    .line 616
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    check-cast v2, Ljava/lang/String;

    .line 625
    .line 626
    invoke-static {v2}, Lkotlin/text/StringsKt;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    goto :goto_3

    .line 634
    :cond_4
    sput-object v0, Lkotlin/jvm/internal/ClassReference;->simpleNames:Ljava/util/Map;

    .line 635
    .line 636
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    return-void
.end method

.method public static final synthetic access$getSimpleNames$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/ClassReference;->simpleNames:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lkotlin/jvm/internal/ClassReference;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    check-cast p1, Lkotlin/reflect/KClass;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getJClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lkotlin/jvm/internal/ClassReference;->Companion:Lkotlin/jvm/internal/ClassReference$Companion;

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference$Companion;->getClassSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
