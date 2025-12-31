.class public Lorg/h2/tools/ChangeFileEncryption;
.super Lorg/h2/util/Tool;
.source "SourceFile"


# instance fields
.field private cipherType:Ljava/lang/String;

.field private decrypt:[B

.field private decryptKey:[B

.field private directory:Ljava/lang/String;

.field private encrypt:[B

.field private encryptKey:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    return-void
.end method

.method private copy(Ljava/lang/String;Lorg/h2/store/FileStore;[BZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p1 .. p1}, Lorg/h2/store/fs/FileUtils;->isDirectory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lorg/h2/tools/ChangeFileEncryption;->directory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/temp.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    const-string v5, "rw"

    const/4 v6, 0x0

    if-nez v3, :cond_1

    invoke-static {v6, v4, v5}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/store/FileStore;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v7, v0, Lorg/h2/tools/ChangeFileEncryption;->cipherType:Ljava/lang/String;

    invoke-static {v6, v4, v5, v7, v3}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lorg/h2/store/FileStore;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Lorg/h2/store/FileStore;->init()V

    const/16 v5, 0x1000

    new-array v6, v5, [B

    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x30

    sub-long/2addr v7, v9

    invoke-virtual {v2, v9, v10}, Lorg/h2/store/FileStore;->seek(J)V

    invoke-virtual {v3, v9, v10}, Lorg/h2/store/FileStore;->seek(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    move-wide v11, v7

    :goto_1
    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_4

    if-nez p4, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v9

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v16, v6

    const-wide/16 v5, 0x1

    invoke-virtual {v15, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    cmp-long v15, v13, v5

    if-lez v15, :cond_2

    iget-object v5, v0, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    const-string v6, ": "

    .line 1
    invoke-static {v1, v6}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v9, 0x64

    mul-long v13, v11, v9

    .line 2
    div-long/2addr v13, v7

    sub-long/2addr v9, v13

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-wide v9, v5

    :cond_2
    :goto_2
    const/16 v5, 0x1000

    goto :goto_3

    :cond_3
    move-object/from16 v16, v6

    goto :goto_2

    :goto_3
    int-to-long v13, v5

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v6, v13

    const/4 v13, 0x0

    move-object/from16 v14, v16

    invoke-virtual {v2, v14, v13, v6}, Lorg/h2/store/FileStore;->readFully([BII)V

    invoke-virtual {v3, v14, v13, v6}, Lorg/h2/store/FileStore;->write([BII)V

    int-to-long v5, v6

    sub-long/2addr v11, v5

    move-object v6, v14

    const/16 v5, 0x1000

    goto :goto_1

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/FileStore;->close()V

    invoke-virtual {v3}, Lorg/h2/store/FileStore;->close()V

    invoke-static/range {p1 .. p1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private copy(Ljava/lang/String;Z)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lorg/h2/store/fs/FileUtils;->isDirectory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v3}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lorg/h2/tools/ChangeFileEncryption;->directory:Ljava/lang/String;

    const-string v5, "/temp.db"

    .line 7
    invoke-static {v4, v5, v3}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 8
    :try_start_0
    iget-object v5, v1, Lorg/h2/tools/ChangeFileEncryption;->decryptKey:[B

    if-eqz v5, :cond_1

    new-instance v5, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;

    iget-object v6, v1, Lorg/h2/tools/ChangeFileEncryption;->decryptKey:[B

    invoke-direct {v5, v0, v6, v2}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;-><init>(Ljava/lang/String;[BLjava/nio/channels/FileChannel;)V

    move-object v2, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    :goto_0
    new-instance v5, Lorg/h2/store/fs/FileChannelInputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Lorg/h2/store/fs/FileChannelInputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    invoke-static {v3}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v7

    const-string v8, "rw"

    invoke-virtual {v7, v8}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v4

    iget-object v7, v1, Lorg/h2/tools/ChangeFileEncryption;->encryptKey:[B

    if-eqz v7, :cond_2

    new-instance v7, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;

    iget-object v8, v1, Lorg/h2/tools/ChangeFileEncryption;->encryptKey:[B

    invoke-direct {v7, v3, v8, v4}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;-><init>(Ljava/lang/String;[BLjava/nio/channels/FileChannel;)V

    move-object v4, v7

    :cond_2
    new-instance v7, Lorg/h2/store/fs/FileChannelOutputStream;

    invoke-direct {v7, v4, v6}, Lorg/h2/store/fs/FileChannelOutputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    const/16 v6, 0x1000

    new-array v8, v6, [B

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    move-wide v13, v9

    :goto_1
    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-lez v17, :cond_5

    if-nez p2, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long/2addr v15, v11

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v18, v11

    const-wide/16 v11, 0x1

    invoke-virtual {v6, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    cmp-long v6, v15, v11

    if-lez v6, :cond_3

    iget-object v6, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v15, 0x64

    mul-long v18, v13, v15

    div-long v18, v18, v9

    move-wide/from16 v20, v9

    sub-long v9, v15, v18

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    move-wide v11, v9

    :goto_2
    const/16 v6, 0x1000

    goto :goto_4

    :cond_3
    move-wide/from16 v20, v9

    goto :goto_3

    :cond_4
    move-wide/from16 v20, v9

    move-wide/from16 v18, v11

    :goto_3
    move-wide/from16 v11, v18

    goto :goto_2

    :goto_4
    int-to-long v9, v6

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v10, v9

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v10}, Lorg/h2/store/fs/FileChannelInputStream;->read([BII)I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lorg/h2/store/fs/FileChannelOutputStream;->write([BII)V

    int-to-long v9, v10

    sub-long/2addr v13, v9

    move-wide/from16 v9, v20

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Lorg/h2/store/fs/FileChannelInputStream;->close()V

    invoke-virtual {v7}, Lorg/h2/store/fs/FileChannelOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_6
    invoke-static/range {p1 .. p1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_5
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_7
    throw v0
.end method

.method public static execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[CZ)V
    .locals 7

    :try_start_0
    new-instance v0, Lorg/h2/tools/ChangeFileEncryption;

    invoke-direct {v0}, Lorg/h2/tools/ChangeFileEncryption;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/h2/tools/ChangeFileEncryption;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[CZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method private static getFileEncryptionKey([C)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "file"

    invoke-static {v0, p0}, Lorg/h2/security/SHA256;->getKeyPasswordHash(Ljava/lang/String;[C)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/h2/tools/ChangeFileEncryption;

    invoke-direct {v0}, Lorg/h2/tools/ChangeFileEncryption;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/ChangeFileEncryption;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[CZ)V
    .locals 6

    .line 1
    invoke-static {p1}, Lorg/h2/store/FileLister;->getDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/h2/tools/ChangeFileEncryption;

    invoke-direct {v0}, Lorg/h2/tools/ChangeFileEncryption;-><init>()V

    const/4 v1, 0x0

    if-eqz p5, :cond_2

    array-length v2, p5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, p5, v3

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "The file password may not contain spaces"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p5}, Lorg/h2/store/fs/FilePathEncrypt;->getPasswordBytes([C)[B

    move-result-object v2

    iput-object v2, v0, Lorg/h2/tools/ChangeFileEncryption;->encryptKey:[B

    invoke-static {p5}, Lorg/h2/tools/ChangeFileEncryption;->getFileEncryptionKey([C)[B

    move-result-object p5

    iput-object p5, v0, Lorg/h2/tools/ChangeFileEncryption;->encrypt:[B

    :cond_2
    if-eqz p4, :cond_3

    invoke-static {p4}, Lorg/h2/store/fs/FilePathEncrypt;->getPasswordBytes([C)[B

    move-result-object p5

    iput-object p5, v0, Lorg/h2/tools/ChangeFileEncryption;->decryptKey:[B

    invoke-static {p4}, Lorg/h2/tools/ChangeFileEncryption;->getFileEncryptionKey([C)[B

    move-result-object p4

    iput-object p4, v0, Lorg/h2/tools/ChangeFileEncryption;->decrypt:[B

    :cond_3
    iget-object p4, p0, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    iput-object p4, v0, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    iput-object p1, v0, Lorg/h2/tools/ChangeFileEncryption;->directory:Ljava/lang/String;

    iput-object p3, v0, Lorg/h2/tools/ChangeFileEncryption;->cipherType:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lorg/h2/store/FileLister;->getDatabaseFiles(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p3

    const-string p4, "encryption"

    invoke-static {p3, p4}, Lorg/h2/store/FileLister;->tryUnlockDatabase(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {p1, p2, v1}, Lorg/h2/store/FileLister;->getDatabaseFiles(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-nez p4, :cond_4

    if-nez p6, :cond_4

    invoke-virtual {p0, p1, p2}, Lorg/h2/util/Tool;->printNoDatabaseFilesFound(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/temp.db"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    invoke-static {p4, p5}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p5, p4}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->isDirectory(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-direct {v0, p2, p6}, Lorg/h2/tools/ChangeFileEncryption;->process(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private process(Ljava/lang/String;Z)V
    .locals 4

    .line 2
    const-string v0, ".mv.db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/ChangeFileEncryption;->copy(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const-string v0, "Error encrypting / decrypting file "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_0
    iget-object v0, p0, Lorg/h2/tools/ChangeFileEncryption;->decrypt:[B

    const-string v1, "r"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v2, p1, v1}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/store/FileStore;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/h2/tools/ChangeFileEncryption;->cipherType:Ljava/lang/String;

    invoke-static {v2, p1, v1, v3, v0}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lorg/h2/store/FileStore;

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/h2/store/FileStore;->init()V

    iget-object v1, p0, Lorg/h2/tools/ChangeFileEncryption;->encrypt:[B

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/h2/tools/ChangeFileEncryption;->copy(Ljava/lang/String;Lorg/h2/store/FileStore;[BZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->closeSilently()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->closeSilently()V

    throw p1
.end method


# virtual methods
.method public varargs runTool([Ljava/lang/String;)V
    .locals 10

    const-string v0, "."

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    const/4 v9, 0x0

    :goto_0
    if-eqz p1, :cond_8

    array-length v0, p1

    if-ge v2, v0, :cond_8

    aget-object v0, p1, v2

    const-string v1, "-dir"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    aget-object v0, p1, v2

    move-object v4, v0

    goto :goto_1

    :cond_0
    const-string v1, "-cipher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    aget-object v0, p1, v2

    move-object v6, v0

    goto :goto_1

    :cond_1
    const-string v1, "-db"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    aget-object v0, p1, v2

    move-object v5, v0

    goto :goto_1

    :cond_2
    const-string v1, "-decrypt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_3
    const-string v1, "-encrypt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v2, v2, 0x1

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_4
    const-string v1, "-quiet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    const-string v1, "-help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "-?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0}, Lorg/h2/util/Tool;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lorg/h2/util/Tool;->showUsage()V

    return-void

    :cond_8
    if-nez v8, :cond_9

    if-eqz v7, :cond_a

    :cond_9
    if-eqz v6, :cond_a

    move-object v3, p0

    :try_start_0
    invoke-direct/range {v3 .. v9}, Lorg/h2/tools/ChangeFileEncryption;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[CZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_a
    invoke-virtual {p0}, Lorg/h2/util/Tool;->showUsage()V

    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Encryption or decryption password not set, or cipher not set"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
