.class public abstract Lorg/h2/command/Command;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/command/CommandInterface;


# instance fields
.field private canReuse:Z

.field private volatile cancel:Z

.field protected final session:Lorg/h2/engine/Session;

.field private final sql:Ljava/lang/String;

.field protected startTimeNanos:J

.field private final trace:Lorg/h2/message/Trace;


# direct methods
.method public constructor <init>(Lorg/h2/command/Parser;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/h2/command/Parser;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    iput-object p2, p0, Lorg/h2/command/Command;->sql:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/Command;->trace:Lorg/h2/message/Trace;

    return-void
.end method

.method private filterConcurrentUpdate(Lorg/h2/message/DbException;J)J
    .locals 11

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v0

    const v1, 0x16013

    if-eq v0, v1, :cond_1

    const v1, 0x1601f

    if-eq v0, v1, :cond_1

    const v1, 0x16000

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-eqz v6, :cond_3

    sub-long v4, v0, p2

    iget-object v7, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v7}, Lorg/h2/engine/Session;->getLockTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v9, v4, v7

    if-gtz v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string p2, ""

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const p3, 0xc418

    invoke-static {p3, p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/h2/util/MathUtils;->randomInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v5

    int-to-long v7, v4

    if-eqz v5, :cond_5

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    div-long/2addr v7, v2

    sub-long/2addr v7, v0

    int-to-long v9, v4

    cmp-long v5, v7, v9

    if-ltz v5, :cond_4

    if-nez v6, :cond_6

    move-wide p2, v0

    :cond_6
    return-wide p2
.end method


# virtual methods
.method public canReuse()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/command/Command;->canReuse:Z

    return v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/command/Command;->cancel:Z

    return-void
.end method

.method public checkCanceled()V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/command/Command;->cancel:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/command/Command;->cancel:Z

    const v0, 0xdeb6

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/command/Command;->canReuse:Z

    return-void
.end method

.method public executeQuery(IZ)Lorg/h2/result/ResultInterface;
    .locals 7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/h2/command/Command;->startTimeNanos:J

    iget-object p2, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {p2}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    iget-object v3, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->waitIfExclusiveModeEnabled()V

    invoke-virtual {p0}, Lorg/h2/command/Command;->isReadOnly()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p2}, Lorg/h2/engine/Database;->beforeWriting()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    monitor-enter v2

    :try_start_0
    iget-object v5, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, p0}, Lorg/h2/engine/Session;->setCurrentCommand(Lorg/h2/command/Command;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p2}, Lorg/h2/engine/Database;->checkPowerOff()V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p0, p1}, Lorg/h2/command/Command;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v6

    invoke-interface {v6}, Lorg/h2/result/ResultInterface;->isLazy()Z

    move-result p1
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p0}, Lorg/h2/command/Command;->stop()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_9

    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lorg/h2/engine/Database;->afterWriting()V

    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v6

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception v6

    goto :goto_6

    :goto_4
    :try_start_4
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_4
    .catch Lorg/h2/message/DbException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_8

    :catch_2
    move-exception p1

    goto :goto_7

    :goto_5
    :try_start_5
    invoke-virtual {p2}, Lorg/h2/engine/Database;->shutdownImmediately()V

    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_5
    .catch Lorg/h2/message/DbException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    const/4 v4, 0x0

    goto :goto_8

    :catch_3
    move-exception p1

    const/4 v4, 0x0

    goto :goto_7

    :goto_6
    :try_start_6
    invoke-direct {p0, v6, v0, v1}, Lorg/h2/command/Command;->filterConcurrentUpdate(Lorg/h2/message/DbException;J)J

    move-result-wide v0
    :try_end_6
    .catch Lorg/h2/message/DbException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :goto_7
    :try_start_7
    iget-object v0, p0, Lorg/h2/command/Command;->sql:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Command;->sql:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/h2/engine/Database;->exceptionThrown(Ljava/sql/SQLException;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const v1, 0x15ffc

    if-ne v0, v1, :cond_4

    :try_start_8
    invoke-virtual {p2}, Lorg/h2/engine/Database;->shutdownImmediately()V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_4
    :try_start_9
    invoke-virtual {p2}, Lorg/h2/engine/Database;->checkPowerOff()V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_8
    if-eqz v4, :cond_5

    :try_start_a
    invoke-virtual {p0}, Lorg/h2/command/Command;->stop()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lorg/h2/engine/Database;->afterWriting()V

    :cond_6
    throw p1

    :goto_9
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p1
.end method

.method public executeUpdate()I
    .locals 10

    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->waitIfExclusiveModeEnabled()V

    invoke-virtual {p0}, Lorg/h2/command/Command;->isReadOnly()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v0}, Lorg/h2/engine/Database;->beforeWriting()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    monitor-enter v1

    :try_start_0
    iget-object v4, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->setSavepoint()Lorg/h2/engine/Session$Savepoint;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, p0}, Lorg/h2/engine/Session;->setCurrentCommand(Lorg/h2/command/Command;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    :goto_2
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkPowerOff()V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/command/Command;->update()I

    move-result v3
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lorg/h2/command/Command;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v0}, Lorg/h2/engine/Database;->afterWriting()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    :goto_3
    monitor-exit v1

    return v3

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/h2/engine/Database;->afterWriting()V

    :cond_3
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-static {v5}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v5

    throw v5
    :try_end_5
    .catch Lorg/h2/message/DbException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v4

    goto :goto_6

    :catch_0
    move-exception v5

    goto :goto_4

    :catch_1
    move-exception v3

    :try_start_6
    invoke-virtual {v0}, Lorg/h2/engine/Database;->shutdownImmediately()V

    invoke-static {v3}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v3

    throw v3
    :try_end_6
    .catch Lorg/h2/message/DbException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v4

    const/4 v3, 0x0

    goto :goto_6

    :catch_2
    move-exception v5

    const/4 v3, 0x0

    goto :goto_4

    :catch_3
    move-exception v8

    :try_start_7
    invoke-direct {p0, v8, v5, v6}, Lorg/h2/command/Command;->filterConcurrentUpdate(Lorg/h2/message/DbException;J)J

    move-result-wide v5
    :try_end_7
    .catch Lorg/h2/message/DbException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :goto_4
    :try_start_8
    iget-object v6, p0, Lorg/h2/command/Command;->sql:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object v6

    iget-object v8, p0, Lorg/h2/command/Command;->sql:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Lorg/h2/engine/Database;->exceptionThrown(Ljava/sql/SQLException;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v8

    const v9, 0x15ffc

    if-eq v8, v9, :cond_5

    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkPowerOff()V

    invoke-virtual {v6}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v6

    const v8, 0x9c41

    if-ne v6, v8, :cond_4

    iget-object v4, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->rollback()V

    goto :goto_5

    :cond_4
    iget-object v6, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v4, v7}, Lorg/h2/engine/Session;->rollbackTo(Lorg/h2/engine/Session$Savepoint;Z)V

    :goto_5
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_5
    :try_start_9
    invoke-virtual {v0}, Lorg/h2/engine/Database;->shutdownImmediately()V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_6
    if-eqz v3, :cond_7

    :try_start_a
    invoke-virtual {p0}, Lorg/h2/command/Command;->stop()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v3

    if-eqz v2, :cond_6

    :try_start_b
    invoke-virtual {v0}, Lorg/h2/engine/Database;->afterWriting()V

    :cond_6
    throw v3

    :cond_7
    :goto_7
    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lorg/h2/engine/Database;->afterWriting()V

    :cond_8
    throw v4

    :goto_8
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method public final getMetaData()Lorg/h2/result/ResultInterface;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/command/Command;->queryMeta()Lorg/h2/result/ResultInterface;

    move-result-object v0

    return-object v0
