.class public Lorg/h2/store/fs/FilePathZip;
.super Lorg/h2/store/fs/FilePath;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/store/fs/FilePath;-><init>()V

    return-void
.end method

.method private getEntryName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v2, 0x5c

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private openZipFile()Ljava/util/zip/ZipFile;
    .locals 2

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FilePathZip;->translateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static translateFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "zip:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lorg/h2/store/fs/FilePathDisk;->expandUserHomeDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canWrite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createDirectory()V
    .locals 0

    return-void
.end method

.method public createFile()Z
    .locals 1

    const-string v0, "write"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public createTempFile(Ljava/lang/String;ZZ)Lorg/h2/store/fs/FilePath;
    .locals 1

    if-eqz p3, :cond_0

    new-instance p3, Lorg/h2/store/fs/FilePathDisk;

    invoke-direct {p3}, Lorg/h2/store/fs/FilePathDisk;-><init>()V

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lorg/h2/store/fs/FilePathDisk;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathDisk;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0}, Lorg/h2/store/fs/FilePathDisk;->createTempFile(Ljava/lang/String;ZZ)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File system is read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete()V
    .locals 1

    const-string v0, "write"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public exists()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->openZipFile()Ljava/util/zip/ZipFile;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return v0
.end method

.method public getParent()Lorg/h2/store/fs/FilePath;
    .locals 3

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

    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathZip;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathZip;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathZip;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathZip;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathZip;
    .locals 1

    .line 2
    new-instance v0, Lorg/h2/store/fs/FilePathZip;

    invoke-direct {v0}, Lorg/h2/store/fs/FilePathZip;-><init>()V

    iput-object p1, v0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "zip"

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FilePathZip;->translateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->openZipFile()Ljava/util/zip/ZipFile;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    if-ne v5, v7, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    return v3

    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return v0

    :goto_0
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    return v0
.end method

.method public lastModified()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public moveTo(Lorg/h2/store/fs/FilePath;Z)V
    .locals 0

    const-string p1, "write"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public newDirectoryStream()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/store/fs/FilePath;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "/"

    const-string v1, "!"

    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    const/16 v4, 0x21

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_1
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->openZipFile()Ljava/util/zip/ZipFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x2f

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ltz v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_5
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/h2/store/fs/FilePathZip;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathZip;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :goto_3
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "listFiles "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic newDirectoryStream()Ljava/util/List;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathZip;->newDirectoryStream()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 3

    new-instance v0, Lorg/h2/store/fs/FileChannelInputStream;

    const-string v1, "r"

    invoke-virtual {p0, v1}, Lorg/h2/store/fs/FilePathZip;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/h2/store/fs/FileChannelInputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 1

    new-instance p1, Ljava/io/IOException;

    const-string v0, "write"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 2

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->openZipFile()Ljava/util/zip/ZipFile;

    move-result-object p1

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->getEntryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/h2/store/fs/FileZip;

    invoke-direct {v1, p1, v0}, Lorg/h2/store/fs/FileZip;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V

    new-instance p1, Ljava/io/FileNotFoundException;

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->openZipFile()Ljava/util/zip/ZipFile;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathZip;->getEntryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-nez v3, :cond_0

    move-wide v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-wide v3

    :catchall_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-wide v0
.end method

.method public toRealPath()Lorg/h2/store/fs/FilePath;
    .locals 0

    return-object p0
.end method

.method public unwrap()Lorg/h2/store/fs/FilePath;
    .locals 2

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathZip;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v0

    return-object v0
.end method
