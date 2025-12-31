.class public Lorg/apache/poi/poifs/nio/FileBackedDataSource;
.super Lorg/apache/poi/poifs/nio/DataSource;
.source "SourceFile"


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private buffersToClean:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private channel:Ljava/nio/channels/FileChannel;

.field private srcFile:Ljava/io/RandomAccessFile;

.field private writable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    const-string v0, "r"

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->newSrcFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/io/RandomAccessFile;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1

    .line 2
    if-eqz p2, :cond_0

    const-string v0, "r"

    goto :goto_0

    :cond_0
    const-string v0, "rw"

    :goto_0
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->newSrcFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/io/RandomAccessFile;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Z)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/nio/channels/FileChannel;Z)V

    iput-object p1, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->srcFile:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/poifs/nio/DataSource;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->buffersToClean:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->writable:Z

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/poi/util/POILogger;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->logger:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method

.method private static newSrcFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p0, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static unmap(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeapByteBuffer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource$1;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->buffersToClean:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->unmap(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->buffersToClean:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->srcFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :goto_1
    return-void
.end method

.method public copyTo(Ljava/io/OutputStream;)V
    .locals 6

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v5

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    return-void
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public isWriteable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->writable:Z

    return v0
.end method

.method public read(IJ)Ljava/nio/ByteBuffer;
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->size()J

    move-result-wide v0

    const-string v2, " past the end of the file"

    const-string v3, "Position "

    cmp-long v4, p2, v0

    if-gez v4, :cond_2

    iget-boolean v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->writable:Z

    if-eqz v0, :cond_0

    iget-object v4, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v8, p1

    move-wide v6, p2

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->buffersToClean:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-static {v0, p1}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    return-void
.end method
