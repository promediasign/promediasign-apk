.class Lio/netty/channel/embedded/EmbeddedChannel$2;
.super Lio/netty/channel/ChannelInitializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/embedded/EmbeddedChannel;->setup(Z[Lio/netty/channel/ChannelHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/ChannelInitializer<",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/embedded/EmbeddedChannel;

.field final synthetic val$handlers:[Lio/netty/channel/ChannelHandler;


# direct methods
.method public constructor <init>(Lio/netty/channel/embedded/EmbeddedChannel;[Lio/netty/channel/ChannelHandler;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel$2;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    iput-object p2, p0, Lio/netty/channel/embedded/EmbeddedChannel$2;->val$handlers:[Lio/netty/channel/ChannelHandler;

    invoke-direct {p0}, Lio/netty/channel/ChannelInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method public initChannel(Lio/netty/channel/Channel;)V
    .locals 7

    const/4 v0, 0x1

    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    iget-object v1, p0, Lio/netty/channel/embedded/EmbeddedChannel$2;->val$handlers:[Lio/netty/channel/ChannelHandler;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    new-array v6, v0, [Lio/netty/channel/ChannelHandler;

    aput-object v5, v6, v3

    invoke-interface {p1, v6}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
