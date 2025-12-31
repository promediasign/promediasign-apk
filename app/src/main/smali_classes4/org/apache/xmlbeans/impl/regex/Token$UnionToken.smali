.class Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;
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
    name = "UnionToken"
.end annotation


# instance fields
.field children:Ljava/util/Vector;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;-><init>(I)V

    return-void
.end method


# virtual methods
.method public addChild(Lorg/apache/xmlbeans/impl/regex/Token;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    :cond_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget v0, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->addChild(Lorg/apache/xmlbeans/impl/regex/Token;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_5
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    sub-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/regex/Token;

    iget v3, v2, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/16 v4, 0xa

    if-eqz v3, :cond_6

    if-ne v3, v4, :cond_7

    :cond_6
    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    if-eqz v3, :cond_8

    if-eq v3, v4, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_8
    if-nez v3, :cond_9

    const/4 v3, 0x2

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    iget v4, v2, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/high16 v5, 0x10000

    if-nez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuffer;

    add-int/2addr v3, v1

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChar()I

    move-result v1

    if-lt v1, v5, :cond_a

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_a
    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/Token;->createString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/regex/Token$StringToken;

    move-result-object v2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_3

    :cond_b
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    iget v0, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getChar()I

    move-result p1

    if-lt p1, v5, :cond_c

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_c
    int-to-char p1, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    check-cast v2, Lorg/apache/xmlbeans/impl/regex/Token$StringToken;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iput-object p1, v2, Lorg/apache/xmlbeans/impl/regex/Token$StringToken;->string:Ljava/lang/String;

    return-void
.end method

.method public getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v3, :cond_4

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v3, v1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    .line 25
    .line 26
    const/4 v4, 0x3

    .line 27
    if-ne v3, v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-ne v3, v0, :cond_0

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuffer;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v0, "+"

    .line 45
    .line 46
    :goto_0
    invoke-static {v1, p1, v0}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    iget v3, v1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    .line 52
    .line 53
    const/16 v4, 0x9

    .line 54
    .line 55
    if-ne v3, v4, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-ne v2, v0, :cond_1

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuffer;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, "+?"

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .line 103
    .line 104
    :goto_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-ge v2, v1, :cond_3

    .line 111
    .line 112
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Lorg/apache/xmlbeans/impl/regex/Token;

    .line 119
    .line 120
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    add-int/lit8 v2, v2, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    new-instance p1, Ljava/lang/String;

    .line 131
    .line 132
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 133
    .line 134
    .line 135
    :goto_2
    return-object p1

    .line 136
    :cond_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    const/4 v4, 0x7

    .line 143
    if-ne v0, v1, :cond_5

    .line 144
    .line 145
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget v0, v0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    .line 150
    .line 151
    if-ne v0, v4, :cond_5

    .line 152
    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    .line 154
    .line 155
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string v1, "?"

    .line 167
    .line 168
    :goto_3
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto :goto_5

    .line 173
    :cond_5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-ne v0, v1, :cond_6

    .line 180
    .line 181
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget v0, v0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    .line 186
    .line 187
    if-ne v0, v4, :cond_6

    .line 188
    .line 189
    new-instance v0, Ljava/lang/StringBuffer;

    .line 190
    .line 191
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    const-string v1, "??"

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    .line 206
    .line 207
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    .line 209
    .line 210
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v1, Lorg/apache/xmlbeans/impl/regex/Token;

    .line 217
    .line 218
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    .line 224
    .line 225
    :goto_4
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-ge v3, v1, :cond_7

    .line 232
    .line 233
    const/16 v1, 0x7c

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 236
    .line 237
    .line 238
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$UnionToken;->children:Ljava/util/Vector;

    .line 239
    .line 240
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    check-cast v1, Lorg/apache/xmlbeans/impl/regex/Token;

    .line 245
    .line 246
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    .line 252
    .line 253
    add-int/lit8 v3, v3, 0x1

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_7
    new-instance p1, Ljava/lang/String;

    .line 257
    .line 258
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 259
    .line 260
    .line 261
    :goto_5
    return-object p1
.end method
