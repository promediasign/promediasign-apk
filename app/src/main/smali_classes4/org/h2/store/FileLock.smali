.class public Lorg/h2/store/FileLock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final FILE:Ljava/lang/String; = "file"

.field public static final LOCK_FILE:I = 0x1

.field public static final LOCK_FS:I = 0x4

.field public static final LOCK_NO:I = 0x0

.field public static final LOCK_SERIALIZED:I = 0x3

.field public static final LOCK_SOCKET:I = 0x2

.field private static final MAGIC:Ljava/lang/String; = "FileLock"

.field private static final RANDOM_BYTES:I = 0x10

.field private static final SERIALIZED:Ljava/lang/String; = "serialized"

.field private static final SLEEP_GAP:I = 0x19

.field private static final SOCKET:Ljava/lang/String; = "socket"

.field private static final TIME_GRANULARITY:I = 0x7d0


# instance fields
.field private volatile fileName:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private lastWrite:J

.field private volatile locked:Z

.field private method:Ljava/lang/String;

.field private properties:Ljava/util/Properties;

.field private volatile serverSocket:Ljava/net/ServerSocket;

.field private final sleep:I

.field private final trace:Lorg/h2/message/Trace;

.field private uniqueId:Ljava/lang/String;

.field private watchdog:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/h2/message/TraceSystem;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/h2/message/TraceSystem;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    iput-object p2, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    iput p3, p0, Lorg/h2/store/FileLock;->sleep:I

    return-void
.end method

.method private checkServer()V
    .locals 7

    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "server"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2384

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1, v2, v3}, Lorg/h2/util/NetUtils;->createSocket(Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    new-instance v4, Lorg/h2/value/Transfer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/h2/value/Transfer;-><init>(Lorg/h2/engine/SessionInterface;)V

    invoke-virtual {v4, v2}, Lorg/h2/value/Transfer;->setSocket(Ljava/net/Socket;)V

    invoke-virtual {v4}, Lorg/h2/value/Transfer;->init()V

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-virtual {v4, v5}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    invoke-virtual {v4, v5}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    invoke-virtual {v4, v0}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-virtual {v4}, Lorg/h2/value/Transfer;->flush()V

    invoke-virtual {v4}, Lorg/h2/value/Transfer;->readInt()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v4}, Lorg/h2/value/Transfer;->close()V

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    return-void

    :cond_2
    const v2, 0x15fa4

    const-string v3, "Server is running"

    invoke-static {v2, v3}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :catch_0
    return-void
.end method

