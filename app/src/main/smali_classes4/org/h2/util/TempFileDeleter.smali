.class public Lorg/h2/util/TempFileDeleter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final refMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/PhantomReference<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/h2/util/TempFileDeleter;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/TempFileDeleter;->refMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lorg/h2/util/TempFileDeleter;
    .locals 1

    new-instance v0, Lorg/h2/util/TempFileDeleter;

    invoke-direct {v0}, Lorg/h2/util/TempFileDeleter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addFile(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/ref/Reference<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "TempFileDeleter.addFile"

    invoke-static {v0, p1, p2}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/PhantomReference;

    iget-object v1, p0, Lorg/h2/util/TempFileDeleter;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p2, v1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iget-object p2, p0, Lorg/h2/util/TempFileDeleter;->refMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/h2/util/TempFileDeleter;->deleteUnused()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deleteAll()V
    .locals 3

    iget-object v0, p0, Lorg/h2/util/TempFileDeleter;->refMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lorg/h2/util/TempFileDeleter;->deleteFile(Ljava/lang/ref/Reference;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/util/TempFileDeleter;->deleteUnused()V

    return-void
.end method

.method public declared-synchronized deleteFile(Ljava/lang/ref/Reference;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "f2:"

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lorg/h2/util/TempFileDeleter;->refMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " f:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    move-object p2, p1

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    :try_start_1
    const-string p1, "TempFileDeleter.deleteFile"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->tryDelete(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :catch_0
    :cond_2
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public deleteUnused()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/h2/util/TempFileDeleter;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/util/TempFileDeleter;->deleteFile(Ljava/lang/ref/Reference;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public stopAutoDelete(Ljava/lang/ref/Reference;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "TempFileDeleter.stopAutoDelete"

    .line 2
    .line 3
    invoke-static {v0, p2, p1}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lorg/h2/util/TempFileDeleter;->refMap:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    :cond_0
    const-string v0, "f2:"

    .line 29
    .line 30
    const-string v1, " "

    .line 31
    .line 32
    invoke-static {v0, p1, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    const-string p1, ""

    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, " f:"

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Lorg/h2/util/TempFileDeleter;->deleteUnused()V

    .line 59
    .line 60
    .line 61
    return-void
.end method
