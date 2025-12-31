.class public Lorg/apache/velocity/runtime/parser/node/ASTReference;
.super Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.source "SourceFile"


# instance fields
.field private astIndex:Lorg/apache/velocity/runtime/parser/node/ASTIndex;

.field private checkEmpty:Z

.field private computableReference:Z

.field private escPrefix:Ljava/lang/String;

.field private escaped:Z

.field private identifier:Ljava/lang/String;

.field private literal:Ljava/lang/String;

.field private logOnNull:Z

.field private morePrefix:Ljava/lang/String;

.field private nullString:Ljava/lang/String;

.field private numChildren:I

.field private referenceType:I

.field private rootString:Ljava/lang/String;

.field public strictEscape:Z

.field public strictRef:Z

.field protected uberInfo:Lorg/apache/velocity/util/introspection/Info;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escaped:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->computableReference:Z

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->logOnNull:Z

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escPrefix:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->morePrefix:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->identifier:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->literal:Ljava/lang/String;

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictRef:Z

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->astIndex:Lorg/apache/velocity/runtime/parser/node/ASTIndex;

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictEscape:Z

    iput p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->numChildren:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escaped:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->computableReference:Z

    iput-boolean p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->logOnNull:Z

    const-string p2, ""

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escPrefix:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->morePrefix:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->identifier:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->literal:Ljava/lang/String;

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictRef:Z

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->astIndex:Lorg/apache/velocity/runtime/parser/node/ASTIndex;

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictEscape:Z

    iput p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->numChildren:I

    return-void
.end method

