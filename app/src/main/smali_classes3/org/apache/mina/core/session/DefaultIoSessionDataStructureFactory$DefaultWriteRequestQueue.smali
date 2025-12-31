.class Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/write/WriteRequestQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultWriteRequestQueue"
.end annotation


# instance fields
.field private final q:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;->q:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public clear(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;->q:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized isEmpty(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;->q:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;->q:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;->q:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/write/WriteRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;->q:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
