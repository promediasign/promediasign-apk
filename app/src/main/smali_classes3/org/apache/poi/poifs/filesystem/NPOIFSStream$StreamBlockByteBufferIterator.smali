.class public Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/filesystem/NPOIFSStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StreamBlockByteBufferIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

.field private nextBlock:I

.field final synthetic this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;->nextBlock:I

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;->loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;->nextBlock:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;->next()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/ByteBuffer;
    .locals 3

    .line 2
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;->nextBlock:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;->loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;->nextBlock:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;->nextBlock:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getNextBlock(I)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;->nextBlock:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Can\'t read past the end of the stream"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
