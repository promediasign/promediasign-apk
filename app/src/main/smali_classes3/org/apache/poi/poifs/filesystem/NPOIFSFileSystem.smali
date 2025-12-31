.class public Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
.super Lorg/apache/poi/poifs/filesystem/BlockStore;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;
.implements Ljava/io/Closeable;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _bat_blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;"
        }
    .end annotation
.end field

.field private _data:Lorg/apache/poi/poifs/nio/DataSource;

.field private _header:Lorg/apache/poi/poifs/storage/HeaderBlock;

.field private _mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

.field private _property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

.field private _root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private _xbat_blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;"
        }
    .end annotation
.end field

.field private bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Z)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATCount(I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    filled-new-array {v0}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATArray([I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->createEmptyBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Z)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x2

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    const/4 v1, -0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/property/PropertyTableBase;->setStartBlock(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2

    .line 3
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/nio/channels/FileChannel;Ljava/io/File;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Z)V

    :try_start_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x200

    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    new-instance v3, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v3, v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->sanityCheckBlockCount(I)V

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-static {v3}, Lorg/apache/poi/poifs/storage/BATBlock;->calculateMaximumSize(Lorg/apache/poi/poifs/storage/HeaderBlock;)J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    long-to-int v4, v3

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v1, v3}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-direct {v2, v4, v3}, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;-><init>([BI)V

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/nio/channels/Channel;->close()V

    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->closeInputStream(Ljava/io/InputStream;Z)V

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->readCoreContents()V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable read a >2gb file via an InputStream"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception v2

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/nio/channels/Channel;->close()V

    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->closeInputStream(Ljava/io/InputStream;Z)V

    throw v2
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 1

    .line 5
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/FileChannel;Ljava/io/File;ZZ)V
    .locals 5

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Z)V

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-direct {v0, p2, p3}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_0
    new-instance p2, Lorg/apache/poi/EmptyFileException;

    invoke-direct {p2}, Lorg/apache/poi/EmptyFileException;-><init>()V

    throw p2

    :cond_1
    new-instance p2, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-direct {p2, p1, p3}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/nio/channels/FileChannel;Z)V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    :goto_0
    const/16 p2, 0x200

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    new-instance p3, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {p3, p2}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->readCoreContents()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    if-eqz p4, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_2
    throw p2

    :goto_2
    if-eqz p4, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_3
    throw p2
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;Z)V
    .locals 2

    .line 7
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/nio/channels/FileChannel;Ljava/io/File;ZZ)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/BlockStore;-><init>()V

    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    new-instance v1, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    new-instance v0, Lorg/apache/poi/poifs/property/NPropertyTable;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/property/NPropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v1, p0, v0, v2, v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/property/RootProperty;Ljava/util/List;Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;-><init>([B)V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    :cond_0
    return-void
.end method

.method private closeInputStream(Ljava/io/InputStream;Z)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "can\'t close input stream"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x7

    invoke-virtual {p2, p1, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private createBAT(IZ)Lorg/apache/poi/poifs/storage/BATBlock;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v0, p2}, Lorg/apache/poi/poifs/storage/BATBlock;->createEmptyBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Z)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v1

    mul-int v1, v1, p1

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/poi/poifs/nio/DataSource;->write(Ljava/nio/ByteBuffer;J)V

    return-object p2
.end method

