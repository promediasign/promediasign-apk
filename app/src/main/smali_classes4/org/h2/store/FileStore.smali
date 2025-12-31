.class public Lorg/h2/store/FileStore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEADER:Ljava/lang/String; = "-- H2 0.5/B -- \n"

.field public static final HEADER_LENGTH:I = 0x30


# instance fields
.field private autoDeleteReference:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "*>;"
        }
    .end annotation
.end field

.field private checkedWriting:Z

.field private file:Ljava/nio/channels/FileChannel;

.field private fileLength:J

.field private filePos:J

.field private final handler:Lorg/h2/store/DataHandler;

.field private lock:Ljava/nio/channels/FileLock;

.field private final mode:Ljava/lang/String;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    iput-object p1, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    iput-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->canWrite(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p3, "r"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2, p3}, Lorg/h2/store/fs/FileUtils;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/FileStore;->fileLength:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iput-object p3, p0, Lorg/h2/store/FileStore;->mode:Ljava/lang/String;

    return-void

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mode: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private checkPowerOff()V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->checkPowerOff()V

    :cond_0
    return-void
.end method

.method private checkWritingAllowed()V
    .locals 2

    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->checkWritingAllowed()V

    :cond_0
    return-void
.end method

.method private closeFileSilently()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/store/FileStore;
    .locals 6

    .line 1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lorg/h2/store/FileStore;

    move-result-object p0

    return-object p0
.end method

.method public static open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lorg/h2/store/FileStore;
    .locals 6

    .line 2
    const/16 v5, 0x400

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lorg/h2/store/FileStore;

    move-result-object p0

    return-object p0
.end method

