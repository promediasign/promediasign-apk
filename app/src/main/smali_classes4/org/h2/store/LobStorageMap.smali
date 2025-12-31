.class public Lorg/h2/store/LobStorageMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/store/LobStorageInterface;


# static fields
.field private static final TRACE:Z


# instance fields
.field private dataMap:Lorg/h2/mvstore/MVMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private final database:Lorg/h2/engine/Database;

.field private init:Z

.field private lobMap:Lorg/h2/mvstore/MVMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private nextLobId:J

.field private nextLobIdSync:Ljava/lang/Object;

.field private refMap:Lorg/h2/mvstore/MVMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/MVMap<",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private streamStore:Lorg/h2/mvstore/StreamStore;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/h2/store/LobStorageMap;->nextLobIdSync:Ljava/lang/Object;

    iput-object p1, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    return-void
.end method

.method private createLob(Ljava/io/InputStream;I)Lorg/h2/value/ValueLobDb;
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/h2/store/LobStorageMap;->streamStore:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {v3, p1}, Lorg/h2/mvstore/StreamStore;->put(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lorg/h2/store/LobStorageMap;->generateLobId()J

    move-result-wide v6

    iget-object v3, p0, Lorg/h2/store/LobStorageMap;->streamStore:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {v3, p1}, Lorg/h2/mvstore/StreamStore;->length([B)J

    move-result-wide v9

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p1, v11, v2

    aput-object v3, v11, v1

    aput-object v4, v11, v0

    const/4 v3, 0x3

    aput-object v8, v11, v3

    iget-object v3, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v11}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v3, v0, v1

    iget-object p1, p0, Lorg/h2/store/LobStorageMap;->refMap:Lorg/h2/mvstore/MVMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    const/4 v8, 0x0

    move v3, p2

    invoke-static/range {v3 .. v10}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private generateLobId()J
    .locals 8

    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->nextLobIdSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lorg/h2/store/LobStorageMap;->nextLobId:J

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    cmp-long v7, v1, v3

    if-nez v7, :cond_1

    iget-object v1, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    move-wide v1, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, v5

    :goto_0
    iput-wide v1, p0, Lorg/h2/store/LobStorageMap;->nextLobId:J

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    iget-wide v1, p0, Lorg/h2/store/LobStorageMap;->nextLobId:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lorg/h2/store/LobStorageMap;->nextLobId:J

    monitor-exit v0

    return-wide v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeLob(IJ)V
    .locals 4

    .line 1
    const/4 p1, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-nez v2, :cond_0

    return-void

    :cond_0
    aget-object v2, v2, v1

    check-cast v2, [B

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object v2, p3, v1

    aput-object p2, p3, p1

    iget-object p2, p0, Lorg/h2/store/LobStorageMap;->refMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p2, p3}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object v2, p3, v1

    aput-object p2, p3, p1

    iget-object p1, p0, Lorg/h2/store/LobStorageMap;->refMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1, p3}, Lorg/h2/mvstore/MVMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    aget-object p1, p1, v1

    check-cast p1, [B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/h2/store/LobStorageMap;->streamStore:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {p1, v2}, Lorg/h2/mvstore/StreamStore;->remove([B)V

    :goto_0
    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] LOB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copyLob(Lorg/h2/value/ValueLobDb;IJ)Lorg/h2/value/ValueLobDb;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/h2/store/LobStorageMap;->init()V

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getType()I

    move-result v2

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    move-result-wide v5

    cmp-long p1, v5, p3

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    aget-object v3, p1, v1

    check-cast v3, [B

    invoke-direct {p0}, Lorg/h2/store/LobStorageMap;->generateLobId()J

    move-result-wide v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v0

    iget-object v4, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7, p1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    aput-object p1, v4, v0

    iget-object p1, p0, Lorg/h2/store/LobStorageMap;->refMap:Lorg/h2/mvstore/MVMap;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v4, v0}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    const/4 v7, 0x0

    move v4, p2

    move-wide v8, p3

    invoke-static/range {v2 .. v9}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Length is different"

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;
    .locals 7

    const-string v0, "len > blobLength, "

    invoke-virtual {p0}, Lorg/h2/store/LobStorageMap;->init()V

    const-wide/16 v1, -0x1

    const/16 v3, 0xf

    cmp-long v4, p2, v1

    if-eqz v4, :cond_2

    :try_start_0
    iget-object v1, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMaxLengthInplaceLob()I

    move-result v1

    int-to-long v1, v1

    cmp-long v5, p2, v1

    if-gtz v5, :cond_2

    long-to-int v1, p2

    new-array v2, v1, [B

    invoke-static {p1, v2, v1}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result p1

    int-to-long v4, p1

    cmp-long v6, v4, p2

    if-gtz v6, :cond_1

    if-ge p1, v1, :cond_0

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {v3, v2}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eqz v4, :cond_3

    new-instance v0, Lorg/h2/store/LimitInputStream;

    invoke-direct {v0, p1, p2, p3}, Lorg/h2/store/LimitInputStream;-><init>(Ljava/io/InputStream;J)V

    move-object p1, v0

    :cond_3
    invoke-direct {p0, p1, v3}, Lorg/h2/store/LobStorageMap;->createLob(Ljava/io/InputStream;I)Lorg/h2/value/ValueLobDb;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :goto_2
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    const p3, 0x15f97

    invoke-static {p3, p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    const-string v4, "len > maxinplace, "

    const-string v5, "len > blobLength, "

    invoke-virtual/range {p0 .. p0}, Lorg/h2/store/LobStorageMap;->init()V

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/16 v9, 0x10

    cmp-long v10, v2, v6

    if-eqz v10, :cond_2

    const-wide/16 v6, 0x3

    mul-long v6, v6, v2

    :try_start_0
    iget-object v10, v1, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v10}, Lorg/h2/engine/Database;->getMaxLengthInplaceLob()I

    move-result v10

    int-to-long v10, v10

    cmp-long v12, v6, v10

    if-gtz v12, :cond_2

    long-to-int v6, v2

    new-array v7, v6, [C

    invoke-static {v0, v7, v6}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/Reader;[CI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v10, v0

    const-string v6, " > "

    cmp-long v12, v10, v2

    if-gtz v12, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7, v8, v0}, Ljava/lang/String;-><init>([CII)V

    sget-object v0, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v2, v0

    iget-object v3, v1, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getMaxLengthInplaceLob()I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-static {v9, v0}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMaxLengthInplaceLob()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    const-wide v2, 0x7fffffffffffffffL

    :cond_3
    new-instance v4, Lorg/h2/store/CountingReaderInputStream;

    invoke-direct {v4, v0, v2, v3}, Lorg/h2/store/CountingReaderInputStream;-><init>(Ljava/io/Reader;J)V

    invoke-direct {v1, v4, v9}, Lorg/h2/store/LobStorageMap;->createLob(Ljava/io/InputStream;I)Lorg/h2/value/ValueLobDb;

    move-result-object v0

    iget-object v10, v1, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result v11

    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v12

    invoke-virtual {v4}, Lorg/h2/store/CountingReaderInputStream;->getLength()J

    move-result-wide v15

    const/4 v14, 0x0

    invoke-static/range {v9 .. v16}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :goto_1
    const v2, 0x15f97

    new-array v3, v8, [Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getInputStream(Lorg/h2/value/ValueLobDb;[BJ)Ljava/io/InputStream;
    .locals 2

    invoke-virtual {p0}, Lorg/h2/store/LobStorageMap;->init()V

    iget-object p2, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result p2

    const/4 p3, -0x3

    const-string p4, "/"

    if-eq p2, p3, :cond_1

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Lob not found: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x15fb7

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, [B

    iget-object p2, p0, Lorg/h2/store/LobStorageMap;->streamStore:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/StreamStore;->get([B)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 8

    iget-boolean v0, p0, Lorg/h2/store/LobStorageMap;->init:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/store/LobStorageMap;->init:Z

    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/h2/mvstore/MVStore;->open(Ljava/lang/String;)Lorg/h2/mvstore/MVStore;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    :goto_0
    const-string v1, "lobMap"

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    const-string v1, "lobRef"

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/store/LobStorageMap;->refMap:Lorg/h2/mvstore/MVMap;

    const-string v1, "lobData"

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/LobStorageMap;->dataMap:Lorg/h2/mvstore/MVMap;

    new-instance v1, Lorg/h2/mvstore/StreamStore;

    invoke-direct {v1, v0}, Lorg/h2/mvstore/StreamStore;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/h2/store/LobStorageMap;->streamStore:Lorg/h2/mvstore/StreamStore;

    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->dataMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, -0x1

    move-wide v3, v1

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, [B

    iget-object v6, p0, Lorg/h2/store/LobStorageMap;->streamStore:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {v6, v5}, Lorg/h2/mvstore/StreamStore;->getMaxBlockKey([B)J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-eqz v7, :cond_4

    cmp-long v7, v5, v3

    if-lez v7, :cond_4

    move-wide v3, v5

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->dataMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-gtz v5, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lorg/h2/store/LobStorageMap;->dataMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->dataMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lorg/h2/store/LobStorageMap;->streamStore:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/h2/mvstore/StreamStore;->setNextKey(J)V

    :cond_8
    return-void
.end method

.method public isReadOnly()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public removeAllForTable(I)V
    .locals 5

    invoke-virtual {p0}, Lorg/h2/store/LobStorageMap;->init()V

    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lorg/h2/store/LobStorageMap;->removeLob(IJ)V

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Lorg/h2/store/LobStorageMap;->removeAllForTable(I)V

    const/4 p1, -0x3

    invoke-virtual {p0, p1}, Lorg/h2/store/LobStorageMap;->removeAllForTable(I)V

    :cond_4
    return-void
.end method

.method public removeLob(Lorg/h2/value/ValueLobDb;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/h2/store/LobStorageMap;->init()V

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lorg/h2/store/LobStorageMap;->removeLob(IJ)V

    return-void
.end method

.method public setTable(Lorg/h2/value/ValueLobDb;I)V
    .locals 3

    invoke-virtual {p0}, Lorg/h2/store/LobStorageMap;->init()V

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v0

    iget-object p1, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, p1, v2

    iget-object p2, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
