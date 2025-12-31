.class public final Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/BATManaged;
.implements Lorg/apache/poi/poifs/storage/BlockWritable;
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;,
        Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;
    }
.end annotation


# static fields
.field private static final EMPTY_BIG_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/DocumentBlock;

.field private static final EMPTY_SMALL_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;


# instance fields
.field private final _bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

.field private _big_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

.field private _property:Lorg/apache/poi/poifs/property/DocumentProperty;

.field private _size:I

.field private _small_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/poi/poifs/storage/DocumentBlock;

    sput-object v1, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->EMPTY_BIG_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    new-array v0, v0, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    sput-object v0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->EMPTY_SMALL_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    new-instance v0, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/property/DocumentProperty;->setDocument(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/DocumentProperty;->shouldUseSmallBlocks()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    move-object v1, v0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    new-instance p1, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    sget-object p2, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->EMPTY_BIG_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    invoke-direct {p1, p3, p2}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    sget-object v1, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->EMPTY_SMALL_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {v0, p3, v1}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    new-instance v0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    move-object v2, v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V
    .locals 6

    .line 2
    sget-object v3, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .line 3
    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;-><init>(Ljava/lang/String;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/io/InputStream;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    :cond_0
    new-instance v2, Lorg/apache/poi/poifs/storage/DocumentBlock;

    invoke-direct {v2, p3, p2}, Lorg/apache/poi/poifs/storage/DocumentBlock;-><init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/DocumentBlock;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/DocumentBlock;->partiallyRead()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Lorg/apache/poi/poifs/storage/DocumentBlock;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lorg/apache/poi/poifs/storage/DocumentBlock;

    new-instance v0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    invoke-direct {v0, p2, p3}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    new-instance v0, Lorg/apache/poi/poifs/property/DocumentProperty;

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    invoke-direct {v0, p1, v2}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/property/DocumentProperty;->setDocument(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)V

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/DocumentProperty;->shouldUseSmallBlocks()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    invoke-static {p2, p3, v0}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->convert(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/BlockWritable;I)[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    new-instance p1, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    new-array p3, v1, [Lorg/apache/poi/poifs/storage/DocumentBlock;

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    sget-object p3, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->EMPTY_SMALL_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    new-instance v0, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {v0, p1, p4}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/property/DocumentProperty;->setDocument(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)V

    iget p1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    invoke-static {p1}, Lorg/apache/poi/poifs/property/Property;->isSmall(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    sget-object p4, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->EMPTY_BIG_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    invoke-direct {p1, p2, p4}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    new-instance p1, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    invoke-static {p3}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->convertRawBlocksToSmallBlocks([Lorg/apache/poi/poifs/storage/ListManagedBlock;)[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    invoke-static {p3}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->convertRawBlocksToBigBlocks([Lorg/apache/poi/poifs/storage/ListManagedBlock;)[Lorg/apache/poi/poifs/storage/DocumentBlock;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    new-instance p1, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    sget-object p3, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->EMPTY_SMALL_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V
    .locals 1

    .line 6
    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;-><init>(Ljava/lang/String;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/RawDataBlock;I)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    array-length p3, p2

    if-nez p3, :cond_0

    :goto_0
    sget-object p3, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    :goto_1
    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    goto :goto_2

    :cond_0
    const/4 p3, 0x0

    aget-object p3, p2, p3

    invoke-virtual {p3}, Lorg/apache/poi/poifs/storage/RawDataBlock;->getBigBlockSize()I

    move-result p3

    const/16 v0, 0x200

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p3, Lorg/apache/poi/poifs/common/POIFSConstants;->LARGER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    goto :goto_1

    :goto_2
    new-instance p3, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {p2}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->convertRawBlocksToBigBlocks([Lorg/apache/poi/poifs/storage/ListManagedBlock;)[Lorg/apache/poi/poifs/storage/DocumentBlock;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    new-instance p2, Lorg/apache/poi/poifs/property/DocumentProperty;

    iget p3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    invoke-direct {p2, p1, p3}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    new-instance p1, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    iget-object p2, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    sget-object p3, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->EMPTY_SMALL_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/property/DocumentProperty;->setDocument(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;I)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    array-length p3, p2

    if-nez p3, :cond_0

    sget-object p3, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    :goto_0
    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    aget-object p3, p2, p3

    invoke-virtual {p3}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object p3

    goto :goto_0

    :goto_1
    new-instance p3, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    sget-object v1, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->EMPTY_BIG_BLOCK_ARRAY:[Lorg/apache/poi/poifs/storage/DocumentBlock;

    invoke-direct {p3, v0, v1}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/DocumentBlock;)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    new-instance p3, Lorg/apache/poi/poifs/property/DocumentProperty;

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    invoke-direct {p3, p1, v0}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    new-instance p1, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    iget-object p3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {p1, p3, p2}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;)V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/property/DocumentProperty;->setDocument(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)V

    return-void
.end method

.method private static convertRawBlocksToBigBlocks([Lorg/apache/poi/poifs/storage/ListManagedBlock;)[Lorg/apache/poi/poifs/storage/DocumentBlock;
    .locals 5

    array-length v0, p0

    new-array v1, v0, [Lorg/apache/poi/poifs/storage/DocumentBlock;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lorg/apache/poi/poifs/storage/DocumentBlock;

    aget-object v4, p0, v2

    check-cast v4, Lorg/apache/poi/poifs/storage/RawDataBlock;

    invoke-direct {v3, v4}, Lorg/apache/poi/poifs/storage/DocumentBlock;-><init>(Lorg/apache/poi/poifs/storage/RawDataBlock;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static convertRawBlocksToSmallBlocks([Lorg/apache/poi/poifs/storage/ListManagedBlock;)[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    .locals 3

    instance-of v0, p0, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    if-eqz v0, :cond_0

    check-cast p0, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public countBlocks()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;->countBlocks()I

    move-result v0

    return v0
.end method

.method public getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_1

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    const-string v1, "Request for Offset "

    .line 12
    .line 13
    const-string v2, " doc size is "

    .line 14
    .line 15
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/DocumentProperty;->shouldUseSmallBlocks()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;->getBlocks()[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, p1}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->getDataInputBlock([Lorg/apache/poi/poifs/storage/SmallDocumentBlock;I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;->getBlocks()[Lorg/apache/poi/poifs/storage/DocumentBlock;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0, p1}, Lorg/apache/poi/poifs/storage/DocumentBlock;->getDataInputBlock([Lorg/apache/poi/poifs/storage/DocumentBlock;I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1
.end method

.method public getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Document: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_size:I

    return v0
.end method

.method public getSmallBlocks()[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;->getBlocks()[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    move-result-object v0

    return-object v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;->getBlocks()[Lorg/apache/poi/poifs/storage/DocumentBlock;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_small_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$SmallBlockStore;->getBlocks()[Lorg/apache/poi/poifs/storage/SmallDocumentBlock;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    invoke-interface {v5, v1}, Lorg/apache/poi/poifs/storage/BlockWritable;->writeBlocks(Ljava/io/OutputStream;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/property/Property;->getSize()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v3, v0}, Lorg/apache/poi/util/HexDump;->dump([BJII)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_3
    const-string v0, "<NO DATA>"

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewableIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public preferArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setStartBlock(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/Property;->setStartBlock(I)V

    return-void
.end method

.method public writeBlocks(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->_big_store:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument$BigBlockStore;->writeBlocks(Ljava/io/OutputStream;)V

    return-void
.end method
