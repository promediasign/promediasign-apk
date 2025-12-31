.class public abstract Lorg/apache/mina/core/service/AbstractIoAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoService;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/service/IoAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    }
.end annotation


# instance fields
.field protected final bindLock:Ljava/lang/Object;

.field private final boundAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultLocalAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private disconnectOnUnbind:Z

.field private final unmodifiableDefaultLocalAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoService;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unmodifiableDefaultLocalAddresses:Ljava/util/List;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->disconnectOnUnbind:Z

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindLock:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkAddressType(Ljava/net/SocketAddress;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/apache/mina/core/service/IoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "localAddress type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (expected: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/apache/mina/core/service/IoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    return-void
.end method

.method public final bind(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->isDisposing()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    invoke-direct {p0, v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->checkAddressType(Ljava/net/SocketAddress;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindInternal(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v3, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceActivated()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_1
    :try_start_8
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    throw v0

    :goto_3
    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "handler is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0

    :goto_4
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "localAddresses is empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "localAddresses"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already disposed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bind(Ljava/net/SocketAddress;)V
    .locals 2

    .line 3
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "localAddress"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs bind(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V
    .locals 3

    .line 4
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddresses()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    return-void
.end method

.method public abstract bindInternal(Ljava/util/List;)Ljava/util/Set;
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
.end method

.method public getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final getDefaultLocalAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unmodifiableDefaultLocalAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final getLocalAddresses()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isCloseOnDeactivation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->disconnectOnUnbind:Z

    return v0
.end method

.method public final setCloseOnDeactivation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->disconnectOnUnbind:Z

    return-void
.end method

.method public final setDefaultLocalAddress(Ljava/net/SocketAddress;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/SocketAddress;

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->setDefaultLocalAddresses(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V

    return-void
.end method

.method public final setDefaultLocalAddresses(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    invoke-direct {p0, v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->checkAddressType(Ljava/net/SocketAddress;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "empty localAddresses"

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "localAddress can\'t be set while the acceptor is bound."

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "localAddresses"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs setDefaultLocalAddresses(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V
    .locals 3

    .line 2
    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [Ljava/net/SocketAddress;

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length p1, p2

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->setDefaultLocalAddresses(Ljava/lang/Iterable;)V

    return-void
.end method

.method public final setDefaultLocalAddresses(Ljava/util/List;)V
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

    .line 3
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->setDefaultLocalAddresses(Ljava/lang/Iterable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "localAddresses"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/apache/mina/core/service/IoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "("

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getProviderName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v2, 0x20

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, " acceptor: "

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->isActive()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "localAddress(es): "

    .line 45
    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, ", managedSessionCount: "

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getManagedSessionCount()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const-string v0, "not bound"

    .line 74
    .line 75
    :goto_0
    const/16 v2, 0x29

    .line 76
    .line 77
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0
.end method

.method public final unbind()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unbind(Ljava/lang/Iterable;)V

    return-void
.end method

.method public final unbind(Ljava/lang/Iterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/SocketAddress;

    add-int/lit8 v4, v4, 0x1

    if-eqz v5, :cond_1

    iget-object v6, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_3

    :try_start_4
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unbind0(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object p1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :catchall_2
    move-exception p1

    new-instance v2, Lorg/apache/mina/core/RuntimeIoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unbind from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_0
    move-exception p1

    throw p1

    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceDeactivated()V

    :cond_4
    return-void

    :cond_5
    :try_start_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "localAddresses is empty."

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    :goto_3
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "localAddresses"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final unbind(Ljava/net/SocketAddress;)V
    .locals 2

    .line 3
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unbind(Ljava/lang/Iterable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "localAddress"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs unbind(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V
    .locals 1

    .line 4
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unbind(Ljava/lang/Iterable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "otherLocalAddresses"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstLocalAddress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract unbind0(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation
.end method
