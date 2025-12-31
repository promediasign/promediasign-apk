.class Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Connector"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 4
    .line 5
    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_5

    .line 10
    .line 11
    const-wide/16 v2, 0x3e8

    .line 12
    .line 13
    :try_start_0
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 14
    .line 15
    invoke-virtual {v4}, Lorg/apache/mina/core/service/AbstractIoConnector;->getConnectTimeoutMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    long-to-int v5, v4

    .line 24
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->select(I)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 31
    .line 32
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    add-int/2addr v1, v5

    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 40
    .line 41
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 50
    .line 51
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$600(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_0
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 63
    .line 64
    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    :cond_1
    invoke-virtual {v5, v6, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    if-eqz v7, :cond_1

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :catch_0
    nop

    .line 83
    goto :goto_3

    .line 84
    :catchall_0
    move-exception v4

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    :goto_1
    if-lez v4, :cond_4

    .line 87
    .line 88
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 89
    .line 90
    invoke-virtual {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectedHandles()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/util/Iterator;)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    sub-int/2addr v1, v4

    .line 99
    :cond_4
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 100
    .line 101
    invoke-virtual {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->allHandles()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-static {v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/util/Iterator;)V

    .line 106
    .line 107
    .line 108
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 109
    .line 110
    invoke-static {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)I

    .line 111
    .line 112
    .line 113
    move-result v2
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    sub-int/2addr v1, v2

    .line 115
    goto :goto_0

    .line 116
    :goto_2
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5, v4}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catch_1
    move-exception v2

    .line 128
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :cond_5
    :goto_3
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 138
    .line 139
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_9

    .line 144
    .line 145
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 146
    .line 147
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->isDisposing()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_9

    .line 152
    .line 153
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 154
    .line 155
    invoke-static {v1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$402(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Z)Z

    .line 156
    .line 157
    .line 158
    :try_start_2
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 159
    .line 160
    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_6

    .line 165
    .line 166
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 167
    .line 168
    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/IoProcessor;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-interface {v0}, Lorg/apache/mina/core/service/IoProcessor;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :catchall_1
    move-exception v0

    .line 177
    goto :goto_9

    .line 178
    :cond_6
    :goto_4
    :try_start_3
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 179
    .line 180
    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 185
    :try_start_4
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 186
    .line 187
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->isDisposing()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_7

    .line 192
    .line 193
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 194
    .line 195
    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->destroy()V

    .line 196
    .line 197
    .line 198
    goto :goto_5

    .line 199
    :catchall_2
    move-exception v1

    .line 200
    goto :goto_7

    .line 201
    :cond_7
    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 202
    :goto_6
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 203
    .line 204
    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 209
    .line 210
    .line 211
    goto :goto_f

    .line 212
    :goto_7
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 213
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 214
    :catchall_3
    move-exception v0

    .line 215
    goto :goto_8

    .line 216
    :catch_2
    move-exception v0

    .line 217
    :try_start_7
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 222
    .line 223
    .line 224
    goto :goto_6

    .line 225
    :goto_8
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 226
    .line 227
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :goto_9
    :try_start_8
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 236
    .line 237
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 242
    :try_start_9
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 243
    .line 244
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService;->isDisposing()Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_8

    .line 249
    .line 250
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 251
    .line 252
    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->destroy()V

    .line 253
    .line 254
    .line 255
    goto :goto_a

    .line 256
    :catchall_4
    move-exception v2

    .line 257
    goto :goto_c

    .line 258
    :cond_8
    :goto_a
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 259
    :goto_b
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 260
    .line 261
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 266
    .line 267
    .line 268
    goto :goto_d

    .line 269
    :goto_c
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 270
    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 271
    :catchall_5
    move-exception v0

    .line 272
    goto :goto_e

    .line 273
    :catch_3
    move-exception v1

    .line 274
    :try_start_c
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 279
    .line 280
    .line 281
    goto :goto_b

    .line 282
    :goto_d
    throw v0

    .line 283
    :goto_e
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 284
    .line 285
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 290
    .line 291
    .line 292
    throw v0

    .line 293
    :cond_9
    :goto_f
    return-void
.end method
