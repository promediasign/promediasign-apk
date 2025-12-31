.class public Lorg/h2/server/TcpServerThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/server/TcpServerThread$CachedInputStream;
    }
.end annotation


# instance fields
.field private final cache:Lorg/h2/util/SmallMap;

.field private clientVersion:I

.field private commit:Lorg/h2/command/Command;

.field private final lobs:Lorg/h2/util/SmallLRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/Long;",
            "Lorg/h2/server/TcpServerThread$CachedInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final server:Lorg/h2/server/TcpServer;

.field private session:Lorg/h2/engine/Session;

.field private sessionId:Ljava/lang/String;

.field private stop:Z

.field private thread:Ljava/lang/Thread;

.field private final threadId:I

.field protected final transfer:Lorg/h2/value/Transfer;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lorg/h2/server/TcpServer;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/h2/util/SmallMap;

    sget v1, Lorg/h2/engine/SysProperties;->SERVER_CACHED_OBJECTS:I

    invoke-direct {v0, v1}, Lorg/h2/util/SmallMap;-><init>(I)V

    iput-object v0, p0, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    sget v0, Lorg/h2/engine/SysProperties;->SERVER_RESULT_SET_FETCH_SIZE:I

    mul-int/lit8 v0, v0, 0x5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lorg/h2/util/SmallLRUCache;->newInstance(I)Lorg/h2/util/SmallLRUCache;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/TcpServerThread;->lobs:Lorg/h2/util/SmallLRUCache;

    iput-object p2, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    iput p3, p0, Lorg/h2/server/TcpServerThread;->threadId:I

    new-instance p2, Lorg/h2/value/Transfer;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/h2/value/Transfer;-><init>(Lorg/h2/engine/SessionInterface;)V

    iput-object p2, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {p2, p1}, Lorg/h2/value/Transfer;->setSocket(Ljava/net/Socket;)V

    return-void
.end method

.method private closeSession()V
    .locals 4

    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "ROLLBACK"

    invoke-virtual {v0, v2}, Lorg/h2/engine/Session;->prepareLocal(Ljava/lang/String;)Lorg/h2/command/Command;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/command/Command;->executeUpdate()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :goto_0
    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v2, v0}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V

    :goto_1
    move-object v0, v1

    goto :goto_3

    :goto_2
    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v2, v0}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V

    :goto_3
    :try_start_1
    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->close()V

    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    iget v3, p0, Lorg/h2/server/TcpServerThread;->threadId:I

    invoke-virtual {v2, v3}, Lorg/h2/server/TcpServer;->removeConnection(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v2

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_5

    :goto_4
    :try_start_2
    iget-object v3, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v3, v2}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_5
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v0, v2}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    goto :goto_7

    :goto_6
    iput-object v1, p0, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    throw v0

    :cond_0
    :goto_7
    iput-object v1, p0, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    if-nez v0, :cond_1

    goto :goto_8

    :cond_1
    throw v0

    :cond_2
    :goto_8
    return-void
.end method

.method private getState(I)I
    .locals 1

    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getModificationId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

