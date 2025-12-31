.class public final Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;
.super Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
.source "SourceFile"


# instance fields
.field private _buffer:Ljava/nio/ByteBuffer;

.field private _closed:Z

.field private _current_block_count:I

.field private _current_offset:I

.field private _data:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final _document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

.field private final _document_size:I

.field private _marked_offset:I

.field private _marked_offset_count:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>()V

    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset_count:I

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_closed:Z

    check-cast p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/DocumentProperty;

    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getNFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getBlockIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_data:Ljava/util/Iterator;

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

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset_count:I

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getSize()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_closed:Z

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getBlockIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_data:Ljava/util/Iterator;

    return-void
.end method

.method private atEOD()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkAvaliable(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    .line 6
    .line 7
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-gt p1, v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    const-string v1, "Buffer underrun - requested "

    .line 16
    .line 17
    const-string v2, " bytes but "

    .line 18
    .line 19
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    .line 24
    .line 25
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 26
    .line 27
    sub-int/2addr v1, v2

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " was available"

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "cannot perform requested operation on a closed stream"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method private dieIfClosed()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot perform requested operation on a closed stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private remainingBytes()I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_closed:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot perform requested operation on a closed stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->remainingBytes()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_closed:Z

    return-void
.end method

.method public mark(I)V
    .locals 1

    iget p1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    iget p1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset_count:I

    return-void
.end method

.method public read()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->dieIfClosed()V

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->atEOD()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_1

    aget-byte v0, v1, v2

    if-gez v0, :cond_1

    add-int/lit16 v0, v0, 0x100

    :cond_1
    return v0
.end method

.method public read([BII)I
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->dieIfClosed()V

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->atEOD()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->remainingBytes()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readFully([BII)V

    return p3

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "can\'t read past buffer boundaries"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readUByte()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([BII)V
    .locals 4

    if-ltz p3, :cond_3

    invoke-direct {p0, p3}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->checkAvaliable(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_data:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    :cond_1
    sub-int v1, p3, v0

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    add-int v3, p2, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t read negative number of bytes"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readInt()I
    .locals 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->checkAvaliable(I)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readFully([BII)V

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->checkAvaliable(I)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readFully([BII)V

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->checkAvaliable(I)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readFully([BII)V

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getShort([B)S

    move-result v0

    return v0
.end method

.method public readUByte()I
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->checkAvaliable(I)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readFully([BII)V

    aget-byte v0, v1, v2

    if-ltz v0, :cond_0

    return v0

    :cond_0
    add-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public readUShort()I
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->checkAvaliable(I)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->readFully([BII)V

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset_count:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    .line 10
    .line 11
    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getBlockIterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_data:Ljava/util/Iterator;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getBlockIterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_data:Ljava/util/Iterator;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 35
    .line 36
    :goto_0
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset_count:I

    .line 37
    .line 38
    if-ge v0, v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_data:Ljava/util/Iterator;

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v1, v2

    .line 57
    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    .line 63
    .line 64
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 65
    .line 66
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    .line 67
    .line 68
    if-eq v0, v1, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_data:Ljava/util/Iterator;

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_block_count:I

    .line 85
    .line 86
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    .line 87
    .line 88
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 89
    .line 90
    sub-int/2addr v1, v2

    .line 91
    invoke-static {v0, v1}, LA/g;->B(Ljava/nio/ByteBuffer;I)V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_marked_offset:I

    .line 95
    .line 96
    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    .line 97
    .line 98
    return-void
.end method

.method public skip(J)J
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->dieIfClosed()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_current_offset:I

    int-to-long v1, v0

    add-long/2addr v1, p1

    int-to-long p1, v0

    cmp-long v3, v1, p1

    iget p1, p0, Lorg/apache/poi/poifs/filesystem/NDocumentInputStream;->_document_size:I

    if-gez v3, :cond_1

    :goto_0
    int-to-long v1, p1

    goto :goto_1

    :cond_1
    int-to-long v3, p1

    cmp-long p2, v1, v3

    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    int-to-long p1, v0

    sub-long/2addr v1, p1

    long-to-int p1, v1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([B)V

    return-wide v1
.end method
