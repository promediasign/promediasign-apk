.class public Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;
.super Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.source "SourceFile"


# instance fields
.field private identifier:Ljava/lang/String;

.field protected strictRef:Z

.field protected uberInfo:Lorg/apache/velocity/util/introspection/Info;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(I)V

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->strictRef:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->strictRef:Z

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    :try_start_0
    invoke-interface {v4, v1}, Lorg/apache/velocity/context/InternalContextAdapter;->icacheGet(Ljava/lang/Object;)Lorg/apache/velocity/util/introspection/IntrospectionCacheData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object v3, v0, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;->contextData:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    if-ne v3, v5, :cond_1

    .line 22
    .line 23
    iget-object v0, v0, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;->thingy:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lorg/apache/velocity/util/introspection/VelPropertyGet;

    .line 26
    .line 27
    :cond_0
    :goto_0
    move-object v9, v0

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :catch_1
    move-exception v0

    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_1
    iget-object v0, v1, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 36
    .line 37
    invoke-interface {v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getUberspect()Lorg/apache/velocity/util/introspection/Uberspect;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v5, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 44
    .line 45
    invoke-interface {v0, v2, v3, v5}, Lorg/apache/velocity/util/introspection/Uberspect;->getPropertyGet(Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertyGet;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-interface {v0}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->isCacheable()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    new-instance v3, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;

    .line 60
    .line 61
    invoke-direct {v3}, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    iput-object v5, v3, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;->contextData:Ljava/lang/Class;

    .line 69
    .line 70
    iput-object v0, v3, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;->thingy:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-interface {v4, v1, v3}, Lorg/apache/velocity/context/InternalContextAdapter;->icachePut(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/IntrospectionCacheData;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :goto_1
    const/4 v0, 0x0

    .line 77
    if-nez v9, :cond_3

    .line 78
    .line 79
    iget-boolean v3, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->strictRef:Z

    .line 80
    .line 81
    if-nez v3, :cond_2

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_2
    new-instance v0, Lorg/apache/velocity/exception/MethodInvocationException;

    .line 85
    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v4, "Object \'"

    .line 89
    .line 90
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, "\' does not contain property \'"

    .line 105
    .line 106
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v2, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    .line 110
    .line 111
    const-string v4, "\'"

    .line 112
    .line 113
    invoke-static {v2, v4, v3}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iget-object v7, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v2, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 120
    .line 121
    invoke-virtual {v2}, Lorg/apache/velocity/util/introspection/Info;->getTemplateName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    iget-object v2, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 126
    .line 127
    invoke-virtual {v2}, Lorg/apache/velocity/util/introspection/Info;->getLine()I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    iget-object v2, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 132
    .line 133
    invoke-virtual {v2}, Lorg/apache/velocity/util/introspection/Info;->getColumn()I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    const/4 v6, 0x0

    .line 138
    move-object v4, v0

    .line 139
    invoke-direct/range {v4 .. v10}, Lorg/apache/velocity/exception/MethodInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :cond_3
    :try_start_1
    invoke-interface {v9, v2}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 147
    return-object v0

    .line 148
    :catch_2
    move-exception v0

    .line 149
    move-object v3, v0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v4, "ASTIdentifier() : exception invoking method for identifier \'"

    .line 153
    .line 154
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v4, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v4, "\' in "

    .line 163
    .line 164
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v2, v1, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    .line 179
    .line 180
    invoke-static {v2, v0, v3, v0, v3}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    throw v0

    .line 185
    :catch_3
    move-exception v0

    .line 186
    move-object v2, v0

    .line 187
    throw v2

    .line 188
    :catch_4
    return-object v0

    .line 189
    :catch_5
    move-exception v0

    .line 190
    move-object v10, v0

    .line 191
    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    instance-of v3, v0, Ljava/lang/Exception;

    .line 196
    .line 197
    const-string v11, " threw exception "

    .line 198
    .line 199
    const-string v12, "\' in  "

    .line 200
    .line 201
    const-string v13, "Invocation of method \'"

    .line 202
    .line 203
    if-eqz v3, :cond_4

    .line 204
    .line 205
    :try_start_2
    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 206
    .line 207
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-interface {v9}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->getMethodName()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    move-object v7, v0

    .line 216
    check-cast v7, Ljava/lang/Exception;

    .line 217
    .line 218
    iget-object v8, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 219
    .line 220
    move-object/from16 v4, p2

    .line 221
    .line 222
    invoke-static/range {v3 .. v8}, Lorg/apache/velocity/app/event/EventHandlerUtil;->methodException(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 226
    return-object v0

    .line 227
    :catch_6
    new-instance v0, Lorg/apache/velocity/exception/MethodInvocationException;

    .line 228
    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v9}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->getMethodName()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-interface {v9}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->getMethodName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    move-object v2, v0

    .line 290
    invoke-direct/range {v2 .. v8}, Lorg/apache/velocity/exception/MethodInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V

    .line 291
    .line 292
    .line 293
    throw v0

    .line 294
    :cond_4
    new-instance v0, Lorg/apache/velocity/exception/MethodInvocationException;

    .line 295
    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v9}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->getMethodName()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 337
    .line 338
    .line 339
    move-result-object v11

    .line 340
    invoke-interface {v9}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->getMethodName()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v12

    .line 344
    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v13

    .line 348
    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    .line 349
    .line 350
    .line 351
    move-result v14

    .line 352
    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    .line 353
    .line 354
    .line 355
    move-result v15

    .line 356
    move-object v9, v0

    .line 357
    move-object v10, v2

    .line 358
    invoke-direct/range {v9 .. v15}, Lorg/apache/velocity/exception/MethodInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string v3, "ASTIdentifier.execute() : identifier = "

    .line 365
    .line 366
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    .line 370
    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    .line 379
    .line 380
    invoke-static {v3, v2, v0, v2, v0}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    throw v0

    .line 385
    :goto_3
    throw v0
.end method

.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {p1}, Lorg/apache/velocity/runtime/RuntimeServices;->useStringInterning()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    new-instance p1, Lorg/apache/velocity/util/introspection/Info;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/velocity/util/introspection/Info;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "runtime.references.strict"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->strictRef:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->saveTokenImages()V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    return-object p2
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
