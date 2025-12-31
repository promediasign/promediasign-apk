.class public Lorg/h2/store/FileStoreInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final alwaysClose:Z

.field private final compress:Lorg/h2/tools/CompressTool;

.field private endOfFile:Z

.field private final page:Lorg/h2/store/Data;

.field private remainingInBuffer:I

.field private store:Lorg/h2/store/FileStore;


# direct methods
.method public constructor <init>(Lorg/h2/store/FileStore;Lorg/h2/store/DataHandler;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    iput-boolean p4, p0, Lorg/h2/store/FileStoreInputStream;->alwaysClose:Z

    if-eqz p3, :cond_0

    invoke-static {}, Lorg/h2/tools/CompressTool;->getInstance()Lorg/h2/tools/CompressTool;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lorg/h2/store/FileStoreInputStream;->compress:Lorg/h2/tools/CompressTool;

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    const/16 p3, 0x10

    invoke-static {p2, p3}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    :try_start_0
    invoke-virtual {p1}, Lorg/h2/store/FileStore;->length()J

    move-result-wide p2

    const-wide/16 v0, 0x30

    cmp-long p4, p2, v0

    if-gtz p4, :cond_1

    invoke-virtual {p0}, Lorg/h2/store/FileStoreInputStream;->close()V

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_1
    invoke-direct {p0}, Lorg/h2/store/FileStoreInputStream;->fillBuffer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :goto_3
    iget-object p1, p1, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private fillBuffer()V
    .locals 5

    iget v0, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    if-gtz v0, :cond_5

    iget-boolean v0, p0, Lorg/h2/store/FileStoreInputStream;->endOfFile:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->openFile()V

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v2}, Lorg/h2/store/FileStore;->getFilePointer()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/h2/store/FileStoreInputStream;->close()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    iget-object v1, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/store/FileStore;->readFully([BII)V

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lorg/h2/store/FileStoreInputStream;->close()V

    return-void

    :cond_2
    iget-object v1, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1, v0}, Lorg/h2/store/Data;->checkCapacity(I)V

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->compress:Lorg/h2/tools/CompressTool;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->checkCapacity(I)V

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    :cond_3
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v1

    iget v4, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->setPos(I)V

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->fillAligned()V

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    sub-int/2addr v0, v3

    iget-object v1, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->reset()V

    iget-object v1, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    iget-object v1, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    iget-object v4, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v4}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4, v3, v0}, Lorg/h2/store/FileStore;->readFully([BII)V

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->compress:Lorg/h2/tools/CompressTool;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iget v1, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v1

    iget-object v3, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    iget v4, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    invoke-virtual {v3, v1, v2, v4}, Lorg/h2/store/Data;->read([BII)V

    iget-object v3, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->reset()V

    iget-object v3, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v3, v0}, Lorg/h2/store/Data;->checkCapacity(I)V

    iget-object v3, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v3, v2}, Lorg/h2/tools/CompressTool;->expand([B[BI)V

    iput v0, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    :cond_4
    iget-boolean v0, p0, Lorg/h2/store/FileStoreInputStream;->alwaysClose:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->closeFile()V

    :cond_5
    :goto_0
    return-void
.end method

.method private readBlock([BII)I
    .locals 1

    invoke-direct {p0}, Lorg/h2/store/FileStoreInputStream;->fillBuffer()V

    iget-boolean v0, p0, Lorg/h2/store/FileStoreInputStream;->endOfFile:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v0, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/store/Data;->read([BII)V

    iget p1, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    return p3
.end method


# virtual methods
.method public available()I
    .locals 1

    iget v0, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/h2/store/FileStore;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/store/FileStoreInputStream;->endOfFile:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/h2/store/FileStoreInputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/h2/store/FileStoreInputStream;->fillBuffer()V

    iget-boolean v0, p0, Lorg/h2/store/FileStoreInputStream;->endOfFile:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/h2/store/FileStoreInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    .line 3
    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/store/FileStoreInputStream;->readBlock([BII)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 v0, -0x1

    :cond_3
    return v0
.end method