.method public static open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lorg/h2/store/FileStore;
    .locals 8

    .line 3
    if-nez p3, :cond_0

    new-instance p3, Lorg/h2/store/FileStore;

    invoke-direct {p3, p0, p1, p2}, Lorg/h2/store/FileStore;-><init>(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v7, Lorg/h2/security/SecureFileStore;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/h2/security/SecureFileStore;-><init>(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V

    move-object p3, v7

    :goto_0
    return-object p3
.end method

.method private static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-boolean v0, Lorg/h2/engine/SysProperties;->TRACE_IO:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 6
    .line 7
    const-string v1, "FileStore."

    .line 8
    .line 9
    const-string v2, " "

    .line 10
    .line 11
    invoke-static {v1, p0, v2, p1, v2}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public autoDelete()V
    .locals 2

    iget-object v0, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/h2/util/TempFileDeleter;->addFile(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "close"

    iget-object v3, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lorg/h2/store/FileStore;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v1, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    throw v0

    :cond_0
    :goto_1
    return-void
.end method

.method public closeAndDeleteSilently()V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/h2/store/FileStore;->closeSilently()V

    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    iget-object v2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/util/TempFileDeleter;->deleteFile(Ljava/lang/ref/Reference;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public closeFile()V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public closeSilently()V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/FileStore;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public generateSalt()[B
    .locals 2

    sget-object v0, Lorg/h2/store/FileStore;->HEADER:Ljava/lang/String;

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFilePointer()J
    .locals 5

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/store/FileStore;->filePos:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/h2/store/FileStore;->filePos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    iget-wide v0, p0, Lorg/h2/store/FileStore;->filePos:J

    return-wide v0
.end method

.method public init()V
    .locals 8

    sget-object v0, Lorg/h2/store/FileStore;->HEADER:Ljava/lang/String;

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x30

    const/4 v5, 0x0

    const/16 v6, 0x10

    cmp-long v7, v1, v3

    if-gez v7, :cond_0

    iput-boolean v5, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    invoke-virtual {p0, v0, v5, v6}, Lorg/h2/store/FileStore;->writeDirect([BII)V

    invoke-virtual {p0}, Lorg/h2/store/FileStore;->generateSalt()[B

    move-result-object v1

    invoke-virtual {p0, v1, v5, v6}, Lorg/h2/store/FileStore;->writeDirect([BII)V

    invoke-virtual {p0, v1}, Lorg/h2/store/FileStore;->initKey([B)V

    invoke-virtual {p0, v0, v5, v6}, Lorg/h2/store/FileStore;->write([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/h2/store/FileStore;->seek(J)V

    new-array v1, v6, [B

    invoke-virtual {p0, v1, v5, v6}, Lorg/h2/store/FileStore;->readFullyDirect([BII)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v6, [B

    invoke-virtual {p0, v2, v5, v6}, Lorg/h2/store/FileStore;->readFullyDirect([BII)V

    invoke-virtual {p0, v2}, Lorg/h2/store/FileStore;->initKey([B)V

    invoke-virtual {p0, v1, v5, v6}, Lorg/h2/store/FileStore;->readFully([BII)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const v0, 0x15fc1

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    const v0, 0x15fc0

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public initKey([B)V
    .locals 0

    return-void
.end method

.method public length()J
    .locals 10

    const-string v0, "unaligned file length "

    const-string v1, "file "

    :try_start_0
    iget-wide v2, p0, Lorg/h2/store/FileStore;->fileLength:J

    sget-boolean v4, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v4, :cond_0

    iget-object v2, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    iget-wide v5, p0, Lorg/h2/store/FileStore;->fileLength:J

    cmp-long v7, v2, v5

    if-eqz v7, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " length "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " expected "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/h2/store/FileStore;->fileLength:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    const-wide/16 v4, 0x10

    rem-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_1

    add-long v6, v2, v4

    rem-long v4, v2, v4

    sub-long/2addr v6, v4

    iget-object v1, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v6, v7}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    iput-wide v6, p0, Lorg/h2/store/FileStore;->fileLength:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " len "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-wide v2

    :goto_1
    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public openFile()V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/store/FileStore;->mode:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/store/fs/FileUtils;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    iget-wide v1, p0, Lorg/h2/store/FileStore;->filePos:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :cond_0
    return-void
.end method

.method public readFully([BII)V
    .locals 2

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    if-ltz p3, :cond_0

    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unaligned read "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " len "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkPowerOff()V

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/store/fs/FileUtils;->readFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public readFullyDirect([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/store/FileStore;->readFully([BII)V

    return-void
.end method

.method public declared-synchronized releaseLock()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/FileStore;->lock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/h2/store/FileStore;->lock:Ljava/nio/channels/FileLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public seek(J)V
    .locals 5

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x10

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unaligned seek "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lorg/h2/store/FileStore;->filePos:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iput-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    iget-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setCheckedWriting(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    return-void
.end method

.method public setLength(J)V
    .locals 5

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x10

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unaligned setLength "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkPowerOff()V

    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkWritingAllowed()V

    :try_start_0
    iget-wide v0, p0, Lorg/h2/store/FileStore;->fileLength:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    iget-wide v0, p0, Lorg/h2/store/FileStore;->filePos:J

    iget-object v2, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x1

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    const/4 v3, 0x1

    new-array v3, v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/h2/store/fs/FileUtils;->writeFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    iget-object v2, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    :goto_0
    iput-wide p1, p0, Lorg/h2/store/FileStore;->fileLength:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-direct {p0}, Lorg/h2/store/FileStore;->closeFileSilently()V

    iget-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public stopAutoDelete()V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    iget-object v2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/util/TempFileDeleter;->stopAutoDelete(Ljava/lang/ref/Reference;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    return-void
.end method

.method public sync()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lorg/h2/store/FileStore;->closeFileSilently()V

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized tryLock()Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/store/FileStore;->lock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    monitor-exit p0

    return v0
.end method

.method public write([BII)V
    .locals 2

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    if-ltz p3, :cond_0

    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unaligned write "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " len "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkWritingAllowed()V

    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkPowerOff()V

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/store/fs/FileUtils;->writeFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J

    iget-wide v0, p0, Lorg/h2/store/FileStore;->fileLength:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/store/FileStore;->fileLength:J

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0}, Lorg/h2/store/FileStore;->closeFileSilently()V

    iget-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public writeDirect([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/store/FileStore;->write([BII)V

    return-void
.end method
