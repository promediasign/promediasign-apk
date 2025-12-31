.class public Lorg/h2/command/dml/TransactionCommand;
.super Lorg/h2/command/Prepared;
.source "SourceFile"


# instance fields
.field private savepointName:Ljava/lang/String;

.field private transactionName:Ljava/lang/String;

.field private final type:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    iput p2, p0, Lorg/h2/command/dml/TransactionCommand;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lorg/h2/command/dml/TransactionCommand;->type:I

    return v0
.end method

.method public isCacheable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needRecompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setSavepointName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/TransactionCommand;->savepointName:Ljava/lang/String;

    return-void
.end method

.method public setTransactionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/TransactionCommand;->transactionName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 7

    .line 1
    iget v0, p0, Lorg/h2/command/dml/TransactionCommand;->type:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "type="

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lorg/h2/command/dml/TransactionCommand;->type:I

    .line 16
    .line 17
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :pswitch_0
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/h2/engine/Session;->begin()V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :pswitch_1
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lorg/h2/engine/Database;->shutdownImmediately()V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :pswitch_2
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lorg/h2/engine/Session;->commit(Z)V

    .line 61
    .line 62
    .line 63
    iget v0, p0, Lorg/h2/command/dml/TransactionCommand;->type:I

    .line 64
    .line 65
    const/16 v1, 0x52

    .line 66
    .line 67
    if-eq v0, v1, :cond_0

    .line 68
    .line 69
    const/16 v1, 0x54

    .line 70
    .line 71
    if-ne v0, v1, :cond_1

    .line 72
    .line 73
    :cond_0
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 74
    .line 75
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget v1, p0, Lorg/h2/command/dml/TransactionCommand;->type:I

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setCompactMode(I)V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 85
    .line 86
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setCloseDelay(I)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 94
    .line 95
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 100
    .line 101
    invoke-virtual {v1}, Lorg/h2/engine/Session;->throttle()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getSessions(Z)[Lorg/h2/engine/Session;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    array-length v3, v1

    .line 109
    const/4 v4, 0x0

    .line 110
    :goto_0
    if-ge v4, v3, :cond_4

    .line 111
    .line 112
    aget-object v5, v1, v4

    .line 113
    .line 114
    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_2

    .line 119
    .line 120
    monitor-enter v5

    .line 121
    :try_start_0
    invoke-virtual {v5}, Lorg/h2/engine/Session;->rollback()V

    .line 122
    .line 123
    .line 124
    monitor-exit v5

    .line 125
    goto :goto_1

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    throw v0

    .line 129
    :cond_2
    invoke-virtual {v5}, Lorg/h2/engine/Session;->rollback()V

    .line 130
    .line 131
    .line 132
    :goto_1
    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 133
    .line 134
    if-eq v5, v6, :cond_3

    .line 135
    .line 136
    invoke-virtual {v5}, Lorg/h2/engine/Session;->close()V

    .line 137
    .line 138
    .line 139
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 143
    .line 144
    invoke-virtual {v0}, Lorg/h2/engine/Session;->close()V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :pswitch_3
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 150
    .line 151
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 159
    .line 160
    iget-object v1, p0, Lorg/h2/command/dml/TransactionCommand;->transactionName:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Session;->setPreparedTransaction(Ljava/lang/String;Z)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :pswitch_4
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 167
    .line 168
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 176
    .line 177
    iget-object v3, p0, Lorg/h2/command/dml/TransactionCommand;->transactionName:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v0, v3, v1}, Lorg/h2/engine/Session;->setPreparedTransaction(Ljava/lang/String;Z)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :pswitch_5
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 184
    .line 185
    iget-object v1, p0, Lorg/h2/command/dml/TransactionCommand;->transactionName:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->prepareCommit(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :pswitch_6
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 192
    .line 193
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 201
    .line 202
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lorg/h2/engine/Database;->sync()V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :pswitch_7
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 211
    .line 212
    iget-object v1, p0, Lorg/h2/command/dml/TransactionCommand;->savepointName:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->rollbackToSavepoint(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :pswitch_8
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 219
    .line 220
    iget-object v1, p0, Lorg/h2/command/dml/TransactionCommand;->savepointName:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->addSavepoint(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :pswitch_9
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 227
    .line 228
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 236
    .line 237
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkpoint()V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :pswitch_a
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 246
    .line 247
    invoke-virtual {v0}, Lorg/h2/engine/Session;->rollback()V

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :pswitch_b
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 252
    .line 253
    invoke-virtual {v0, v2}, Lorg/h2/engine/Session;->commit(Z)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :pswitch_c
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 258
    .line 259
    invoke-virtual {v0, v2}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :pswitch_d
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    .line 266
    .line 267
    .line 268
    :goto_2
    return v2

    .line 269
    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
