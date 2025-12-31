.class Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/write/WriteRequestQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/AbstractIoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseAwareWriteQueue"
.end annotation


# instance fields
.field private final queue:Lorg/apache/mina/core/write/WriteRequestQueue;

.field final synthetic this$0:Lorg/apache/mina/core/session/AbstractIoSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequestQueue;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->this$0:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->queue:Lorg/apache/mina/core/write/WriteRequestQueue;

    return-void
.end method


# virtual methods
.method public clear(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->queue:Lorg/apache/mina/core/write/WriteRequestQueue;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->clear(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->queue:Lorg/apache/mina/core/write/WriteRequestQueue;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->dispose(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public isEmpty(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->queue:Lorg/apache/mina/core/write/WriteRequestQueue;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result p1

    return p1
.end method

.method public offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->queue:Lorg/apache/mina/core/write/WriteRequestQueue;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public declared-synchronized poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->queue:Lorg/apache/mina/core/write/WriteRequestQueue;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v0

    invoke-static {}, Lorg/apache/mina/core/session/AbstractIoSession;->access$600()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->this$0:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->close()Lorg/apache/mina/core/future/CloseFuture;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1
.end method
