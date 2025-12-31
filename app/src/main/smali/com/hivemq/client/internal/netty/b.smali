.class public final synthetic Lcom/hivemq/client/internal/netty/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFactory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newChannel()Lio/netty/channel/Channel;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$EpollHolder;->a()Lio/netty/channel/epoll/EpollSocketChannel;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    return-object v0
.end method
