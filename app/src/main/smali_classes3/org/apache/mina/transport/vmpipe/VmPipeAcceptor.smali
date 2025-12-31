.class public final Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoAcceptor;
.source "SourceFile"


# static fields
.field static final boundHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/mina/transport/vmpipe/VmPipeAddress;",
            "Lorg/apache/mina/transport/vmpipe/VmPipe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-direct {p1}, Lorg/apache/mina/core/session/IdleStatusChecker;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IdleStatusChecker;->getNotifyingTask()Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    move-result-object p1

    const-string v0, "idleStatusChecker"

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/service/AbstractIoService;->executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindInternal(Ljava/util/List;)Ljava/util/Set;
    .locals 7
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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    check-cast v2, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->getPort()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->getPort()I

    move-result v3

    if-ltz v3, :cond_2

    sget-object v3, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address already bound: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Bind port number must be 0 or above."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/16 v2, 0x2710

    :goto_2
    const v3, 0x7fffffff

    if-ge v2, v3, :cond_5

    new-instance v3, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    invoke-direct {v3, v2}, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;-><init>(I)V

    sget-object v4, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object v2, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "No port available."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    move-object v3, v2

    check-cast v3, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    sget-object v4, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v2, Lorg/apache/mina/transport/vmpipe/VmPipe;

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v6

    invoke-direct {v2, p0, v3, v5, v6}, Lorg/apache/mina/transport/vmpipe/VmPipe;-><init>(Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;Lorg/apache/mina/transport/vmpipe/VmPipeAddress;Lorg/apache/mina/core/service/IoHandler;Lorg/apache/mina/core/service/IoServiceListenerSupport;)V

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    sget-object v3, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate local address: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    monitor-exit v1

    return-object v0

    :goto_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dispose0()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;->getNotifyingTask()Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->cancel()V

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unbind()V

    return-void
.end method

.method public doFinishSessionInitialization(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/mina/core/service/AbstractIoService;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    return-void
.end method

.method public bridge synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getDefaultLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getSessionConfig()Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method public newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setDefaultLocalAddress(Lorg/apache/mina/transport/vmpipe/VmPipeAddress;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public unbind0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    sget-object v2, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