.method private getNullString(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".literal."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->nullString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lorg/apache/velocity/runtime/parser/node/Node;

    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->literal()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->nullString:Ljava/lang/String;

    return-object p1
.end method

.method private getRoot()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "\\!"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x24

    .line 14
    .line 15
    const/16 v3, 0x5c

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, -0x1

    .line 20
    if-eq v1, v6, :cond_4

    .line 21
    .line 22
    iget-boolean v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictEscape:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->literal()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->nullString:Ljava/lang/String;

    .line 31
    .line 32
    iput-boolean v5, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escaped:Z

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object v5, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ne v2, v6, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    .line 50
    .line 51
    const-string v2, "ASTReference.getRoot(): internal error: no $ found for slashbang."

    .line 52
    .line 53
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iput-boolean v4, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->computableReference:Z

    .line 57
    .line 58
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->nullString:Ljava/lang/String;

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_1
    :goto_0
    if-ge v2, v1, :cond_2

    .line 64
    .line 65
    iget-object v5, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eq v5, v3, :cond_2

    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move v5, v2

    .line 77
    const/4 v6, 0x0

    .line 78
    :goto_1
    if-ge v5, v1, :cond_3

    .line 79
    .line 80
    iget-object v7, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 81
    .line 82
    add-int/lit8 v8, v5, 0x1

    .line 83
    .line 84
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-ne v5, v3, :cond_3

    .line 89
    .line 90
    add-int/lit8 v6, v6, 0x1

    .line 91
    .line 92
    move v5, v8

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->nullString:Ljava/lang/String;

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->nullString:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v3, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 113
    .line 114
    add-int/2addr v6, v2

    .line 115
    add-int/lit8 v5, v6, -0x1

    .line 116
    .line 117
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->nullString:Ljava/lang/String;

    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->nullString:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v0, v6, v1}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->nullString:Ljava/lang/String;

    .line 147
    .line 148
    iput-boolean v4, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->computableReference:Z

    .line 149
    .line 150
    return-object v0

    .line 151
    :cond_4
    iput-boolean v4, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escaped:Z

    .line 152
    .line 153
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 154
    .line 155
    const-string v6, "\\"

    .line 156
    .line 157
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_8

    .line 162
    .line 163
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    const/4 v6, 0x0

    .line 170
    :goto_2
    if-ge v6, v1, :cond_5

    .line 171
    .line 172
    iget-object v7, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-ne v7, v3, :cond_5

    .line 179
    .line 180
    add-int/lit8 v6, v6, 0x1

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_5
    rem-int/lit8 v1, v6, 0x2

    .line 184
    .line 185
    if-eqz v1, :cond_6

    .line 186
    .line 187
    iput-boolean v5, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escaped:Z

    .line 188
    .line 189
    :cond_6
    if-lez v6, :cond_7

    .line 190
    .line 191
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 192
    .line 193
    div-int/lit8 v3, v6, 0x2

    .line 194
    .line 195
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escPrefix:Ljava/lang/String;

    .line 200
    .line 201
    :cond_7
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    iput-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 208
    .line 209
    :cond_8
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-lez v1, :cond_9

    .line 216
    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->morePrefix:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget-object v3, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    iput-object v2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->morePrefix:Ljava/lang/String;

    .line 241
    .line 242
    iget-object v2, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    iput-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 249
    .line 250
    :cond_9
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->literal()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->nullString:Ljava/lang/String;

    .line 255
    .line 256
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 257
    .line 258
    const-string v2, "$!"

    .line 259
    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    const/4 v2, 0x2

    .line 265
    if-eqz v1, :cond_c

    .line 266
    .line 267
    const/4 v1, 0x3

    .line 268
    iput v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->referenceType:I

    .line 269
    .line 270
    iget-boolean v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escaped:Z

    .line 271
    .line 272
    if-nez v1, :cond_a

    .line 273
    .line 274
    const-string v1, ""

    .line 275
    .line 276
    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->nullString:Ljava/lang/String;

    .line 277
    .line 278
    :cond_a
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 279
    .line 280
    const-string v3, "$!{"

    .line 281
    .line 282
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_b

    .line 287
    .line 288
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    .line 289
    .line 290
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 291
    .line 292
    return-object v0

    .line 293
    :cond_b
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    return-object v0

    .line 300
    :cond_c
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 301
    .line 302
    const-string v3, "${"

    .line 303
    .line 304
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-eqz v1, :cond_d

    .line 309
    .line 310
    iput v2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->referenceType:I

    .line 311
    .line 312
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    .line 313
    .line 314
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 315
    .line 316
    return-object v0

    .line 317
    :cond_d
    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 318
    .line 319
    const-string v2, "$"

    .line 320
    .line 321
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_e

    .line 326
    .line 327
    iput v5, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->referenceType:I

    .line 328
    .line 329
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 330
    .line 331
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    return-object v0

    .line 336
    :cond_e
    const/4 v1, 0x4

    .line 337
    iput v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->referenceType:I

    .line 338
    .line 339
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 340
    .line 341
    return-object v0
.end method

