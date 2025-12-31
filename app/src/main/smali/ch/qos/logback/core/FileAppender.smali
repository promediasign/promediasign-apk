.class public Lch/qos/logback/core/FileAppender;
.super Lch/qos/logback/core/OutputStreamAppender;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/OutputStreamAppender<",
        "TE;>;"
    }
.end annotation


# static fields
.field protected static COLLISION_WITH_EARLIER_APPENDER_URL:Ljava/lang/String; = "http://logback.qos.ch/codes.html#earlier_fa_collision"

.field public static final DEFAULT_BUFFER_SIZE:J = 0x2000L


# instance fields
.field protected append:Z

.field private bufferSize:Lch/qos/logback/core/util/FileSize;

.field protected fileName:Ljava/lang/String;

.field private initialized:Z

.field private lazyInit:Z

.field private prudent:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lch/qos/logback/core/OutputStreamAppender;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/FileAppender;->append:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/FileAppender;->prudent:Z

    iput-boolean v0, p0, Lch/qos/logback/core/FileAppender;->initialized:Z

    iput-boolean v0, p0, Lch/qos/logback/core/FileAppender;->lazyInit:Z

    new-instance v0, Lch/qos/logback/core/util/FileSize;

    const-wide/16 v1, 0x2000

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/FileSize;-><init>(J)V

    iput-object v0, p0, Lch/qos/logback/core/FileAppender;->bufferSize:Lch/qos/logback/core/util/FileSize;

    return-void
.end method

