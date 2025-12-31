.class public abstract Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
.super Lorg/apache/mina/core/service/AbstractIoConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;,
        Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        "H:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/mina/core/service/AbstractIoConnector;"
    }
.end annotation


# instance fields
.field private final cancelQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
            "TT;TH;>.ConnectionRequest;>;"
        }
    .end annotation
.end field

.field private final connectQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
            "TT;TH;>.ConnectionRequest;>;"
        }
    .end annotation
.end field

.field private final connectorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
            "TT;TH;>.Connector;>;"
        }
    .end annotation
.end field

.field private final createdProcessor:Z

.field private final disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

.field private final processor:Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile selectable:Z


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v0, p2}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;)V

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v0, p2, p3}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;I)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, v0, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectQueue:Ljava/util/Queue;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    new-instance p1, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    invoke-direct {p1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p3, :cond_2

    iput-object p3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processor:Lorg/apache/mina/core/service/IoProcessor;

    iput-boolean p4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->createdProcessor:Z

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->init()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    if-nez p1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_2
    new-instance p2, Lorg/apache/mina/core/RuntimeIoException;

    const-string p3, "Failed to initialize."

    invoke-direct {p2, p3, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    iget-boolean p2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    if-nez p2, :cond_1

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "processor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TT;>;)V"
        }
    .end annotation

    .line 5
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    return-void
.end method

.method public static synthetic access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->createdProcessor:Z

    return p0
.end method

.method public static synthetic access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/IoProcessor;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processor:Lorg/apache/mina/core/service/IoProcessor;

    return-object p0
.end method

.method public static synthetic access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposalLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    return-object p0
.end method

.method public static synthetic access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$1500(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->startupWorker()V

    return-void
.end method

.method public static synthetic access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    return p0
.end method

.method public static synthetic access$402(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    return p1
.end method

.method public static synthetic access$500(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)I
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->registerNew()I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/util/Iterator;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processConnections(Ljava/util/Iterator;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processTimedOutSessions(Ljava/util/Iterator;)V

    return-void
.end method

.method public static synthetic access$900(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)I
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelKeys()I

    move-result p0

    return p0
.end method

.method private cancelKeys()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    if-nez v1, :cond_1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->wakeup()V

    :cond_0
    return v0

    :cond_1
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v1

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private processConnections(Ljava/util/Iterator;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TH;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->getConnectionRequest(Ljava/lang/Object;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->finishConnect(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processor:Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {p0, v3, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;

    move-result-object v1

    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->getSessionInitializer()Lorg/apache/mina/core/session/IoSessionInitializer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/mina/core/service/AbstractIoService;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    invoke-virtual {v1}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/apache/mina/core/service/IoProcessor;->add(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v2, v1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    throw p1

    :cond_2
    return v0
.end method

.method private processTimedOutSessions(Ljava/util/Iterator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TH;>;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->getConnectionRequest(Ljava/lang/Object;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->access$200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    new-instance v3, Ljava/net/ConnectException;

    const-string v4, "Connection timed out."

    invoke-direct {v3, v4}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setException(Ljava/lang/Throwable;)V

    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private registerNew()I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, v2, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->register(Ljava/lang/Object;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v1, v3}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setException(Ljava/lang/Throwable;)V

    :try_start_1
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startupWorker()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectQueue:Ljava/util/Queue;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;

    .line 22
    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    new-instance v0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$1;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoService;->executeWorker(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract allHandles()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TH;>;"
        }
    .end annotation
.end method

.method public abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)V"
        }
    .end annotation
.end method

.method public abstract connect(Ljava/lang/Object;Ljava/net/SocketAddress;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Ljava/net/SocketAddress;",
            ")Z"
        }
    .end annotation
.end method

.method public final connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->newHandle(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connect(Ljava/lang/Object;Ljava/net/SocketAddress;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-direct {p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;-><init>()V

    iget-object p2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processor:Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {p0, p2, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/mina/core/service/AbstractIoService;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    invoke-virtual {p2}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object p3

    invoke-interface {p3, p2}, Lorg/apache/mina/core/service/IoProcessor;->add(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    invoke-direct {p1, p0, v0, p3}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/lang/Object;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    iget-object p2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->startupWorker()V

    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->wakeup()V

    return-object p1

    :goto_0
    :try_start_1
    invoke-static {p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->newFailedFuture(Ljava/lang/Throwable;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object p1

    :goto_2
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
.end method

.method public abstract destroy()V
.end method

.method public final dispose0()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->startupWorker()V

    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->wakeup()V

    return-void
.end method

.method public abstract finishConnect(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)Z"
        }
    .end annotation
.end method

.method public abstract getConnectionRequest(Ljava/lang/Object;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
            "TT;TH;>.ConnectionRequest;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract newHandle(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")TH;"
        }
    .end annotation
.end method

.method public abstract newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TT;>;TH;)TT;"
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/Object;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
            "TT;TH;>.ConnectionRequest;)V"
        }
    .end annotation
.end method

.method public abstract select(I)I
.end method

.method public abstract selectedHandles()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TH;>;"
        }
    .end annotation
.end method

.method public abstract wakeup()V
.end method
