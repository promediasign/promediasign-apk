.class public final Lorg/apache/poi/poifs/property/NPropertyTable;
.super Lorg/apache/poi/poifs/property/PropertyTableBase;
.source "SourceFile"


# static fields
.field private static final _logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/property/NPropertyTable;->_logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/property/NPropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/poi/poifs/property/NPropertyTable;->buildProperties(Ljava/util/Iterator;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/property/PropertyTableBase;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/property/NPropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-void
.end method

.method private static buildProperties(Ljava/util/Iterator;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lorg/apache/poi/poifs/common/POIFSBigBlockSize;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v3

    new-array v4, v3, [B

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v6

    if-ge v5, v6, :cond_1

    sget-object v3, Lorg/apache/poi/poifs/property/NPropertyTable;->_logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " bytes instead of the expected "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Short Property Block, "

    aput-object v8, v7, v0

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const/4 v5, 0x2

    aput-object v6, v7, v5

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    :cond_1
    invoke-virtual {v2, v4, v0, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-object v2, v4

    :goto_1
    invoke-static {v2, v1}, Lorg/apache/poi/poifs/property/PropertyFactory;->convertToProperties([BLjava/util/List;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public countBlocks()I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x80

    mul-long v0, v0, v2

    iget-object v2, p0, Lorg/apache/poi/poifs/property/NPropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    int-to-long v2, v2

    div-long v4, v0, v2

    long-to-int v5, v4

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    return v5
.end method

.method public preWrite()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/property/Property;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v2}, Lorg/apache/poi/poifs/property/Property;->setIndex(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/property/Property;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/Property;->preWrite()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public write(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/property/Property;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/property/Property;->writeData(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getStartBlock()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->setStartBlock(I)V

    :cond_2
    return-void
.end method
