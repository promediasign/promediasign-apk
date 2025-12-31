.class public Lorg/h2/store/LobStorageBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/store/LobStorageInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/store/LobStorageBackend$LobInputStream;
    }
.end annotation


# static fields
.field private static final BLOCK_LENGTH:I = 0x4e20

.field private static final HASH_CACHE_SIZE:I = 0x1000

.field private static final LOBS:Ljava/lang/String; = "INFORMATION_SCHEMA.LOBS"

.field private static final LOB_DATA:Ljava/lang/String; = "INFORMATION_SCHEMA.LOB_DATA"

.field public static final LOB_DATA_TABLE:Ljava/lang/String; = "LOB_DATA"

.field private static final LOB_MAP:Ljava/lang/String; = "INFORMATION_SCHEMA.LOB_MAP"

.field private static final LOB_SCHEMA:Ljava/lang/String; = "INFORMATION_SCHEMA"


# instance fields
.field private final compress:Lorg/h2/tools/CompressTool;

.field conn:Lorg/h2/jdbc/JdbcConnection;

.field final database:Lorg/h2/engine/Database;

.field private hashBlocks:[J

.field private init:Z

.field private nextBlock:J

.field private final prepared:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/sql/PreparedStatement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/LobStorageBackend;->prepared:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/tools/CompressTool;->getInstance()Lorg/h2/tools/CompressTool;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/LobStorageBackend;->compress:Lorg/h2/tools/CompressTool;

    iput-object p1, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    return-void
.end method

.method private addLob(Ljava/io/InputStream;JILorg/h2/store/CountingReaderInputStream;)Lorg/h2/value/ValueLobDb;
    .locals 29

    move-object/from16 v10, p0

    move/from16 v0, p4

    const/16 v9, 0x4e20

    :try_start_0
    new-array v11, v9, [B

    const-wide/16 v12, 0x0

    cmp-long v1, p2, v12

    if-gez v1, :cond_0

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p2

    :goto_0
    iget-object v3, v10, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getMaxLengthInplaceLob()I

    move-result v14

    iget-object v3, v10, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3, v0}, Lorg/h2/engine/Database;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v16, -0x1

    const/4 v8, 0x0

    move-wide/from16 v18, v12

    move-wide/from16 v21, v16

    const/16 v20, 0x0

    :goto_1
    const/4 v7, 0x0

    cmp-long v3, v1, v12

    if-lez v3, :cond_1

    const-wide/16 v3, 0x4e20

    :try_start_1
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    move-object/from16 v5, p1

    invoke-static {v5, v11, v4}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    if-gtz v3, :cond_2

    :cond_1
    move-object v11, v7

    const/4 v9, 0x0

    goto/16 :goto_8

    :cond_2
    int-to-long v12, v3

    sub-long v23, v1, v12

    if-eq v3, v9, :cond_3

    :try_start_2
    new-array v1, v3, [B

    invoke-static {v11, v8, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v1

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v11, v7

    :goto_2
    move-wide/from16 v0, v21

    goto/16 :goto_c

    :cond_3
    move-object v6, v11

    :goto_3
    if-nez v20, :cond_4

    array-length v1, v6

    if-ge v1, v9, :cond_4

    array-length v1, v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    if-gt v1, v14, :cond_4

    move-object v11, v7

    const/4 v9, 0x0

    move-object v7, v6

    goto/16 :goto_9

    :cond_4
    :try_start_3
    iget-object v1, v10, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/store/LobStorageBackend;->assertNotHolds(Ljava/lang/Object;)V

    iget-object v4, v10, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v1, v10, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v25

    monitor-enter v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v20, :cond_5

    :try_start_5
    invoke-direct/range {p0 .. p0}, Lorg/h2/store/LobStorageBackend;->getNextLobId()J

    move-result-wide v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v26, v4

    move-object v11, v7

    goto :goto_5

    :cond_5
    :goto_4
    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    move-object/from16 v26, v4

    move/from16 v4, v20

    move-object/from16 v27, v6

    move-wide/from16 v5, v18

    move-object/from16 v28, v11

    move-object v11, v7

    move-object/from16 v7, v27

    const/4 v9, 0x0

    move-object v8, v15

    :try_start_6
    invoke-virtual/range {v1 .. v8}, Lorg/h2/store/LobStorageBackend;->storeBlock(JIJ[BLjava/lang/String;)V

    monitor-exit v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v26
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    add-long v18, v18, v12

    add-int/lit8 v20, v20, 0x1

    move-wide/from16 v1, v23

    move-object/from16 v11, v28

    const/4 v8, 0x0

    const/16 v9, 0x4e20

    const-wide/16 v12, 0x0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    :goto_5
    :try_start_8
    monitor-exit v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    :catchall_3
    move-exception v0

    move-object/from16 v26, v4

    move-object v11, v7

    :goto_6
    monitor-exit v26
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0

    :catch_2
    move-exception v0

    :goto_7
    move-object v2, v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v11, v7

    goto :goto_7

    :goto_8
    move-object v7, v11

    :goto_9
    cmp-long v1, v21, v16

    if-nez v1, :cond_6

    if-nez v7, :cond_6

    new-array v7, v9, [B

    :cond_6
    if-eqz v7, :cond_8

    if-nez p5, :cond_7

    array-length v1, v7

    int-to-long v1, v1

    goto :goto_a

    :cond_7
    invoke-virtual/range {p5 .. p5}, Lorg/h2/store/CountingReaderInputStream;->getLength()J

    move-result-wide v1

    :goto_a
    invoke-static {v0, v7, v1, v2}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v0

    return-object v0

    :cond_8
    if-nez p5, :cond_9

    move-wide/from16 v8, v18

    goto :goto_b

    :cond_9
    invoke-virtual/range {p5 .. p5}, Lorg/h2/store/CountingReaderInputStream;->getLength()J

    move-result-wide v1

    move-wide v8, v1

    :goto_b
    const/4 v5, -0x2

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-wide/from16 v3, v21

    move-wide/from16 v6, v18

    invoke-direct/range {v1 .. v9}, Lorg/h2/store/LobStorageBackend;->registerLob(IJIJJ)Lorg/h2/value/ValueLobDb;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    return-object v0

    :goto_c
    cmp-long v3, v0, v16

    if-eqz v3, :cond_a

    :try_start_b
    invoke-direct {v10, v0, v1}, Lorg/h2/store/LobStorageBackend;->removeLob(J)V

    :cond_a
    invoke-static {v2, v11}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_0

    :goto_d
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public static assertHoldsLock(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static assertNotHolds(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private getHashCacheBlock(I)J
    .locals 6

    invoke-direct {p0}, Lorg/h2/store/LobStorageBackend;->initHashCache()V

    and-int/lit16 v0, p1, 0xfff

    iget-object v1, p0, Lorg/h2/store/LobStorageBackend;->hashBlocks:[J

    aget-wide v2, v1, v0

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    add-int/lit16 v0, v0, 0x1000

    aget-wide v0, v1, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getNextLobId()J
    .locals 8

    const-string v0, "SELECT MAX(LOB) FROM INFORMATION_SCHEMA.LOB_MAP"

    invoke-virtual {p0, v0}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {p0, v0, v1}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    const-string v0, "SELECT MAX(ID) FROM INFORMATION_SCHEMA.LOBS"

    invoke-virtual {p0, v0}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    return-wide v2
.end method

.method private initHashCache()V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->hashBlocks:[J

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/h2/store/LobStorageBackend;->hashBlocks:[J

    :cond_0
    return-void
.end method

.method private registerLob(IJIJJ)Lorg/h2/value/ValueLobDb;
    .locals 14

    move-object v1, p0

    iget-object v0, v1, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/LobStorageBackend;->assertNotHolds(Ljava/lang/Object;)V

    iget-object v2, v1, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "INSERT INTO INFORMATION_SCHEMA.LOBS(ID, BYTE_COUNT, TABLE) VALUES(?, ?, ?)"

    invoke-virtual {p0, v0}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    const/4 v5, 0x1

    move-wide/from16 v9, p2

    invoke-interface {v4, v5, v9, v10}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v5, 0x2

    move-wide/from16 v6, p5

    invoke-interface {v4, v5, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v5, 0x3

    move/from16 v8, p4

    invoke-interface {v4, v5, v8}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v4}, Ljava/sql/PreparedStatement;->execute()Z

    invoke-virtual {p0, v0, v4}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    iget-object v7, v1, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    const/4 v11, 0x0

    move v6, p1

    move/from16 v8, p4

    move-wide/from16 v9, p2

    move-wide/from16 v12, p7

    invoke-static/range {v6 .. v13}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private removeLob(J)V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/LobStorageBackend;->assertNotHolds(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, "SELECT BLOCK, HASH FROM INFORMATION_SCHEMA.LOB_MAP D WHERE D.LOB = ? AND NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.LOB_MAP O WHERE O.BLOCK = D.BLOCK AND O.LOB <> ?)"

    invoke-virtual {p0, v2}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v5, 0x2

    invoke-interface {v3, v5, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v6

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v7

    :goto_0
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6, v4}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v5}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v8

    const-wide/16 v9, -0x1

    invoke-direct {p0, v8, v9, v10}, Lorg/h2/store/LobStorageBackend;->setHashCacheBlock(IJ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v2, v3}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    const-string v2, "DELETE FROM INFORMATION_SCHEMA.LOB_MAP WHERE LOB = ?"

    invoke-virtual {p0, v2}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    invoke-interface {v3, v4, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v3}, Ljava/sql/PreparedStatement;->execute()Z

    invoke-virtual {p0, v2, v3}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    const-string v2, "DELETE FROM INFORMATION_SCHEMA.LOB_DATA WHERE BLOCK = ?"

    invoke-virtual {p0, v2}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v3}, Ljava/sql/PreparedStatement;->execute()Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, v3}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    const-string v2, "DELETE FROM INFORMATION_SCHEMA.LOBS WHERE ID = ?"

    invoke-virtual {p0, v2}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    invoke-interface {v3, v4, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v3}, Ljava/sql/PreparedStatement;->execute()Z

    invoke-virtual {p0, v2, v3}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private setHashCacheBlock(IJ)V
    .locals 4

    invoke-direct {p0}, Lorg/h2/store/LobStorageBackend;->initHashCache()V

    and-int/lit16 v0, p1, 0xfff

    iget-object v1, p0, Lorg/h2/store/LobStorageBackend;->hashBlocks:[J

    int-to-long v2, p1

    aput-wide v2, v1, v0

    add-int/lit16 v0, v0, 0x1000

    aput-wide p2, v1, v0

    return-void
.end method


# virtual methods
.method public copyLob(Lorg/h2/value/ValueLobDb;IJ)Lorg/h2/value/ValueLobDb;
    .locals 14

    move-object v1, p0

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getType()I

    move-result v2

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v5

    iget-object v0, v1, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/LobStorageBackend;->assertNotHolds(Ljava/lang/Object;)V

    iget-object v10, v1, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter v10

    :try_start_0
    iget-object v0, v1, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lorg/h2/store/LobStorageBackend;->init()V

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->isRecoveryReference()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/h2/store/LobStorageBackend;->getNextLobId()J

    move-result-wide v7

    const-string v0, "INSERT INTO INFORMATION_SCHEMA.LOB_MAP(LOB, SEQ, POS, HASH, BLOCK) SELECT ?, SEQ, POS, HASH, BLOCK FROM INFORMATION_SCHEMA.LOB_MAP WHERE LOB = ?"

    invoke-virtual {p0, v0}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4, v7, v8}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v9, 0x2

    invoke-interface {v3, v9, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeUpdate()I

    invoke-virtual {p0, v0, v3}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    const-string v0, "INSERT INTO INFORMATION_SCHEMA.LOBS(ID, BYTE_COUNT, TABLE) SELECT ?, BYTE_COUNT, ? FROM INFORMATION_SCHEMA.LOBS WHERE ID = ?"

    invoke-virtual {p0, v0}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    invoke-interface {v3, v4, v7, v8}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    move/from16 v4, p2

    int-to-long v12, v4

    invoke-interface {v3, v9, v12, v13}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v9, 0x3

    invoke-interface {v3, v9, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeUpdate()I

    invoke-virtual {p0, v0, v3}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    iget-object v3, v1, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    const/4 v0, 0x0

    move/from16 v4, p2

    move-wide v5, v7

    move-object v7, v0

    move-wide/from16 v8, p3

    invoke-static/range {v2 .. v9}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move/from16 v4, p2

    iget-object v3, v1, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    const/4 v7, 0x0

    move/from16 v4, p2

    move-wide/from16 v8, p3

    invoke-static/range {v2 .. v9}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_1
    :try_start_4
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :goto_2
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :goto_3
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;
    .locals 6

    invoke-virtual {p0}, Lorg/h2/store/LobStorageBackend;->init()V

    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/h2/store/LobStorageBackend;->addLob(Ljava/io/InputStream;JILorg/h2/store/CountingReaderInputStream;)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    return-object p1
.end method

.method public createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;
    .locals 6

    invoke-virtual {p0}, Lorg/h2/store/LobStorageBackend;->init()V

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    const-wide p2, 0x7fffffffffffffffL

    :cond_0
    new-instance v5, Lorg/h2/store/CountingReaderInputStream;

    invoke-direct {v5, p1, p2, p3}, Lorg/h2/store/CountingReaderInputStream;-><init>(Ljava/io/Reader;J)V

    const-wide v2, 0x7fffffffffffffffL

    const/16 v4, 0x10

    move-object v0, p0

    move-object v1, v5

    invoke-direct/range {v0 .. v5}, Lorg/h2/store/LobStorageBackend;->addLob(Ljava/io/InputStream;JILorg/h2/store/CountingReaderInputStream;)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    return-object p1
.end method

.method public getInputStream(Lorg/h2/value/ValueLobDb;[BJ)Ljava/io/InputStream;
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/LobStorageBackend;->init()V

    iget-object p2, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p2}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/store/LobStorageBackend;->assertNotHolds(Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter p2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v3

    new-instance p1, Lorg/h2/store/LobStorageBackend$LobInputStream;

    move-object v1, p1

    move-object v2, p0

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/h2/store/LobStorageBackend$LobInputStream;-><init>(Lorg/h2/store/LobStorageBackend;JJ)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1

    :goto_0
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public init()V
    .locals 8

    iget-boolean v0, p0, Lorg/h2/store/LobStorageBackend;->init:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/h2/store/LobStorageBackend;->init:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/h2/store/LobStorageBackend;->init:Z

    iget-object v2, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getLobConnectionForRegularUse()Lorg/h2/jdbc/JdbcConnection;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-object v2, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getLobConnectionForInit()Lorg/h2/jdbc/JdbcConnection;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Lorg/h2/jdbc/JdbcConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v3

    const-string v4, "SELECT ZERO() FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA=? AND TABLE_NAME=? AND COLUMN_NAME=?"

    invoke-virtual {v2, v4}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    const-string v5, "INFORMATION_SCHEMA"

    invoke-interface {v4, v1, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const-string v5, "LOB_MAP"

    const/4 v6, 0x2

    invoke-interface {v4, v6, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const-string v5, "POS"

    const/4 v7, 0x3

    invoke-interface {v4, v7, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v4

    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SELECT ZERO() FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA=? AND TABLE_NAME=?"

    invoke-virtual {v2, v4}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    const-string v4, "INFORMATION_SCHEMA"

    invoke-interface {v2, v1, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const-string v4, "LOB_DATA"

    invoke-interface {v2, v6, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    const-string v2, "CREATE CACHED TABLE IF NOT EXISTS INFORMATION_SCHEMA.LOBS(ID BIGINT PRIMARY KEY, BYTE_COUNT BIGINT, TABLE INT) HIDDEN"

    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "CREATE INDEX IF NOT EXISTS INFORMATION_SCHEMA.INDEX_LOB_TABLE ON INFORMATION_SCHEMA.LOBS(TABLE)"

    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "CREATE CACHED TABLE IF NOT EXISTS INFORMATION_SCHEMA.LOB_MAP(LOB BIGINT, SEQ INT, POS BIGINT, HASH INT, BLOCK BIGINT, PRIMARY KEY(LOB, SEQ)) HIDDEN"

    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "ALTER TABLE INFORMATION_SCHEMA.LOB_MAP RENAME TO INFORMATION_SCHEMA.LOB_MAP HIDDEN"

    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "ALTER TABLE INFORMATION_SCHEMA.LOB_MAP ADD IF NOT EXISTS POS BIGINT BEFORE HASH"

    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "ALTER TABLE INFORMATION_SCHEMA.LOB_MAP DROP COLUMN IF EXISTS \"OFFSET\""

    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "CREATE INDEX IF NOT EXISTS INFORMATION_SCHEMA.INDEX_LOB_MAP_DATA_LOB ON INFORMATION_SCHEMA.LOB_MAP(BLOCK, LOB)"

    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "CREATE CACHED TABLE IF NOT EXISTS INFORMATION_SCHEMA.LOB_DATA(BLOCK BIGINT PRIMARY KEY, COMPRESSED INT, DATA BINARY) HIDDEN"

    invoke-interface {v3, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    :goto_0
    const-string v2, "SELECT MAX(BLOCK) FROM INFORMATION_SCHEMA.LOB_DATA"

    invoke-interface {v3, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v1

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    iput-wide v1, p0, Lorg/h2/store/LobStorageBackend;->nextBlock:J

    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :goto_1
    invoke-static {v1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isReadOnly()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->prepared:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/PreparedStatement;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public readBlock(J)[B
    .locals 8

    const-string v0, "Missing lob entry, block: "

    iget-object v1, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/store/LobStorageBackend;->assertNotHolds(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v2}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "SELECT COMPRESSED, DATA FROM INFORMATION_SCHEMA.LOB_DATA WHERE BLOCK = ?"

    invoke-virtual {p0, v3}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v6

    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6, v5}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p1

    const/4 p2, 0x2

    invoke-interface {v6, p2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object p2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/store/LobStorageBackend;->compress:Lorg/h2/tools/CompressTool;

    invoke-virtual {p1, p2}, Lorg/h2/tools/CompressTool;->expand([B)[B

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v4}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p2

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x15fac

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public removeAllForTable(I)V
    .locals 6

    invoke-virtual {p0}, Lorg/h2/store/LobStorageBackend;->init()V

    :try_start_0
    const-string v0, "SELECT ID FROM INFORMATION_SCHEMA.LOBS WHERE TABLE = ?"

    invoke-virtual {p0, v0}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v2}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lorg/h2/store/LobStorageBackend;->removeLob(J)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Lorg/h2/store/LobStorageBackend;->removeAllForTable(I)V

    const/4 p1, -0x3

    invoke-virtual {p0, p1}, Lorg/h2/store/LobStorageBackend;->removeAllForTable(I)V

    :cond_1
    return-void

    :goto_1
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public removeLob(Lorg/h2/value/ValueLobDb;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/h2/store/LobStorageBackend;->removeLob(J)V

    return-void
.end method

.method public reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V
    .locals 1

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend;->prepared:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTable(Lorg/h2/value/ValueLobDb;I)V
    .locals 6

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v0

    iget-object p1, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/store/LobStorageBackend;->assertNotHolds(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v2}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lorg/h2/store/LobStorageBackend;->init()V

    const-string v3, "UPDATE INFORMATION_SCHEMA.LOBS SET TABLE = ? WHERE ID = ?"

    invoke-virtual {p0, v3}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x2

    invoke-interface {v4, p2, v0, v1}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeUpdate()I

    invoke-virtual {p0, v3, v4}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_4
    invoke-static {p2}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p2

    throw p2

    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p2

    :goto_1
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p2
.end method

.method public storeBlock(JIJ[BLjava/lang/String;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p7

    if-eqz v1, :cond_0

    iget-object v2, v0, Lorg/h2/store/LobStorageBackend;->compress:Lorg/h2/tools/CompressTool;

    move-object/from16 v3, p6

    invoke-virtual {v2, v3, v1}, Lorg/h2/tools/CompressTool;->compress([BLjava/lang/String;)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v3, p6

    move-object v2, v3

    :goto_0
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    iget-object v4, v0, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v4}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/store/LobStorageBackend;->assertHoldsLock(Ljava/lang/Object;)V

    iget-object v4, v0, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-static {v4}, Lorg/h2/store/LobStorageBackend;->assertHoldsLock(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lorg/h2/store/LobStorageBackend;->getHashCacheBlock(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    cmp-long v12, v4, v6

    if-eqz v12, :cond_4

    const-string v6, "SELECT COMPRESSED, DATA FROM INFORMATION_SCHEMA.LOB_DATA WHERE BLOCK = ?"

    invoke-virtual {p0, v6}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v7

    invoke-interface {v7, v10, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v7}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v12

    invoke-interface {v12}, Ljava/sql/ResultSet;->next()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12, v10}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    invoke-interface {v12, v9}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v12

    if-eqz v1, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    if-ne v13, v14, :cond_3

    invoke-static {v2, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    invoke-virtual {p0, v6, v7}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    if-nez v12, :cond_6

    :cond_4
    iget-wide v4, v0, Lorg/h2/store/LobStorageBackend;->nextBlock:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v0, Lorg/h2/store/LobStorageBackend;->nextBlock:J

    invoke-direct {p0, v3, v4, v5}, Lorg/h2/store/LobStorageBackend;->setHashCacheBlock(IJ)V

    const-string v6, "INSERT INTO INFORMATION_SCHEMA.LOB_DATA(BLOCK, COMPRESSED, DATA) VALUES(?, ?, ?)"

    invoke-virtual {p0, v6}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v7

    invoke-interface {v7, v10, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v11, 0x1

    :goto_4
    invoke-interface {v7, v9, v11}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v7, v8, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    invoke-interface {v7}, Ljava/sql/PreparedStatement;->execute()Z

    invoke-virtual {p0, v6, v7}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    :cond_6
    const-string v1, "INSERT INTO INFORMATION_SCHEMA.LOB_MAP(LOB, SEQ, POS, HASH, BLOCK) VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {p0, v1}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    move-wide/from16 v6, p1

    invoke-interface {v2, v10, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    move/from16 v6, p3

    invoke-interface {v2, v9, v6}, Ljava/sql/PreparedStatement;->setInt(II)V

    move-wide/from16 v6, p4

    invoke-interface {v2, v8, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v6, 0x4

    int-to-long v7, v3

    invoke-interface {v2, v6, v7, v8}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v3, 0x5

    invoke-interface {v2, v3, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->execute()Z

    invoke-virtual {p0, v1, v2}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    return-void
.end method
