.class public Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# static fields
.field protected static final EOF:I = -0x1

.field protected static final SIZE_INT:I = 0x4

.field protected static final SIZE_LONG:I = 0x8

.field protected static final SIZE_SHORT:I = 0x2


# instance fields
.field private delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/Entry;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getDocument()Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getOFileSystem()Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getNFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "No FileSystem bound on the parent, can\'t read contents"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot open internal document storage"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "just delegating"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public readByte()B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([BII)V

    return-void
.end method

.method public readInt()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readPlain([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([BII)V

    return-void
.end method

.method public readShort()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readUShort()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readUByte()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readUByte()I

    move-result v0

    return v0
.end method

.method public readUInt()J
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUShort()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readUShort()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->delegate:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
