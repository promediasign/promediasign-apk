.class public Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;,
        Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$EpollHolder;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field private final channelFactory:Lio/netty/channel/ChannelFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelFactory<",
            "*>;"
        }
    .end annotation
.end field

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/concurrent/Executor;",
            "Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final eventLoopGroupFactory:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Executor;",
            "Lio/netty/channel/MultithreadEventLoopGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v0, "io.netty.channel.epoll.Epoll"

    invoke-static {v0}, Lcom/hivemq/client/internal/util/ClassUtil;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$EpollHolder;->access$000()Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->INSTANCE:Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->nioEventLoopProvider()Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private constructor <init>(Ljava/util/function/BiFunction;Lio/netty/channel/ChannelFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Executor;",
            "Lio/netty/channel/MultithreadEventLoopGroup;",
            ">;",
            "Lio/netty/channel/ChannelFactory<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->entries:Ljava/util/Map;

    iput-object p1, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->eventLoopGroupFactory:Ljava/util/function/BiFunction;

    iput-object p2, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->channelFactory:Lio/netty/channel/ChannelFactory;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/BiFunction;Lio/netty/channel/ChannelFactory;Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;-><init>(Ljava/util/function/BiFunction;Lio/netty/channel/ChannelFactory;)V

    return-void
.end method

.method public static synthetic access$200()Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;
    .locals 1

    invoke-static {}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->nioEventLoopProvider()Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    move-result-object v0

    return-object v0
.end method

.method private static nioEventLoopProvider()Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;
    .locals 4

    new-instance v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    new-instance v1, LB0/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, LA0/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, LA0/a;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;-><init>(Ljava/util/function/BiFunction;Lio/netty/channel/ChannelFactory;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized acquireEventLoop(Ljava/util/concurrent/Executor;I)Lio/netty/channel/EventLoop;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->eventLoopGroupFactory:Ljava/util/function/BiFunction;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Lio/netty/util/concurrent/ThreadPerTaskExecutor;

    new-instance v2, Lio/netty/util/concurrent/DefaultThreadFactory;

    const-string v3, "com.hivemq.client.mqtt"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Lio/netty/util/concurrent/ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    invoke-interface {v0, p2, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    check-cast p2, Lio/netty/channel/MultithreadEventLoopGroup;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    instance-of v0, p1, Lio/netty/channel/MultithreadEventLoopGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lio/netty/channel/MultithreadEventLoopGroup;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->executorCount()I

    move-result v1

    if-eq v1, p2, :cond_1

    sget-object v1, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v2, "Tried to use a different amount of Netty threads for the provided event loop. Using {} threads instead of {}"

    invoke-virtual {v0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->executorCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, v2, v3, p2}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    move-object p2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->eventLoopGroupFactory:Ljava/util/function/BiFunction;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;-><init>(Lio/netty/channel/MultithreadEventLoopGroup;Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$1;)V

    iget-object p2, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->entries:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->eventLoopGroup:Lio/netty/channel/MultithreadEventLoopGroup;

    invoke-virtual {p1}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->executorCount()I

    move-result p1

    if-eq p1, p2, :cond_4

    sget-object p1, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "Tried to use a different amount of Netty threads for the same executor. Using {} threads instead of {}"

    iget-object v2, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->eventLoopGroup:Lio/netty/channel/MultithreadEventLoopGroup;

    invoke-virtual {v2}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->executorCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v1, v2, p2}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    iget p1, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->referenceCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->referenceCount:I

    :goto_2
    iget-object p1, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->eventLoopGroup:Lio/netty/channel/MultithreadEventLoopGroup;

    invoke-virtual {p1}, Lio/netty/channel/MultithreadEventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public getChannelFactory()Lio/netty/channel/ChannelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/channel/ChannelFactory<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->channelFactory:Lio/netty/channel/ChannelFactory;

    return-object v0
.end method

.method public declared-synchronized releaseEventLoop(Ljava/util/concurrent/Executor;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;

    iget v1, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->referenceCount:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p1, p1, Lio/netty/channel/MultithreadEventLoopGroup;

    if-nez p1, :cond_0

    iget-object v1, v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->eventLoopGroup:Lio/netty/channel/MultithreadEventLoopGroup;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