.method public static printClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public evaluate(Lorg/apache/velocity/context/InternalContextAdapter;)Z
    .locals 3

    invoke-virtual {p0, p0, p1}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->execute(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->checkEmpty:Z

    invoke-static {p1, v0}, Lorg/apache/velocity/util/DuckType;->asBoolean(Ljava/lang/Object;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/velocity/exception/VelocityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reference evaluation threw an exception at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public execute(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->referenceType:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    return-object v6

    :cond_1
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->rootString:Ljava/lang/String;

    invoke-virtual {p0, p2, v4}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->getVariableValue(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "$"

    const/4 v7, 0x3

    if-nez v4, :cond_4

    iget-boolean v8, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictRef:Z

    if-nez v8, :cond_4

    iget v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->referenceType:I

    if-eq v1, v7, :cond_3

    iget v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->numChildren:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->rootString:Ljava/lang/String;

    invoke-interface {p2, v1}, Lorg/apache/velocity/context/Context;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->rootString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    const/4 v4, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/velocity/app/event/EventHandlerUtil;->invalidGetMethod(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v6

    :cond_4
    move-object v6, v4

    const/4 v8, 0x0

    :goto_1
    :try_start_0
    iget v9, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->numChildren:I

    const/4 v10, -0x1

    if-ge v8, v9, :cond_8

    iget-boolean v6, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictRef:Z

    if-eqz v6, :cond_6

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v8}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/velocity/runtime/parser/node/Node;->getFirstTokenImage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to access \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' on a null value at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    invoke-virtual {v0}, Lorg/apache/velocity/util/introspection/Info;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/velocity/runtime/parser/node/Node;->getLine()I

    move-result v3

    invoke-virtual {p0, v8}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/velocity/runtime/parser/node/Node;->getColumn()I

    move-result v4

    invoke-static {v0, v3, v4}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_6
    :goto_2
    invoke-virtual {p0, v8}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v6

    invoke-interface {v6, v4, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->execute(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    iget-boolean v9, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictRef:Z

    if-nez v9, :cond_7

    move-object v11, v6

    move-object v6, v4

    move-object v4, v11

    goto :goto_3

    :cond_7
    add-int/lit8 v8, v8, 0x1

    move-object v11, v6

    move-object v6, v4

    move-object v4, v11

    goto :goto_1

    :cond_8
    const/4 v8, -0x1

    :goto_3
    if-nez v4, :cond_f

    if-ne v8, v10, :cond_a

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->rootString:Ljava/lang/String;

    invoke-interface {p2, v1}, Lorg/apache/velocity/context/Context;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    iget v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->referenceType:I

    if-eq v1, v7, :cond_f

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetNumChildren()I

    move-result v1

    if-lez v1, :cond_f

    :cond_9
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->rootString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    const/4 v5, 0x0

    move-object v2, p2

    move-object v4, v6

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/velocity/app/event/EventHandlerUtil;->invalidGetMethod(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_7

    :cond_a
    invoke-virtual {p0, v8}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v9

    invoke-interface {p2, v9}, Lorg/apache/velocity/context/InternalContextAdapter;->icacheGet(Ljava/lang/Object;)Lorg/apache/velocity/util/introspection/IntrospectionCacheData;

    move-result-object v10

    if-nez v10, :cond_f

    iget v10, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->referenceType:I

    if-eq v10, v7, :cond_f

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetNumChildren()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v8, v3, :cond_f

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->rootString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-gt v1, v8, :cond_d

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/velocity/runtime/parser/node/ASTMethod;
    :try_end_0
    .catch Lorg/apache/velocity/exception/MethodInvocationException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "."

    if-eqz v4, :cond_c

    :try_start_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v3, Lorg/apache/velocity/runtime/parser/node/ASTMethod;

    invoke-virtual {v3}, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "()"

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/apache/velocity/runtime/parser/node/Node;->getFirstTokenImage()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    instance-of v1, v9, Lorg/apache/velocity/runtime/parser/node/ASTMethod;

    if-eqz v1, :cond_e

    invoke-virtual {p0, v8}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/velocity/runtime/parser/node/ASTMethod;

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->getMethodName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    move-object v2, p2

    move-object v4, v6

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/velocity/app/event/EventHandlerUtil;->invalidMethod(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_7

    :cond_e
    invoke-virtual {p0, v8}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/node/Node;->getFirstTokenImage()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    move-object v2, p2

    move-object v4, v6

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/velocity/app/event/EventHandlerUtil;->invalidGetMethod(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Lorg/apache/velocity/exception/MethodInvocationException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_f
    :goto_7
    return-object v4

    :goto_8
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->rootString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/velocity/exception/MethodInvocationException;->setReferenceName(Ljava/lang/String;)V

    throw v0
.end method

.method public getRootString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->rootString:Ljava/lang/String;

    return-object v0
.end method

.method public getVariableValue(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictRef:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1, p2}, Lorg/apache/velocity/context/Context;->containsKey(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    .line 19
    .line 20
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 21
    .line 22
    invoke-static {v0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "Variable ${} has not been set at {}"

    .line 27
    .line 28
    invoke-interface {p1, v1, p2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lorg/apache/velocity/exception/MethodInvocationException;

    .line 32
    .line 33
    const-string v0, "Variable $"

    .line 34
    .line 35
    const-string v1, " has not been set"

    .line 36
    .line 37
    invoke-static {v0, p2, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->identifier:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 44
    .line 45
    invoke-virtual {p2}, Lorg/apache/velocity/util/introspection/Info;->getTemplateName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 50
    .line 51
    invoke-virtual {p2}, Lorg/apache/velocity/util/introspection/Info;->getLine()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 56
    .line 57
    invoke-virtual {p2}, Lorg/apache/velocity/util/introspection/Info;->getColumn()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    const/4 v4, 0x0

    .line 62
    move-object v2, p1

    .line 63
    invoke-direct/range {v2 .. v8}, Lorg/apache/velocity/exception/MethodInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_1
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    .line 70
    .line 71
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 72
    .line 73
    invoke-static {v1}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "Exception calling reference ${} at {}"

    .line 78
    .line 79
    invoke-interface {v0, v2, p2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "runtime.references.strict.escape"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictEscape:Z

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "runtime.references.strict"

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictRef:Z

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {p1}, Lorg/apache/velocity/runtime/RuntimeServices;->useStringInterning()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->getRoot()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->getRoot()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->rootString:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetNumChildren()I

    move-result p1

    iput p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->numChildren:I

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->literal()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->literal:Ljava/lang/String;

    iget p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->numChildren:I

    const/4 v0, 0x1

    if-lez p1, :cond_2

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p1

    instance-of v2, p1, Lorg/apache/velocity/runtime/parser/node/ASTIndex;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/apache/velocity/runtime/parser/node/ASTIndex;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->astIndex:Lorg/apache/velocity/runtime/parser/node/ASTIndex;

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->getFirstTokenImage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->identifier:Ljava/lang/String;

    :cond_2
    :goto_1
    new-instance p1, Lorg/apache/velocity/util/introspection/Info;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v4

    invoke-direct {p1, v2, v3, v4}, Lorg/apache/velocity/util/introspection/Info;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v2, "runtime.log.invalid.references"

    invoke-interface {p1, v2, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->logOnNull:Z

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v2, "directive.if.emptycheck"

    invoke-interface {p1, v2, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->checkEmpty:Z

    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictRef:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->numChildren:I

    if-nez p1, :cond_5

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->logOnNull:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetParent()Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/velocity/runtime/parser/node/ASTNotNode;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/apache/velocity/runtime/parser/node/ASTExpression;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/apache/velocity/runtime/parser/node/ASTOrNode;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/apache/velocity/runtime/parser/node/ASTAndNode;

    if-eqz v0, :cond_5

    :cond_3
    :goto_2
    if-eqz p1, :cond_5

    instance-of v0, p1, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictRef:Z

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetParent()Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->saveTokenImages()V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    return-object p2
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/ASTReference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    .locals 7

    const/4 v0, 0x3

    iget v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->referenceType:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->literal:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return v3

    :cond_0
    iget-boolean v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escaped:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictEscape:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4, p1}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->execute(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    iget-boolean v5, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escaped:Z

    if-eqz v5, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->getNullString(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escPrefix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v0, "\\"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return v3

    :cond_3
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->literal:Ljava/lang/String;

    invoke-static {v5, p1, v6, v1}, Lorg/apache/velocity/app/event/EventHandlerUtil;->referenceInsert(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    instance-of v4, v1, Lorg/apache/velocity/runtime/Renderable;

    if-eqz v4, :cond_5

    move-object v4, v1

    check-cast v4, Lorg/apache/velocity/runtime/Renderable;

    :try_start_0
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escPrefix:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->morePrefix:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {v4, p1, p2}, Lorg/apache/velocity/runtime/Renderable;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_5

    return v3

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception rendering "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    instance-of v1, v4, Lorg/apache/velocity/runtime/directive/Block$Reference;

    if-eqz v1, :cond_4

    const-string v1, "block "

    goto :goto_1

    :cond_4
    const-string v1, "Renderable "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->rootString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {v1}, Lorg/apache/velocity/util/DuckType;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    if-eqz v1, :cond_8

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escPrefix:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->morePrefix:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return v3

    :cond_8
    :goto_2
    iget-boolean v4, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictRef:Z

    if-eqz v4, :cond_b

    iget p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->referenceType:I

    if-eq p1, v0, :cond_a

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->literal()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Prepend the reference with \'$!\' e.g., $!{} if you want Velocity to ignore the reference when it evaluates to null"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Reference "

    new-instance p2, Lorg/apache/velocity/exception/VelocityException;

    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_9

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->literal()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " evaluated to null when attempting to render at "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->literal()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " evaluated to object "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " whose toString() method returned null at "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    return v3

    :cond_b
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->getNullString(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictEscape:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escPrefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_c
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->escPrefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->morePrefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->logOnNull:Z

    if-eqz p1, :cond_d

    iget p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->referenceType:I

    if-eq p1, v0, :cond_d

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->literal()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v2, v6

    aput-object v1, v2, v3

    const/4 p2, 0x2

    aput-object v4, v2, p2

    aput-object v5, v2, v0

    const-string p2, "Null reference [template \'{}\', line {}, column {}]: {} cannot be resolved."

    invoke-interface {p1, p2, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return v3
.end method

.method public setValue(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Z
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetNumChildren()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->rootString:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {p1, v0, p2}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return v3

    .line 16
    :cond_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->rootString:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v2}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->getVariableValue(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v4, "reference set is not a valid reference at {}"

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    :goto_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    .line 27
    .line 28
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 29
    .line 30
    invoke-static {p2}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p1, v4, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    :goto_1
    iget v6, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->numChildren:I

    .line 40
    .line 41
    sub-int/2addr v6, v3

    .line 42
    if-ge v5, v6, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0, v5}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-interface {v6, v2, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->execute(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-nez v2, :cond_3

    .line 53
    .line 54
    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictRef:Z

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    add-int/2addr v5, v3

    .line 60
    invoke-virtual {p0, v5}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->getFirstTokenImage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    new-instance p1, Lorg/apache/velocity/exception/MethodInvocationException;

    .line 69
    .line 70
    const-string p2, "Attempted to access \'"

    .line 71
    .line 72
    const-string v0, "\' on a null value"

    .line 73
    .line 74
    invoke-static {p2, v9, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 79
    .line 80
    invoke-virtual {p2}, Lorg/apache/velocity/util/introspection/Info;->getTemplateName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-virtual {p0, v5}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/node/Node;->getLine()I

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    invoke-virtual {p0, v5}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/node/Node;->getColumn()I

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    const/4 v8, 0x0

    .line 101
    move-object v6, p1

    .line 102
    invoke-direct/range {v6 .. v12}, Lorg/apache/velocity/exception/MethodInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_3
    add-int/2addr v5, v3

    .line 107
    goto :goto_1

    .line 108
    :cond_4
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->astIndex:Lorg/apache/velocity/runtime/parser/node/ASTIndex;

    .line 109
    .line 110
    if-eqz v4, :cond_a

    .line 111
    .line 112
    invoke-virtual {v4, v1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-interface {v4, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->astIndex:Lorg/apache/velocity/runtime/parser/node/ASTIndex;

    .line 121
    .line 122
    invoke-static {v4, v2, p1, v5}, Lorg/apache/velocity/runtime/parser/node/ASTIndex;->adjMinusIndexArg(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/SimpleNode;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    new-array v12, v0, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object v4, v12, v1

    .line 129
    .line 130
    aput-object p2, v12, v3

    .line 131
    .line 132
    aget-object p2, v12, v1

    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    if-nez p2, :cond_5

    .line 136
    .line 137
    move-object p2, v4

    .line 138
    goto :goto_2

    .line 139
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    :goto_2
    aget-object v5, v12, v3

    .line 144
    .line 145
    if-nez v5, :cond_6

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    :goto_3
    new-array v0, v0, [Ljava/lang/Class;

    .line 153
    .line 154
    aput-object p2, v0, v1

    .line 155
    .line 156
    aput-object v4, v0, v3

    .line 157
    .line 158
    iget-object v10, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->astIndex:Lorg/apache/velocity/runtime/parser/node/ASTIndex;

    .line 159
    .line 160
    const/4 v11, 0x0

    .line 161
    const-string p2, "set"

    .line 162
    .line 163
    move-object v5, p2

    .line 164
    move-object v6, v12

    .line 165
    move-object v7, v0

    .line 166
    move-object v8, v2

    .line 167
    move-object v9, p1

    .line 168
    invoke-static/range {v5 .. v11}, Lorg/apache/velocity/util/ClassUtils;->getMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/SimpleNode;Z)Lorg/apache/velocity/util/introspection/VelMethod;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    if-nez v4, :cond_7

    .line 173
    .line 174
    iget-object v10, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->astIndex:Lorg/apache/velocity/runtime/parser/node/ASTIndex;

    .line 175
    .line 176
    const/4 v11, 0x0

    .line 177
    const-string p2, "put"

    .line 178
    .line 179
    move-object v5, p2

    .line 180
    move-object v6, v12

    .line 181
    move-object v7, v0

    .line 182
    move-object v8, v2

    .line 183
    move-object v9, p1

    .line 184
    invoke-static/range {v5 .. v11}, Lorg/apache/velocity/util/ClassUtils;->getMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/SimpleNode;Z)Lorg/apache/velocity/util/introspection/VelMethod;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    :cond_7
    const-string p1, ","

    .line 189
    .line 190
    if-nez v4, :cond_9

    .line 191
    .line 192
    iget-boolean p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictRef:Z

    .line 193
    .line 194
    if-nez p2, :cond_8

    .line 195
    .line 196
    return v1

    .line 197
    :cond_8
    new-instance p2, Lorg/apache/velocity/exception/VelocityException;

    .line 198
    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v5, "Found neither a \'set\' or \'put\' method with param types \'("

    .line 202
    .line 203
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    aget-object v1, v0, v1

    .line 207
    .line 208
    invoke-static {v1}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->printClass(Ljava/lang/Class;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    aget-object p1, v0, v3

    .line 219
    .line 220
    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->printClass(Ljava/lang/Class;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string p1, ")\' on class \'"

    .line 228
    .line 229
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string p1, "\' at "

    .line 244
    .line 245
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->astIndex:Lorg/apache/velocity/runtime/parser/node/ASTIndex;

    .line 249
    .line 250
    invoke-static {p1}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p2

    .line 265
    :cond_9
    :try_start_0
    invoke-interface {v4, v2, v12}, Lorg/apache/velocity/util/introspection/VelMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .line 267
    .line 268
    return v3

    .line 269
    :catch_0
    move-exception v4

    .line 270
    new-instance v12, Lorg/apache/velocity/exception/MethodInvocationException;

    .line 271
    .line 272
    const-string v5, "Exception calling method \'"

    .line 273
    .line 274
    const-string v6, "("

    .line 275
    .line 276
    invoke-static {v5, p2, v6}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    aget-object v1, v0, v1

    .line 281
    .line 282
    invoke-static {v1}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->printClass(Ljava/lang/Class;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    aget-object p1, v0, v3

    .line 293
    .line 294
    invoke-static {p1}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->printClass(Ljava/lang/Class;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string p1, ")\' in  "

    .line 302
    .line 303
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    iget-object v8, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->identifier:Ljava/lang/String;

    .line 322
    .line 323
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->astIndex:Lorg/apache/velocity/runtime/parser/node/ASTIndex;

    .line 324
    .line 325
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v9

    .line 329
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->astIndex:Lorg/apache/velocity/runtime/parser/node/ASTIndex;

    .line 330
    .line 331
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    .line 332
    .line 333
    .line 334
    move-result v10

    .line 335
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->astIndex:Lorg/apache/velocity/runtime/parser/node/ASTIndex;

    .line 336
    .line 337
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    .line 338
    .line 339
    .line 340
    move-result v11

    .line 341
    move-object v5, v12

    .line 342
    invoke-direct/range {v5 .. v11}, Lorg/apache/velocity/exception/MethodInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V

    .line 343
    .line 344
    .line 345
    throw v12

    .line 346
    :catch_1
    move-exception p1

    .line 347
    throw p1

    .line 348
    :cond_a
    :try_start_1
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 349
    .line 350
    invoke-interface {p1}, Lorg/apache/velocity/runtime/RuntimeServices;->getUberspect()Lorg/apache/velocity/util/introspection/Uberspect;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->identifier:Ljava/lang/String;

    .line 355
    .line 356
    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 357
    .line 358
    invoke-interface {p1, v2, v0, p2, v4}, Lorg/apache/velocity/util/introspection/Uberspect;->getPropertySet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertySet;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    if-nez p1, :cond_c

    .line 363
    .line 364
    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->strictRef:Z

    .line 365
    .line 366
    if-nez p1, :cond_b

    .line 367
    .line 368
    return v1

    .line 369
    :cond_b
    new-instance p1, Lorg/apache/velocity/exception/MethodInvocationException;

    .line 370
    .line 371
    new-instance p2, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    const-string v0, "Object \'"

    .line 377
    .line 378
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v0, "\' does not contain property \'"

    .line 393
    .line 394
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->identifier:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v0, "\'"

    .line 403
    .line 404
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->identifier:Ljava/lang/String;

    .line 412
    .line 413
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 414
    .line 415
    invoke-virtual {p2}, Lorg/apache/velocity/util/introspection/Info;->getTemplateName()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 420
    .line 421
    invoke-virtual {p2}, Lorg/apache/velocity/util/introspection/Info;->getLine()I

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 426
    .line 427
    invoke-virtual {p2}, Lorg/apache/velocity/util/introspection/Info;->getColumn()I

    .line 428
    .line 429
    .line 430
    move-result v9

    .line 431
    const/4 v5, 0x0

    .line 432
    move-object v3, p1

    .line 433
    invoke-direct/range {v3 .. v9}, Lorg/apache/velocity/exception/MethodInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V

    .line 434
    .line 435
    .line 436
    throw p1

    .line 437
    :catch_2
    move-exception p1

    .line 438
    goto :goto_4

    .line 439
    :catch_3
    move-exception p1

    .line 440
    goto :goto_5

    .line 441
    :catch_4
    move-exception p1

    .line 442
    goto :goto_6

    .line 443
    :cond_c
    invoke-interface {p1, v2, p2}, Lorg/apache/velocity/util/introspection/VelPropertySet;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 444
    .line 445
    .line 446
    return v3

    .line 447
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    const-string v0, "ASTReference setValue(): exception: "

    .line 450
    .line 451
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v0, " template at "

    .line 458
    .line 459
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 463
    .line 464
    invoke-static {v0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object p2

    .line 475
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    .line 476
    .line 477
    invoke-static {v0, p2, p1, p2, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    throw p1

    .line 482
    :goto_5
    throw p1

    .line 483
    :goto_6
    new-instance p2, Lorg/apache/velocity/exception/MethodInvocationException;

    .line 484
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    const-string v1, "ASTReference: Invocation of method \'"

    .line 488
    .line 489
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->identifier:Ljava/lang/String;

    .line 493
    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string v1, "\' in  "

    .line 498
    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v1, " threw exception "

    .line 510
    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->identifier:Ljava/lang/String;

    .line 534
    .line 535
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v7

    .line 539
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    .line 540
    .line 541
    .line 542
    move-result v8

    .line 543
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    .line 544
    .line 545
    .line 546
    move-result v9

    .line 547
    move-object v3, p2

    .line 548
    invoke-direct/range {v3 .. v9}, Lorg/apache/velocity/exception/MethodInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V

    .line 549
    .line 550
    .line 551
    throw p2
.end method

.method public value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTReference;->computableReference:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p1}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->execute(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1
.end method
