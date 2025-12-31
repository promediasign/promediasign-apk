.class public Lorg/h2/store/fs/FilePathDisk;
.super Lorg/h2/store/fs/FilePath;
.source "SourceFile"


# static fields
.field private static final CLASSPATH_PREFIX:Ljava/lang/String; = "classpath:"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/store/fs/FilePath;-><init>()V

    return-void
.end method

.method private static canWriteInternal(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :catch_1
    return v0
.end method

.method public static expandUserHomeDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "~"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const-string v0, "~/"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :cond_0
    sget-object v0, Lorg/h2/engine/SysProperties;->USER_HOME:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p0, v1, v0}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :cond_1
    return-object p0
.end method

.method public static freeMemoryAndFinalize()V
    .locals 7

    const-string v0, "freeMemoryAndFinalize"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    cmp-long v6, v4, v1

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move-wide v1, v4

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static translateFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lorg/h2/store/fs/FilePathDisk;->expandUserHomeDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static wait(I)V
    .locals 2

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    const/16 v0, 0x100

    mul-int p0, p0, p0

    :try_start_0
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public canWrite()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/h2/store/fs/FilePathDisk;->canWriteInternal(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public createDirectory()V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    sget v2, Lorg/h2/engine/SysProperties;->MAX_FILE_RETRY:I

    const v3, 0x15fce

    if-ge v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (a file with this name already exists)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-static {v1}, Lorg/h2/store/fs/FilePathDisk;->wait(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public createFile()Z
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget v3, Lorg/h2/engine/SysProperties;->MAX_FILE_RETRY:I

    if-ge v2, v3, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-static {v2}, Lorg/h2/store/fs/FilePathDisk;->wait(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public createTempFile(Ljava/lang/String;ZZ)Lorg/h2/store/fs/FilePath;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "."

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    new-instance p3, Ljava/io/File;

    .line 26
    .line 27
    const-string v0, "java.io.tmpdir"

    .line 28
    .line 29
    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p3, Ljava/io/File;

    .line 38
    .line 39
    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    new-instance v0, Ljava/io/File;

    .line 58
    .line 59
    invoke-static {v1}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-static {v3}, Lorg/h2/store/fs/FilePath;->getNextTempFileNamePart(Z)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-direct {v0, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_3

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_1
    if-eqz p2, :cond_2

    .line 95
    .line 96
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    :catchall_0
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 109
    invoke-static {v0}, Lorg/h2/store/fs/FilePath;->getNextTempFileNamePart(Z)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    goto :goto_1
.end method

.method public delete()V
    .locals 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    sget v2, Lorg/h2/engine/SysProperties;->MAX_FILE_RETRY:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "delete"

    invoke-static {v4, v2, v3}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lorg/h2/store/fs/FilePathDisk;->wait(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const v0, 0x15fa9

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public exists()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getParent()Lorg/h2/store/fs/FilePath;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathDisk;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathDisk;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathDisk;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathDisk;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathDisk;
    .locals 1

    .line 2
    new-instance v0, Lorg/h2/store/fs/FilePathDisk;

    invoke-direct {v0}, Lorg/h2/store/fs/FilePathDisk;-><init>()V

    invoke-static {p1}, Lorg/h2/store/fs/FilePathDisk;->translateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "file"

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public moveTo(Lorg/h2/store/fs/FilePath;Z)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    iget-object v2, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const v3, 0x15fa8

    .line 35
    .line 36
    .line 37
    if-eqz v2, :cond_6

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object p2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 49
    .line 50
    iget-object p1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 51
    .line 52
    filled-new-array {p2, p1}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    throw p1

    .line 61
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_5

    .line 66
    .line 67
    const/4 p2, 0x0

    .line 68
    :goto_0
    sget v2, Lorg/h2/engine/SysProperties;->MAX_FILE_RETRY:I

    .line 69
    .line 70
    if-ge p2, v2, :cond_4

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v4, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v4, " >"

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const/4 v4, 0x0

    .line 95
    const-string v5, "rename"

    .line 96
    .line 97
    invoke-static {v5, v2, v4}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    invoke-static {p2}, Lorg/h2/store/fs/FilePathDisk;->wait(I)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 p2, p2, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    iget-object p2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 114
    .line 115
    iget-object p1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 116
    .line 117
    filled-new-array {p2, p1}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    throw p1

    .line 126
    :cond_5
    iget-object p2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p1, " (exists)"

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    filled-new-array {p2, p1}, [Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    throw p1

    .line 154
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 160
    .line 161
    const-string v1, " (not found)"

    .line 162
    .line 163
    invoke-static {v0, v1, p2}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    iget-object p1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 168
    .line 169
    filled-new-array {p2, p1}, [Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    throw p1
.end method

.method public newDirectoryStream()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/h2/store/fs/FilePath;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/h2/engine/SysProperties;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/h2/store/fs/FilePathDisk;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathDisk;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :goto_2
    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x3a

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_4

    .line 11
    .line 12
    const/16 v1, 0x14

    .line 13
    .line 14
    if-ge v0, v1, :cond_4

    .line 15
    .line 16
    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "classpath:"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 27
    .line 28
    const/16 v1, 0xa

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "/"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :cond_1
    if-eqz v1, :cond_2

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_2
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 72
    .line 73
    const-string v2, "resource "

    .line 74
    .line 75
    invoke-static {v2, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :cond_3
    new-instance v0, Ljava/net/URL;

    .line 84
    .line 85
    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    return-object v0

    .line 95
    :cond_4
    new-instance v0, Ljava/io/FileInputStream;

    .line 96
    .line 97
    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v1, "openFileInputStream"

    .line 103
    .line 104
    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v1, v2, v0}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    const-string p1, "openFileOutputStream"

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {}, Lorg/h2/store/fs/FilePathDisk;->freeMemoryAndFinalize()V

    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/h2/store/fs/FileDisk;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/h2/store/fs/FileDisk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "open"

    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/h2/store/fs/FilePathDisk;->freeMemoryAndFinalize()V

    :try_start_1
    new-instance v1, Lorg/h2/store/fs/FileDisk;

    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lorg/h2/store/fs/FileDisk;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_1
    throw v0
.end method

.method public setReadOnly()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    move-result v0

    return v0
.end method

.method public size()J
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toRealPath()Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathDisk;->toRealPath()Lorg/h2/store/fs/FilePathDisk;

    move-result-object v0

    return-object v0
.end method

.method public toRealPath()Lorg/h2/store/fs/FilePathDisk;
    .locals 2

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathDisk;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathDisk;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
