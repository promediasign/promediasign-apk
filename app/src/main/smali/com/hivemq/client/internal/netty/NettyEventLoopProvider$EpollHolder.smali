.class abstract Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$EpollHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpollHolder"
.end annotation


# direct methods
.method public static synthetic a()Lio/netty/channel/epoll/EpollSocketChannel;
    .locals 1

    .line 1
    new-instance v0, Lio/netty/channel/epoll/EpollSocketChannel;

    invoke-direct {v0}, Lio/netty/channel/epoll/EpollSocketChannel;-><init>()V

    return-object v0
.end method

.method public static synthetic access$000()Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;
    .locals 1

    invoke-static {}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$EpollHolder;->eventLoopProvider()Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(ILjava/util/concurrent/Executor;)Lio/netty/channel/epoll/EpollEventLoopGroup;
    .locals 1

    .line 1
    new-instance v0, Lio/netty/channel/epoll/EpollEventLoopGroup;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/epoll/EpollEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static eventLoopProvider()Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;
    .locals 4

    invoke-static {}, Lio/netty/channel/epoll/Epoll;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    new-instance v1, Lcom/hivemq/client/internal/netty/a;

    invoke-direct {v1}, Lcom/hivemq/client/internal/netty/a;-><init>()V

    new-instance v2, Lcom/hivemq/client/internal/netty/b;

    invoke-direct {v2}, Lcom/hivemq/client/internal/netty/b;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;-><init>(Ljava/util/function/BiFunction;Lio/netty/channel/ChannelFactory;Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$1;)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->access$200()Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    move-result-object v0

    return-object v0
.end method
