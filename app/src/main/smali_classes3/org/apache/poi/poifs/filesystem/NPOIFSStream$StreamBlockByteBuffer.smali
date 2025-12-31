.class public Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/filesystem/NPOIFSStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StreamBlockByteBuffer"
.end annotation


# instance fields
.field buffer:Ljava/nio/ByteBuffer;

.field loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

.field nextBlock:I

.field oneByte:[B

.field prevBlock:I

.field final synthetic this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->oneByte:[B

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    const/4 v0, -0x2

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->prevBlock:I

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$100(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->nextBlock:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->nextBlock:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$200(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->prevBlock:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v0

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->prevBlock:I

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/poifs/filesystem/BlockStore;->setNextBlock(II)V

    :cond_0
    return-void
.end method

.method public createBlockIfNeeded()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->nextBlock:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getFreeBlock()I

    move-result v0

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->nextBlock:I

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->prevBlock:I

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->prevBlock:I

    invoke-virtual {v2, v3, v0}, Lorg/apache/poi/poifs/filesystem/BlockStore;->setNextBlock(II)V

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/apache/poi/poifs/filesystem/BlockStore;->setNextBlock(II)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$100(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$102(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;I)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getNextBlock(I)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->nextBlock:I

    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/BlockStore;->createBlockIfNeeded(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->prevBlock:I

    return-void
.end method

.method public write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->oneByte:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 2
    if-ltz p2, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->createBlockIfNeeded()V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_0

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
