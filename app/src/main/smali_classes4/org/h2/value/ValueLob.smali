.class public Lorg/h2/value/ValueLob;
.super Lorg/h2/value/Value;
.source "SourceFile"


# static fields
.field private static dirCounter:I


# instance fields
.field private compressed:Z

.field private fileName:Ljava/lang/String;

.field private handler:Lorg/h2/store/DataHandler;

.field private hash:I

.field private linked:Z

.field private objectId:I

.field private precision:J

.field private small:[B

.field private tableId:I

.field private tempFile:Lorg/h2/store/FileStore;

.field private final type:I


# direct methods
.method private constructor <init>(ILorg/h2/store/DataHandler;Ljava/lang/String;IIZJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    iput p1, p0, Lorg/h2/value/ValueLob;->type:I

    iput-object p2, p0, Lorg/h2/value/ValueLob;->handler:Lorg/h2/store/DataHandler;

    iput-object p3, p0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    iput p4, p0, Lorg/h2/value/ValueLob;->tableId:I

    iput p5, p0, Lorg/h2/value/ValueLob;->objectId:I

    iput-boolean p6, p0, Lorg/h2/value/ValueLob;->linked:Z

    iput-wide p7, p0, Lorg/h2/value/ValueLob;->precision:J

    iput-boolean p9, p0, Lorg/h2/value/ValueLob;->compressed:Z

    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    iput p1, p0, Lorg/h2/value/ValueLob;->type:I

    iput-object p2, p0, Lorg/h2/value/ValueLob;->small:[B

    if-eqz p2, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    array-length p1, p2

    :goto_0
    int-to-long p1, p1

    iput-wide p1, p0, Lorg/h2/value/ValueLob;->precision:J

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static copy(Lorg/h2/value/ValueLob;)Lorg/h2/value/ValueLob;
    .locals 11

    .line 2
    new-instance v10, Lorg/h2/value/ValueLob;

    iget v1, p0, Lorg/h2/value/ValueLob;->type:I

    iget-object v2, p0, Lorg/h2/value/ValueLob;->handler:Lorg/h2/store/DataHandler;

    iget-object v3, p0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    iget v4, p0, Lorg/h2/value/ValueLob;->tableId:I

    iget v5, p0, Lorg/h2/value/ValueLob;->objectId:I

    iget-boolean v6, p0, Lorg/h2/value/ValueLob;->linked:Z

    iget-wide v7, p0, Lorg/h2/value/ValueLob;->precision:J

    iget-boolean v9, p0, Lorg/h2/value/ValueLob;->compressed:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/h2/value/ValueLob;-><init>(ILorg/h2/store/DataHandler;Ljava/lang/String;IIZJZ)V

    iget-object v0, p0, Lorg/h2/value/ValueLob;->small:[B

    iput-object v0, v10, Lorg/h2/value/ValueLob;->small:[B

    iget p0, p0, Lorg/h2/value/ValueLob;->hash:I

    iput p0, v10, Lorg/h2/value/ValueLob;->hash:I

    return-object v10
.end method

.method private static copyFileTo(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobSyncObject()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lorg/h2/util/IOUtils;->copyFiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static createBlob(Ljava/io/InputStream;JLorg/h2/store/DataHandler;)Lorg/h2/value/ValueLob;
    .locals 13

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v7, p3

    const/4 v8, 0x0

    const/16 v3, 0xf

    if-nez v7, :cond_0

    long-to-int v2, v1

    :try_start_0
    invoke-static {p0, v2}, Lorg/h2/util/IOUtils;->readBytesAndClose(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v3, v0}, Lorg/h2/value/ValueLob;->createSmallLob(I[B)Lorg/h2/value/ValueLob;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-interface {v7, v3}, Lorg/h2/store/DataHandler;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v9, 0x0

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v6, v1, v9

    if-ltz v6, :cond_2

    cmp-long v6, v1, v11

    if-gez v6, :cond_2

    move-wide v11, v1

    :cond_2
    invoke-static {v7, v4, v11, v12}, Lorg/h2/value/ValueLob;->getBufferSize(Lorg/h2/store/DataHandler;ZJ)I

    move-result v1

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_3

    const/4 v1, -0x1

    invoke-static {p0, v1}, Lorg/h2/util/IOUtils;->readBytesAndClose(Ljava/io/InputStream;I)[B

    move-result-object v1

    array-length v2, v1

    move v4, v2

    move-object v2, v1

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v2

    invoke-static {p0, v2, v1}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result v1

    move v4, v1

    :goto_1
    invoke-interface/range {p3 .. p3}, Lorg/h2/store/DataHandler;->getMaxLengthInplaceLob()I

    move-result v1

    if-gt v4, v1, :cond_4

    invoke-static {v4}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v0

    invoke-static {v2, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v0}, Lorg/h2/value/ValueLob;->createSmallLob(I[B)Lorg/h2/value/ValueLob;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v9, Lorg/h2/value/ValueLob;

    invoke-direct {v9, v3, v8}, Lorg/h2/value/ValueLob;-><init>(I[B)V

    move-object v1, v9

    move v3, v4

    move-object v4, p0

    move-wide v5, v11

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/h2/value/ValueLob;->createFromStream([BILjava/io/InputStream;JLorg/h2/store/DataHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :goto_2
    invoke-static {v0, v8}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private static createClob(Ljava/io/Reader;JLorg/h2/store/DataHandler;)Lorg/h2/value/ValueLob;
    .locals 13

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v7, p3

    const/4 v8, 0x0

    const/16 v3, 0x10

    if-nez v7, :cond_0

    long-to-int v2, v1

    :try_start_0
    invoke-static {p0, v2}, Lorg/h2/util/IOUtils;->readStringAndClose(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v3, v0}, Lorg/h2/value/ValueLob;->createSmallLob(I[B)Lorg/h2/value/ValueLob;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-interface {v7, v3}, Lorg/h2/store/DataHandler;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v9, 0x0

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v6, v1, v9

    if-ltz v6, :cond_2

    cmp-long v6, v1, v11

    if-gez v6, :cond_2

    move-wide v11, v1

    :cond_2
    invoke-static {v7, v4, v11, v12}, Lorg/h2/value/ValueLob;->getBufferSize(Lorg/h2/store/DataHandler;ZJ)I

    move-result v1

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_3

    const/4 v1, -0x1

    invoke-static {p0, v1}, Lorg/h2/util/IOUtils;->readStringAndClose(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    move v4, v2

    move-object v2, v1

    goto :goto_1

    :cond_3
    new-array v2, v1, [C

    invoke-static {p0, v2, v1}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/Reader;[CI)I

    move-result v1

    move v4, v1

    :goto_1
    invoke-interface/range {p3 .. p3}, Lorg/h2/store/DataHandler;->getMaxLengthInplaceLob()I

    move-result v1

    if-gt v4, v1, :cond_4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v5, v4}, Ljava/lang/String;-><init>([CII)V

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v3, v0}, Lorg/h2/value/ValueLob;->createSmallLob(I[B)Lorg/h2/value/ValueLob;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v9, Lorg/h2/value/ValueLob;

    invoke-direct {v9, v3, v8}, Lorg/h2/value/ValueLob;-><init>(I[B)V

    move-object v1, v9

    move v3, v4

    move-object v4, p0

    move-wide v5, v11

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/h2/value/ValueLob;->createFromReader([CILjava/io/Reader;JLorg/h2/store/DataHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :goto_2
    invoke-static {v0, v8}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private createFromReader([CILjava/io/Reader;JLorg/h2/store/DataHandler;)V
    .locals 7

    invoke-direct {p0, p6}, Lorg/h2/value/ValueLob;->initLarge(Lorg/h2/store/DataHandler;)Lorg/h2/store/FileStoreOutputStream;

    move-result-object v0

    const/16 v1, 0x10

    :try_start_0
    invoke-interface {p6, v1}, Lorg/h2/store/DataHandler;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-wide v3, p0, Lorg/h2/value/ValueLob;->precision:J

    int-to-long v5, p2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/h2/value/ValueLob;->precision:J

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v2, p2}, Ljava/lang/String;-><init>([CII)V

    sget-object p2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    array-length v3, p2

    invoke-virtual {v0, p2, v2, v3}, Lorg/h2/store/FileStoreOutputStream;->write([BII)V

    sub-long/2addr p4, v5

    const-wide/16 v3, 0x0

    cmp-long p2, p4, v3

    if-gtz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p6, v1, p4, p5}, Lorg/h2/value/ValueLob;->getBufferSize(Lorg/h2/store/DataHandler;ZJ)I

    move-result p2

    invoke-static {p3, p1, p2}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/Reader;[CI)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v0}, Lorg/h2/store/FileStoreOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Lorg/h2/store/FileStoreOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p2
.end method

.method private createFromStream([BILjava/io/InputStream;JLorg/h2/store/DataHandler;)V
    .locals 7

    invoke-direct {p0, p6}, Lorg/h2/value/ValueLob;->initLarge(Lorg/h2/store/DataHandler;)Lorg/h2/store/FileStoreOutputStream;

    move-result-object v0

    const/16 v1, 0xf

    :try_start_0
    invoke-interface {p6, v1}, Lorg/h2/store/DataHandler;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-wide v3, p0, Lorg/h2/value/ValueLob;->precision:J

    int-to-long v5, p2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/h2/value/ValueLob;->precision:J

    invoke-virtual {v0, p1, v2, p2}, Lorg/h2/store/FileStoreOutputStream;->write([BII)V

    sub-long/2addr p4, v5

    const-wide/16 v3, 0x0

    cmp-long p2, p4, v3

    if-gtz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p6, v1, p4, p5}, Lorg/h2/value/ValueLob;->getBufferSize(Lorg/h2/store/DataHandler;ZJ)I

    move-result p2

    invoke-static {p3, p1, p2}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p2, :cond_1

    :goto_1
    invoke-virtual {v0}, Lorg/h2/store/FileStoreOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Lorg/h2/store/FileStoreOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p2
.end method

.method private static createSmallLob(I[B)Lorg/h2/value/ValueLob;
    .locals 1

    new-instance v0, Lorg/h2/value/ValueLob;

    invoke-direct {v0, p0, p1}, Lorg/h2/value/ValueLob;-><init>(I[B)V

    return-object v0
.end method

.method private static declared-synchronized deleteFile(Lorg/h2/store/DataHandler;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lorg/h2/value/ValueLob;

    monitor-enter v0

    :try_start_0
    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobSyncObject()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getBufferSize(Lorg/h2/store/DataHandler;ZJ)I
    .locals 9

    const-wide/32 v0, 0x7fffffff

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_0

    cmp-long v4, p2, v0

    if-lez v4, :cond_1

    :cond_0
    move-wide p2, v0

    :cond_1
    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getMaxLengthInplaceLob()I

    move-result p0

    const-wide/16 v4, 0x1000

    if-eqz p1, :cond_2

    const-wide/32 v6, 0x20000

    goto :goto_0

    :cond_2
    move-wide v6, v4

    :goto_0
    cmp-long p1, v6, p2

    if-gez p1, :cond_3

    int-to-long p0, p0

    cmp-long v8, v6, p0

    if-gtz v8, :cond_3

    const-wide/16 v6, 0x1

    add-long/2addr p0, v6

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p0, p1, v4, v5}, Lorg/h2/util/MathUtils;->roundUpLong(JJ)J

    move-result-wide v6

    :cond_3
    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result p0

    int-to-long p0, p0

    cmp-long p2, p0, v2

    if-gez p2, :cond_4

    goto :goto_1

    :cond_4
    move-wide v0, p0

    :goto_1
    long-to-int p0, v0

    return p0
.end method

.method private static getFileList(Lorg/h2/store/DataHandler;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobFileListCache()Lorg/h2/util/SmallLRUCache;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->newDirectoryStream(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    goto :goto_1

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->newDirectoryStream(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_0
    monitor-exit p0

    move-object p0, v0

    :goto_1
    return-object p0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static getFileName(Lorg/h2/store/DataHandler;II)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const-string v0, "0 LOB"

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    if-gez p1, :cond_1

    const-string p1, ".temp"

    goto :goto_0

    :cond_1
    const-string v0, ".t"

    .line 2
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getDatabasePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/h2/value/ValueLob;->getFileNamePrefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p2, ".lob.db"

    .line 4
    invoke-static {v0, p0, p1, p2}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFileNamePrefix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    sget v0, Lorg/h2/engine/SysProperties;->LOB_FILES_PER_DIRECTORY:I

    rem-int v1, p1, v0

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/h2/engine/SysProperties;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    div-int/2addr p1, v0

    :goto_1
    const-string v0, ".lobs.db"

    if-lez p1, :cond_1

    sget v2, Lorg/h2/engine/SysProperties;->LOB_FILES_PER_DIRECTORY:I

    rem-int v3, p1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/h2/engine/SysProperties;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    div-int/2addr p1, v2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNewObjectId(Lorg/h2/store/DataHandler;)I
    .locals 14

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    const-string v2, "."

    invoke-static {v1, v2}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/h2/engine/SysProperties;->PREFIX_TEMP_FILE:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget v1, Lorg/h2/engine/SysProperties;->LOB_FILES_PER_DIRECTORY:I

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v0, v3}, Lorg/h2/value/ValueLob;->getFileNamePrefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lorg/h2/value/ValueLob;->getFileList(Lorg/h2/store/DataHandler;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Z

    array-length v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ge v8, v7, :cond_2

    aget-object v12, v5, v8

    const-string v13, ".db"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {v12}, Lorg/h2/store/fs/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v12, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    :goto_3
    if-lez v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    rem-int/2addr v10, v1

    aput-boolean v11, v6, v10

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    if-ge v9, v1, :cond_4

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v1, :cond_4

    aget-boolean v7, v6, v5

    if-nez v7, :cond_3

    move v10, v5

    goto :goto_5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-lez v10, :cond_5

    add-int/2addr v3, v10

    invoke-static {p0, v4}, Lorg/h2/value/ValueLob;->invalidateFileList(Lorg/h2/store/DataHandler;Ljava/lang/String;)V

    return v3

    :cond_5
    const v4, 0x7fffffff

    div-int/2addr v4, v1

    if-le v3, v4, :cond_6

    add-int/lit8 v3, v1, -0x1

    invoke-static {v3}, Lorg/h2/util/MathUtils;->randomInt(I)I

    move-result v3

    mul-int v3, v3, v1

    sput v3, Lorg/h2/value/ValueLob;->dirCounter:I

    goto :goto_0

    :cond_6
    sget v4, Lorg/h2/value/ValueLob;->dirCounter:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lorg/h2/value/ValueLob;->dirCounter:I

    add-int/lit8 v5, v1, -0x1

    div-int/2addr v4, v5

    add-int/2addr v4, v11

    mul-int v3, v3, v1

    mul-int v4, v4, v1

    add-int/2addr v4, v3

    move v3, v4

    goto :goto_1
.end method

.method private initLarge(Lorg/h2/store/DataHandler;)Lorg/h2/store/FileStoreOutputStream;
    .locals 5

    iput-object p1, p0, Lorg/h2/value/ValueLob;->handler:Lorg/h2/store/DataHandler;

    const/4 v0, 0x0

    iput v0, p0, Lorg/h2/value/ValueLob;->tableId:I

    iput-boolean v0, p0, Lorg/h2/value/ValueLob;->linked:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/h2/value/ValueLob;->precision:J

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/h2/value/ValueLob;->small:[B

    iput v0, p0, Lorg/h2/value/ValueLob;->hash:I

    iget v1, p0, Lorg/h2/value/ValueLob;->type:I

    invoke-interface {p1, v1}, Lorg/h2/store/DataHandler;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/h2/value/ValueLob;->compressed:Z

    monitor-enter p1

    :try_start_0
    invoke-interface {p1}, Lorg/h2/store/DataHandler;->getDatabasePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    new-instance v2, Ljava/io/File;

    const-string v3, "java.io.tmpdir"

    const-string v4, "."

    invoke-static {v3, v4}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/h2/engine/SysProperties;->PREFIX_TEMP_FILE:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {p1}, Lorg/h2/value/ValueLob;->getNewObjectId(Lorg/h2/store/DataHandler;)I

    move-result v3

    iput v3, p0, Lorg/h2/value/ValueLob;->objectId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/h2/value/ValueLob;->objectId:I

    invoke-static {v2, v4}, Lorg/h2/value/ValueLob;->getFileNamePrefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".temp.db"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    const-string v3, "rw"

    invoke-interface {p1, v2, v3, v0}, Lorg/h2/store/DataHandler;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/value/ValueLob;->tempFile:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->autoDelete()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lorg/h2/store/FileStoreOutputStream;

    iget-object v2, p0, Lorg/h2/value/ValueLob;->tempFile:Lorg/h2/store/FileStore;

    invoke-direct {v0, v2, p1, v1}, Lorg/h2/store/FileStoreOutputStream;-><init>(Lorg/h2/store/FileStore;Lorg/h2/store/DataHandler;Ljava/lang/String;)V

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static invalidateFileList(Lorg/h2/store/DataHandler;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobFileListCache()Lorg/h2/util/SmallLRUCache;

    move-result-object p0

    if-eqz p0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public static openLinked(ILorg/h2/store/DataHandler;IIJZ)Lorg/h2/value/ValueLob;
    .locals 11

    invoke-static {p1, p2, p3}, Lorg/h2/value/ValueLob;->getFileName(Lorg/h2/store/DataHandler;II)Ljava/lang/String;

    move-result-object v3

    new-instance v10, Lorg/h2/value/ValueLob;

    const/4 v6, 0x1

    move-object v0, v10

    move v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-wide v7, p4

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/h2/value/ValueLob;-><init>(ILorg/h2/store/DataHandler;Ljava/lang/String;IIZJZ)V

    return-object v10
.end method

.method public static openUnlinked(ILorg/h2/store/DataHandler;IIJZLjava/lang/String;)Lorg/h2/value/ValueLob;
    .locals 11

    new-instance v10, Lorg/h2/value/ValueLob;

    const/4 v6, 0x0

    move-object v0, v10

    move v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move v4, p2

    move v5, p3

    move-wide v7, p4

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/h2/value/ValueLob;-><init>(ILorg/h2/store/DataHandler;Ljava/lang/String;IIZJZ)V

    return-object v10
.end method

.method private static declared-synchronized renameFile(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lorg/h2/value/ValueLob;

    monitor-enter v0

    :try_start_0
    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobSyncObject()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1, p2}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 1

    iget p2, p0, Lorg/h2/value/ValueLob;->type:I

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getBytes()[B

    move-result-object p2

    invoke-static {p2, p1}, Lorg/h2/util/Utils;->compareNotNullSigned([B[B)I

    move-result p1

    return p1
.end method

.method public convertPrecision(JZ)Lorg/h2/value/Value;
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueLob;->precision:J

    cmp-long p3, v0, p1

    if-gtz p3, :cond_0

    return-object p0

    :cond_0
    iget p3, p0, Lorg/h2/value/ValueLob;->type:I

    const/16 v0, 0x10

    if-ne p3, v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getReader()Ljava/io/Reader;

    move-result-object p3

    iget-object v0, p0, Lorg/h2/value/ValueLob;->handler:Lorg/h2/store/DataHandler;

    invoke-static {p3, p1, p2, v0}, Lorg/h2/value/ValueLob;->createClob(Ljava/io/Reader;JLorg/h2/store/DataHandler;)Lorg/h2/value/ValueLob;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    iget-object v0, p0, Lorg/h2/value/ValueLob;->handler:Lorg/h2/store/DataHandler;

    invoke-static {p3, p1, p2, v0}, Lorg/h2/value/ValueLob;->createBlob(Ljava/io/InputStream;JLorg/h2/store/DataHandler;)Lorg/h2/value/ValueLob;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public convertTo(I)Lorg/h2/value/Value;
    .locals 3

    iget v0, p0, Lorg/h2/value/ValueLob;->type:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x10

    const-wide/16 v1, -0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getReader()Ljava/io/Reader;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/value/ValueLob;->handler:Lorg/h2/store/DataHandler;

    invoke-static {p1, v1, v2, v0}, Lorg/h2/value/ValueLob;->createClob(Ljava/io/Reader;JLorg/h2/store/DataHandler;)Lorg/h2/value/ValueLob;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/value/ValueLob;->handler:Lorg/h2/store/DataHandler;

    invoke-static {p1, v1, v2, v0}, Lorg/h2/value/ValueLob;->createBlob(Ljava/io/InputStream;JLorg/h2/store/DataHandler;)Lorg/h2/value/ValueLob;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-super {p0, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public convertToFileIfRequired(Lorg/h2/store/DataHandler;)V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lorg/h2/value/ValueLob;->small:[B

    if-eqz v0, :cond_2

    array-length v0, v0

    invoke-interface {p1}, Lorg/h2/store/DataHandler;->getMaxLengthInplaceLob()I

    move-result v1

    if-le v0, v1, :cond_2

    iget v0, p0, Lorg/h2/value/ValueLob;->type:I

    invoke-interface {p1, v0}, Lorg/h2/store/DataHandler;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide v1, 0x7fffffffffffffffL

    invoke-static {p1, v0, v1, v2}, Lorg/h2/value/ValueLob;->getBufferSize(Lorg/h2/store/DataHandler;ZJ)I

    move-result v0

    iget v1, p0, Lorg/h2/value/ValueLob;->tableId:I

    iget v2, p0, Lorg/h2/value/ValueLob;->type:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v5

    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-wide v8, 0x7fffffffffffffffL

    const/4 v6, 0x0

    move-object v4, p0

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lorg/h2/value/ValueLob;->createFromStream([BILjava/io/InputStream;JLorg/h2/store/DataHandler;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-array v3, v0, [C

    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getReader()Ljava/io/Reader;

    move-result-object v5

    const-wide v6, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lorg/h2/value/ValueLob;->createFromReader([CILjava/io/Reader;JLorg/h2/store/DataHandler;)V

    :goto_1
    invoke-virtual {p0, p1, v1}, Lorg/h2/value/ValueLob;->copy(Lorg/h2/store/DataHandler;I)Lorg/h2/value/Value;

    move-result-object p1

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_2

    if-eq p1, p0, :cond_2

    invoke-virtual {p1}, Lorg/h2/value/Value;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :goto_2
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public copy(Lorg/h2/store/DataHandler;I)Lorg/h2/value/Value;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    if-nez v0, :cond_0

    iput p2, p0, Lorg/h2/value/ValueLob;->tableId:I

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lorg/h2/value/ValueLob;->linked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/h2/value/ValueLob;->copy(Lorg/h2/value/ValueLob;)Lorg/h2/value/ValueLob;

    move-result-object v0

    invoke-static {p1}, Lorg/h2/value/ValueLob;->getNewObjectId(Lorg/h2/store/DataHandler;)I

    move-result v2

    iput v2, v0, Lorg/h2/value/ValueLob;->objectId:I

    iput p2, v0, Lorg/h2/value/ValueLob;->tableId:I

    invoke-static {p1, p2, v2}, Lorg/h2/value/ValueLob;->getFileName(Lorg/h2/store/DataHandler;II)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    invoke-static {p1, v2, p2}, Lorg/h2/value/ValueLob;->copyFileTo(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, v0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    iput-boolean v1, v0, Lorg/h2/value/ValueLob;->linked:Z

    return-object v0

    :cond_1
    if-nez v0, :cond_3

    iput p2, p0, Lorg/h2/value/ValueLob;->tableId:I

    iget v0, p0, Lorg/h2/value/ValueLob;->objectId:I

    invoke-static {p1, p2, v0}, Lorg/h2/value/ValueLob;->getFileName(Lorg/h2/store/DataHandler;II)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/h2/value/ValueLob;->tempFile:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->stopAutoDelete()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/value/ValueLob;->tempFile:Lorg/h2/store/FileStore;

    :cond_2
    iget-object v0, p0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lorg/h2/value/ValueLob;->renameFile(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/h2/value/ValueLob;->linked:Z

    :cond_3
    return-object p0
.end method

.method public bridge synthetic copyToTemp()Lorg/h2/value/Value;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->copyToTemp()Lorg/h2/value/ValueLob;

    move-result-object v0

    return-object v0
.end method

.method public copyToTemp()Lorg/h2/value/ValueLob;
    .locals 4

    .line 2
    iget v0, p0, Lorg/h2/value/ValueLob;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getReader()Ljava/io/Reader;

    move-result-object v0

    iget-wide v1, p0, Lorg/h2/value/ValueLob;->precision:J

    iget-object v3, p0, Lorg/h2/value/ValueLob;->handler:Lorg/h2/store/DataHandler;

    invoke-static {v0, v1, v2, v3}, Lorg/h2/value/ValueLob;->createClob(Ljava/io/Reader;JLorg/h2/store/DataHandler;)Lorg/h2/value/ValueLob;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-wide v1, p0, Lorg/h2/value/ValueLob;->precision:J

    iget-object v3, p0, Lorg/h2/value/ValueLob;->handler:Lorg/h2/store/DataHandler;

    invoke-static {v0, v1, v2, v3}, Lorg/h2/value/ValueLob;->createBlob(Ljava/io/InputStream;JLorg/h2/store/DataHandler;)Lorg/h2/value/ValueLob;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/h2/value/ValueLob;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/h2/value/Value;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/h2/value/ValueLob;->compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBytes()[B
    .locals 2

    iget v0, p0, Lorg/h2/value/ValueLob;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lorg/h2/value/Value;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getBytesNoCopy()[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/Utils;->cloneByteArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytesNoCopy()[B
    .locals 2

    iget v0, p0, Lorg/h2/value/ValueLob;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/value/ValueLob;->small:[B

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lorg/h2/util/IOUtils;->readBytesAndClose(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getDisplaySize()I
    .locals 2

    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getPrecision()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 6

    iget-object v0, p0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/h2/value/ValueLob;->small:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/h2/value/ValueLob;->handler:Lorg/h2/store/DataHandler;

    const-string v2, "r"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v2, v3}, Lorg/h2/store/DataHandler;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object v0

    sget-boolean v1, Lorg/h2/engine/SysProperties;->lobCloseBetweenReads:Z

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Lorg/h2/store/FileStoreInputStream;

    iget-object v4, p0, Lorg/h2/value/ValueLob;->handler:Lorg/h2/store/DataHandler;

    iget-boolean v5, p0, Lorg/h2/value/ValueLob;->compressed:Z

    invoke-direct {v3, v0, v4, v5, v1}, Lorg/h2/store/FileStoreInputStream;-><init>(Lorg/h2/store/FileStore;Lorg/h2/store/DataHandler;ZZ)V

    const/16 v0, 0x1000

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v2
.end method

.method public getMemory()I
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueLob;->small:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x68

    return v0

    :cond_0
    const/16 v0, 0x8c

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/h2/value/ValueLob;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getReader()Ljava/io/Reader;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getObjectId()I
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueLob;->objectId:I

    return v0
.end method

.method public getPrecision()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueLob;->precision:J

    return-wide v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/IOUtils;->getBufferedReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/h2/value/ValueLob;->type:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getBytes()[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "X\'"

    .line 25
    .line 26
    const-string v2, "\'"

    .line 27
    .line 28
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public getSmall()[B
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueLob;->small:[B

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lorg/h2/value/ValueLob;->precision:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const v1, 0x7fffffff

    :goto_1
    :try_start_0
    iget v0, p0, Lorg/h2/value/ValueLob;->type:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/h2/value/ValueLob;->small:[B

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/h2/util/IOUtils;->readStringAndClose(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/h2/value/ValueLob;->small:[B

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/h2/util/IOUtils;->readBytesAndClose(Ljava/io/InputStream;I)[B

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_3
    iget-object v1, p0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getTableId()I
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueLob;->tableId:I

    return v0
.end method

.method public getTraceSQL()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/h2/value/ValueLob;->small:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getPrecision()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-wide v2, Lorg/h2/engine/SysProperties;->MAX_TRACE_DATA_LENGTH:J

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-gtz v4, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getSQL()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lorg/h2/value/ValueLob;->type:I

    .line 26
    .line 27
    const/16 v2, 0x10

    .line 28
    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    const-string v1, "SPACE("

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getPrecision()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v1, "CAST(REPEAT(\'00\', "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getPrecision()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ") AS BINARY"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :goto_0
    const-string v1, " /* "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    .line 67
    .line 68
    const-string v2, " */)"

    .line 69
    .line 70
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueLob;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lorg/h2/value/ValueLob;->hash:I

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/h2/value/ValueLob;->precision:J

    const-wide/16 v2, 0x1000

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    :cond_0
    iget v0, p0, Lorg/h2/value/ValueLob;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/h2/value/ValueLob;->hash:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/Utils;->getByteArrayHash([B)I

    move-result v0

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lorg/h2/value/ValueLob;->hash:I

    return v0
.end method

.method public isCompressed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/value/ValueLob;->compressed:Z

    return v0
.end method

.method public isLinkedToTable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/value/ValueLob;->linked:Z

    return v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/value/ValueLob;->tempFile:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->stopAutoDelete()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/value/ValueLob;->tempFile:Lorg/h2/store/FileStore;

    :cond_0
    iget-object v0, p0, Lorg/h2/value/ValueLob;->handler:Lorg/h2/store/DataHandler;

    iget-object v1, p0, Lorg/h2/value/ValueLob;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/value/ValueLob;->deleteFile(Lorg/h2/store/DataHandler;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 5

    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getPrecision()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :cond_1
    iget v2, p0, Lorg/h2/value/ValueLob;->type:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    long-to-int v1, v0

    invoke-interface {p1, p2, v2, v1}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/h2/value/ValueLob;->getReader()Ljava/io/Reader;

    move-result-object v2

    long-to-int v1, v0

    invoke-interface {p1, p2, v2, v1}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    :goto_0
    return-void
.end method