.method public static createNonClosingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lorg/apache/poi/util/CloseIgnoringInputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/CloseIgnoringInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static hasPOIFSHeader(Ljava/io/InputStream;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "4.0"
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasPOIFSHeader([B)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "4.0"
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->hasPOIFSHeader(Ljava/io/InputStream;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid header check"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
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

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p0
.end method

.method private readBAT(ILorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V
    .locals 1

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v0, p2}, Lorg/apache/poi/poifs/storage/BATBlock;->createBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/nio/ByteBuffer;)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readCoreContents()V
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-direct {p0, v5, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->readBAT(ILorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATIndex()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATCount()I

    move-result v5

    const/4 v6, -0x2

    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v7, v5}, Lorg/apache/poi/poifs/storage/BATBlock;->createBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/nio/ByteBuffer;)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v2

    invoke-virtual {v5, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v2

    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    invoke-virtual {v5, v8}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    if-ne v9, v6, :cond_1

    goto :goto_3

    :cond_1
    invoke-direct {p0, v9, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->readBAT(ILorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    sub-int/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/apache/poi/poifs/property/NPropertyTable;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/poifs/property/NPropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v2, p0, v4, v1, v5}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/property/RootProperty;Ljava/util/List;Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATStart()I

    move-result v2

    :goto_4
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    if-eq v2, v6, :cond_4

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v5, v4}, Lorg/apache/poi/poifs/storage/BATBlock;->createBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/nio/ByteBuffer;)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getNextBlock(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private syncWithDataSource()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->syncWithDataSource()V

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/NPropertyTable;->preWrite()V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/property/NPropertyTable;->write(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)V

    new-instance v0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->writeBlock(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/storage/BATBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/BATBlock;->getOurBlockIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->writeBlock(Lorg/apache/poi/poifs/storage/BATBlock;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/storage/BATBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/BATBlock;->getOurBlockIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->writeBlock(Lorg/apache/poi/poifs/storage/BATBlock;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public _get_property_table()Lorg/apache/poi/poifs/property/NPropertyTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    return-object v0
.end method

.method public addDirectory(Lorg/apache/poi/poifs/property/DirectoryProperty;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    return-void
.end method

.method public addDocument(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/DataSource;->close()V

    return-void
.end method

.method public createBlockIfNeeded(I)Ljava/nio/ByteBuffer;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    int-to-long v0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSize()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v3, v2, v0, v1}, Lorg/apache/poi/poifs/nio/DataSource;->write(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object p1

    return-object p1
.end method

.method public createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    return-object p1
.end method

.method public createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    return-object p1
.end method

.method public createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    return-object p1
.end method

.method public createOrUpdateDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createOrUpdateDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    return-object p1
.end method

.method public getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->getBATBlockAndIndex(ILorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object p1

    return-object p1
.end method

.method public getBigBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    return v0
.end method

.method public getBigBlockSizeDetails()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-object v0
.end method

.method public getBlockAt(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    int-to-long v0, p1

    .line 2
    const-wide/16 v2, 0x1

    .line 3
    .line 4
    add-long/2addr v0, v2

    .line 5
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 6
    .line 7
    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    int-to-long v2, v2

    .line 12
    mul-long v0, v0, v2

    .line 13
    .line 14
    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    .line 15
    .line 16
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 17
    .line 18
    invoke-virtual {v3}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/poi/poifs/nio/DataSource;->read(IJ)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    const-string v2, "Block "

    .line 31
    .line 32
    const-string v3, " not found"

    .line 33
    .line 34
    invoke-static {p1, v2, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 42
    .line 43
    .line 44
    throw v1
.end method

.method public getBlockStoreBlockSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSize()I

    move-result v0

    return v0
.end method

.method public getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    .locals 3

    new-instance v0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/nio/DataSource;->size()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;J)V

    return-object v0
.end method

.method public getFreeBlock()I
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, -0x1

    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lorg/apache/poi/poifs/storage/BATBlock;

    .line 27
    .line 28
    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/BATBlock;->hasFreeSectors()Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    :goto_1
    if-ge v6, v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v4, v6}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-ne v7, v5, :cond_0

    .line 42
    .line 43
    add-int/2addr v3, v6

    .line 44
    return v3

    .line 45
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    add-int/2addr v3, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, v3, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createBAT(IZ)Lorg/apache/poi/poifs/storage/BATBlock;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v4, -0x3

    .line 56
    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 57
    .line 58
    .line 59
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 65
    .line 66
    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    const/16 v6, 0x6d

    .line 71
    .line 72
    if-lt v4, v6, :cond_8

    .line 73
    .line 74
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_4

    .line 85
    .line 86
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Lorg/apache/poi/poifs/storage/BATBlock;

    .line 91
    .line 92
    invoke-virtual {v6}, Lorg/apache/poi/poifs/storage/BATBlock;->hasFreeSectors()Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    const/4 v6, 0x0

    .line 100
    :goto_2
    if-nez v6, :cond_6

    .line 101
    .line 102
    add-int/lit8 v4, v3, 0x1

    .line 103
    .line 104
    invoke-direct {p0, v4, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createBAT(IZ)Lorg/apache/poi/poifs/storage/BATBlock;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v5, v2, v3}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 109
    .line 110
    .line 111
    const/4 v2, -0x4

    .line 112
    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_5

    .line 122
    .line 123
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 124
    .line 125
    invoke-virtual {v1, v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setXBATStart(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    .line 130
    .line 131
    invoke-static {v1, v0}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lorg/apache/poi/poifs/storage/BATBlock;

    .line 136
    .line 137
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 138
    .line 139
    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 144
    .line 145
    .line 146
    :goto_3
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 152
    .line 153
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setXBATCount(I)V

    .line 160
    .line 161
    .line 162
    move v3, v4

    .line 163
    goto :goto_5

    .line 164
    :cond_6
    :goto_4
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 165
    .line 166
    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-ge v2, v1, :cond_9

    .line 171
    .line 172
    invoke-virtual {v6, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-ne v1, v5, :cond_7

    .line 177
    .line 178
    invoke-virtual {v6, v2, v3}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_8
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 186
    .line 187
    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    add-int/lit8 v4, v1, 0x1

    .line 192
    .line 193
    new-array v4, v4, [I

    .line 194
    .line 195
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 196
    .line 197
    invoke-virtual {v5}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-static {v5, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    .line 203
    .line 204
    aput v3, v4, v1

    .line 205
    .line 206
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 207
    .line 208
    invoke-virtual {v1, v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATArray([I)V

    .line 209
    .line 210
    .line 211
    :cond_9
    :goto_5
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 212
    .line 213
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    .line 214
    .line 215
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATCount(I)V

    .line 220
    .line 221
    .line 222
    add-int/2addr v3, v0

    .line 223
    return v3
.end method

.method public getHeaderBlock()Lorg/apache/poi/poifs/storage/HeaderBlock;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    return-object v0
.end method

.method public getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    return-object v0
.end method

.method public getNextBlock(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getBlock()Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result p1

    return p1
.end method

.method public getPropertyTable()Lorg/apache/poi/poifs/property/NPropertyTable;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    return-object v0
.end method

.method public getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "POIFS FileSystem"

    return-object v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->preferArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

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

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->preferArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

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

.method public isInPlaceWriteable()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    instance-of v1, v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->isWriteable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public preferArray()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->preferArray()Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/apache/poi/poifs/filesystem/EntryNode;)V
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->free()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->removeProperty(Lorg/apache/poi/poifs/property/Property;)V

    return-void
.end method

.method public setNextBlock(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getBlock()Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    return-void
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/DataSource;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public writeFilesystem()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    instance-of v1, v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->isWriteable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->syncWithDataSource()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "POIFS opened in read only mode, so writeFilesystem() may not be called. Open the FileSystem in read-write mode first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "POIFS opened from an inputstream, so writeFilesystem() may not be called. Use writeFilesystem(OutputStream) instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeFilesystem(Ljava/io/OutputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->syncWithDataSource()V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/nio/DataSource;->copyTo(Ljava/io/OutputStream;)V

    return-void
.end method