.method private getExceptionAlreadyInUse(Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 3

    const v0, 0x15fa4

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "server"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1
.end method

.method private static getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;
    .locals 1

    const/16 v0, 0x1f40

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static getFileLockMethod(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_5

    const-string v0, "FILE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v0, "SOCKET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, "SERIALIZED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-string v0, "FS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const v0, 0x15fcc

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private lockFile()V
    .locals 4

    const-string v0, "file"

    iput-object v0, p0, Lorg/h2/store/FileLock;->method:Ljava/lang/String;

    new-instance v1, Lorg/h2/util/SortedProperties;

    invoke-direct {v1}, Lorg/h2/util/SortedProperties;-><init>()V

    iput-object v1, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    iget-object v2, p0, Lorg/h2/store/FileLock;->method:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "method"

    invoke-virtual {v1, v3, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/h2/store/FileLock;->setUniqueId()V

    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->createFile(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-direct {p0}, Lorg/h2/store/FileLock;->waitUntilOld()V

    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    iget v0, p0, Lorg/h2/store/FileLock;->sleep:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/h2/store/FileLock;->sleep(I)V

    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Another process was faster"

    invoke-static {v0, v2}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Locked by another process: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/store/FileLock;->getExceptionAlreadyInUse(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    const-string v0, "Unsupported lock method "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    const/16 v0, 0x19

    invoke-static {v0}, Lorg/h2/store/FileLock;->sleep(I)V

    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/store/FileLock;->locked:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "H2 File Lock Watchdog "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    invoke-static {v1}, Lorg/h2/Driver;->setThreadContextClassLoader(Ljava/lang/Thread;)V

    iget-object v1, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_4
    iput-object v2, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    const-string v0, "Concurrent update"

    invoke-static {v0, v2}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private lockSerialized()V
    .locals 3

    const-string v0, "serialized"

    iput-object v0, p0, Lorg/h2/store/FileLock;->method:Ljava/lang/String;

    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/h2/util/SortedProperties;

    invoke-direct {v0}, Lorg/h2/util/SortedProperties;-><init>()V

    iput-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    iget-object v1, p0, Lorg/h2/store/FileLock;->method:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/h2/store/FileLock;->setUniqueId()V

    invoke-virtual {p0}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private lockSocket()V
    .locals 14

    .line 1
    const-string v0, "socket"

    .line 2
    .line 3
    iput-object v0, p0, Lorg/h2/store/FileLock;->method:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Lorg/h2/util/SortedProperties;

    .line 6
    .line 7
    invoke-direct {v1}, Lorg/h2/util/SortedProperties;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    .line 11
    .line 12
    iget-object v2, p0, Lorg/h2/store/FileLock;->method:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "method"

    .line 19
    .line 20
    invoke-virtual {v1, v3, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lorg/h2/store/FileLock;->setUniqueId()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lorg/h2/util/NetUtils;->getLocalAddress()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lorg/h2/store/FileLock;->ipAddress:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->createFile(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const-string v2, "port"

    .line 48
    .line 49
    const-string v4, "ipAddress"

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    if-nez v1, :cond_6

    .line 54
    .line 55
    invoke-direct {p0}, Lorg/h2/store/FileLock;->waitUntilOld()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->lastModified(Ljava/lang/String;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v7

    .line 64
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-string v9, "file"

    .line 73
    .line 74
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-eqz v9, :cond_0

    .line 79
    .line 80
    invoke-direct {p0}, Lorg/h2/store/FileLock;->lockFile()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    iget-object v0, p0, Lorg/h2/store/FileLock;->ipAddress:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1, v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v3, p0, Lorg/h2/store/FileLock;->ipAddress:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    const-string v3, "0"

    .line 105
    .line 106
    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 115
    .line 116
    .line 117
    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3

    .line 118
    const/4 v9, 0x0

    .line 119
    :goto_0
    const/4 v10, 0x3

    .line 120
    if-lt v9, v10, :cond_3

    .line 121
    .line 122
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->lastModified(Ljava/lang/String;)J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    cmp-long v3, v7, v0

    .line 129
    .line 130
    if-nez v3, :cond_2

    .line 131
    .line 132
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createFile(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_1

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_1
    const-string v0, "Another process was faster"

    .line 147
    .line 148
    invoke-static {v0, v6}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    throw v0

    .line 153
    :cond_2
    const-string v0, "Concurrent update"

    .line 154
    .line 155
    invoke-static {v0, v6}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    throw v0

    .line 160
    :cond_3
    :try_start_1
    new-instance v10, Ljava/net/Socket;

    .line 161
    .line 162
    invoke-direct {v10, v0, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v10}, Ljava/net/Socket;->close()V

    .line 166
    .line 167
    .line 168
    const-string v10, "Locked by another process"

    .line 169
    .line 170
    invoke-direct {p0, v10}, Lorg/h2/store/FileLock;->getExceptionAlreadyInUse(Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    throw v10
    :try_end_1
    .catch Ljava/net/BindException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :catch_0
    move-exception v10

    .line 176
    goto :goto_1

    .line 177
    :catch_1
    const-string v0, "IOException"

    .line 178
    .line 179
    invoke-static {v0, v6}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    throw v0

    .line 184
    :goto_1
    iget-object v11, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    .line 185
    .line 186
    new-instance v12, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v13, "socket not connected to port "

    .line 189
    .line 190
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    invoke-virtual {v11, v10, v12}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    add-int/lit8 v9, v9, 0x1

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :catch_2
    const-string v0, "Bind Exception"

    .line 207
    .line 208
    invoke-static {v0, v6}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    throw v0

    .line 213
    :catch_3
    move-exception v1

    .line 214
    const-string v2, "Unknown host "

    .line 215
    .line 216
    invoke-static {v2, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v0, v1}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    throw v0

    .line 225
    :cond_4
    const-string v1, "Locked by another computer: "

    .line 226
    .line 227
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-direct {p0, v0}, Lorg/h2/store/FileLock;->getExceptionAlreadyInUse(Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    throw v0

    .line 236
    :cond_5
    const-string v0, "Unsupported lock method "

    .line 237
    .line 238
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v0, v6}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    throw v0

    .line 247
    :cond_6
    :goto_2
    :try_start_2
    invoke-static {v5, v5}, Lorg/h2/util/NetUtils;->createServerSocket(IZ)Ljava/net/ServerSocket;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iput-object v0, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;

    .line 252
    .line 253
    iget-object v0, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;

    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    iget-object v1, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    .line 260
    .line 261
    iget-object v3, p0, Lorg/h2/store/FileLock;->ipAddress:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v1, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    iget-object v1, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    .line 267
    .line 268
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    .line 276
    .line 277
    .line 278
    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lorg/h2/store/FileLock;->locked:Z

    .line 280
    .line 281
    new-instance v1, Ljava/lang/Thread;

    .line 282
    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    const-string v3, "H2 File Lock Watchdog (Socket) "

    .line 286
    .line 287
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    iget-object v3, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iput-object v1, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    .line 303
    .line 304
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 305
    .line 306
    .line 307
    iget-object v0, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :catch_4
    move-exception v0

    .line 314
    iget-object v1, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    .line 315
    .line 316
    const-string v2, "lock"

    .line 317
    .line 318
    invoke-virtual {v1, v0, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iput-object v6, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;

    .line 322
    .line 323
    invoke-direct {p0}, Lorg/h2/store/FileLock;->lockFile()V

    .line 324
    .line 325
    .line 326
    return-void
.end method

.method private setUniqueId()V
    .locals 4

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/h2/util/MathUtils;->secureRandomBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileLock;->uniqueId:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private static sleep(I)V
    .locals 2

    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Sleep interrupted"

    invoke-static {v0, p0}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private waitUntilOld()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa0

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->lastModified(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, -0x7d0

    const-string v5, "sleep"

    cmp-long v6, v3, v1

    if-gez v6, :cond_0

    :try_start_0
    iget v0, p0, Lorg/h2/store/FileLock;->sleep:I

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v1, v0, v5}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-wide/16 v1, 0x7d0

    cmp-long v6, v3, v1

    if-lez v6, :cond_1

    return-void

    :cond_1
    const-wide/16 v1, 0x19

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    iget-object v2, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v2, v1, v5}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "Lock file recently modified"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/FileLock;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public load()Ljava/util/Properties;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/util/SortedProperties;->loadProperties(Ljava/lang/String;)Lorg/h2/util/SortedProperties;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v2}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    return-object v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not load properties "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized lock(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/FileLock;->checkServer()V

    iget-boolean v0, p0, Lorg/h2/store/FileLock;->locked:Z

    if-eqz v0, :cond_0

    const-string v0, "already locked"

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/h2/store/FileLock;->lockSerialized()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/h2/store/FileLock;->lockSocket()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/h2/store/FileLock;->lockFile()V

    :goto_1
    iput-boolean v0, p0, Lorg/h2/store/FileLock;->locked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 6

    const-string v0, "watchdog"

    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/h2/store/FileLock;->locked:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->lastModified(Ljava/lang/String;)J

    move-result-wide v1

    iget-wide v3, p0, Lorg/h2/store/FileLock;->lastWrite:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    :cond_1
    iget v1, p0, Lorg/h2/store/FileLock;->sleep:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :goto_2
    :try_start_2
    iget-object v2, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v2, v1, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_4

    :cond_2
    :goto_3
    iget-object v1, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_3

    :try_start_3
    iget-object v1, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v2, "watchdog accept"

    invoke-virtual {v1, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v2, v1, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :goto_4
    iget-object v2, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v2, v1, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v1, "watchdog end"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public save()Ljava/util/Properties;
    .locals 4

    const-string v0, "save "

    :try_start_0
    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    const-string v3, "FileLock"

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->lastModified(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/h2/store/FileLock;->lastWrite:J

    iget-object v1, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not save properties "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    invoke-virtual {p2, p1}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public declared-synchronized unlock()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/store/FileLock;->locked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/h2/store/FileLock;->locked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v2, "unlock"

    invoke-virtual {v1, v0, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :try_start_5
    iput-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_6
    iget-object v2, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v3, "unlock"

    invoke-virtual {v2, v1, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iput-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :goto_4
    :try_start_8
    iget-object v1, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_6

    :cond_4
    :goto_5
    :try_start_9
    iput-object v0, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    :goto_6
    :try_start_a
    iget-object v2, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v3, "unlock"

    invoke-virtual {v2, v1, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_5

    :goto_7
    monitor-exit p0

    return-void

    :goto_8
    :try_start_b
    iput-object v0, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    throw v1

    :goto_9
    iput-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_a
    monitor-exit p0

    throw v0
.end method
