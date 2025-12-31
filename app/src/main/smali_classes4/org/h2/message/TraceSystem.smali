.class public Lorg/h2/message/TraceSystem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/message/TraceWriter;


# static fields
.field public static final ADAPTER:I = 0x4

.field private static final CHECK_SIZE_EACH_WRITES:I = 0x1000

.field public static final DEBUG:I = 0x3

.field private static final DEFAULT_MAX_FILE_SIZE:I = 0x4000000

.field public static final DEFAULT_TRACE_LEVEL_FILE:I = 0x1

.field public static final DEFAULT_TRACE_LEVEL_SYSTEM_OUT:I = 0x0

.field public static final ERROR:I = 0x1

.field public static final INFO:I = 0x2

.field public static final OFF:I = 0x0

.field public static final PARENT:I = -0x1


# instance fields
.field private checkSize:I

.field private closed:Z

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private fileName:Ljava/lang/String;

.field private fileWriter:Ljava/io/Writer;

.field private levelFile:I

.field private levelMax:I

.field private levelSystemOut:I

.field private maxFileSize:I

.field private printWriter:Ljava/io/PrintWriter;

.field private sysOut:Ljava/io/PrintStream;

.field private final traces:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lorg/h2/message/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private writer:Lorg/h2/message/TraceWriter;

.field private writingErrorLogged:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/h2/message/TraceSystem;->levelSystemOut:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/h2/message/TraceSystem;->levelFile:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lorg/h2/message/TraceSystem;->maxFileSize:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget-object v1, Lorg/h2/message/Trace;->MODULE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lorg/h2/message/TraceSystem;->traces:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object p0, p0, Lorg/h2/message/TraceSystem;->writer:Lorg/h2/message/TraceWriter;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/h2/message/TraceSystem;->sysOut:Ljava/io/PrintStream;

    iput-object p1, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/message/TraceSystem;->updateLevel()V

    return-void
.end method

