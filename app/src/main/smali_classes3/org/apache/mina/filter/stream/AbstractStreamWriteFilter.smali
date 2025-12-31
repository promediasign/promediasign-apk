.class public abstract Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/mina/core/filterchain/IoFilterAdapter;"
    }
.end annotation


# static fields
.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x1000


# instance fields
.field protected final CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

.field protected final CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

.field protected final WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

.field private writeBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stream"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "queue"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "writeRequest"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

    const/16 v0, 0x1000

    iput v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->writeBufferSize:I

    return-void
.end method

.method private getWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    return-object p1
.end method

.method private removeWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    return-object p1
.end method


# virtual methods
.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iget-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0, p1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getMessageClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getMessageClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/WriteFuture;->setWritten()V

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v2, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {p3, v1}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :goto_0
    return-void
.end method

.method public abstract getMessageClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation
.end method

.method public getWriteBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->writeBufferSize:I

    return v0
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getMessageClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, p3}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, p3}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/mina/core/write/WriteRequest;

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->removeWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/write/WriteRequest;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/WriteFuture;->setWritten()V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v0, p3}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :goto_2
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance p3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "Only one "

    .line 17
    .line 18
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, " is permitted."

    .line 22
    .line 23
    invoke-static {p2, p3, v0}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public setWriteBufferSize(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->writeBufferSize:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "writeBufferSize must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
