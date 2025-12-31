.class public Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;
.super Lorg/apache/poi/poifs/filesystem/BlockStore;
.source "SourceFile"


# instance fields
.field private _filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

.field private _header:Lorg/apache/poi/poifs/storage/HeaderBlock;

.field private _mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

.field private _root:Lorg/apache/poi/poifs/property/RootProperty;

.field private _sbat_blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/property/RootProperty;Ljava/util/List;Lorg/apache/poi/poifs/storage/HeaderBlock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;",
            "Lorg/apache/poi/poifs/property/RootProperty;",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;",
            "Lorg/apache/poi/poifs/storage/HeaderBlock;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/BlockStore;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    iput-object p4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_root:Lorg/apache/poi/poifs/property/RootProperty;

    new-instance p3, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {p2}, Lorg/apache/poi/poifs/property/Property;->getStartBlock()I

    move-result p2

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    return-void
.end method


# virtual methods
.method public createBlockIfNeeded(I)Ljava/nio/ByteBuffer;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getFreeBlock()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v3, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createBlockIfNeeded(I)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_get_property_table()Lorg/apache/poi/poifs/property/NPropertyTable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/property/Property;->setStartBlock(I)V

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, v3, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v3

    :goto_1
    invoke-virtual {v0, v3}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getNextBlock(I)I

    move-result v4

    if-ne v4, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0, v3, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    :goto_2
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->createBlockIfNeeded(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->getSBATBlockAndIndex(ILorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object p1

    return-object p1
.end method

.method public getBlockAt(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x40

    .line 4
    .line 5
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .line 6
    .line 7
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSize()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    div-int v1, p1, v1

    .line 12
    .line 13
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .line 14
    .line 15
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSize()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    rem-int/2addr p1, v2

    .line 20
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_mini_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    .line 21
    .line 22
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getBlockIterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v1, p1

    .line 48
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 60
    .line 61
    const-string v0, "Big block "

    .line 62
    .line 63
    const-string v2, " outside stream"

    .line 64
    .line 65
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method public getBlockStoreBlockSize()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    .locals 3

    new-instance v0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_root:Lorg/apache/poi/poifs/property/RootProperty;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/Property;->getSize()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;J)V

    return-object v0
.end method

.method public getFreeBlock()I
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSizeDetails()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/poifs/storage/BATBlock;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/BATBlock;->hasFreeSectors()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    invoke-virtual {v4, v5}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    add-int/2addr v3, v5

    return v3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSizeDetails()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->createEmptyBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Z)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getFreeBlock()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATCount()I

    move-result v2

    const/4 v4, -0x2

    const/4 v5, 0x1

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setSBATStart(I)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2, v5}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setSBATBlockCount(I)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object v2

    iget-object v6, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATStart()I

    move-result v6

    :goto_2
    invoke-virtual {v2, v6}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v7, v6}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getNextBlock(I)I

    move-result v7

    if-ne v7, v4, :cond_4

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v2, v6, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATCount()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v2, v6}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setSBATBlockCount(I)V

    :goto_3
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v2, v1, v4}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v3

    :cond_4
    move v6, v7

    goto :goto_2
.end method

.method public getNextBlock(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getBlock()Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result p1

    return p1
.end method

.method public setNextBlock(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getBlock()Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    return-void
.end method

.method public syncWithDataSource()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_sbat_blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/storage/BATBlock;

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/BATBlock;->getOurBlockIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->writeBlock(Lorg/apache/poi/poifs/storage/BATBlock;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/BATBlock;->hasFreeSectors()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSizeDetails()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v3

    :goto_1
    add-int/2addr v3, v2

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->getUsedSectors(Z)I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_get_property_table()Lorg/apache/poi/poifs/property/NPropertyTable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/property/RootProperty;->setSize(I)V

    return-void
.end method
