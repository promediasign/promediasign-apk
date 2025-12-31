.class Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;
.super Lorg/apache/xmlbeans/impl/regex/Token;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClosureToken"
.end annotation


# instance fields
.field child:Lorg/apache/xmlbeans/impl/regex/Token;

.field max:I

.field min:I


# direct methods
.method public constructor <init>(ILorg/apache/xmlbeans/impl/regex/Token;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;-><init>(I)V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->setMin(I)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->setMax(I)V

    return-void
.end method


# virtual methods
.method public getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p1
.end method

.method public final getMax()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->max:I

    return v0
.end method

.method public final getMin()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->min:I

    return v0
.end method

.method public final setMax(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->max:I

    return-void
.end method

.method public final setMin(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->min:I

    return-void
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const-string v2, ", "

    .line 5
    .line 6
    const-string v3, ","

    .line 7
    .line 8
    const-string v4, "{"

    .line 9
    .line 10
    if-ne v0, v1, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMin()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMax()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-gez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuffer;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "*"

    .line 36
    .line 37
    :goto_0
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMin()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMax()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const-string v5, "}"

    .line 52
    .line 53
    if-ne v0, v1, :cond_1

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .line 59
    .line 60
    :goto_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMin()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    :goto_2
    invoke-static {v0, v5, p1}, Lorg/apache/ftpserver/main/a;->j(Ljava/lang/StringBuffer;Ljava/lang/String;I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto/16 :goto_5

    .line 81
    .line 82
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMin()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ltz v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMax()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-ltz v0, :cond_2

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    .line 98
    .line 99
    :goto_3
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 100
    .line 101
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMin()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMax()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMin()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-ltz v0, :cond_3

    .line 131
    .line 132
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMax()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-gez v0, :cond_3

    .line 137
    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 144
    .line 145
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMin()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    const-string v1, ",}"

    .line 160
    .line 161
    :goto_4
    invoke-static {v0, v1, p1}, Lorg/apache/ftpserver/main/a;->j(Ljava/lang/StringBuffer;Ljava/lang/String;I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    goto/16 :goto_5

    .line 166
    .line 167
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 168
    .line 169
    new-instance v0, Ljava/lang/StringBuffer;

    .line 170
    .line 171
    const-string v1, "Token#toString(): CLOSURE "

    .line 172
    .line 173
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMin()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMax()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p1

    .line 201
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMin()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-gez v0, :cond_5

    .line 206
    .line 207
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMax()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-gez v0, :cond_5

    .line 212
    .line 213
    new-instance v0, Ljava/lang/StringBuffer;

    .line 214
    .line 215
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .line 217
    .line 218
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 219
    .line 220
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    const-string v1, "*?"

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMin()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMax()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    const-string v5, "}?"

    .line 237
    .line 238
    if-ne v0, v1, :cond_6

    .line 239
    .line 240
    new-instance v0, Ljava/lang/StringBuffer;

    .line 241
    .line 242
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMin()I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-ltz v0, :cond_7

    .line 252
    .line 253
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMax()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-ltz v0, :cond_7

    .line 258
    .line 259
    new-instance v0, Ljava/lang/StringBuffer;

    .line 260
    .line 261
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMin()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-ltz v0, :cond_8

    .line 271
    .line 272
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMax()I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-gez v0, :cond_8

    .line 277
    .line 278
    new-instance v0, Ljava/lang/StringBuffer;

    .line 279
    .line 280
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 281
    .line 282
    .line 283
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 284
    .line 285
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMin()I

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    const-string v1, ",}?"

    .line 300
    .line 301
    goto/16 :goto_4

    .line 302
    .line 303
    :goto_5
    return-object p1

    .line 304
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 305
    .line 306
    new-instance v0, Ljava/lang/StringBuffer;

    .line 307
    .line 308
    const-string v1, "Token#toString(): NONGREEDYCLOSURE "

    .line 309
    .line 310
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMin()I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/Token$ClosureToken;->getMax()I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw p1
.end method
