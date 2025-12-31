.class Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Acceptor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)V

    return-void
.end method

.method private processHandles(Ljava/util/Iterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TH;>;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/service/IoProcessor;->add(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 4
    .line 5
    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$200(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_5

    .line 10
    .line 11
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 12
    .line 13
    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->select()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 18
    .line 19
    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    add-int/2addr v1, v3

    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 27
    .line 28
    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 37
    .line 38
    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 49
    .line 50
    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :catchall_0
    move-exception v2

    .line 62
    goto :goto_2

    .line 63
    :cond_0
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 64
    .line 65
    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    :cond_1
    invoke-virtual {v3, v4, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-eqz v5, :cond_1

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catch_0
    nop

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    :goto_1
    if-lez v2, :cond_4

    .line 86
    .line 87
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 88
    .line 89
    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectedHandles()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-direct {p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->processHandles(Ljava/util/Iterator;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 97
    .line 98
    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$600(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)I

    .line 99
    .line 100
    .line 101
    move-result v2
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    sub-int/2addr v1, v2

    .line 103
    goto :goto_0

    .line 104
    :goto_2
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    const-wide/16 v2, 0x3e8

    .line 112
    .line 113
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catch_1
    move-exception v2

    .line 118
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    :goto_3
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 127
    .line 128
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$200(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_9

    .line 133
    .line 134
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 135
    .line 136
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->isDisposing()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_9

    .line 141
    .line 142
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 143
    .line 144
    invoke-static {v1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$202(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Z)Z

    .line 145
    .line 146
    .line 147
    :try_start_2
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 148
    .line 149
    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 156
    .line 157
    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/IoProcessor;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-interface {v0}, Lorg/apache/mina/core/service/IoProcessor;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :catchall_1
    move-exception v0

    .line 166
    goto :goto_9

    .line 167
    :cond_6
    :goto_4
    :try_start_3
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 168
    .line 169
    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 174
    :try_start_4
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 175
    .line 176
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->isDisposing()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_7

    .line 181
    .line 182
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 183
    .line 184
    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V

    .line 185
    .line 186
    .line 187
    goto :goto_5

    .line 188
    :catchall_2
    move-exception v1

    .line 189
    goto :goto_7

    .line 190
    :cond_7
    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 191
    :goto_6
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 192
    .line 193
    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 198
    .line 199
    .line 200
    goto :goto_f

    .line 201
    :goto_7
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 202
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 203
    :catchall_3
    move-exception v0

    .line 204
    goto :goto_8

    .line 205
    :catch_2
    move-exception v0

    .line 206
    :try_start_7
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 211
    .line 212
    .line 213
    goto :goto_6

    .line 214
    :goto_8
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 215
    .line 216
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 221
    .line 222
    .line 223
    throw v0

    .line 224
    :goto_9
    :try_start_8
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 225
    .line 226
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 231
    :try_start_9
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 232
    .line 233
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService;->isDisposing()Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_8

    .line 238
    .line 239
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 240
    .line 241
    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V

    .line 242
    .line 243
    .line 244
    goto :goto_a

    .line 245
    :catchall_4
    move-exception v2

    .line 246
    goto :goto_c

    .line 247
    :cond_8
    :goto_a
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 248
    :goto_b
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 249
    .line 250
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 255
    .line 256
    .line 257
    goto :goto_d

    .line 258
    :goto_c
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 259
    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 260
    :catchall_5
    move-exception v0

    .line 261
    goto :goto_e

    .line 262
    :catch_3
    move-exception v1

    .line 263
    :try_start_c
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 268
    .line 269
    .line 270
    goto :goto_b

    .line 271
    :goto_d
    throw v0

    .line 272
    :goto_e
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 273
    .line 274
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 279
    .line 280
    .line 281
    throw v0

    .line 282
    :cond_9
    :goto_f
    return-void
.end method
