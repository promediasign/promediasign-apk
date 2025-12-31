.class public Lorg/apache/mina/util/byteaccess/ByteArrayPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArrayFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
    }
.end annotation


# instance fields
.field private final MAX_BITS:I

.field private final direct:Z

.field private freeBufferCount:I

.field private freeBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Stack<",
            "Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;",
            ">;>;"
        }
    .end annotation
.end field

.field private freeMemory:J

.field private freed:Z

.field private final maxFreeBuffers:I

.field private final maxFreeMemory:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->MAX_BITS:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBufferCount:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeMemory:J

    iput-boolean p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->direct:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput p2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->maxFreeBuffers:I

    iput p3, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->maxFreeMemory:I

    iput-boolean v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freed:Z

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/mina/util/byteaccess/ByteArrayPool;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->bits(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I
    .locals 0

    iget p0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBufferCount:I

    return p0
.end method

.method public static synthetic access$208(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I
    .locals 2

    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBufferCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBufferCount:I

    return v0
.end method

.method public static synthetic access$300(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I
    .locals 0

    iget p0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->maxFreeBuffers:I

    return p0
.end method

.method public static synthetic access$400(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeMemory:J

    return-wide v0
.end method

.method public static synthetic access$414(Lorg/apache/mina/util/byteaccess/ByteArrayPool;J)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeMemory:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeMemory:J

    return-wide v0
.end method

.method public static synthetic access$500(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I
    .locals 0

    iget p0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->maxFreeMemory:I

    return p0
.end method

.method private bits(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    if-ge v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public create(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_1

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->bits(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/Stack;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->setFreed(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-object v0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    shl-int/2addr v0, v1

    .line 48
    iget-boolean v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->direct:Z

    .line 49
    .line 50
    invoke-static {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 55
    .line 56
    .line 57
    new-instance p1, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;

    .line 58
    .line 59
    invoke-direct {p1, p0, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayPool;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v3}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->setFreed(Z)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p1

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    const-string v1, "Buffer size must be at least 1: "

    .line 71
    .line 72
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0
.end method

.method public free()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freed:Z

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->freeBuffers:Ljava/util/ArrayList;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already freed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
