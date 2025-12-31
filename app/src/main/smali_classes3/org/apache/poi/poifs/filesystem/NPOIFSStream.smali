.class public Lorg/apache/poi/poifs/filesystem/NPOIFSStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;,
        Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private blockStore:Lorg/apache/poi/poifs/filesystem/BlockStore;

.field private outStream:Ljava/io/OutputStream;

.field private startBlock:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->blockStore:Lorg/apache/poi/poifs/filesystem/BlockStore;

    const/4 p1, -0x2

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->blockStore:Lorg/apache/poi/poifs/filesystem/BlockStore;

    iput p2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->blockStore:Lorg/apache/poi/poifs/filesystem/BlockStore;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    return p0
.end method

.method public static synthetic access$102(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    return p1
.end method

.method public static synthetic access$200(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->free(Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V

    return-void
.end method

.method private free(Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V
    .locals 4

    .line 2
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    :goto_0
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->blockStore:Lorg/apache/poi/poifs/filesystem/BlockStore;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getNextBlock(I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->blockStore:Lorg/apache/poi/poifs/filesystem/BlockStore;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/apache/poi/poifs/filesystem/BlockStore;->setNextBlock(II)V

    move v0, v1

    goto :goto_0

    :cond_0
    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->blockStore:Lorg/apache/poi/poifs/filesystem/BlockStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->free(Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V

    return-void
.end method

.method public getBlockIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;I)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t read from a new stream before it has been written to"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->outStream:Ljava/io/OutputStream;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->outStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getStartBlock()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getBlockIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public updateContents([B)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method
