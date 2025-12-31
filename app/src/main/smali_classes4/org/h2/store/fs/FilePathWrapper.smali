.class public abstract Lorg/h2/store/fs/FilePathWrapper;
.super Lorg/h2/store/fs/FilePath;
.source "SourceFile"


# instance fields
.field private base:Lorg/h2/store/fs/FilePath;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/store/fs/FilePath;-><init>()V

    return-void
.end method

.method private create(Ljava/lang/String;Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/h2/store/fs/FilePathWrapper;

    .line 10
    .line 11
    iput-object p1, v0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, v0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :catch_0
    move-exception p2

    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v1, "Path: "

    .line 20
    .line 21
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method


# virtual methods
.method public canWrite()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->canWrite()Z

    move-result v0

    return v0
.end method

.method public createDirectory()V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->createDirectory()V

    return-void
.end method

.method public createFile()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->createFile()Z

    move-result v0

    return v0
.end method

.method public createTempFile(Ljava/lang/String;ZZ)Lorg/h2/store/fs/FilePath;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/store/fs/FilePath;->createTempFile(Ljava/lang/String;ZZ)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathWrapper;->wrap(Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object p1

    return-object p1
.end method

.method public delete()V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->delete()V

    return-void
.end method

.method public exists()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v0

    return v0
.end method

.method public getBase()Lorg/h2/store/fs/FilePath;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    return-object v0
.end method

.method public getParent()Lorg/h2/store/fs/FilePath;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->getParent()Lorg/h2/store/fs/FilePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathWrapper;->wrap(Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathWrapper;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathWrapper;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathWrapper;->unwrap(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/h2/store/fs/FilePathWrapper;->create(Ljava/lang/String;Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object p1

    return-object p1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public moveTo(Lorg/h2/store/fs/FilePath;Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    check-cast p1, Lorg/h2/store/fs/FilePathWrapper;

    iget-object p1, p1, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/fs/FilePath;->moveTo(Lorg/h2/store/fs/FilePath;Z)V

    return-void
.end method

.method public newDirectoryStream()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/h2/store/fs/FilePath;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->newDirectoryStream()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/store/fs/FilePath;

    invoke-virtual {p0, v3}, Lorg/h2/store/fs/FilePathWrapper;->wrap(Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->newInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0, p1}, Lorg/h2/store/fs/FilePath;->newOutputStream(Z)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0, p1}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public setReadOnly()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->setReadOnly()Z

    move-result v0

    return v0
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public toRealPath()Lorg/h2/store/fs/FilePath;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePathWrapper;->base:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->toRealPath()Lorg/h2/store/fs/FilePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathWrapper;->wrap(Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathWrapper;->unwrap(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathWrapper;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/h2/store/fs/FilePathWrapper;->create(Ljava/lang/String;Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object p1

    :goto_0
    return-object p1
.end method
