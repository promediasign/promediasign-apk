.class public Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;


# static fields
.field private static final _logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _documents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;",
            ">;"
        }
    .end annotation
.end field

.field private _property_table:Lorg/apache/poi/poifs/property/PropertyTable;

.field private _root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    new-instance v1, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    new-instance v0, Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/property/PropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_documents:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 10

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;-><init>()V

    :try_start_0
    new-instance v0, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    new-instance v9, Lorg/apache/poi/poifs/storage/RawDataBlockList;

    invoke-direct {v9, p1, v1}, Lorg/apache/poi/poifs/storage/RawDataBlockList;-><init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->closeInputStream(Ljava/io/InputStream;Z)V

    new-instance v2, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATCount()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATIndex()I

    move-result v7

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I[IIILorg/apache/poi/poifs/storage/BlockList;)V

    new-instance p1, Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-direct {p1, v0, v9}, Lorg/apache/poi/poifs/property/PropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Lorg/apache/poi/poifs/storage/RawDataBlockList;)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATStart()I

    move-result v3

    invoke-static {v1, v9, v2, v3}, Lorg/apache/poi/poifs/storage/SmallBlockTableReader;->getSmallDocumentBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Lorg/apache/poi/poifs/storage/RawDataBlockList;Lorg/apache/poi/poifs/property/RootProperty;I)Lorg/apache/poi/poifs/storage/BlockList;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/DirectoryProperty;->getChildren()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v7

    move-object v2, p0

    move-object v4, v9

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->processProperties(Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/storage/BlockList;Ljava/util/Iterator;Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->closeInputStream(Ljava/io/InputStream;Z)V

    throw v0
.end method

.method public static createNonClosingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lorg/apache/poi/util/CloseIgnoringInputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/CloseIgnoringInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static hasPOIFSHeader(Ljava/io/InputStream;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "4.0"
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->hasPOIFSHeader(Ljava/io/InputStream;)Z

    move-result p0

    return p0
.end method

.method public static hasPOIFSHeader([B)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "4.0"
    .end annotation

    .line 2
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->hasPOIFSHeader([B)Z

    move-result p0

    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "two arguments required: input filename and output filename"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method private processProperties(Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/storage/BlockList;Ljava/util/Iterator;Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/storage/BlockList;",
            "Lorg/apache/poi/poifs/storage/BlockList;",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;",
            "Lorg/apache/poi/poifs/filesystem/DirectoryNode;",
            "I)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/Property;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez p4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, p4

    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    check-cast v0, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->getChildren()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->processProperties(Lorg/apache/poi/poifs/storage/BlockList;Lorg/apache/poi/poifs/storage/BlockList;Ljava/util/Iterator;Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getStartBlock()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getSize()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->shouldUseSmallBlocks()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    invoke-interface {p1, v3, p5}, Lorg/apache/poi/poifs/storage/BlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v3

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;-><init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    invoke-interface {p2, v3, p5}, Lorg/apache/poi/poifs/storage/BlockList;->fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v3

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;-><init>(Ljava/lang/String;[Lorg/apache/poi/poifs/storage/ListManagedBlock;I)V

    :goto_2
    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addDirectory(Lorg/apache/poi/poifs/property/DirectoryProperty;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    return-void
.end method

.method public addDocument(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_documents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    return-void
.end method

.method public closeInputStream(Ljava/io/InputStream;Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Ljava/io/ByteArrayInputStream;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "POIFS is closing the supplied input stream of type ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") which supports mark/reset.  This will be a problem for the caller if the stream will still be used.  If that is the case the caller should wrap the input stream to avoid this close logic.  This warning is only temporary and will not be present in future versions of POI."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_logger:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-nez p2, :cond_1

    sget-object p2, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "can\'t close input stream"

    aput-object v3, v2, v0

    aput-object p1, v2, v1

    const/4 p1, 0x7

    invoke-virtual {p2, p1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object p1

    return-object p1
.end method

.method public createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    return-object p1
.end method

.method public createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    return-object p1
.end method

.method public createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    return-object p1
.end method

.method public getBigBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    return v0
.end method

.method public getBigBlockSizeDetails()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-object v0
.end method

.method public getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "POIFS FileSystem"

    return-object v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->preferArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getViewableArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

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

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->preferArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getViewableIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public preferArray()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->preferArray()Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/apache/poi/poifs/filesystem/EntryNode;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->removeProperty(Lorg/apache/poi/poifs/property/Property;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->isDocumentEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_documents:Ljava/util/List;

    check-cast p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getDocument()Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public writeFilesystem(Ljava/io/OutputStream;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/PropertyTable;->preWrite()V

    new-instance v0, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_documents:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/util/List;Lorg/apache/poi/poifs/property/RootProperty;)V

    new-instance v1, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {v1, v2}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_documents:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->getSBAT()Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/filesystem/BATManaged;

    invoke-interface {v3}, Lorg/apache/poi/poifs/filesystem/BATManaged;->countBlocks()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->allocateSpace(I)I

    move-result v4

    invoke-interface {v3, v4}, Lorg/apache/poi/poifs/filesystem/BATManaged;->setStartBlock(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->createBlocks()I

    move-result v2

    new-instance v3, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-direct {v3, v4}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->countBlocks()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->setBATBlocks(II)[Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getStartBlock()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->setPropertyStart(I)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->getSBAT()Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->getStartBlock()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->setSBATStart(I)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->getSBATBlockCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->setSBATBlockCount(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_documents:Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/SmallBlockTableWriter;->getSBAT()Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_2

    aget-object v1, v2, v0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/storage/BlockWritable;

    invoke-interface {v1, p1}, Lorg/apache/poi/poifs/storage/BlockWritable;->writeBlocks(Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_3
    return-void
.end method
