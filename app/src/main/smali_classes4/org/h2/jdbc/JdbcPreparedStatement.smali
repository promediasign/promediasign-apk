.class public Lorg/h2/jdbc/JdbcPreparedStatement;
.super Lorg/h2/jdbc/JdbcStatement;
.source "SourceFile"

# interfaces
.implements Ljava/sql/PreparedStatement;


# instance fields
.field private batchIdentities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private batchParameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private cachedColumnLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected command:Lorg/h2/command/CommandInterface;

.field private final sqlStatement:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;IIIZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/h2/jdbc/JdbcStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;IIIZ)V

    iget-object p4, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p4}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object p4

    const/4 p5, 0x3

    invoke-virtual {p0, p4, p5, p3}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    iput-object p2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->sqlStatement:Ljava/lang/String;

    iget p3, p0, Lorg/h2/jdbc/JdbcStatement;->fetchSize:I

    invoke-virtual {p1, p2, p3}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    return-void
.end method

.method private executeUpdateInternal()I
    .locals 3

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-virtual {p0, v2}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    iget-object v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v2}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    move-result v2

    iput v2, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setParameter(ILorg/h2/value/Value;)V
    .locals 3

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v1}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v1

    if-ltz v0, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/expression/ParameterInterface;

    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, p2, v0}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "parameterIndex"

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public addBatch()V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "addBatch"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lorg/h2/value/Value;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/ParameterInterface;

    invoke-interface {v4}, Lorg/h2/expression/ParameterInterface;->getParamValue()Lorg/h2/value/Value;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public addBatch(Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "addBatch"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x16012

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public checkClosed(Z)Z
    .locals 6

    invoke-super {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->checkClosed(Z)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->sqlStatement:Ljava/lang/String;

    iget v3, p0, Lorg/h2/jdbc/JdbcStatement;->fetchSize:I

    invoke-virtual {v1, v2, v3}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v1}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/ParameterInterface;

    invoke-interface {v4}, Lorg/h2/expression/ParameterInterface;->getParamValue()Lorg/h2/value/Value;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/expression/ParameterInterface;

    invoke-interface {v5, v4, v0}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public clearBatch()V
    .locals 1

    :try_start_0
    const-string v0, "clearBatch"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public clearParameters()V
    .locals 7

    :try_start_0
    const-string v0, "clearParameters"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/ParameterInterface;

    iget-object v5, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    return-void

    :goto_2
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Lorg/h2/jdbc/JdbcStatement;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/h2/command/CommandInterface;->close()V

    iput-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public execute()Z
    .locals 15

    .line 1
    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v6

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "execute"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v11, 0x0

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-virtual {p0, v2}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    iget-object v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v2}, Lorg/h2/command/CommandInterface;->isQuery()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetType:I

    const/16 v3, 0x3eb

    const/4 v12, 0x1

    if-eq v2, v3, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    iget v2, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetConcurrency:I

    const/16 v3, 0x3f0

    if-ne v2, v3, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    iget-object v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    iget v3, p0, Lorg/h2/jdbc/JdbcStatement;->maxRows:I

    invoke-interface {v2, v3, v8}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v5

    invoke-interface {v5}, Lorg/h2/result/ResultInterface;->isLazy()Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v14, Lorg/h2/jdbc/JdbcResultSet;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-object v4, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    iget-boolean v7, p0, Lorg/h2/jdbc/JdbcStatement;->closedByResultSet:Z

    iget-object v10, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->cachedColumnLabelMap:Ljava/util/HashMap;

    move-object v1, v14

    move-object v3, p0

    invoke-direct/range {v1 .. v10}, Lorg/h2/jdbc/JdbcResultSet;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcPreparedStatement;Lorg/h2/command/CommandInterface;Lorg/h2/result/ResultInterface;IZZZLjava/util/HashMap;)V

    iput-object v14, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v13

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v2

    move-object v1, v2

    const/4 v13, 0x0

    goto :goto_5

    :cond_3
    :try_start_5
    iget-object v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v2}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    move-result v2

    iput v2, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v12, 0x0

    :goto_3
    if-nez v1, :cond_4

    :try_start_6
    invoke-virtual {p0, v11}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_6

    :cond_4
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return v12

    :goto_5
    if-nez v13, :cond_5

    :try_start_8
    invoke-virtual {p0, v11}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    :cond_5
    throw v1

    :goto_6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :goto_7
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "execute"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x16012

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 2

    .line 3
    const-string v0, "execute("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const p1, 0x16012

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 2

    .line 4
    const-string v0, "execute("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteIntArray([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const p1, 0x16012

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    .line 5
    const-string v0, "execute("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const p1, 0x16012

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeBatch()[I
    .locals 13

    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v0

    const-string v1, "executeBatch"

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchIdentities:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [I

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v1, :cond_4

    :try_start_1
    iget-object v8, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/h2/value/Value;

    iget-object v9, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v9}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    :goto_2
    array-length v11, v8

    if-ge v10, v11, :cond_1

    aget-object v11, v8, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/h2/expression/ParameterInterface;

    invoke-interface {v12, v11, v4}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_1
    const/4 v8, 0x1

    :try_start_2
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->executeUpdateInternal()I

    move-result v9

    aput v9, v2, v5

    iget-object v9, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v9, p0, v0}, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys(Lorg/h2/jdbc/JdbcStatement;I)Ljava/sql/ResultSet;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/sql/ResultSet;->next()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchIdentities:Ljava/util/ArrayList;

    invoke-interface {v9, v8}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v6

    :try_start_3
    invoke-virtual {p0, v6}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v6

    if-nez v7, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v6, v7}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    :goto_4
    const/4 v7, -0x3

    aput v7, v2, v5

    move-object v7, v6

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iput-object v3, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchParameters:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_5

    :try_start_4
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    :cond_5
    :try_start_5
    new-instance v0, Lorg/h2/jdbc/JdbcBatchUpdateException;

    invoke-direct {v0, v7, v2}, Lorg/h2/jdbc/JdbcBatchUpdateException;-><init>(Ljava/sql/SQLException;[I)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 12

    .line 1
    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v6

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ResultSet"

    const-string v2, "executeQuery()"

    invoke-virtual {p0, v1, v0, v6, v2}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchIdentities:Ljava/util/ArrayList;

    iget-object v11, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V

    iget v1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetType:I

    const/16 v2, 0x3eb

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    iget v1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetConcurrency:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x3f0

    if-ne v1, v2, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    iget v2, p0, Lorg/h2/jdbc/JdbcStatement;->maxRows:I

    invoke-interface {v1, v2, v8}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v5

    invoke-interface {v5}, Lorg/h2/result/ResultInterface;->isLazy()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_3

    :try_start_3
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_3
    new-instance v0, Lorg/h2/jdbc/JdbcResultSet;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-object v4, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    iget-boolean v7, p0, Lorg/h2/jdbc/JdbcStatement;->closedByResultSet:Z

    iget-object v10, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->cachedColumnLabelMap:Ljava/util/HashMap;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v10}, Lorg/h2/jdbc/JdbcResultSet;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcPreparedStatement;Lorg/h2/command/CommandInterface;Lorg/h2/result/ResultInterface;IZZZLjava/util/HashMap;)V

    iput-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    monitor-exit v11

    return-object v0

    :catchall_1
    move-exception v1

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    throw v1

    :goto_4
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "executeQuery"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x16012

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate()I
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "executeUpdate"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchIdentities:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->executeUpdateInternal()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "executeUpdate"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x16012

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 2

    .line 3
    const-string v0, "executeUpdate("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const p1, 0x16012

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 2

    .line 4
    const-string v0, "executeUpdate("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteIntArray([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const p1, 0x16012

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 5
    const-string v0, "executeUpdate("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const p1, 0x16012

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchIdentities:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v1}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const/16 v2, 0xa

    const-string v3, "identity"

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4, v2, v0}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    iget-object v2, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->batchIdentities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-virtual {v1, v4}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    invoke-super {p0}, Lorg/h2/jdbc/JdbcStatement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 8

    :try_start_0
    const-string v0, "getMetaData"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->getMetaData()Lorg/h2/result/ResultInterface;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v7

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ResultSetMetaData"

    const-string v2, "getMetaData()"

    invoke-virtual {p0, v1, v0, v7, v2}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getCatalog()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lorg/h2/jdbc/JdbcResultSetMetaData;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v6

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lorg/h2/jdbc/JdbcResultSetMetaData;-><init>(Lorg/h2/jdbc/JdbcResultSet;Lorg/h2/jdbc/JdbcPreparedStatement;Lorg/h2/result/ResultInterface;Ljava/lang/String;Lorg/h2/message/Trace;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 4

    const/16 v0, 0xb

    :try_start_0
    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ParameterMetaData"

    const-string v3, "getParameterMetaData()"

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    new-instance v0, Lorg/h2/jdbc/JdbcParameterMetaData;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-direct {v0, v2, p0, v3, v1}, Lorg/h2/jdbc/JdbcParameterMetaData;-><init>(Lorg/h2/message/Trace;Lorg/h2/jdbc/JdbcPreparedStatement;Lorg/h2/command/CommandInterface;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setArray(ILjava/sql/Array;)V
    .locals 2

    const-string v0, "setArray("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p2}, Ljava/sql/Array;->getArray()Ljava/lang/Object;

    move-result-object p2

    const/16 v1, 0x11

    invoke-static {v0, p2, v1}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setAsciiStream(ILjava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 2

    .line 2
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->setAsciiStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;J)V
    .locals 2

    .line 3
    const-string v0, "setAsciiStream("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-static {p2}, Lorg/h2/util/IOUtils;->getAsciiReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 2

    const-string v0, "setBigDecimal("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBinaryStream(ILjava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .locals 2

    .line 2
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->setBinaryStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;J)V
    .locals 2

    .line 3
    const-string v0, "setBinaryStream("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBlob(ILjava/io/InputStream;)V
    .locals 3

    .line 1
    const-string v0, "setBlob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBlob(ILjava/io/InputStream;J)V
    .locals 2

    .line 2
    const-string v0, "setBlob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 3

    .line 3
    const-string v0, "setBlob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    :try_start_1
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-interface {p2}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBoolean(IZ)V
    .locals 2

    const-string v0, "setBoolean("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setByte(IB)V
    .locals 2

    const-string v0, "setByte("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBytes(I[B)V
    .locals 2

    const-string v0, "setBytes("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteBytes([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueBytes;->get([B)Lorg/h2/value/ValueBytes;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setCachedColumnLabelMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->cachedColumnLabelMap:Ljava/util/HashMap;

    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .locals 2

    .line 2
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->setCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;J)V
    .locals 2

    .line 3
    const-string v0, "setCharacterStream("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setClob(ILjava/io/Reader;)V
    .locals 3

    .line 1
    const-string v0, "setClob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    :try_start_1
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setClob(ILjava/io/Reader;J)V
    .locals 2

    .line 2
    const-string v0, "setClob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 3

    .line 3
    const-string v0, "setClob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    :try_start_1
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setDate(ILjava/sql/Date;)V
    .locals 2

    .line 1
    const-string v0, "setDate("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteDate(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueDate;->get(Ljava/sql/Date;)Lorg/h2/value/ValueDate;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 2

    .line 2
    const-string v0, "setDate("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteDate(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", calendar);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V

    goto :goto_2

    :cond_1
    invoke-static {p2, p3}, Lorg/h2/util/DateTimeUtils;->convertDate(Ljava/sql/Date;Ljava/util/Calendar;)Lorg/h2/value/ValueDate;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setDouble(ID)V
    .locals 2

    const-string v0, "setDouble("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "d);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2, p3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setFloat(IF)V
    .locals 2

    const-string v0, "setFloat("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "f);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setInt(II)V
    .locals 2

    const-string v0, "setInt("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setLong(IJ)V
    .locals 2

    const-string v0, "setLong("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2, p3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNCharacterStream(ILjava/io/Reader;)V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcPreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;J)V
    .locals 2

    .line 2
    const-string v0, "setNCharacterStream("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNClob(ILjava/io/Reader;)V
    .locals 3

    .line 1
    const-string v0, "setNClob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNClob(ILjava/io/Reader;J)V
    .locals 2

    .line 2
    const-string v0, "setNClob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNClob(ILjava/sql/NClob;)V
    .locals 3

    .line 3
    const-string v0, "setNClob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z

    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNString(ILjava/lang/String;)V
    .locals 2

    const-string v0, "setNString("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNull(II)V
    .locals 2

    .line 1
    const-string v0, "setNull("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNull(IILjava/lang/String;)V
    .locals 3

    .line 2
    const-string v0, ", "

    const-string v1, "setNull("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ");"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setNull(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "setObject("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    const/4 v1, -0x1

    invoke-static {v0, p2, v1}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setObject(ILjava/lang/Object;I)V
    .locals 2

    .line 2
    const-string v0, "setObject("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-static {p3}, Lorg/h2/value/DataType;->convertSQLTypeToValueType(I)I

    move-result p3

    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 2

    .line 3
    const-string v0, "setObject("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ");"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->setObject(ILjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setRef(ILjava/sql/Ref;)V
    .locals 0

    const-string p1, "ref"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 0

    const-string p1, "rowId"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 0

    const-string p1, "SQLXML"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setShort(IS)V
    .locals 2

    const-string v0, "setShort("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", (short) "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setString(ILjava/lang/String;)V
    .locals 2

    const-string v0, "setString("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTime(ILjava/sql/Time;)V
    .locals 2

    .line 1
    const-string v0, "setTime("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteTime(Ljava/sql/Time;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueTime;->get(Ljava/sql/Time;)Lorg/h2/value/ValueTime;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 2

    .line 2
    const-string v0, "setTime("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteTime(Ljava/sql/Time;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", calendar);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V

    goto :goto_2

    :cond_1
    invoke-static {p2, p3}, Lorg/h2/util/DateTimeUtils;->convertTime(Ljava/sql/Time;Ljava/util/Calendar;)Lorg/h2/value/ValueTime;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 2

    .line 1
    const-string v0, "setTimestamp("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 2

    .line 2
    const-string v0, "setTimestamp("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", calendar);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setParameter(ILorg/h2/value/Value;)V

    goto :goto_2

    :cond_1
    invoke-static {p2, p3}, Lorg/h2/util/DateTimeUtils;->convertTimestamp(Ljava/sql/Timestamp;Ljava/util/Calendar;)Lorg/h2/value/ValueTimestamp;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 0

    const-string p1, "url"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "unicodeStream"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
