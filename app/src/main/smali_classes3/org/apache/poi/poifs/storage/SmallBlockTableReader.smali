.class public final Lorg/apache/poi/poifs/storage/SmallBlockTableReader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _getSmallDocumentBlockReader(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/poifs/storage/SmallBlockTableReader;->prepareSmallDocumentBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockList;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lorg/apache/poi/poifs/storage/SmallBlockTableReader;->prepareReader(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    move-result-object p0

    return-object p0
.end method

.method public static getSmallDocumentBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockList;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/poifs/storage/SmallBlockTableReader;->prepareSmallDocumentBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockList;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lorg/apache/poi/poifs/storage/SmallBlockTableReader;->prepareReader(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    return-object v0
.end method

.method private static prepareReader(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;
    .locals 1

    new-instance p3, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    const/4 v0, -0x1

    invoke-virtual {p1, p4, v0}, Lorg/apache/poi/poifs/storage/RawDataBlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object p1

    invoke-direct {p3, p0, p1, p2}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/ListManagedBlock;Lorg/apache/poi/poifs/storage/BlockList;)V

    return-object p3
.end method

.method private static prepareSmallDocumentBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockList;
    .locals 0

    invoke-virtual {p2}, Lorg/apache/poi/poifs/property/Property;->getStartBlock()I

    move-result p2

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/poifs/storage/RawDataBlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/poifs/storage/SmallDocumentBlockList;

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->extract(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/ListManagedBlock;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlockList;-><init>(Ljava/util/List;)V

    return-object p2
.end method
