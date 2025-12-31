.class final Lio/netty/channel/DefaultChannelPipeline$PendingHandlerAddedTask;
.super Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/DefaultChannelPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PendingHandlerAddedTask"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/DefaultChannelPipeline;


# direct methods
.method public constructor <init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerAddedTask;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    invoke-direct {p0, p2}, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerAddedTask;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0, v1}, Lio/netty/channel/DefaultChannelPipeline;->access$100(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v3, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v3}, Lio/netty/channel/AbstractChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v3, v4, v0

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v0, "Can\'t invoke handlerAdded() as the EventExecutor {} rejected it, removing handler {}."

    invoke-interface {v2, v0, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerAddedTask;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0, v1}, Lio/netty/channel/DefaultChannelPipeline;->access$800(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V

    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->setRemoved()V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerAddedTask;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0, v1}, Lio/netty/channel/DefaultChannelPipeline;->access$100(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V

    return-void
.end method
