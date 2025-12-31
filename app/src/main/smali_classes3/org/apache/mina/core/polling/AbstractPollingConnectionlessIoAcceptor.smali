.class public abstract Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoAcceptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;,
        Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        "H:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/mina/core/service/AbstractIoAcceptor;"
    }
.end annotation


# static fields
.field private static final DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

.field private static final SELECT_TIMEOUT:J = 0x3e8L


# instance fields
.field private acceptor:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<",
            "TS;TH;>.Acceptor;"
        }
    .end annotation
.end field

.field private final boundHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TH;>;"
        }
    .end annotation
.end field

.field private final cancelQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

.field private final flushingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field private lastIdleCheckTime:J

.field private final lock:Ljava/lang/Object;

.field private final processor:Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final registerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;",
            ">;"
        }
    .end annotation
.end field

.field private volatile selectable:Z

.field private sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;

    invoke-direct {v0}, Lorg/apache/mina/core/session/ExpiringSessionRecycler;-><init>()V

    sput-object v0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/lang/Object;

    new-instance p1, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$ConnectionlessAcceptorProcessor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$1;)V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->processor:Lorg/apache/mina/core/service/IoProcessor;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->registerQueue:Ljava/util/Queue;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->cancelQueue:Ljava/util/Queue;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->flushingSessions:Ljava/util/Queue;

    .line 2
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->boundHandles:Ljava/util/Map;

    sget-object p1, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    new-instance p1, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    invoke-direct {p1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->init()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z

    if-nez p1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->destroy()V
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

    const-string v0, "Failed to initialize."

    invoke-direct {p2, v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    iget-boolean p2, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z

    if-nez p2, :cond_1

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    throw p1
.end method

.method public static synthetic access$100(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->processReadySessions(Ljava/util/Iterator;)V

    return-void
.end method

.method public static synthetic access$1100(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->flushSessions(J)V

    return-void
.end method

.method public static synthetic access$1200(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)I
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->unregisterHandles()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->notifyIdleSessions(J)V

    return-void
.end method

.method public static synthetic access$1400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    return-object p0
.end method

.method public static synthetic access$302(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lastIdleCheckTime:J

    return-wide p1
.end method

.method public static synthetic access$400(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z

    return p0
.end method

.method public static synthetic access$402(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z

    return p1
.end method

.method public static synthetic access$500(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)I
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->registerHandles()I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->registerQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->cancelQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$902(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;)Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->acceptor:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;

    return-object p1
.end method

.method private flush(Lorg/apache/mina/core/session/AbstractIoSession;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v3

    const/4 v4, 0x1

    ushr-int/2addr v3, v4

    add-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-interface {v1, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    invoke-virtual {p1, v3, p2, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    return v4

    :cond_0
    :try_start_1
    invoke-virtual {p1, v5}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_1
    invoke-interface {v5}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    invoke-virtual {p1, v8}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v6

    :goto_2
    invoke-interface {v6, v5}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v7

    :cond_3
    invoke-virtual {p0, p1, v6, v7}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->send(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I

    move-result v7

    if-eqz v7, :cond_5

    if-lt v3, v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    invoke-virtual {p1, v8}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    add-int/2addr v3, v7

    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p0, p1, v4}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, v3, p2, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    return v0

    :goto_4
    invoke-virtual {p1, v3, p2, p3}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    throw v0
.end method

.method private flushSessions(J)V
    .locals 2

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->unscheduledForFlush()V

    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->flush(Lorg/apache/mina/core/session/AbstractIoSession;J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->isScheduledForFlush()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getAddressAsString(Ljava/net/SocketAddress;)Ljava/lang/String;
    .locals 5

    .line 1
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string p1, "null"

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    instance-of v1, v0, Ljava/net/Inet4Address;

    .line 17
    .line 18
    const-string v2, ":"

    .line 19
    .line 20
    const-string v3, "/"

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object v1, v0

    .line 48
    check-cast v1, Ljava/net/Inet6Address;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/16 v3, 0xc

    .line 66
    .line 67
    aget-byte v3, v0, v3

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v3, "."

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/16 v4, 0xd

    .line 78
    .line 79
    aget-byte v4, v0, v4

    .line 80
    .line 81
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/16 v4, 0xe

    .line 88
    .line 89
    aget-byte v4, v0, v4

    .line 90
    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const/16 v3, 0xf

    .line 98
    .line 99
    aget-byte v0, v0, v3

    .line 100
    .line 101
    invoke-static {v1, v0, p1, v2}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :goto_0
    return-object p1
.end method

.method private newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->boundHandles:Ljava/util/Map;

    invoke-direct {p0, p2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getAddressAsString(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, p2, p1}, Lorg/apache/mina/core/session/IoSessionRecycler;->recycle(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    if-eqz p2, :cond_0

    monitor-exit v1

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->processor:Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {p0, p2, v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/AbstractIoSession;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/mina/core/session/IoSessionRecycler;->put(Lorg/apache/mina/core/session/IoSession;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lorg/apache/mina/core/service/AbstractIoService;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-object p1

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown local address: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private notifyIdleSessions(J)V
    .locals 5

    iget-wide v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lastIdleCheckTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iput-wide p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lastIdleCheckTime:J

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleness(Ljava/util/Iterator;J)V

    :cond_0
    return-void
.end method

.method private processReadySessions(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TH;>;)V"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->isReadable(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->readHandle(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->isWritable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/IoSession;

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_3
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readHandle(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->receive(Ljava/lang/Object;Lorg/apache/mina/core/buffer/IoBuffer;)Ljava/net/SocketAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private registerHandles()I
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->open(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getAddressAsString(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceActivated()V

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V

    :cond_4
    return v2

    :goto_3
    :try_start_2
    invoke-virtual {v0, v2}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_3
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V

    goto/16 :goto_0

    :goto_5
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_4
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v1

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V

    :cond_7
    throw v2
.end method

.method private scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private startupAcceptor()V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->selectable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->acceptor:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$1;)V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->acceptor:Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor$Acceptor;

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/service/AbstractIoService;->executeWorker(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterHandles()I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->boundHandles:Ljava/util/Map;

    invoke-direct {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->getAddressAsString(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->close(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    goto :goto_0
.end method


# virtual methods
.method public final bindInternal(Ljava/util/List;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->startupAcceptor()V

    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V

    invoke-virtual {v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object p1

    throw p1
.end method

.method public abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)V"
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public dispose0()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unbind()V

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->startupAcceptor()V

    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V

    return-void
.end method

.method public final getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    return-object v0
.end method

.method public abstract init()V
.end method

.method public abstract isReadable(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)Z"
        }
    .end annotation
.end method

.method public abstract isWritable(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)Z"
        }
    .end annotation
.end method

.method public abstract localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)",
            "Ljava/net/SocketAddress;"
        }
    .end annotation
.end method

.method public abstract newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/AbstractIoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;TH;",
            "Ljava/net/SocketAddress;",
            ")TS;"
        }
    .end annotation
.end method

.method public final newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->isDisposing()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->isActive()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/mina/core/RuntimeIoException;

    const-string v1, "Failed to create a session."

    invoke-direct {p2, v1, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t create a session from a unbound service."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "remoteAddress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already disposed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract open(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")TH;"
        }
    .end annotation
.end method

.method public abstract receive(Ljava/lang/Object;Lorg/apache/mina/core/buffer/IoBuffer;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ")",
            "Ljava/net/SocketAddress;"
        }
    .end annotation
.end method

.method public abstract select()I
.end method

.method public abstract select(J)I
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

.method public abstract send(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            "Ljava/net/SocketAddress;",
            ")I"
        }
    .end annotation
.end method

.method public abstract setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation
.end method

.method public final setSessionRecycler(Lorg/apache/mina/core/session/IoSessionRecycler;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    monitor-exit v0

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "sessionRecycler can\'t be set while the acceptor is bound."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final unbind0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->startupAcceptor()V

    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;->wakeup()V

    invoke-virtual {v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object p1

    throw p1
.end method

.method public abstract wakeup()V
.end method
