.class public Lorg/h2/command/dml/BackupCommand;
.super Lorg/h2/command/Prepared;
.source "SourceFile"


# instance fields
.field private fileNameExpr:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method

.method private static backupFile(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/h2/command/dml/BackupCommand;->backupFile(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method private static backupFile(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2

    .line 2
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not start with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/command/dml/BackupCommand;->correctFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/zip/ZipEntry;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-static {p3, p0}, Lorg/h2/util/IOUtils;->copyAndCloseInput(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
.end method

.method private backupPageStore(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Lorg/h2/store/PageStore;)V
    .locals 5

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p3, v1}, Lorg/h2/store/PageStore;->setBackup(Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3, v1, p1}, Lorg/h2/store/PageStore;->copyDirect(ILjava/io/OutputStream;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v1, :cond_0

    invoke-virtual {p3, v2}, Lorg/h2/store/PageStore;->setBackup(Z)V

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p3}, Lorg/h2/store/PageStore;->getPageCount()I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, p2, v1, v3}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p3, v2}, Lorg/h2/store/PageStore;->setBackup(Z)V

    throw p1
.end method

.method private backupTo(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->flush()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v4

    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/h2/engine/Database;->flush()V

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".h2.db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lorg/h2/command/dml/BackupCommand;->backupPageStore(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Lorg/h2/store/PageStore;)V

    :cond_1
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLobSyncObject()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/FileLister;->getDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-static {v0, v2, v8}, Lorg/h2/store/FileLister;->getDatabaseFiles(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v8, ".lob.db"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v5, v6, v2}, Lorg/h2/command/dml/BackupCommand;->backupFile(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    const-string v8, ".mv.db"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v8

    invoke-virtual {v8}, Lorg/h2/mvstore/MVStore;->getReuseSpace()Z

    move-result v9

    invoke-virtual {v8, v3}, Lorg/h2/mvstore/MVStore;->setReuseSpace(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v5, v6, v2, v10}, Lorg/h2/command/dml/BackupCommand;->backupFile(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v8, v9}, Lorg/h2/mvstore/MVStore;->setReuseSpace(Z)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v8, v9}, Lorg/h2/mvstore/MVStore;->setReuseSpace(Z)V

    throw v0

    :cond_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :goto_3
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_5
    const p1, 0x1600e

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public static correctFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x38

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needRecompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setFileName(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/BackupCommand;->fileNameExpr:Lorg/h2/expression/Expression;

    return-void
.end method

.method public update()I
    .locals 2

    iget-object v0, p0, Lorg/h2/command/dml/BackupCommand;->fileNameExpr:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0, v0}, Lorg/h2/command/dml/BackupCommand;->backupTo(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
