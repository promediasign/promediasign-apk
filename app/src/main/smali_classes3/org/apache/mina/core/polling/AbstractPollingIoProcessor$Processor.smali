.class Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Processor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$202(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)J

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_0
    :goto_0
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 19
    .line 20
    invoke-virtual {v6, v2, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->select(J)I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v7

    .line 28
    sub-long/2addr v7, v4

    .line 29
    if-nez v6, :cond_2

    .line 30
    .line 31
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 32
    .line 33
    iget-object v4, v4, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    const-wide/16 v4, 0x64

    .line 42
    .line 43
    cmp-long v9, v7, v4

    .line 44
    .line 45
    if-gez v9, :cond_2

    .line 46
    .line 47
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 48
    .line 49
    invoke-virtual {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isBrokenConnection()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    invoke-static {}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$300()Lorg/slf4j/Logger;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "Broken connection"

    .line 60
    .line 61
    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 65
    .line 66
    iget-object v4, v4, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v4

    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_1
    invoke-static {}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$300()Lorg/slf4j/Logger;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v6, "Create a new selector. Selected is 0, delta = "

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 100
    .line 101
    invoke-virtual {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->registerNewSelector()V

    .line 102
    .line 103
    .line 104
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 105
    .line 106
    iget-object v4, v4, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 110
    .line 111
    invoke-static {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    add-int/2addr v1, v4

    .line 116
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 117
    .line 118
    invoke-static {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V

    .line 119
    .line 120
    .line 121
    if-lez v6, :cond_3

    .line 122
    .line 123
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 124
    .line 125
    invoke-static {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$600(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v4

    .line 132
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 133
    .line 134
    invoke-static {v6, v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V

    .line 135
    .line 136
    .line 137
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 138
    .line 139
    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    sub-int/2addr v1, v6

    .line 144
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 145
    .line 146
    invoke-static {v6, v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V

    .line 147
    .line 148
    .line 149
    if-nez v1, :cond_7

    .line 150
    .line 151
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 152
    .line 153
    invoke-static {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    const/4 v5, 0x0

    .line 158
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 162
    .line 163
    invoke-static {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_4

    .line 172
    .line 173
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 174
    .line 175
    invoke-virtual {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isSelectorEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_4

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_4
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 183
    .line 184
    invoke-static {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    :cond_5
    invoke-virtual {v4, v5, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-eqz v6, :cond_6

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_6
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    if-eqz v6, :cond_5

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_7
    :goto_2
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 203
    .line 204
    invoke-virtual {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isDisposing()Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-eqz v4, :cond_0

    .line 209
    .line 210
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 211
    .line 212
    invoke-virtual {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->allSessions()Ljava/util/Iterator;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-eqz v5, :cond_8

    .line 221
    .line 222
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 223
    .line 224
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    check-cast v6, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 229
    .line 230
    invoke-static {v5, v6}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_8
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 235
    .line 236
    invoke-virtual {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :goto_4
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-virtual {v5, v4}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :catch_0
    move-exception v2

    .line 254
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :catch_1
    :goto_5
    :try_start_2
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 264
    .line 265
    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 270
    :try_start_3
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 271
    .line 272
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-eqz v1, :cond_9

    .line 277
    .line 278
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 279
    .line 280
    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->doDispose()V

    .line 281
    .line 282
    .line 283
    goto :goto_6

    .line 284
    :catchall_1
    move-exception v1

    .line 285
    goto :goto_8

    .line 286
    :cond_9
    :goto_6
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 287
    :goto_7
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 288
    .line 289
    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    goto :goto_9

    .line 299
    :goto_8
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 300
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 301
    :catchall_2
    move-exception v0

    .line 302
    :try_start_6
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 307
    .line 308
    .line 309
    goto :goto_7

    .line 310
    :goto_9
    return-void

    .line 311
    :catchall_3
    move-exception v0

    .line 312
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 313
    .line 314
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 319
    .line 320
    invoke-virtual {v1, v2}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    throw v0
.end method
