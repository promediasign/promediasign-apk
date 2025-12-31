.class public final Lorg/apache/mina/filter/buffer/BufferedWriteFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000


# instance fields
.field private bufferSize:I

.field private final buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/util/LazyInitializedCacheMap<",
            "Lorg/apache/mina/core/session/IoSession;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x2000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;-><init>(ILorg/apache/mina/util/LazyInitializedCacheMap;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;-><init>(ILorg/apache/mina/util/LazyInitializedCacheMap;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/mina/util/LazyInitializedCacheMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/mina/util/LazyInitializedCacheMap<",
            "Lorg/apache/mina/core/session/IoSession;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    const-class v0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->logger:Lorg/slf4j/Logger;

    iput p1, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->bufferSize:I

    if-nez p2, :cond_0

    new-instance p1, Lorg/apache/mina/util/LazyInitializedCacheMap;

    invoke-direct {p1}, Lorg/apache/mina/util/LazyInitializedCacheMap;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    :goto_0
    return-void
.end method

.method private free(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/LazyInitializedCacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    :cond_0
    return-void
.end method

.method private internalFlush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 2

    monitor-enter p3

    :try_start_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->duplicate()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->logger:Lorg/slf4j/Logger;

    const-string v1, "Flushing buffer: {}"

    invoke-interface {p3, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p3, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {p3, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    new-instance v1, Lorg/apache/mina/filter/buffer/IoBufferLazyInitializer;

    iget v2, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->bufferSize:I

    invoke-direct {v1, v2}, Lorg/apache/mina/filter/buffer/IoBufferLazyInitializer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lorg/apache/mina/util/LazyInitializedCacheMap;->putIfAbsent(Ljava/lang/Object;Lorg/apache/mina/util/LazyInitializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method

.method private write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getNextFilter(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v0

    invoke-direct {p0, v0, p1, p3}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->internalFlush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    new-instance p3, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {p3, p2}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v1

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getNextFilter(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v0

    invoke-direct {p0, v0, p1, p3}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->internalFlush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    :cond_1
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p3, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    monitor-exit p3

    goto :goto_1

    :catchall_1
    move-exception p2

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->free(Lorg/apache/mina/core/session/IoSession;)V

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz p3, :cond_0

    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, p2, p1}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This filter should only buffer IoBuffer objects"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getNextFilter(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    invoke-virtual {v1, p1}, Lorg/apache/mina/util/LazyInitializedCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->internalFlush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->bufferSize:I

    return v0
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->free(Lorg/apache/mina/core/session/IoSession;)V

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->bufferSize:I

    return-void
.end method
