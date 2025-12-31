.class abstract Lio/netty/buffer/PoolArena;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/buffer/PoolArenaMetric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PoolArena$DirectArena;,
        Lio/netty/buffer/PoolArena$HeapArena;,
        Lio/netty/buffer/PoolArena$SizeClass;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/buffer/PoolArenaMetric;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final HAS_UNSAFE:Z

.field static final numTinySubpagePools:I = 0x20


# instance fields
.field private final activeBytesHuge:Lio/netty/util/internal/LongCounter;

.field private final allocationsHuge:Lio/netty/util/internal/LongCounter;

.field private allocationsNormal:J

.field private final allocationsSmall:Lio/netty/util/internal/LongCounter;

.field private final allocationsTiny:Lio/netty/util/internal/LongCounter;

.field private final chunkListMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolChunkListMetric;",
            ">;"
        }
    .end annotation
.end field

.field final chunkSize:I

.field private final deallocationsHuge:Lio/netty/util/internal/LongCounter;

.field private deallocationsNormal:J

.field private deallocationsSmall:J

.field private deallocationsTiny:J

.field final directMemoryCacheAlignment:I

.field final directMemoryCacheAlignmentMask:I

.field private final maxOrder:I

.field final numSmallSubpagePools:I

.field final numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

.field final pageShifts:I

.field final pageSize:I

.field final parent:Lio/netty/buffer/PooledByteBufAllocator;

