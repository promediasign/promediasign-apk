.class public final Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;


# instance fields
.field private _block_size:I

.field private _filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

.field private _property:Lorg/apache/poi/poifs/property/DocumentProperty;

.field private _stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    const/16 v0, 0x1000

    if-ge p2, v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    move-result-object p3

    invoke-direct {v0, p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object p3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->getBlockStoreBlockSize()I

    move-result p3

    :goto_0
    iput p3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_block_size:I

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-direct {v0, p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object p3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockStoreBlockSize()I

    move-result p3

    goto :goto_0

    :goto_1
    iget-object p3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    new-instance v0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    invoke-direct {v0, p3, p2}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    const-string v2, "\\\\"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->getComponent(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;

    invoke-direct {v3, v0, v1, v2, p2}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;I)V

    invoke-interface {p4, v3}, Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;->processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    new-instance p3, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/apache/poi/poifs/property/Property;->setStartBlock(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/io/InputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {p0, p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->store(Ljava/io/InputStream;)I

    move-result p2

    new-instance p3, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/apache/poi/poifs/property/Property;->setStartBlock(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getNFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getSize()I

    move-result p2

    const/16 v0, 0x1000

    if-ge p2, v0, :cond_0

    new-instance p2, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getStartBlock()I

    move-result p1

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->getBlockStoreBlockSize()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_block_size:I

    goto :goto_1

    :cond_0
    new-instance p2, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getStartBlock()I

    move-result p1

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockStoreBlockSize()I

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method private store(Ljava/io/InputStream;)I
    .locals 6

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1001

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/16 p1, 0x1000

    invoke-virtual {v0, p1}, Ljava/io/BufferedInputStream;->mark(I)V

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-gez p1, :cond_0

    new-instance p1, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->getBlockStoreBlockSize()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_block_size:I

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {p1, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockStoreBlockSize()I

    move-result p1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const/16 v1, 0x400

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p1, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v3, v4

    goto :goto_2

    :cond_1
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_block_size:I

    rem-int v1, v3, v0

    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_2

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return v3
.end method


# virtual methods
.method public free()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->free()V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/Property;->setStartBlock(I)V

    return-void
.end method

.method public getBlockIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getBlockIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    return-object v0
.end method

.method public getFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Document: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getSize()I

    move-result v0

    return v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    iget v6, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_block_size:I

    sub-int v7, v0, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v1, v4, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v4, v6

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v3}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "<NO DATA>"

    :goto_1
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

.method public replaceContents(Ljava/io/InputStream;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->free()V

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->store(Ljava/io/InputStream;)I

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/Property;->setStartBlock(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/DocumentProperty;->updateSize(I)V

    return-void
.end method
