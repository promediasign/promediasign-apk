.class public Lorg/apache/velocity/runtime/directive/Parse;
.super Lorg/apache/velocity/runtime/directive/InputBase;
.source "SourceFile"


# instance fields
.field private maxDepth:I

.field public strictRef:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/InputBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/directive/Parse;->strictRef:Z

    return-void
.end method


# virtual methods
.method public checkArgs(Ljava/util/ArrayList;Lorg/apache/velocity/runtime/parser/Token;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/velocity/runtime/parser/Token;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "The argument to #parse is of the wrong type"

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "The #parse directive requires one argument"

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "parse"

    return-object v0
.end method

.method public getScopeName()Ljava/lang/String;
    .locals 1

    const-string v0, "template"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/directive/Directive;->init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string p2, "directive.parse.max.depth"

    const/16 p3, 0xa

    invoke-interface {p1, p2, p3}, Lorg/apache/velocity/runtime/RuntimeServices;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/apache/velocity/runtime/directive/Parse;->maxDepth:I

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string p2, "runtime.references.strict"

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/directive/Parse;->strictRef:Z

    return-void
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z
    .locals 8

    .line 1
    const-string v0, "Exception rendering #parse({}) at {}"

    .line 2
    .line 3
    const-string v1, ") at "

    .line 4
    .line 5
    const-string v2, "Exception rendering #parse("

    .line 6
    .line 7
    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetNumChildren()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_9

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-interface {p3, v3}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-interface {p3, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    if-nez p3, :cond_0

    .line 23
    .line 24
    iget-object v4, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 25
    .line 26
    const-string v5, "#parse(): null argument at {}"

    .line 27
    .line 28
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    if-nez p3, :cond_1

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :goto_0
    iget-object v5, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 44
    .line 45
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentTemplateName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Parse;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-static {v5, p1, v4, v6, v7}, Lorg/apache/velocity/app/event/EventHandlerUtil;->includeEvent(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget-boolean v5, p0, Lorg/apache/velocity/runtime/directive/Parse;->strictRef:Z

    .line 58
    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    if-nez p3, :cond_3

    .line 62
    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    new-instance p1, Lorg/apache/velocity/exception/VelocityException;

    .line 67
    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p3, "The argument to #parse returned null at "

    .line 71
    .line 72
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p1, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_3
    :goto_1
    const/4 p3, 0x1

    .line 91
    if-nez v4, :cond_4

    .line 92
    .line 93
    return p3

    .line 94
    :cond_4
    iget v5, p0, Lorg/apache/velocity/runtime/directive/Parse;->maxDepth:I

    .line 95
    .line 96
    if-lez v5, :cond_6

    .line 97
    .line 98
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getTemplateNameStack()[Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    array-length v6, v5

    .line 103
    iget v7, p0, Lorg/apache/velocity/runtime/directive/Parse;->maxDepth:I

    .line 104
    .line 105
    if-lt v6, v7, :cond_6

    .line 106
    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    array-length p2, v5

    .line 113
    const/4 p3, 0x0

    .line 114
    :goto_2
    if-ge p3, p2, :cond_5

    .line 115
    .line 116
    aget-object v0, v5, p3

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v2, " > "

    .line 121
    .line 122
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    add-int/lit8 p3, p3, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 139
    .line 140
    array-length p3, v5

    .line 141
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    const-string v0, "Max recursion depth reached ({}). File stack: {}"

    .line 146
    .line 147
    invoke-interface {p2, v0, p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    return v3

    .line 151
    :cond_6
    :try_start_0
    iget-object v3, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/InputBase;->getInputEncoding(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-interface {v3, v4, v5}, Lorg/apache/velocity/runtime/RuntimeServices;->getTemplate(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/velocity/Template;

    .line 158
    .line 159
    .line 160
    move-result-object v3
    :try_end_0
    .catch Lorg/apache/velocity/exception/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/velocity/exception/ParseErrorException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 161
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getMacroLibraries()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    if-nez v5, :cond_7

    .line 166
    .line 167
    new-instance v5, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    :cond_7
    invoke-interface {p1, v5}, Lorg/apache/velocity/context/InternalContextAdapter;->setMacroLibraries(Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->preRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {p1, v4}, Lorg/apache/velocity/context/InternalContextAdapter;->pushCurrentTemplateName(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Lorg/apache/velocity/runtime/resource/Resource;->getData()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    .line 189
    .line 190
    invoke-virtual {v3, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    :try_end_1
    .catch Lorg/apache/velocity/runtime/directive/StopCommand; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .line 192
    .line 193
    :goto_3
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->popCurrentTemplateName()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->postRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    .line 197
    .line 198
    .line 199
    goto :goto_7

    .line 200
    :catchall_0
    move-exception p2

    .line 201
    goto :goto_8

    .line 202
    :catch_0
    move-exception p2

    .line 203
    goto :goto_4

    .line 204
    :catch_1
    move-exception p2

    .line 205
    goto :goto_5

    .line 206
    :catch_2
    move-exception p2

    .line 207
    goto :goto_6

    .line 208
    :goto_4
    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p3

    .line 230
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 231
    .line 232
    invoke-interface {v0, p3, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Lorg/apache/velocity/exception/VelocityException;

    .line 236
    .line 237
    invoke-direct {v0, p3, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    throw v0

    .line 241
    :goto_5
    iget-object p3, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 242
    .line 243
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-interface {p3, v0, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    throw p2

    .line 251
    :goto_6
    invoke-virtual {p2, p0}, Lorg/apache/velocity/runtime/directive/StopCommand;->isFor(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_8

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :goto_7
    return p3

    .line 259
    :cond_8
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    :goto_8
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->popCurrentTemplateName()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->postRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    .line 264
    .line 265
    .line 266
    throw p2

    .line 267
    :catch_3
    move-exception p1

    .line 268
    goto :goto_9

    .line 269
    :catch_4
    move-exception p1

    .line 270
    goto :goto_a

    .line 271
    :catch_5
    move-exception p1

    .line 272
    goto :goto_b

    .line 273
    :catch_6
    move-exception p1

    .line 274
    goto :goto_c

    .line 275
    :goto_9
    invoke-static {v2, v4, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p3

    .line 283
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    iget-object p3, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 291
    .line 292
    invoke-static {p3, p2, p1, p2, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    throw p1

    .line 297
    :goto_a
    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 298
    .line 299
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p3

    .line 303
    invoke-interface {p2, v0, v4, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    throw p1

    .line 307
    :goto_b
    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 308
    .line 309
    const-string p3, "#parse(): syntax error in #parse()-ed template \'{}\', called at {}"

    .line 310
    .line 311
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-interface {p2, p3, v4, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    throw p1

    .line 319
    :goto_c
    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    .line 320
    .line 321
    const-string p3, "#parse(): cannot find template \'{}\', called at {}"

    .line 322
    .line 323
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-interface {p2, p3, v4, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    throw p1

    .line 331
    :cond_9
    new-instance p1, Lorg/apache/velocity/exception/VelocityException;

    .line 332
    .line 333
    new-instance p2, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string p3, "#parse(): argument missing at "

    .line 336
    .line 337
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p3

    .line 344
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    invoke-direct {p1, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw p1
.end method