.method private declared-synchronized closeWriter()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    iget-object v0, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    iput-object v1, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->fileWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iput-object v1, p0, Lorg/h2/message/TraceSystem;->fileWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->dateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/h2/message/TraceSystem;->dateFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/message/TraceSystem;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private logWritingError(Ljava/lang/Exception;)V
    .locals 2

    iget-boolean v0, p0, Lorg/h2/message/TraceSystem;->writingErrorLogged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/message/TraceSystem;->writingErrorLogged:Z

    iget-object v0, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fb2

    invoke-static {v1, p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    iget-object v0, p0, Lorg/h2/message/TraceSystem;->sysOut:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private openWriter()Z
    .locals 4

    iget-object v0, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->canWrite(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/IOUtils;->getBufferedWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/message/TraceSystem;->fileWriter:Ljava/io/Writer;

    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lorg/h2/message/TraceSystem;->fileWriter:Ljava/io/Writer;

    invoke-direct {v2, v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v2, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-direct {p0, v1}, Lorg/h2/message/TraceSystem;->logWritingError(Ljava/lang/Exception;)V

    return v0

    :cond_1
    :goto_1
    return v1
.end method

.method private updateLevel()V
    .locals 2

    iget v0, p0, Lorg/h2/message/TraceSystem;->levelSystemOut:I

    iget v1, p0, Lorg/h2/message/TraceSystem;->levelFile:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/h2/message/TraceSystem;->levelMax:I

    return-void
.end method

.method private declared-synchronized writeFile(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/h2/message/TraceSystem;->checkSize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/h2/message/TraceSystem;->checkSize:I

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/h2/message/TraceSystem;->checkSize:I

    invoke-direct {p0}, Lorg/h2/message/TraceSystem;->closeWriter()V

    iget v0, p0, Lorg/h2/message/TraceSystem;->maxFileSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->size(Ljava/lang/String;)J

    move-result-wide v0

    iget v2, p0, Lorg/h2/message/TraceSystem;->maxFileSize:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".old"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/message/TraceSystem;->openWriter()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    iget p1, p0, Lorg/h2/message/TraceSystem;->levelFile:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    instance-of p1, p2, Lorg/h2/jdbc/JdbcSQLException;

    if-eqz p1, :cond_3

    move-object p1, p2

    check-cast p1, Lorg/h2/jdbc/JdbcSQLException;

    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lorg/h2/api/ErrorCode;->isCommon(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    goto :goto_1

    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    iget-boolean p1, p0, Lorg/h2/message/TraceSystem;->closed:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lorg/h2/message/TraceSystem;->closeWriter()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_2
    invoke-direct {p0, p1}, Lorg/h2/message/TraceSystem;->logWritingError(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-direct {p0}, Lorg/h2/message/TraceSystem;->closeWriter()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/message/TraceSystem;->closed:Z

    return-void
.end method

.method public getLevelFile()I
    .locals 1

    iget v0, p0, Lorg/h2/message/TraceSystem;->levelFile:I

    return v0
.end method

.method public getTrace(I)Lorg/h2/message/Trace;
    .locals 3

    iget-object v0, p0, Lorg/h2/message/TraceSystem;->traces:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/message/Trace;

    if-nez v0, :cond_2

    new-instance v1, Lorg/h2/message/Trace;

    iget-object v0, p0, Lorg/h2/message/TraceSystem;->writer:Lorg/h2/message/TraceWriter;

    invoke-direct {v1, v0, p1}, Lorg/h2/message/Trace;-><init>(Lorg/h2/message/TraceWriter;I)V

    iget-object v2, p0, Lorg/h2/message/TraceSystem;->traces:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-virtual {v2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->traces:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/h2/message/Trace;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getTrace(Ljava/lang/String;)Lorg/h2/message/Trace;
    .locals 2

    .line 3
    new-instance v0, Lorg/h2/message/Trace;

    iget-object v1, p0, Lorg/h2/message/TraceSystem;->writer:Lorg/h2/message/TraceWriter;

    invoke-direct {v0, v1, p1}, Lorg/h2/message/Trace;-><init>(Lorg/h2/message/TraceWriter;Ljava/lang/String;)V

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 2

    iget v0, p0, Lorg/h2/message/TraceSystem;->levelMax:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/message/TraceSystem;->writer:Lorg/h2/message/TraceWriter;

    invoke-interface {v0, p1}, Lorg/h2/message/TraceWriter;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_0
    if-gt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setLevelFile(I)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    :try_start_0
    const-class v1, Lorg/h2/message/TraceWriterAdapter;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lorg/h2/message/TraceWriter;

    .line 12
    .line 13
    iput-object v1, p0, Lorg/h2/message/TraceSystem;->writer:Lorg/h2/message/TraceWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    const-string v2, ".trace.db"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/16 v2, 0x9

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static {v1, v2, v3}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_0
    const/16 v2, 0x2f

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/16 v3, 0x5c

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ltz v2, :cond_1

    .line 51
    .line 52
    add-int/2addr v2, v0

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_1
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->writer:Lorg/h2/message/TraceWriter;

    .line 58
    .line 59
    invoke-interface {v0, v1}, Lorg/h2/message/TraceWriter;->setName(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    const v1, 0x15fe6

    .line 65
    .line 66
    .line 67
    const-string v2, "org.h2.message.TraceWriterAdapter"

    .line 68
    .line 69
    filled-new-array {v2}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v1, p1, v3}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const/4 v1, 0x2

    .line 78
    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/h2/message/TraceSystem;->write(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    :goto_0
    iput p1, p0, Lorg/h2/message/TraceSystem;->levelFile:I

    .line 83
    .line 84
    invoke-direct {p0}, Lorg/h2/message/TraceSystem;->updateLevel()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public setLevelSystemOut(I)V
    .locals 0

    iput p1, p0, Lorg/h2/message/TraceSystem;->levelSystemOut:I

    invoke-direct {p0}, Lorg/h2/message/TraceSystem;->updateLevel()V

    return-void
.end method

.method public setMaxFileSize(I)V
    .locals 0

    iput p1, p0, Lorg/h2/message/TraceSystem;->maxFileSize:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSysOut(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/message/TraceSystem;->sysOut:Ljava/io/PrintStream;

    return-void
.end method

.method public write(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/h2/message/Trace;->MODULE_NAMES:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/message/TraceSystem;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget v0, p0, Lorg/h2/message/TraceSystem;->levelSystemOut:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lorg/h2/message/TraceSystem;->levelMax:I

    if-le p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->sysOut:Ljava/io/PrintStream;

    invoke-direct {p0, p2, p3}, Lorg/h2/message/TraceSystem;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    iget v0, p0, Lorg/h2/message/TraceSystem;->levelSystemOut:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/h2/message/TraceSystem;->sysOut:Ljava/io/PrintStream;

    invoke-virtual {p4, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/h2/message/TraceSystem;->levelFile:I

    if-gt p1, v0, :cond_2

    invoke-direct {p0, p2, p3}, Lorg/h2/message/TraceSystem;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lorg/h2/message/TraceSystem;->writeFile(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