.end method

.method public abstract getParameters()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "+",
            "Lorg/h2/expression/ParameterInterface;",
            ">;"
        }
    .end annotation
.end method

.method public isCacheable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isQuery()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract isTransactional()Z
.end method

.method public abstract prepareJoinBatch()V
.end method

.method public query(I)Lorg/h2/result/ResultInterface;
    .locals 0

    const p1, 0x15f92

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public abstract queryMeta()Lorg/h2/result/ResultInterface;
.end method

.method public reuse()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/command/Command;->canReuse:Z

    invoke-virtual {p0}, Lorg/h2/command/Command;->getParameters()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/ParameterInterface;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 3

    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Command;->sql:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lorg/h2/command/Command;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getQueryStatistics()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/command/Command;->startTimeNanos:J

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->endStatement()V

    iget-object v2, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/h2/engine/Session;->setCurrentCommand(Lorg/h2/command/Command;)V

    invoke-virtual {p0}, Lorg/h2/command/Command;->isTransactional()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v1}, Lorg/h2/engine/Session;->commit(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getAutoCommit()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v0}, Lorg/h2/engine/Session;->commit(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getLockMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->unlockReadLocks()V

    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/h2/command/Command;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v2}, Lorg/h2/message/Trace;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lorg/h2/command/Command;->startTimeNanos:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/h2/command/Command;->startTimeNanos:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    iget-object v4, p0, Lorg/h2/command/Command;->trace:Lorg/h2/message/Trace;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "slow query: {0} ms"

    invoke-virtual {v4, v0, v1}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/command/Command;->sql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/command/Command;->getParameters()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/Trace;->formatParams(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()I
    .locals 1

    const v0, 0x15f91

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
