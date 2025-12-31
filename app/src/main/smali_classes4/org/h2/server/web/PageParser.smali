.class public Lorg/h2/server/web/PageParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAB_WIDTH:I = 0x4


# instance fields
.field private final len:I

.field private final page:Ljava/lang/String;

.field private pos:I

.field private result:Ljava/lang/StringBuilder;

.field private final settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    iput p3, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/h2/server/web/PageParser;->len:I

    iput-object p2, p0, Lorg/h2/server/web/PageParser;->settings:Ljava/util/Map;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p2, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static escapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static escapeHtml(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    .line 2
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "&nbsp;"

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_f

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_b

    const/16 v8, 0x9

    if-ne v6, v8, :cond_2

    goto :goto_3

    :cond_2
    const/16 v5, 0xa

    if-eq v6, v5, :cond_a

    const/16 v5, 0x22

    if-eq v6, v5, :cond_9

    const/16 v5, 0x24

    if-eq v6, v5, :cond_8

    const/16 v5, 0x3c

    if-eq v6, v5, :cond_7

    const/16 v5, 0x3e

    if-eq v6, v5, :cond_6

    const/16 v5, 0x26

    if-eq v6, v5, :cond_5

    const/16 v5, 0x27

    if-eq v6, v5, :cond_4

    const/16 v5, 0x80

    if-lt v6, v5, :cond_3

    const-string v5, "&#"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x3b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v5, "&#39;"

    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v5, "&amp;"

    goto :goto_1

    :cond_6
    const-string v5, "&gt;"

    goto :goto_1

    :cond_7
    const-string v5, "&lt;"

    goto :goto_1

    :cond_8
    const-string v5, "&#36;"

    goto :goto_1

    :cond_9
    const-string v5, "&quot;"

    goto :goto_1

    :cond_a
    if-eqz p1, :cond_3

    const-string v5, "<br />"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    goto :goto_7

    :goto_2
    const/4 v5, 0x0

    goto :goto_7

    :cond_b
    :goto_3
    const/4 v8, 0x0

    :goto_4
    if-ne v6, v7, :cond_c

    const/4 v9, 0x1

    goto :goto_5

    :cond_c
    const/4 v9, 0x4

    :goto_5
    if-ge v8, v9, :cond_e

    if-eqz v5, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_e
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6

    const/16 v3, 0xd

    if-eq v2, v3, :cond_5

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    const/16 v3, 0x27

    if-eq v2, v3, :cond_3

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v2, "\\\\"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v2, "\\\'"

    goto :goto_1

    :cond_4
    const-string v2, "\\\""

    goto :goto_1

    :cond_5
    const-string v2, "\\r"

    goto :goto_1

    :cond_6
    const-string v2, "\\n"

    goto :goto_1

    :cond_7
    const-string v2, "\\t"

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->settings:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/HashMap;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const-string v0, "?"

    .line 31
    .line 32
    invoke-static {v0, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_1
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->settings:Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public static parse(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/h2/server/web/PageParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/server/web/PageParser;-><init>(Ljava/lang/String;Ljava/util/Map;I)V

    invoke-direct {v0}, Lorg/h2/server/web/PageParser;->replaceTags()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseAll()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 6
    .line 7
    :goto_0
    iget v3, p0, Lorg/h2/server/web/PageParser;->len:I

    .line 8
    .line 9
    if-ge v2, v3, :cond_b

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/16 v4, 0x24

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    if-eq v3, v4, :cond_9

    .line 19
    .line 20
    const/16 v4, 0x3c

    .line 21
    .line 22
    if-eq v3, v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v4, v2, 0x3

    .line 30
    .line 31
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/16 v6, 0x3a

    .line 36
    .line 37
    if-ne v4, v6, :cond_1

    .line 38
    .line 39
    add-int/lit8 v4, v2, 0x1

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/16 v7, 0x2f

    .line 46
    .line 47
    if-ne v4, v7, :cond_1

    .line 48
    .line 49
    iput v2, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    add-int/lit8 v4, v2, 0x2

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-ne v4, v6, :cond_8

    .line 59
    .line 60
    iput v2, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 61
    .line 62
    const-string v3, "<c:forEach"

    .line 63
    .line 64
    invoke-direct {p0, v3}, Lorg/h2/server/web/PageParser;->readIf(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const-string v4, ">"

    .line 69
    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    const-string v2, "var"

    .line 73
    .line 74
    invoke-direct {p0, v2}, Lorg/h2/server/web/PageParser;->readParam(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v3, "items"

    .line 79
    .line 80
    invoke-direct {p0, v3}, Lorg/h2/server/web/PageParser;->readParam(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-direct {p0, v4}, Lorg/h2/server/web/PageParser;->read(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget v4, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 88
    .line 89
    invoke-direct {p0, v3}, Lorg/h2/server/web/PageParser;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Ljava/util/List;

    .line 94
    .line 95
    if-nez v3, :cond_2

    .line 96
    .line 97
    iget-object v3, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v6, "?items?"

    .line 100
    .line 101
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    const-string v7, "</c:forEach>"

    .line 113
    .line 114
    if-nez v6, :cond_3

    .line 115
    .line 116
    invoke-direct {p0, v7}, Lorg/h2/server/web/PageParser;->parseBlockUntil(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_6

    .line 128
    .line 129
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    iget-object v8, p0, Lorg/h2/server/web/PageParser;->settings:Ljava/util/Map;

    .line 134
    .line 135
    invoke-interface {v8, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    iput v4, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 139
    .line 140
    invoke-direct {p0, v7}, Lorg/h2/server/web/PageParser;->parseBlockUntil(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    iget-object v8, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    const-string v3, "<c:if"

    .line 151
    .line 152
    invoke-direct {p0, v3}, Lorg/h2/server/web/PageParser;->readIf(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_7

    .line 157
    .line 158
    const-string v3, "test"

    .line 159
    .line 160
    invoke-direct {p0, v3}, Lorg/h2/server/web/PageParser;->readParam(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    const-string v6, "==\'"

    .line 165
    .line 166
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-gez v6, :cond_5

    .line 171
    .line 172
    invoke-direct {p0, v2}, Lorg/h2/server/web/PageParser;->setError(I)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_5
    add-int/lit8 v2, v6, 0x3

    .line 177
    .line 178
    invoke-static {v3, v5, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    const/4 v7, 0x0

    .line 183
    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-direct {p0, v3}, Lorg/h2/server/web/PageParser;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Ljava/lang/String;

    .line 192
    .line 193
    invoke-direct {p0, v4}, Lorg/h2/server/web/PageParser;->read(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v4, "</c:if>"

    .line 197
    .line 198
    invoke-direct {p0, v4}, Lorg/h2/server/web/PageParser;->parseBlockUntil(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    iget v6, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 203
    .line 204
    sub-int/2addr v6, v5

    .line 205
    iput v6, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 206
    .line 207
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_6

    .line 212
    .line 213
    iget-object v2, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    :cond_6
    iget v2, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_7
    invoke-direct {p0, v2}, Lorg/h2/server/web/PageParser;->setError(I)V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    add-int/lit8 v6, v2, 0x1

    .line 234
    .line 235
    if-le v4, v6, :cond_8

    .line 236
    .line 237
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    const/16 v6, 0x7b

    .line 242
    .line 243
    if-ne v4, v6, :cond_8

    .line 244
    .line 245
    add-int/lit8 v2, v2, 0x2

    .line 246
    .line 247
    const/16 v3, 0x7d

    .line 248
    .line 249
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-gez v3, :cond_a

    .line 254
    .line 255
    invoke-direct {p0, v2}, Lorg/h2/server/web/PageParser;->setError(I)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :cond_a
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-direct {p0, v2}, Lorg/h2/server/web/PageParser;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    check-cast v2, Ljava/lang/String;

    .line 272
    .line 273
    invoke-direct {p0, v2}, Lorg/h2/server/web/PageParser;->replaceTags(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    move v2, v3

    .line 277
    :goto_2
    add-int/2addr v2, v5

    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_b
    iput v2, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 281
    .line 282
    return-void
.end method

.method private parseBlockUntil(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/h2/server/web/PageParser;

    iget-object v1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/server/web/PageParser;->settings:Ljava/util/Map;

    iget v3, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/server/web/PageParser;-><init>(Ljava/lang/String;Ljava/util/Map;I)V

    invoke-direct {v0}, Lorg/h2/server/web/PageParser;->parseAll()V

    invoke-direct {v0, p1}, Lorg/h2/server/web/PageParser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, v0, Lorg/h2/server/web/PageParser;->pos:I

    iput p1, p0, Lorg/h2/server/web/PageParser;->pos:I

    iget-object p1, v0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/text/ParseException;

    iget-object v1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    iget v0, v0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private read(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/h2/server/web/PageParser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/text/ParseException;

    iget v1, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private readIf(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lorg/h2/server/web/PageParser;->skipSpaces()V

    iget-object v0, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    iget v1, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-direct {p0}, Lorg/h2/server/web/PageParser;->skipSpaces()V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v3
.end method

.method private readParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lorg/h2/server/web/PageParser;->read(Ljava/lang/String;)V

    const-string p1, "="

    invoke-direct {p0, p1}, Lorg/h2/server/web/PageParser;->read(Ljava/lang/String;)V

    const-string p1, "\""

    invoke-direct {p0, p1}, Lorg/h2/server/web/PageParser;->read(Ljava/lang/String;)V

    iget v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    :goto_0
    iget-object v1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    iget v2, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/h2/server/web/PageParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/h2/server/web/PageParser;->pos:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-direct {p0, p1}, Lorg/h2/server/web/PageParser;->read(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/server/web/PageParser;->settings:Ljava/util/Map;

    invoke-static {p1, v0}, Lorg/h2/server/web/PageParser;->parse(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private replaceTags()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/h2/server/web/PageParser;->parseAll()V

    iget v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    iget v1, p0, Lorg/h2/server/web/PageParser;->len:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/h2/server/web/PageParser;->setError(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-direct {p0, v0}, Lorg/h2/server/web/PageParser;->setError(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private replaceTags(Ljava/lang/String;)V
    .locals 2

    .line 2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/server/web/PageParser;->settings:Ljava/util/Map;

    invoke-static {p1, v1}, Lorg/h2/server/web/PageParser;->parse(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private setError(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "####BUG####"

    .line 10
    .line 11
    invoke-static {v1, v2, p1, v0, v3}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private skipSpaces()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    iget v1, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    goto :goto_0

    :cond_0
    return-void
.end method
