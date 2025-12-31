.class public Lcom/hivemq/client/internal/netty/DefaultContextPromise;
.super Lio/netty/channel/DefaultChannelPromise;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelPromise;
.implements Lcom/hivemq/client/internal/netty/ContextFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/DefaultChannelPromise;",
        "Lio/netty/channel/ChannelPromise;",
        "Lcom/hivemq/client/internal/netty/ContextFuture;"
    }
.end annotation


# instance fields
.field private final context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/channel/Channel;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "TC;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPromise;-><init>(Lio/netty/channel/Channel;)V

    iput-object p2, p0, Lcom/hivemq/client/internal/netty/DefaultContextPromise;->context:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/netty/DefaultContextPromise;->context:Ljava/lang/Object;

    return-object v0
.end method
