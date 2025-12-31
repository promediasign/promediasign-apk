.class Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Acceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$302(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;J)J

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x3e8

    :try_start_0
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-virtual {v4, v2, v3}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->select(J)I

    move-result v4

    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)I

    move-result v5

    add-int/2addr v1, v5

    if-nez v1, :cond_1

    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$600(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$700(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$800(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$902(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;)Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;

    monitor-exit v5

    goto :goto_4

    :catchall_0
    move-exception v4

    goto :goto_1

    :cond_0
    monitor-exit v5

    goto :goto_2

    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    :catch_0
    move-exception v4

    goto :goto_3

    :catch_1
    nop

    goto :goto_4

    :cond_1
    :goto_2
    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-virtual {v4}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectedHandles()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Ljava/util/Iterator;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-static {v6, v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;J)V

    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)I

    move-result v6

    sub-int/2addr v1, v6

    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-static {v6, v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;J)V
    :try_end_2
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :goto_3
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    nop

    goto :goto_0

    :cond_3
    :goto_4
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->isDisposing()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-static {v1, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$402(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Z)Z

    :try_start_4
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-virtual {v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    :try_start_5
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :goto_6
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_7
    return-void
.end method
