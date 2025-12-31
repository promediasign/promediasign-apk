.class public Lorg/h2/store/fs/FilePathNioMem;
.super Lorg/h2/store/fs/FilePath;
.source "SourceFile"


# static fields
.field private static final MEMORY_FILES:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lorg/h2/store/fs/FileNioMemData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field compressLaterCachePercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/h2/store/fs/FilePath;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/h2/store/fs/FilePathNioMem;->compressLaterCachePercent:F

    return-void
.end method

.method public static getCanonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x5c

    .line 2
    .line 3
    const/16 v1, 0x2f

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v0, 0x3a

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-le v2, v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eq v2, v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const-string v3, "/"

    .line 36
    .line 37
    invoke-static {p0, v2, v0, v1, v3}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0, v1}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :cond_0
    return-object p0
.end method

.method private getMemoryFile()Lorg/h2/store/fs/FileNioMemData;
    .locals 5

    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/store/fs/FileNioMemData;

    if-nez v1, :cond_0

    new-instance v1, Lorg/h2/store/fs/FileNioMemData;

    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->compressed()Z

    move-result v3

    iget v4, p0, Lorg/h2/store/fs/FilePathNioMem;->compressLaterCachePercent:F

    invoke-direct {v1, v2, v3, v4}, Lorg/h2/store/fs/FileNioMemData;-><init>(Ljava/lang/String;ZF)V

    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public canWrite()Z
    .locals 1

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->canWrite()Z

    move-result v0

    return v0
.end method

.method public compressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createDirectory()V
    .locals 2

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (a file with this name already exists)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fce

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public createFile()Z
    .locals 2

    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public delete()V
    .locals 2

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public exists()Z
    .locals 3

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->isRoot()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic getParent()Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->getParent()Lorg/h2/store/fs/FilePathNioMem;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/h2/store/fs/FilePathNioMem;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathNioMem;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathNioMem;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;
    .locals 1

    .line 2
    new-instance v0, Lorg/h2/store/fs/FilePathNioMem;

    invoke-direct {v0}, Lorg/h2/store/fs/FilePathNioMem;-><init>()V

    invoke-static {p1}, Lorg/h2/store/fs/FilePathNioMem;->getCanonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "nioMemFS"

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDirectory()Z
    .locals 3

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->isRoot()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRoot()Z
    .locals 3

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public moveTo(Lorg/h2/store/fs/FilePath;Z)V
    .locals 2

    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    if-nez p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (exists)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    const p2, 0x15fa8

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object p2

    iget-object v1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/h2/store/fs/FileNioMemData;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public newDirectoryStream()Ljava/util/List;
    .locals 5
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

    sget-object v1, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lorg/h2/store/fs/FilePathNioMem;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 3

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    new-instance v1, Lorg/h2/store/fs/FileNioMem;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/h2/store/fs/FileNioMem;-><init>(Lorg/h2/store/fs/FileNioMemData;Z)V

    new-instance v0, Lorg/h2/store/fs/FileChannelInputStream;

    invoke-direct {v0, v1, v2}, Lorg/h2/store/fs/FileChannelInputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 3

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    new-instance v1, Lorg/h2/store/fs/FileNioMem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/h2/store/fs/FileNioMem;-><init>(Lorg/h2/store/fs/FileNioMemData;Z)V

    new-instance v0, Lorg/h2/store/fs/FileChannelOutputStream;

    invoke-direct {v0, v1, p1}, Lorg/h2/store/fs/FileChannelOutputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v0
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 3

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    new-instance v1, Lorg/h2/store/fs/FileNioMem;

    const-string v2, "r"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {v1, v0, p1}, Lorg/h2/store/fs/FileNioMem;-><init>(Lorg/h2/store/fs/FileNioMemData;Z)V

    return-object v1
.end method

.method public setReadOnly()Z
    .locals 1

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->setReadOnly()Z

    move-result v0

    return v0
.end method

.method public size()J
    .locals 2

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toRealPath()Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->toRealPath()Lorg/h2/store/fs/FilePathNioMem;

    move-result-object v0

    return-object v0
.end method

.method public toRealPath()Lorg/h2/store/fs/FilePathNioMem;
    .locals 0

    .line 2
    return-object p0
.end method
