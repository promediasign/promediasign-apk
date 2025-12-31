.class public Lorg/h2/command/dml/Explain;
.super Lorg/h2/command/Prepared;
.source "SourceFile"


# instance fields
.field private command:Lorg/h2/command/Prepared;

.field private executeCommand:Z

.field private result:Lorg/h2/result/LocalResult;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method

.method private add(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/h2/value/Value;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/h2/command/dml/Explain;->result:Lorg/h2/result/LocalResult;

    invoke-virtual {p1, v0}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    return-void
.end method


# virtual methods
.method public checkParameters()V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/command/dml/Explain;->executeCommand:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/h2/command/Prepared;->checkParameters()V

    :cond_0
    return-void
.end method

.method public getCommand()Lorg/h2/command/Prepared;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget-boolean v0, p0, Lorg/h2/command/dml/Explain;->executeCommand:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x56

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    return v0
.end method

.method public isQuery()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->prepare()V

    return-void
.end method

.method public query(I)Lorg/h2/result/ResultInterface;
    .locals 12

    .line 1
    new-instance v0, Lorg/h2/table/Column;

    .line 2
    .line 3
    const-string v1, "PLAN"

    .line 4
    .line 5
    const/16 v2, 0xd

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lorg/h2/expression/ExpressionColumn;

    .line 17
    .line 18
    invoke-direct {v2, v1, v0}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Lorg/h2/table/Column;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    new-array v3, v0, [Lorg/h2/expression/Expression;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-object v2, v3, v4

    .line 26
    .line 27
    new-instance v2, Lorg/h2/result/LocalResult;

    .line 28
    .line 29
    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 30
    .line 31
    invoke-direct {v2, v5, v3, v0}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lorg/h2/command/dml/Explain;->result:Lorg/h2/result/LocalResult;

    .line 35
    .line 36
    if-ltz p1, :cond_c

    .line 37
    .line 38
    iget-boolean v2, p0, Lorg/h2/command/dml/Explain;->executeCommand:Z

    .line 39
    .line 40
    if-eqz v2, :cond_a

    .line 41
    .line 42
    invoke-virtual {v1}, Lorg/h2/engine/Database;->isPersistent()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x0

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    invoke-virtual {v2}, Lorg/h2/store/PageStore;->statisticsStart()V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->statisticsStart()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move-object v1, v3

    .line 69
    move-object v2, v1

    .line 70
    :cond_2
    :goto_0
    iget-object v5, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    .line 71
    .line 72
    invoke-virtual {v5}, Lorg/h2/command/Prepared;->isQuery()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    iget-object v5, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    .line 79
    .line 80
    invoke-virtual {v5, p1}, Lorg/h2/command/Prepared;->query(I)Lorg/h2/result/ResultInterface;

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    iget-object p1, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    .line 85
    .line 86
    invoke-virtual {p1}, Lorg/h2/command/Prepared;->update()I

    .line 87
    .line 88
    .line 89
    :goto_1
    iget-object p1, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    .line 90
    .line 91
    invoke-virtual {p1}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    invoke-virtual {v2}, Lorg/h2/store/PageStore;->statisticsEnd()Ljava/util/HashMap;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    if-eqz v1, :cond_5

    .line 103
    .line 104
    invoke-virtual {v1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->statisticsEnd()Ljava/util/Map;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :cond_5
    :goto_2
    if-eqz v3, :cond_b

    .line 109
    .line 110
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_6

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Ljava/util/Map$Entry;

    .line 129
    .line 130
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    add-int/2addr v4, v2

    .line 141
    goto :goto_3

    .line 142
    :cond_6
    if-lez v4, :cond_b

    .line 143
    .line 144
    new-instance v1, Ljava/util/TreeMap;

    .line 145
    .line 146
    invoke-direct {v1, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 147
    .line 148
    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    const/16 v5, 0xa

    .line 159
    .line 160
    if-le v3, v0, :cond_7

    .line 161
    .line 162
    const-string v3, "total: "

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    :cond_7
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-eqz v6, :cond_9

    .line 186
    .line 187
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    check-cast v6, Ljava/util/Map$Entry;

    .line 192
    .line 193
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    check-cast v7, Ljava/lang/Integer;

    .line 198
    .line 199
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    const-wide/16 v8, 0x64

    .line 204
    .line 205
    int-to-long v10, v7

    .line 206
    mul-long v10, v10, v8

    .line 207
    .line 208
    int-to-long v8, v4

    .line 209
    div-long/2addr v10, v8

    .line 210
    long-to-int v8, v10

    .line 211
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    check-cast v6, Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v6, ": "

    .line 221
    .line 222
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-le v6, v0, :cond_8

    .line 233
    .line 234
    const-string v6, " ("

    .line 235
    .line 236
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v6, "%)"

    .line 243
    .line 244
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_9
    const-string v0, "\n/*\n"

    .line 252
    .line 253
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v0, "*/"

    .line 265
    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    goto :goto_5

    .line 274
    :cond_a
    iget-object p1, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    .line 275
    .line 276
    invoke-virtual {p1}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    :cond_b
    :goto_5
    invoke-direct {p0, p1}, Lorg/h2/command/dml/Explain;->add(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :cond_c
    iget-object p1, p0, Lorg/h2/command/dml/Explain;->result:Lorg/h2/result/LocalResult;

    .line 284
    .line 285
    invoke-virtual {p1}, Lorg/h2/result/LocalResult;->done()V

    .line 286
    .line 287
    .line 288
    iget-object p1, p0, Lorg/h2/command/dml/Explain;->result:Lorg/h2/result/LocalResult;

    .line 289
    .line 290
    return-object p1
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/h2/command/dml/Explain;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v0

    return-object v0
.end method

.method public setCommand(Lorg/h2/command/Prepared;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Explain;->command:Lorg/h2/command/Prepared;

    return-void
.end method

.method public setExecuteCommand(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/Explain;->executeCommand:Z

    return-void
.end method