.method private getAbsoluteFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    const-string v1, "DATA_DIR"

    invoke-interface {v0, v1}, Lch/qos/logback/core/Context;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lch/qos/logback/core/util/FileUtil;->prefixRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private safeWrite(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lch/qos/logback/core/OutputStreamAppender;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/recovery/ResilientFileOutputStream;

    invoke-virtual {v0}, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-eqz v8, :cond_1

    invoke-virtual {v1, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lch/qos/logback/core/OutputStreamAppender;->writeOut(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    :cond_2
    if-eqz v2, :cond_4

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-virtual {v0, p1}, Lch/qos/logback/core/recovery/ResilientOutputStreamBase;->postIOFailure(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    return-void

    :goto_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    throw p1
.end method


# virtual methods
.method public addErrorForCollision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    const-string v1, "\' option has the same value \""

    .line 4
    .line 5
    const-string v2, "\" as that given for appender ["

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p2, "] defined earlier."

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public checkForFileCollisionInPreviousFileAppenders()Z
    .locals 6

    iget-object v0, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    const-string v2, "FA_FILENAME_COLLISION_MAP"

    invoke-interface {v0, v2}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "File"

    invoke-virtual {p0, v4, v1, v3}, Lch/qos/logback/core/FileAppender;->addErrorForCollision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return v1
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLazy()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/core/FileAppender;->lazyInit:Z

    return v0
.end method

.method public isAppend()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/core/FileAppender;->append:Z

    return v0
.end method

.method public isPrudent()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/core/FileAppender;->prudent:Z

    return v0
.end method

.method public openFile(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "Failed to create parent directories for ["

    invoke-direct {p0, p1}, Lch/qos/logback/core/FileAppender;->getAbsoluteFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lch/qos/logback/core/util/FileUtil;->createMissingParentDirectories(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Lch/qos/logback/core/recovery/ResilientFileOutputStream;

    iget-boolean v0, p0, Lch/qos/logback/core/FileAppender;->append:Z

    iget-object v2, p0, Lch/qos/logback/core/FileAppender;->bufferSize:Lch/qos/logback/core/util/FileSize;

    invoke-virtual {v2}, Lch/qos/logback/core/util/FileSize;->getSize()J

    move-result-wide v2

    invoke-direct {p1, v1, v0, v2, v3}, Lch/qos/logback/core/recovery/ResilientFileOutputStream;-><init>(Ljava/io/File;ZJ)V

    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {p1, v0}, Lch/qos/logback/core/recovery/ResilientOutputStreamBase;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {p0, p1}, Lch/qos/logback/core/OutputStreamAppender;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x1

    return p1

    :goto_1
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final rawFileProperty()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppend(Z)V
    .locals 0

    iput-boolean p1, p0, Lch/qos/logback/core/FileAppender;->append:Z

    return-void
.end method

.method public setBufferSize(Lch/qos/logback/core/util/FileSize;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting bufferSize to ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/qos/logback/core/util/FileSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    iput-object p1, p0, Lch/qos/logback/core/FileAppender;->bufferSize:Lch/qos/logback/core/util/FileSize;

    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setLazy(Z)V
    .locals 0

    iput-boolean p1, p0, Lch/qos/logback/core/FileAppender;->lazyInit:Z

    return-void
.end method

.method public setPrudent(Z)V
    .locals 0

    iput-boolean p1, p0, Lch/qos/logback/core/FileAppender;->prudent:Z

    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lch/qos/logback/core/FileAppender;->getFile()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "]"

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lch/qos/logback/core/FileAppender;->getAbsoluteFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "File property is set to ["

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v1, p0, Lch/qos/logback/core/FileAppender;->prudent:Z

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Lch/qos/logback/core/FileAppender;->isAppend()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {p0, v1}, Lch/qos/logback/core/FileAppender;->setAppend(Z)V

    .line 45
    .line 46
    .line 47
    const-string v1, "Setting \"Append\" property to true on account of \"Prudent\" mode"

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-boolean v1, p0, Lch/qos/logback/core/FileAppender;->lazyInit:Z

    .line 53
    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Lch/qos/logback/core/FileAppender;->checkForFileCollisionInPreviousFileAppenders()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    const-string v0, "Collisions detected with FileAppender/RollingAppender instances defined earlier. Aborting."

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lch/qos/logback/core/FileAppender;->COLLISION_WITH_EARLIER_APPENDER_URL:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Lch/qos/logback/core/FileAppender;->openFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    const-string v2, "openFile("

    .line 79
    .line 80
    const-string v3, ","

    .line 81
    .line 82
    invoke-static {v2, v0, v3}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-boolean v2, p0, Lch/qos/logback/core/FileAppender;->append:Z

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, ") failed"

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    new-instance v0, Lch/qos/logback/core/NOPOutputStream;

    .line 105
    .line 106
    invoke-direct {v0}, Lch/qos/logback/core/NOPOutputStream;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->setOutputStream(Ljava/io/OutputStream;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-super {p0}, Lch/qos/logback/core/OutputStreamAppender;->start()V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "\"File\" property not set for appender named ["

    .line 119
    .line 120
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->name:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :goto_1
    return-void
.end method

.method public stop()V
    .locals 2

    invoke-super {p0}, Lch/qos/logback/core/OutputStreamAppender;->stop()V

    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    invoke-static {v0}, Lch/qos/logback/core/util/ContextUtil;->getFilenameCollisionMap(Lch/qos/logback/core/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public subAppend(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lch/qos/logback/core/FileAppender;->initialized:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lch/qos/logback/core/FileAppender;->lazyInit:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/FileAppender;->initialized:Z

    invoke-virtual {p0}, Lch/qos/logback/core/FileAppender;->checkForFileCollisionInPreviousFileAppenders()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Collisions detected with FileAppender/RollingAppender instances defined earlier. Aborting."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    sget-object v0, Lch/qos/logback/core/FileAppender;->COLLISION_WITH_EARLIER_APPENDER_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/FileAppender;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/FileAppender;->openFile(Ljava/lang/String;)Z

    invoke-super {p0}, Lch/qos/logback/core/OutputStreamAppender;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->started:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openFile("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lch/qos/logback/core/FileAppender;->append:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lch/qos/logback/core/OutputStreamAppender;->subAppend(Ljava/lang/Object;)V

    return-void
.end method

.method public writeOut(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lch/qos/logback/core/FileAppender;->prudent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lch/qos/logback/core/FileAppender;->safeWrite(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lch/qos/logback/core/OutputStreamAppender;->writeOut(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