.field private final q000:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final q025:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final q050:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final q075:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final q100:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final qInit:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final smallSubpagePools:[Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation
.end field

.field final subpageOverflowMask:I

.field private final tinySubpagePools:[Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    sput-boolean v0, Lio/netty/buffer/PoolArena;->HAS_UNSAFE:Z

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V
    .locals 14

    move-object v6, p0

    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    move-result-object v3

    iput-object v3, v6, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    move-result-object v3

    iput-object v3, v6, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    move-result-object v3

    iput-object v3, v6, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    move-result-object v3

    iput-object v3, v6, Lio/netty/buffer/PoolArena;->activeBytesHuge:Lio/netty/util/internal/LongCounter;

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    move-result-object v3

    iput-object v3, v6, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, v6, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v3, p1

    iput-object v3, v6, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    iput v0, v6, Lio/netty/buffer/PoolArena;->pageSize:I

    move/from16 v3, p3

    iput v3, v6, Lio/netty/buffer/PoolArena;->maxOrder:I

    iput v1, v6, Lio/netty/buffer/PoolArena;->pageShifts:I

    move/from16 v7, p5

    iput v7, v6, Lio/netty/buffer/PoolArena;->chunkSize:I

    iput v2, v6, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignment:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v6, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignmentMask:I

    add-int/lit8 v2, v0, -0x1

    not-int v2, v2

    iput v2, v6, Lio/netty/buffer/PoolArena;->subpageOverflowMask:I

    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lio/netty/buffer/PoolArena;->newSubpagePoolArray(I)[Lio/netty/buffer/PoolSubpage;

    move-result-object v2

    iput-object v2, v6, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v6, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolArena;->newSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x9

    iput v1, v6, Lio/netty/buffer/PoolArena;->numSmallSubpagePools:I

    invoke-direct {p0, v1}, Lio/netty/buffer/PoolArena;->newSubpagePoolArray(I)[Lio/netty/buffer/PoolSubpage;

    move-result-object v1

    iput-object v1, v6, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    :goto_1
    iget-object v1, v6, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    array-length v3, v1

    if-ge v2, v3, :cond_1

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolArena;->newSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v8, Lio/netty/buffer/PoolChunkList;

    const/16 v3, 0x64

    const v4, 0x7fffffff

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, p0

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    iput-object v8, v6, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    new-instance v9, Lio/netty/buffer/PoolChunkList;

    const/16 v3, 0x4b

    const/16 v4, 0x64

    move-object v0, v9

    move-object v2, v8

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    iput-object v9, v6, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    new-instance v10, Lio/netty/buffer/PoolChunkList;

    const/16 v3, 0x32

    move-object v0, v10

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    iput-object v10, v6, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    new-instance v11, Lio/netty/buffer/PoolChunkList;

    const/16 v3, 0x19

    const/16 v4, 0x4b

    move-object v0, v11

    move-object v2, v10

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    iput-object v11, v6, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    new-instance v12, Lio/netty/buffer/PoolChunkList;

    const/4 v3, 0x1

    const/16 v4, 0x32

    move-object v0, v12

    move-object v2, v11

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    iput-object v12, v6, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    new-instance v13, Lio/netty/buffer/PoolChunkList;

    const/high16 v3, -0x80000000

    const/16 v4, 0x19

    move-object v0, v13

    move-object v2, v12

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    iput-object v13, v6, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v8, v9}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    invoke-virtual {v9, v10}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    invoke-virtual {v10, v11}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    invoke-virtual {v11, v12}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    invoke-virtual {v13, v13}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v6, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    return-void
.end method

.method private allocate(Lio/netty/buffer/PoolThreadCache;Lio/netty/buffer/PooledByteBuf;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache;",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p3}, Lio/netty/buffer/PoolArena;->normalizeCapacity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/buffer/PoolArena;->isTinyOrSmall(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p0, p2, p3, v0}, Lio/netty/buffer/PoolThreadCache;->allocateTiny(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lio/netty/buffer/PoolArena;->tinyIdx(I)I

    move-result p1

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0, p2, p3, v0}, Lio/netty/buffer/PoolThreadCache;->allocateSmall(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-static {v0}, Lio/netty/buffer/PoolArena;->smallIdx(I)I

    move-result p1

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    :goto_0
    aget-object v2, v2, p1

    monitor-enter v2

    :try_start_0
    iget-object p1, v2, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-eq p1, v2, :cond_3

    invoke-virtual {p1}, Lio/netty/buffer/PoolSubpage;->allocate()J

    move-result-wide v6

    iget-object v3, p1, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    const/4 v5, 0x0

    move-object v4, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JI)V

    invoke-direct {p0, v1}, Lio/netty/buffer/PoolArena;->incTinySmallAllocation(Z)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p2, p3, v0}, Lio/netty/buffer/PoolArena;->allocateNormal(Lio/netty/buffer/PooledByteBuf;II)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0, v1}, Lio/netty/buffer/PoolArena;->incTinySmallAllocation(Z)V

    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_4
    iget v1, p0, Lio/netty/buffer/PoolArena;->chunkSize:I

    if-gt v0, v1, :cond_6

    invoke-virtual {p1, p0, p2, p3, v0}, Lio/netty/buffer/PoolThreadCache;->allocateNormal(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_4
    invoke-direct {p0, p2, p3, v0}, Lio/netty/buffer/PoolArena;->allocateNormal(Lio/netty/buffer/PooledByteBuf;II)V

    iget-wide p1, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_6
    invoke-direct {p0, p2, p3}, Lio/netty/buffer/PoolArena;->allocateHuge(Lio/netty/buffer/PooledByteBuf;I)V

    :goto_2
    return-void
.end method

.method private allocateHuge(Lio/netty/buffer/PooledByteBuf;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lio/netty/buffer/PoolArena;->newUnpooledChunk(I)Lio/netty/buffer/PoolChunk;

    move-result-object v0

    iget-object v1, p0, Lio/netty/buffer/PoolArena;->activeBytesHuge:Lio/netty/util/internal/LongCounter;

    invoke-virtual {v0}, Lio/netty/buffer/PoolChunk;->chunkSize()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lio/netty/util/internal/LongCounter;->add(J)V

    invoke-virtual {p1, v0, p2}, Lio/netty/buffer/PooledByteBuf;->initUnpooled(Lio/netty/buffer/PoolChunk;I)V

    iget-object p1, p0, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {p1}, Lio/netty/util/internal/LongCounter;->increment()V

    return-void
.end method

.method private allocateNormal(Lio/netty/buffer/PooledByteBuf;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;II)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lio/netty/buffer/PoolArena;->pageSize:I

    iget v1, p0, Lio/netty/buffer/PoolArena;->maxOrder:I

    iget v2, p0, Lio/netty/buffer/PoolArena;->pageShifts:I

    iget v3, p0, Lio/netty/buffer/PoolArena;->chunkSize:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/netty/buffer/PoolArena;->newChunk(IIII)Lio/netty/buffer/PoolChunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunk;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    iget-object p1, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {p1, v0}, Lio/netty/buffer/PoolChunkList;->add(Lio/netty/buffer/PoolChunk;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static appendPoolSubPages(Ljava/lang/StringBuilder;[Lio/netty/buffer/PoolSubpage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[",
            "Lio/netty/buffer/PoolSubpage<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    iget-object v2, v1, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-ne v2, v1, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private varargs destroyPoolChunkLists([Lio/netty/buffer/PoolChunkList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Lio/netty/buffer/PoolChunkList;->destroy(Lio/netty/buffer/PoolArena;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolSubpage<",
            "*>;)V"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lio/netty/buffer/PoolSubpage;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private incTinySmallAllocation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    :goto_0
    invoke-interface {p1}, Lio/netty/util/internal/LongCounter;->increment()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static isTiny(I)Z
    .locals 0

    and-int/lit16 p0, p0, -0x200

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private newSubpagePoolArray(I)[Lio/netty/buffer/PoolSubpage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation

    new-array p1, p1, [Lio/netty/buffer/PoolSubpage;

    return-object p1
.end method

.method private newSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/netty/buffer/PoolSubpage;

    invoke-direct {v0, p1}, Lio/netty/buffer/PoolSubpage;-><init>(I)V

    iput-object v0, v0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    iput-object v0, v0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    return-object v0
.end method

.method private sizeClass(I)Lio/netty/buffer/PoolArena$SizeClass;
    .locals 1

    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->isTinyOrSmall(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lio/netty/buffer/PoolArena$SizeClass;->Normal:Lio/netty/buffer/PoolArena$SizeClass;

    return-object p1

    :cond_0
    invoke-static {p1}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lio/netty/buffer/PoolArena$SizeClass;->Tiny:Lio/netty/buffer/PoolArena$SizeClass;

    goto :goto_0

    :cond_1
    sget-object p1, Lio/netty/buffer/PoolArena$SizeClass;->Small:Lio/netty/buffer/PoolArena$SizeClass;

    :goto_0
    return-object p1
.end method

.method public static smallIdx(I)I
    .locals 1

    ushr-int/lit8 p0, p0, 0xa

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static subPageMetricList([Lio/netty/buffer/PoolSubpage;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolSubpage<",
            "*>;)",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolSubpageMetric;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    iget-object v4, v3, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-ne v4, v3, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static tinyIdx(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x4

    return p0
.end method


# virtual methods
.method public alignCapacity(I)I
    .locals 2

    iget v0, p0, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignmentMask:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignment:I

    add-int/2addr p1, v1

    sub-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public allocate(Lio/netty/buffer/PoolThreadCache;II)Lio/netty/buffer/PooledByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache;",
            "II)",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lio/netty/buffer/PoolArena;->newByteBuf(I)Lio/netty/buffer/PooledByteBuf;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;Lio/netty/buffer/PooledByteBuf;I)V

    return-object p3
.end method

.method public chunkLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolChunkListMetric;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    return-object v0
.end method

.method public abstract destroyChunk(Lio/netty/buffer/PoolChunk;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public final finalize()V
    .locals 14

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x6

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v7}, Lio/netty/buffer/PoolArena;->destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V

    iget-object v7, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v7}, Lio/netty/buffer/PoolArena;->destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V

    iget-object v7, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    iget-object v8, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    iget-object v9, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    iget-object v10, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    iget-object v11, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    iget-object v12, p0, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    new-array v6, v6, [Lio/netty/buffer/PoolChunkList;

    aput-object v7, v6, v5

    aput-object v8, v6, v4

    aput-object v9, v6, v3

    aput-object v10, v6, v2

    aput-object v11, v6, v1

    aput-object v12, v6, v0

    invoke-direct {p0, v6}, Lio/netty/buffer/PoolArena;->destroyPoolChunkLists([Lio/netty/buffer/PoolChunkList;)V

    return-void

    :catchall_0
    move-exception v7

    iget-object v8, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v8}, Lio/netty/buffer/PoolArena;->destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V

    iget-object v8, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v8}, Lio/netty/buffer/PoolArena;->destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V

    iget-object v8, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    iget-object v9, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    iget-object v10, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    iget-object v11, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    iget-object v12, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    iget-object v13, p0, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    new-array v6, v6, [Lio/netty/buffer/PoolChunkList;

    aput-object v8, v6, v5

    aput-object v9, v6, v4

    aput-object v10, v6, v3

    aput-object v11, v6, v2

    aput-object v12, v6, v1

    aput-object v13, v6, v0

    invoke-direct {p0, v6}, Lio/netty/buffer/PoolArena;->destroyPoolChunkLists([Lio/netty/buffer/PoolChunkList;)V

    throw v7
.end method

.method public findSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    move-result v0

    if-eqz v0, :cond_0

    ushr-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    goto :goto_1

    :cond_0
    ushr-int/lit8 p1, p1, 0xa

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    ushr-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    move v1, v0

    move-object v0, p1

    move p1, v1

    :goto_1
    aget-object p1, v0, p1

    return-object p1
.end method

.method public free(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolThreadCache;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI",
            "Lio/netty/buffer/PoolThreadCache;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p1, Lio/netty/buffer/PoolChunk;->unpooled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/netty/buffer/PoolChunk;->chunkSize()I

    move-result p2

    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->destroyChunk(Lio/netty/buffer/PoolChunk;)V

    iget-object p1, p0, Lio/netty/buffer/PoolArena;->activeBytesHuge:Lio/netty/util/internal/LongCounter;

    neg-int p2, p2

    int-to-long p2, p2

    invoke-interface {p1, p2, p3}, Lio/netty/util/internal/LongCounter;->add(J)V

    iget-object p1, p0, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {p1}, Lio/netty/util/internal/LongCounter;->increment()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p5}, Lio/netty/buffer/PoolArena;->sizeClass(I)Lio/netty/buffer/PoolArena$SizeClass;

    move-result-object v8

    if-eqz p6, :cond_1

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lio/netty/buffer/PoolThreadCache;->add(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolArena$SizeClass;)Z

    move-result p5

    if-eqz p5, :cond_1

    return-void

    :cond_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-object v4, v8

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lio/netty/buffer/PoolArena;->freeChunk(Lio/netty/buffer/PoolChunk;JLio/netty/buffer/PoolArena$SizeClass;Ljava/nio/ByteBuffer;Z)V

    :goto_0
    return-void
.end method

.method public freeChunk(Lio/netty/buffer/PoolChunk;JLio/netty/buffer/PoolArena$SizeClass;Ljava/nio/ByteBuffer;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;J",
            "Lio/netty/buffer/PoolArena$SizeClass;",
            "Ljava/nio/ByteBuffer;",
            "Z)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p6, :cond_3

    :try_start_0
    sget-object p6, Lio/netty/buffer/PoolArena$1;->$SwitchMap$io$netty$buffer$PoolArena$SizeClass:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, p6, p4

    const-wide/16 v1, 0x1

    if-eq p4, v0, :cond_2

    const/4 p6, 0x2

    if-eq p4, p6, :cond_1

    const/4 p6, 0x3

    if-ne p4, p6, :cond_0

    iget-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    :cond_1
    iget-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J

    goto :goto_0

    :cond_2
    iget-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    :cond_3
    :goto_0
    iget-object p4, p1, Lio/netty/buffer/PoolChunk;->parent:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {p4, p1, p2, p3, p5}, Lio/netty/buffer/PoolChunkList;->free(Lio/netty/buffer/PoolChunk;JLjava/nio/ByteBuffer;)Z

    move-result p2

    xor-int/2addr p2, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->destroyChunk(Lio/netty/buffer/PoolChunk;)V

    :cond_4
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract isDirect()Z
.end method

.method public isTinyOrSmall(I)Z
    .locals 1

    iget v0, p0, Lio/netty/buffer/PoolArena;->subpageOverflowMask:I

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract memoryCopy(Ljava/lang/Object;ILio/netty/buffer/PooledByteBuf;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method public abstract newByteBuf(I)Lio/netty/buffer/PooledByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract newChunk(IIII)Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract newUnpooledChunk(I)Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end method

.method public normalizeCapacity(I)I
    .locals 1

    const-string v0, "reqCapacity"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    iget v0, p0, Lio/netty/buffer/PoolArena;->chunkSize:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignment:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->alignCapacity(I)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    invoke-static {p1}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 p1, p1, -0x1

    ushr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    if-gez p1, :cond_2

    ushr-int/lit8 p1, p1, 0x1

    :cond_2
    return p1

    :cond_3
    iget v0, p0, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignment:I

    if-lez v0, :cond_4

    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->alignCapacity(I)I

    move-result p1

    return p1

    :cond_4
    and-int/lit8 v0, p1, 0xf

    if-nez v0, :cond_5

    return p1

    :cond_5
    and-int/lit8 p1, p1, -0x10

    add-int/lit8 p1, p1, 0x10

    return p1
.end method

.method public numActiveAllocations()J
    .locals 8

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    invoke-interface {v2}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    add-long/2addr v0, v2

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v2}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v2

    sub-long/2addr v0, v2

    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    iget-wide v4, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J

    iget-wide v6, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J

    add-long/2addr v4, v6

    iget-wide v6, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    add-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public numActiveBytes()J
    .locals 6

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->activeBytesHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    monitor-enter p0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/buffer/PoolChunkListMetric;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/buffer/PoolChunkMetric;

    invoke-interface {v4}, Lio/netty/buffer/PoolChunkMetric;->chunkSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public numActiveHugeAllocations()J
    .locals 4

    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numHugeAllocations()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numHugeDeallocations()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public numActiveNormalAllocations()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    iget-wide v2, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    sub-long/2addr v0, v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public numActiveSmallAllocations()J
    .locals 4

    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numSmallAllocations()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numSmallDeallocations()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public numActiveTinyAllocations()J
    .locals 4

    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numTinyAllocations()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numTinyDeallocations()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public numAllocations()J
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    invoke-interface {v2}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v2

    iget-object v4, p0, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    invoke-interface {v4}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v4

    add-long/2addr v4, v2

    add-long/2addr v4, v0

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    add-long/2addr v0, v4

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public numChunkLists()I
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numDeallocations()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J

    iget-wide v2, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    add-long/2addr v0, v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v2}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public numHugeAllocations()J
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    return-wide v0
.end method

.method public numHugeDeallocations()J
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized numNormalAllocations()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized numNormalDeallocations()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public numSmallAllocations()J
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized numSmallDeallocations()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public numSmallSubpages()I
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    array-length v0, v0

    return v0
.end method

.method public numThreadCaches()I
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public numTinyAllocations()J
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized numTinyDeallocations()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public numTinySubpages()I
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    array-length v0, v0

    return v0
.end method

.method public reallocate(Lio/netty/buffer/PooledByteBuf;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;IZ)V"
        }
    .end annotation

    iget v0, p1, Lio/netty/buffer/PooledByteBuf;->length:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v2, p1, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v3, p1, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    iget-wide v4, p1, Lio/netty/buffer/PooledByteBuf;->handle:J

    iget-object v1, p1, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    iget v6, p1, Lio/netty/buffer/PooledByteBuf;->offset:I

    iget v7, p1, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    iget-object v8, p0, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v8}, Lio/netty/buffer/PooledByteBufAllocator;->threadCache()Lio/netty/buffer/PoolThreadCache;

    move-result-object v8

    invoke-direct {p0, v8, p1, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;Lio/netty/buffer/PooledByteBuf;I)V

    if-le p2, v0, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lio/netty/buffer/AbstractByteBuf;->trimIndicesToCapacity(I)V

    :goto_0
    invoke-virtual {p0, v1, v6, p1, p2}, Lio/netty/buffer/PoolArena;->memoryCopy(Ljava/lang/Object;ILio/netty/buffer/PooledByteBuf;I)V

    if-eqz p3, :cond_2

    iget-object p1, p1, Lio/netty/buffer/PooledByteBuf;->cache:Lio/netty/buffer/PoolThreadCache;

    move-object v1, p0

    move v6, v7

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lio/netty/buffer/PoolArena;->free(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolThreadCache;)V

    :cond_2
    return-void
.end method

.method public smallSubpages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolSubpageMetric;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v0}, Lio/netty/buffer/PoolArena;->subPageMetricList([Lio/netty/buffer/PoolSubpage;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public tinySubpages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolSubpageMetric;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v0}, Lio/netty/buffer/PoolArena;->subPageMetricList([Lio/netty/buffer/PoolSubpage;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chunk(s) at 0~25%:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Chunk(s) at 0~50%:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Chunk(s) at 25~75%:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Chunk(s) at 50~100%:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Chunk(s) at 75~100%:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Chunk(s) at 100%:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tiny subpages:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v0, v2}, Lio/netty/buffer/PoolArena;->appendPoolSubPages(Ljava/lang/StringBuilder;[Lio/netty/buffer/PoolSubpage;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "small subpages:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v0, v2}, Lio/netty/buffer/PoolArena;->appendPoolSubPages(Ljava/lang/StringBuilder;[Lio/netty/buffer/PoolSubpage;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
