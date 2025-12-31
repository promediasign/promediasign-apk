.class Lio/netty/channel/AbstractChannel$AbstractUnsafe$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;


# direct methods
.method public constructor <init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$6$1;->this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$6$1;->this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;

    iget-object v1, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;->val$outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;->val$cause:Ljava/lang/Throwable;

    iget-boolean v0, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;->val$notify:Z

    invoke-virtual {v1, v2, v0}, Lio/netty/channel/ChannelOutboundBuffer;->failFlushed(Ljava/lang/Throwable;Z)V

    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$6$1;->this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;

    iget-object v1, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;->val$outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    iget-object v0, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;->val$closeCause:Ljava/nio/channels/ClosedChannelException;

    invoke-virtual {v1, v0}, Lio/netty/channel/ChannelOutboundBuffer;->close(Ljava/nio/channels/ClosedChannelException;)V

    :cond_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$6$1;->this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;

    iget-object v1, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-boolean v0, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;->val$wasActive:Z

    invoke-static {v1, v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->access$1100(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Z)V

    return-void
.end method
