.class Lorg/h2/store/fs/FilePathNioMemLZF;
.super Lorg/h2/store/fs/FilePathNioMem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;-><init>()V

    return-void
.end method


# virtual methods
.method public compressed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathNioMemLZF;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;
    .locals 4

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMemLZF;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lorg/h2/store/fs/FilePathNioMemLZF;

    invoke-direct {v2}, Lorg/h2/store/fs/FilePathNioMemLZF;-><init>()V

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lorg/h2/store/fs/FilePathNioMem;->compressLaterCachePercent:F

    :cond_0
    invoke-static {p1}, Lorg/h2/store/fs/FilePathNioMem;->getCanonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " doesn\'t start with "

    .line 2
    invoke-static {p1, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMemLZF;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "nioMemLZF"

    return-object v0
.end method

.method public isRoot()Z
    .locals 3

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
