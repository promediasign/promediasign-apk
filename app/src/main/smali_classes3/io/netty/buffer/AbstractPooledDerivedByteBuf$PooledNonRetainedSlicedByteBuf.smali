.class final Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;
.super Lio/netty/buffer/UnpooledSlicedByteBuf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/AbstractPooledDerivedByteBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PooledNonRetainedSlicedByteBuf"
.end annotation


# instance fields
.field private final referenceCountDelegate:Lio/netty/util/ReferenceCounted;


# direct methods
.method public constructor <init>(Lio/netty/util/ReferenceCounted;Lio/netty/buffer/AbstractByteBuf;II)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lio/netty/buffer/UnpooledSlicedByteBuf;-><init>(Lio/netty/buffer/AbstractByteBuf;II)V

    iput-object p1, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;->referenceCountDelegate:Lio/netty/util/ReferenceCounted;

    return-void
.end method


# virtual methods
.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 3

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    new-instance v0, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedDuplicateByteBuf;

    iget-object v1, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;->referenceCountDelegate:Lio/netty/util/ReferenceCounted;

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedDuplicateByteBuf;-><init>(Lio/netty/util/ReferenceCounted;Lio/netty/buffer/AbstractByteBuf;)V

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->writerIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/netty/buffer/AbstractByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public refCnt0()I
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;->referenceCountDelegate:Lio/netty/util/ReferenceCounted;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result v0

    return v0
.end method

.method public release0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;->referenceCountDelegate:Lio/netty/util/ReferenceCounted;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    move-result v0

    return v0
.end method

.method public release0(I)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;->referenceCountDelegate:Lio/netty/util/ReferenceCounted;

    invoke-interface {v0, p1}, Lio/netty/util/ReferenceCounted;->release(I)Z

    move-result p1

    return p1
.end method

.method public retain0()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;->referenceCountDelegate:Lio/netty/util/ReferenceCounted;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public retain0(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;->referenceCountDelegate:Lio/netty/util/ReferenceCounted;

    invoke-interface {v0, p1}, Lio/netty/util/ReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public retainedDuplicate()Lio/netty/buffer/ByteBuf;
    .locals 3

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->writerIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v2

    invoke-static {v0, p0, v1, v2}, Lio/netty/buffer/PooledDuplicatedByteBuf;->newInstance(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/PooledDuplicatedByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retainedSlice()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->capacity()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retainedSlice(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result p1

    invoke-static {v0, p0, p1, p2}, Lio/netty/buffer/PooledSlicedByteBuf;->newInstance(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/PooledSlicedByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    new-instance v0, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;

    iget-object v1, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;->referenceCountDelegate:Lio/netty/util/ReferenceCounted;

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v2

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result p1

    invoke-direct {v0, v1, v2, p1, p2}, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;-><init>(Lio/netty/util/ReferenceCounted;Lio/netty/buffer/AbstractByteBuf;II)V

    return-object v0
.end method

.method public touch0()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;->referenceCountDelegate:Lio/netty/util/ReferenceCounted;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->touch()Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public touch0(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/buffer/AbstractPooledDerivedByteBuf$PooledNonRetainedSlicedByteBuf;->referenceCountDelegate:Lio/netty/util/ReferenceCounted;

    invoke-interface {v0, p1}, Lio/netty/util/ReferenceCounted;->touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;

    return-object p0
.end method
