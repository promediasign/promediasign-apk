.class final Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;
.super Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolThreadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubPageMemoryRegionCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILio/netty/buffer/PoolArena$SizeClass;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;-><init>(ILio/netty/buffer/PoolArena$SizeClass;)V

    return-void
.end method


# virtual methods
.method public initBuf(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JLio/netty/buffer/PooledByteBuf;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I)V"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p5

    move-object v2, p2

    move-wide v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JI)V

    return-void
.end method
