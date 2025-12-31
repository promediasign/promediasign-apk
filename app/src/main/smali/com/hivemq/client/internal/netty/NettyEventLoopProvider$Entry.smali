.class Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field final eventLoopGroup:Lio/netty/channel/MultithreadEventLoopGroup;

.field referenceCount:I


# direct methods
.method private constructor <init>(Lio/netty/channel/MultithreadEventLoopGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->referenceCount:I

    iput-object p1, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->eventLoopGroup:Lio/netty/channel/MultithreadEventLoopGroup;

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/channel/MultithreadEventLoopGroup;Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;-><init>(Lio/netty/channel/MultithreadEventLoopGroup;)V

    return-void
.end method
