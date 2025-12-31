.class public Lorg/h2/store/fs/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canWrite(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->canWrite()Z

    move-result p0

    return p0
.end method

.method public static createDirectories(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->isDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->createDirectory(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static createDirectory(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->createDirectory()V

    return-void
.end method

.method public static createFile(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->createFile()Z

    move-result p0

    return p0
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/store/fs/FilePath;->createTempFile(Ljava/lang/String;ZZ)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->delete()V

    return-void
.end method

.method public static deleteRecursive(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->isDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->newDirectoryStream(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/h2/store/fs/FileUtils;->deleteRecursive(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->tryDelete(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result p0

    return p0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->getParent()Lorg/h2/store/fs/FilePath;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isAbsolute(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->isAbsolute()Z

    move-result p0

    return p0
.end method

.method public static isDirectory(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public static lastModified(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-static {p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/h2/store/fs/FilePath;->moveTo(Lorg/h2/store/fs/FilePath;Z)V

    return-void
.end method

.method public static moveAtomicReplace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-static {p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/h2/store/fs/FilePath;->moveTo(Lorg/h2/store/fs/FilePath;Z)V

    return-void
.end method

.method public static newDirectoryStream(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->newDirectoryStream()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/store/fs/FilePath;

    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static newInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->newInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePath;->newOutputStream(Z)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static open(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public static readFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    .locals 1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static setReadOnly(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->setReadOnly()Z

    move-result p0

    return p0
.end method

.method public static size(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public static toRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->toRealPath()Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tryDelete(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static unwrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->unwrap()Lorg/h2/store/fs/FilePath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    .locals 1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    return-void
.end method
