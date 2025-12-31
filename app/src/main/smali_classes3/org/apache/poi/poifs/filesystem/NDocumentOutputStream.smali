.class public final Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private _buffer:Ljava/io/ByteArrayOutputStream;

.field private _closed:Z

.field private _document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

.field private _document_size:I

.field private _property:Lorg/apache/poi/poifs/property/DocumentProperty;

.field private _stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

.field private _stream_output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document_size:I

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_closed:Z

    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-array v0, v0, [B

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, p2, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/poifs/property/DocumentProperty;

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    new-instance p2, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-direct {p2, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    return-void

    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot open internal directory storage, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not a Directory Node"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document_size:I

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_closed:Z

    check-cast p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/DocumentProperty;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->free()V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot open internal document storage, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not a Document Node"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkBufferSize()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method private dieIfClosed()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot perform requested operation on a closed stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->replaceContents(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_stream_output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document_size:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/DocumentProperty;->updateSize(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getStartBlock()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/Property;->setStartBlock(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_closed:Z

    return-void
.end method

.method public write(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->dieIfClosed()V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->checkBufferSize()V

    goto :goto_0

    :cond_0
    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public write([B)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->dieIfClosed()V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->checkBufferSize()V

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->dieIfClosed()V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_buffer:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->checkBufferSize()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_stream:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_stream_output:Ljava/io/OutputStream;

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_stream_output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget p1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document_size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentOutputStream;->_document_size:I

    :goto_0
    return-void
.end method
