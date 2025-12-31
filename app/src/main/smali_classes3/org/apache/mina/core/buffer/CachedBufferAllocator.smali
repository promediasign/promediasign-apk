.class public Lorg/apache/mina/core/buffer/CachedBufferAllocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/buffer/IoBufferAllocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CACHED_BUFFER_SIZE:I = 0x40000

.field private static final DEFAULT_MAX_POOL_SIZE:I = 0x8


# instance fields
.field private final directBuffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final heapBuffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final maxCachedBufferSize:I

.field private final maxPoolSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    const/high16 v1, 0x40000

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-ltz p2, :cond_0

    iput p1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxPoolSize:I

    iput p2, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    new-instance p1, Lorg/apache/mina/core/buffer/CachedBufferAllocator$1;

    invoke-direct {p1, p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$1;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)V

    iput-object p1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->heapBuffers:Ljava/lang/ThreadLocal;

    new-instance p1, Lorg/apache/mina/core/buffer/CachedBufferAllocator$2;

    invoke-direct {p1, p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$2;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)V

    iput-object p1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->directBuffers:Ljava/lang/ThreadLocal;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxCachedBufferSize: "

    .line 2
    invoke-static {p2, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxPoolSize: "

    .line 4
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic access$000(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)I
    .locals 0

    iget p0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)Ljava/lang/ThreadLocal;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->directBuffers:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)Ljava/lang/ThreadLocal;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->heapBuffers:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)I
    .locals 0

    iget p0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxPoolSize:I

    return p0
.end method


# virtual methods
.method public allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->normalizeCapacity(I)I

    move-result v0

    iget v1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    if-eqz v1, :cond_1

    if-le v0, v1, :cond_1

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    :goto_1
    invoke-virtual {p0, p2}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    goto :goto_4

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->directBuffers:Ljava/lang/ThreadLocal;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->heapBuffers:Ljava/lang/ThreadLocal;

    goto :goto_2

    :goto_3
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-object p2, v1

    goto :goto_4

    :cond_3
    if-eqz p2, :cond_0

    goto :goto_0

    :goto_4
    invoke-virtual {p2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p2
.end method

.method public allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getMaxCachedBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    return v0
.end method

.method public getMaxPoolSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxPoolSize:I

    return v0
.end method

.method public newPoolMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x1f

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    new-instance v0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