.method private process()V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v2, "Unknown operation: "

    .line 1
    invoke-static {v0, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {v1, v0}, Lorg/h2/server/TcpServerThread;->trace(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/server/TcpServerThread;->closeSession()V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/h2/server/TcpServerThread;->close()V

    goto/16 :goto_f

    :pswitch_1
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v12

    iget v0, v1, Lorg/h2/server/TcpServerThread;->clientVersion:I

    const/16 v4, 0xb

    const/4 v5, 0x0

    if-lt v0, v4, :cond_1

    const/16 v4, 0xc

    if-lt v0, v4, :cond_0

    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readBytes()[B

    move-result-object v0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move-object v0, v5

    const/4 v4, 0x0

    :goto_1
    iget-object v6, v1, Lorg/h2/server/TcpServerThread;->lobs:Lorg/h2/util/SmallLRUCache;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/server/TcpServerThread$CachedInputStream;

    if-nez v6, :cond_2

    if-eqz v4, :cond_2

    new-instance v6, Lorg/h2/server/TcpServerThread$CachedInputStream;

    invoke-direct {v6, v5}, Lorg/h2/server/TcpServerThread$CachedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->lobs:Lorg/h2/util/SmallLRUCache;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->lobs:Lorg/h2/util/SmallLRUCache;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/h2/server/TcpServerThread$CachedInputStream;

    move-object v0, v5

    const/4 v4, 0x0

    :cond_2
    :goto_2
    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v5}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v14

    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v5}, Lorg/h2/value/Transfer;->readInt()I

    move-result v10

    if-eqz v4, :cond_3

    iget-object v4, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v4, v0, v12, v13}, Lorg/h2/value/Transfer;->verifyLobMac([BJ)V

    :cond_3
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lorg/h2/server/TcpServerThread$CachedInputStream;->getPos()J

    move-result-wide v4

    cmp-long v7, v4, v14

    if-eqz v7, :cond_4

    iget-object v4, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v4

    invoke-interface {v4}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v11

    const/4 v6, -0x1

    const-wide/16 v16, -0x1

    const/16 v4, 0xf

    const/4 v5, 0x0

    move-wide v7, v12

    move-object v9, v0

    move v2, v10

    move-object v3, v11

    move-wide/from16 v10, v16

    invoke-static/range {v4 .. v11}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v4

    const-wide/16 v5, -0x1

    invoke-interface {v3, v4, v0, v5, v6}, Lorg/h2/store/LobStorageInterface;->getInputStream(Lorg/h2/value/ValueLobDb;[BJ)Ljava/io/InputStream;

    move-result-object v0

    new-instance v6, Lorg/h2/server/TcpServerThread$CachedInputStream;

    invoke-direct {v6, v0}, Lorg/h2/server/TcpServerThread$CachedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->lobs:Lorg/h2/util/SmallLRUCache;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v14, v15}, Ljava/io/InputStream;->skip(J)J

    goto :goto_3

    :cond_4
    move v2, v10

    :goto_3
    const/high16 v0, 0x10000

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v0, [B

    invoke-static {v6, v2, v0}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result v0

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v0}, Lorg/h2/value/Transfer;->writeBytes([BII)Lorg/h2/value/Transfer;

    :cond_5
    :goto_4
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    :goto_5
    invoke-virtual {v0}, Lorg/h2/value/Transfer;->flush()V

    goto/16 :goto_f

    :cond_6
    const v0, 0x15f97

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_2
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v0

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->hasPendingTransaction()Z

    move-result v2

    :goto_6
    invoke-virtual {v0, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v0

    goto :goto_5

    :pswitch_3
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readBoolean()Z

    move-result v0

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v0}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v2, 0x1

    goto :goto_6

    :pswitch_4
    const/4 v2, 0x1

    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/h2/server/TcpServerThread;->sessionId:Ljava/lang/String;

    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    :goto_7
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getAutoCommit()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    goto :goto_4

    :pswitch_5
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->readInt()I

    move-result v2

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/command/Command;

    invoke-virtual {v0}, Lorg/h2/command/Command;->getMetaData()Lorg/h2/result/ResultInterface;

    move-result-object v0

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v3, v2, v0}, Lorg/h2/util/SmallMap;->addObject(ILjava/lang/Object;)I

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getVisibleColumnCount()I

    move-result v2

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_5

    iget-object v4, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-static {v4, v0, v3}, Lorg/h2/result/ResultColumn;->writeColumn(Lorg/h2/value/Transfer;Lorg/h2/result/ResultInterface;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :pswitch_6
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->readInt()I

    move-result v2

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v4, v0}, Lorg/h2/util/SmallMap;->freeObject(I)V

    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v0, v2, v3}, Lorg/h2/util/SmallMap;->addObject(ILjava/lang/Object;)I

    goto/16 :goto_f

    :pswitch_7
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->commit:Lorg/h2/command/Command;

    if-nez v0, :cond_7

    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    const-string v2, "COMMIT"

    invoke-virtual {v0, v2}, Lorg/h2/engine/Session;->prepareLocal(Ljava/lang/String;)Lorg/h2/command/Command;

    move-result-object v0

    iput-object v0, v1, Lorg/h2/server/TcpServerThread;->commit:Lorg/h2/command/Command;

    :cond_7
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getModificationId()I

    move-result v0

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->commit:Lorg/h2/command/Command;

    invoke-virtual {v2}, Lorg/h2/command/Command;->executeUpdate()I

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-direct {v1, v0}, Lorg/h2/server/TcpServerThread;->getState(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v0

    goto/16 :goto_5

    :pswitch_8
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/result/ResultInterface;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Lorg/h2/result/ResultInterface;->close()V

    :goto_9
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v2, v0}, Lorg/h2/util/SmallMap;->freeObject(I)V

    goto/16 :goto_f

    :pswitch_9
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->reset()V

    goto/16 :goto_f

    :pswitch_a
    const/4 v3, 0x0

    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->readInt()I

    move-result v2

    iget-object v4, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v4, v0, v3}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/result/ResultInterface;

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_5

    invoke-direct {v1, v0}, Lorg/h2/server/TcpServerThread;->sendRow(Lorg/h2/result/ResultInterface;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :pswitch_b
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/command/Command;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lorg/h2/command/Command;->close()V

    goto :goto_9

    :pswitch_c
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/command/Command;

    invoke-direct {v1, v0}, Lorg/h2/server/TcpServerThread;->setParameters(Lorg/h2/command/Command;)V

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getModificationId()I

    move-result v2

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0}, Lorg/h2/command/Command;->executeUpdate()I

    move-result v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    iput-boolean v3, v1, Lorg/h2/server/TcpServerThread;->stop:Z

    const/4 v2, 0x2

    goto :goto_b

    :cond_8
    invoke-direct {v1, v2}, Lorg/h2/server/TcpServerThread;->getState(I)I

    move-result v2

    :goto_b
    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_d
    iget-object v0, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->readInt()I

    move-result v2

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3}, Lorg/h2/value/Transfer;->readInt()I

    move-result v3

    iget-object v4, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v4}, Lorg/h2/value/Transfer;->readInt()I

    move-result v4

    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/command/Command;

    invoke-direct {v1, v0}, Lorg/h2/server/TcpServerThread;->setParameters(Lorg/h2/command/Command;)V

    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->getModificationId()I

    move-result v5

    iget-object v7, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    monitor-enter v7

    :try_start_2
    invoke-virtual {v0, v3, v6}, Lorg/h2/command/Command;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v3, v2, v0}, Lorg/h2/util/SmallMap;->addObject(ILjava/lang/Object;)I

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getVisibleColumnCount()I

    move-result v2

    invoke-direct {v1, v5}, Lorg/h2/server/TcpServerThread;->getState(I)I

    move-result v3

    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v5, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result v3

    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v5, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v2, :cond_9

    iget-object v7, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-static {v7, v0, v5}, Lorg/h2/result/ResultColumn;->writeColumn(Lorg/h2/value/Transfer;Lorg/h2/result/ResultInterface;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_9
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_d
    if-ge v6, v2, :cond_5

    invoke-direct {v1, v0}, Lorg/h2/server/TcpServerThread;->sendRow(Lorg/h2/result/ResultInterface;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_e
    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/h2/server/TcpServerThread;->stop:Z

    invoke-direct/range {p0 .. p0}, Lorg/h2/server/TcpServerThread;->closeSession()V

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->flush()V

    goto/16 :goto_0

    :pswitch_f
    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->readInt()I

    move-result v2

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->getModificationId()I

    move-result v4

    iget-object v5, v1, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v3}, Lorg/h2/engine/Session;->prepareLocal(Ljava/lang/String;)Lorg/h2/command/Command;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/command/Command;->isReadOnly()Z

    move-result v5

    iget-object v6, v1, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    invoke-virtual {v6, v2, v3}, Lorg/h2/util/SmallMap;->addObject(ILjava/lang/Object;)I

    invoke-virtual {v3}, Lorg/h2/command/Command;->isQuery()Z

    move-result v2

    iget-object v6, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-direct {v1, v4}, Lorg/h2/server/TcpServerThread;->getState(I)I

    move-result v4

    invoke-virtual {v6, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    const/16 v2, 0x12

    if-ne v0, v2, :cond_a

    iget-object v2, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-interface {v3}, Lorg/h2/command/CommandInterface;->getCommandType()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    :cond_a
    invoke-virtual {v3}, Lorg/h2/command/Command;->getParameters()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/ParameterInterface;

    iget-object v3, v1, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-static {v3, v2}, Lorg/h2/expression/ParameterRemote;->writeMetaData(Lorg/h2/value/Transfer;Lorg/h2/expression/ParameterInterface;)V

    goto :goto_e

    :cond_b
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_f
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_f
    .end packed-switch
.end method

.method private sendError(Ljava/lang/Throwable;)V
    .locals 5

    :try_start_0
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Lorg/h2/jdbc/JdbcSQLException;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/h2/jdbc/JdbcSQLException;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcSQLException;->getOriginalMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcSQLException;->getSQL()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v0, p1}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/server/TcpServerThread;->stop:Z

    :goto_2
    return-void
.end method

.method private sendRow(Lorg/h2/result/ResultInterface;)V
    .locals 4

    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->getVisibleColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v2, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/h2/value/Transfer;->writeValue(Lorg/h2/value/Value;)V

    goto :goto_1

    :cond_0
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lorg/h2/server/TcpServerThread;->writeValue(Lorg/h2/value/Value;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {p1, v1}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    :cond_2
    return-void
.end method

.method private setParameters(Lorg/h2/command/Command;)V
    .locals 4

    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/command/Command;->getParameters()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Parameter;

    iget-object v3, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3}, Lorg/h2/value/Transfer;->readValue()Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private trace(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/server/TcpServer;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private writeValue(Lorg/h2/value/Value;)V
    .locals 4

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    instance-of v0, p1, Lorg/h2/value/ValueLobDb;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/h2/value/ValueLobDb;

    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->isStored()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->lobs:Lorg/h2/util/SmallLRUCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lorg/h2/server/TcpServerThread$CachedInputStream;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/h2/server/TcpServerThread$CachedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0, p1}, Lorg/h2/value/Transfer;->writeValue(Lorg/h2/value/Value;)V

    return-void
.end method


# virtual methods
.method public cancelStatement(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->sessionId:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/server/TcpServerThread;->cache:Lorg/h2/util/SmallMap;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/h2/util/SmallMap;->getObject(IZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/command/Command;

    invoke-virtual {p1}, Lorg/h2/command/Command;->cancel()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    const-string v0, "Close"

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/h2/server/TcpServerThread;->stop:Z

    invoke-direct {p0}, Lorg/h2/server/TcpServerThread;->closeSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->close()V

    invoke-direct {p0, v0}, Lorg/h2/server/TcpServerThread;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v0, p0}, Lorg/h2/server/TcpServer;->remove(Lorg/h2/server/TcpServerThread;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v2, v1}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->close()V

    invoke-direct {p0, v0}, Lorg/h2/server/TcpServerThread;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v0, p0}, Lorg/h2/server/TcpServer;->remove(Lorg/h2/server/TcpServerThread;)V

    throw v1
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public run()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v0}, Lorg/h2/value/Transfer;->init()V

    const-string v0, "Connect"

    invoke-direct {p0, v0}, Lorg/h2/server/TcpServerThread;->trace(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/server/TcpServer;->allow(Ljava/net/Socket;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->readInt()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x6

    const v3, 0x15fbf

    const-string v4, ""

    if-lt v1, v2, :cond_a

    const/16 v2, 0x10

    if-gt v1, v2, :cond_9

    :try_start_2
    iget-object v3, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3}, Lorg/h2/value/Transfer;->readInt()I

    move-result v3

    if-lt v3, v2, :cond_0

    iput v2, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :cond_0
    iput v1, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    :goto_0
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    iget v2, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    invoke-virtual {v1, v2}, Lorg/h2/value/Transfer;->setVersion(I)V

    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xd

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    iget-object v5, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v5}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v6}, Lorg/h2/value/Transfer;->readInt()I

    move-result v6

    iput-boolean v0, p0, Lorg/h2/server/TcpServerThread;->stop:Z

    if-ne v6, v4, :cond_1

    iget-object v6, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v6}, Lorg/h2/value/Transfer;->readInt()I

    move-result v6

    iget-object v7, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v7, v5, v6}, Lorg/h2/server/TcpServer;->cancelStatement(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/16 v7, 0xe

    if-ne v6, v7, :cond_3

    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v1, v5}, Lorg/h2/server/TcpServer;->checkKeyAndGetDatabaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v5, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v5, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    :cond_3
    :goto_1
    iget-object v5, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v5}, Lorg/h2/server/TcpServer;->getBaseDir()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {}, Lorg/h2/engine/SysProperties;->getBaseDir()Ljava/lang/String;

    move-result-object v5

    :cond_4
    iget-object v6, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v6, v1}, Lorg/h2/server/TcpServer;->checkKeyAndGetDatabaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lorg/h2/engine/ConnectionInfo;

    invoke-direct {v6, v1}, Lorg/h2/engine/ConnectionInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lorg/h2/engine/ConnectionInfo;->setOriginalURL(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/h2/engine/ConnectionInfo;->setUserName(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->readBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/h2/engine/ConnectionInfo;->setUserPasswordHash([B)V

    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->readBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/h2/engine/ConnectionInfo;->setFilePasswordHash([B)V

    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->readInt()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_5

    iget-object v7, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v7}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v8}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/h2/engine/ConnectionInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v6, v5}, Lorg/h2/engine/ConnectionInfo;->setBaseDir(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v1}, Lorg/h2/server/TcpServer;->getIfExists()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "IFEXISTS"

    const-string v3, "TRUE"

    invoke-virtual {v6, v1, v3}, Lorg/h2/engine/ConnectionInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    iget v3, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    invoke-virtual {v1, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->flush()V

    iget v1, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    if-lt v1, v4, :cond_8

    invoke-virtual {v6}, Lorg/h2/engine/ConnectionInfo;->getFilePasswordHash()[B

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v1}, Lorg/h2/value/Transfer;->readBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/h2/engine/ConnectionInfo;->setFileEncryptionKey([B)V

    :cond_8
    invoke-static {}, Lorg/h2/engine/Engine;->getInstance()Lorg/h2/engine/Engine;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/h2/engine/Engine;->createSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/server/TcpServerThread;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/server/TcpServerThread;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3, v1}, Lorg/h2/value/Transfer;->setSession(Lorg/h2/engine/SessionInterface;)V

    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    iget v3, p0, Lorg/h2/server/TcpServerThread;->threadId:I

    invoke-virtual {v6}, Lorg/h2/engine/ConnectionInfo;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lorg/h2/server/TcpServer;->addConnection(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connected"

    invoke-direct {p0, v1}, Lorg/h2/server/TcpServerThread;->trace(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "16"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/h2/server/TcpServerThread;->clientVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "6"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_b
    const v1, 0x16005

    invoke-static {v1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    :try_start_3
    invoke-direct {p0, v1}, Lorg/h2/server/TcpServerThread;->sendError(Ljava/lang/Throwable;)V

    iput-boolean v0, p0, Lorg/h2/server/TcpServerThread;->stop:Z

    :goto_4
    iget-boolean v0, p0, Lorg/h2/server/TcpServerThread;->stop:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_c

    :try_start_4
    invoke-direct {p0}, Lorg/h2/server/TcpServerThread;->process()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-direct {p0, v0}, Lorg/h2/server/TcpServerThread;->sendError(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_c
    const-string v0, "Disconnect"

    invoke-direct {p0, v0}, Lorg/h2/server/TcpServerThread;->trace(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_5
    invoke-virtual {p0}, Lorg/h2/server/TcpServerThread;->close()V

    goto :goto_7

    :goto_6
    :try_start_6
    iget-object v1, p0, Lorg/h2/server/TcpServerThread;->server:Lorg/h2/server/TcpServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :goto_7
    return-void

    :catchall_3
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/server/TcpServerThread;->close()V

    throw v0
.end method

.method public setThread(Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/server/TcpServerThread;->thread:Ljava/lang/Thread;

    return-void
.end method
