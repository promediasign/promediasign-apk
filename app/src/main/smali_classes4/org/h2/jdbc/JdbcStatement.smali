.class public Lorg/h2/jdbc/JdbcStatement;
.super Lorg/h2/message/TraceObject;
.source "SourceFile"

# interfaces
.implements Ljava/sql/Statement;
.implements Lorg/h2/jdbc/JdbcStatementBackwardsCompat;


# instance fields
.field private batchCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cancelled:Z

.field protected final closedByResultSet:Z

.field protected conn:Lorg/h2/jdbc/JdbcConnection;

.field private escapeProcessing:Z

.field private executingCommand:Lorg/h2/command/CommandInterface;

.field protected fetchSize:I

.field private lastExecutedCommandType:I

.field protected maxRows:I

.field protected resultSet:Lorg/h2/jdbc/JdbcResultSet;

.field protected final resultSetConcurrency:I

.field protected final resultSetType:I

.field protected session:Lorg/h2/engine/SessionInterface;

.field protected updateCount:I


# direct methods
.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;IIIZ)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    sget v0, Lorg/h2/engine/SysProperties;->SERVER_RESULT_SET_FETCH_SIZE:I

    iput v0, p0, Lorg/h2/jdbc/JdbcStatement;->fetchSize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/jdbc/JdbcStatement;->escapeProcessing:Z

    iput-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0, p2}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    iput p3, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetType:I

    iput p4, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetConcurrency:I

    iput-boolean p5, p0, Lorg/h2/jdbc/JdbcStatement;->closedByResultSet:Z

    return-void
.end method

.method private executeInternal(Ljava/lang/String;)Z
    .locals 14

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v6

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V

    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcStatement;->escapeProcessing:Z

    invoke-static {p1, v0}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget v1, p0, Lorg/h2/jdbc/JdbcStatement;->fetchSize:I

    invoke-virtual {v0, p1, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v10, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->isQuery()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetType:I

    const/16 v3, 0x3eb

    const/4 v11, 0x1

    if-eq v2, v3, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetConcurrency:I

    const/16 v3, 0x3f0

    if-ne v2, v3, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    iget v2, p0, Lorg/h2/jdbc/JdbcStatement;->maxRows:I

    invoke-interface {p1, v2, v8}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v5

    invoke-interface {v5}, Lorg/h2/result/ResultInterface;->isLazy()Z

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v13, Lorg/h2/jdbc/JdbcResultSet;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-boolean v7, p0, Lorg/h2/jdbc/JdbcStatement;->closedByResultSet:Z

    move-object v1, v13

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v9}, Lorg/h2/jdbc/JdbcResultSet;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcStatement;Lorg/h2/command/CommandInterface;Lorg/h2/result/ResultInterface;IZZZ)V

    iput-object v13, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v12

    goto :goto_2

    :catchall_0
    move-exception p1

    move v1, v12

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_2
    :try_start_4
    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    move-result v2

    iput v2, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v11, 0x0

    :goto_2
    if-nez v1, :cond_3

    :try_start_5
    invoke-virtual {p0, v10}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_6

    :cond_3
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v1, :cond_4

    :try_start_6
    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    goto :goto_7

    :cond_4
    :goto_4
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return v11

    :goto_5
    if-nez v1, :cond_5

    :try_start_7
    invoke-virtual {p0, v10}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    :cond_5
    throw p1

    :goto_6
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_7
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
.end method

.method private executeUpdateInternal(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V

    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcStatement;->escapeProcessing:Z

    invoke-static {p1, v0}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget v1, p0, Lorg/h2/jdbc/JdbcStatement;->fetchSize:I

    invoke-virtual {v0, p1, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    move-result v2

    iput v2, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->close()V

    iget p1, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw p1
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "addBatch"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcStatement;->escapeProcessing:Z

    invoke-static {p1, v0}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public afterWriting()V
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    :try_start_0
    const-string v0, "cancel"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->executingCommand:Lorg/h2/command/CommandInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->cancel()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/jdbc/JdbcStatement;->cancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public checkClosed()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed(Z)Z

    move-result v0

    return v0
.end method

.method public checkClosed(Z)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcConnection;->checkClosed(Z)V

    iget-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const p1, 0x15f97

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public checkClosedForWrite()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed(Z)Z

    move-result v0

    return v0
.end method

.method public clearBatch()V
    .locals 1

    :try_start_0
    const-string v0, "clearBatch"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public clearWarnings()V
    .locals 1

    :try_start_0
    const-string v0, "clearWarnings"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 2

    :try_start_0
    const-string v0, "close"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public closeOldResultSet()V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-boolean v3, p0, Lorg/h2/jdbc/JdbcStatement;->closedByResultSet:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/h2/jdbc/JdbcResultSet;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lorg/h2/jdbc/JdbcStatement;->cancelled:Z

    iput-object v1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    iput v0, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I

    return-void

    :goto_1
    iput-boolean v2, p0, Lorg/h2/jdbc/JdbcStatement;->cancelled:Z

    iput-object v1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    iput v0, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I

    throw v3
.end method

.method public closeOnCompletion()V
    .locals 0

    return-void
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "execute"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeInternal(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 2

    .line 2
    const-string v0, "execute("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeInternal(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;[I)Z
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

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteIntArray([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeInternal(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
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

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeInternal(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeBatch()[I
    .locals 7

    :try_start_0
    const-string v0, "executeBatch"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosedForWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    iget-object v6, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v6}, Lorg/h2/jdbc/JdbcStatement;->executeUpdateInternal(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {p0, v4}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v4

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v5}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    :goto_2
    const/4 v5, -0x3

    aput v5, v1, v3

    const/4 v5, 0x1

    move-object v5, v4

    const/4 v4, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lorg/h2/jdbc/JdbcStatement;->batchCommands:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_3

    :try_start_4
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_3
    :try_start_5
    new-instance v0, Lorg/h2/jdbc/JdbcBatchUpdateException;

    invoke-direct {v0, v5, v1}, Lorg/h2/jdbc/JdbcBatchUpdateException;-><init>(Ljava/sql/SQLException;[I)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    :try_start_6
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->afterWriting()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_5
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 11

    const-string v0, "executeQuery("

    const/4 v1, 0x4

    :try_start_0
    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v7

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ResultSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v7, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V

    iget-boolean v1, p0, Lorg/h2/jdbc/JdbcStatement;->escapeProcessing:Z

    invoke-static {p1, v1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget v2, p0, Lorg/h2/jdbc/JdbcStatement;->fetchSize:I

    invoke-virtual {v1, p1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v5

    iget p1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetType:I

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    iget p1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetConcurrency:I

    const/16 v1, 0x3f0

    if-ne p1, v1, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {p0, v5}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    :try_start_2
    iget v1, p0, Lorg/h2/jdbc/JdbcStatement;->maxRows:I

    invoke-interface {v5, v1, v9}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v6

    invoke-interface {v6}, Lorg/h2/result/ResultInterface;->isLazy()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_3

    :try_start_3
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_3
    :goto_3
    if-nez v1, :cond_4

    invoke-interface {v5}, Lorg/h2/command/CommandInterface;->close()V

    :cond_4
    new-instance p1, Lorg/h2/jdbc/JdbcResultSet;

    iget-object v3, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-boolean v8, p0, Lorg/h2/jdbc/JdbcStatement;->closedByResultSet:Z

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v10}, Lorg/h2/jdbc/JdbcResultSet;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcStatement;Lorg/h2/command/CommandInterface;Lorg/h2/result/ResultInterface;IZZZ)V

    iput-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception v1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    throw v1

    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "executeUpdate"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeUpdateInternal(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 2

    .line 2
    const-string v0, "executeUpdate("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeUpdateInternal(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
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

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteIntArray([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeUpdateInternal(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
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

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->executeUpdateInternal(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1

    const-string v0, "getConnection"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    return-object v0
.end method

.method public getFetchDirection()I
    .locals 1

    :try_start_0
    const-string v0, "getFetchDirection"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x3e8

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getFetchSize()I
    .locals 1

    :try_start_0
    const-string v0, "getFetchSize"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->fetchSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 4

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ResultSet"

    const-string v3, "getGeneratedKeys()"

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p0, v1}, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys(Lorg/h2/jdbc/JdbcStatement;I)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getLastExecutedCommandType()I
    .locals 1

    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->lastExecutedCommandType:I

    return v0
.end method

.method public getMaxFieldSize()I
    .locals 1

    :try_start_0
    const-string v0, "getMaxFieldSize"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getMaxRows()I
    .locals 1

    :try_start_0
    const-string v0, "getMaxRows"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->maxRows:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getMoreResults()Z
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "getMoreResults"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getMoreResults(I)Z
    .locals 3

    .line 2
    :try_start_0
    const-string v0, "getMoreResults"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "current"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->closeOldResultSet()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getQueryTimeout()I
    .locals 1

    :try_start_0
    const-string v0, "getQueryTimeout"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/message/TraceObject;->getTraceId()I

    move-result v0

    const-string v1, "ResultSet"

    const-string v2, "getResultSet()"

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3, v0, v2}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, "getResultSet"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSetConcurrency()I
    .locals 1

    :try_start_0
    const-string v0, "getResultSetConcurrency"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetConcurrency:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSetHoldability()I
    .locals 1

    :try_start_0
    const-string v0, "getResultSetHoldability"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSetType()I
    .locals 1

    :try_start_0
    const-string v0, "getResultSetType"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->resultSetType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getUpdateCount()I
    .locals 1

    :try_start_0
    const-string v0, "getUpdateCount"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->updateCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1

    :try_start_0
    const-string v0, "getWarnings"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcStatement;->cancelled:Z

    return v0
.end method

.method public isCloseOnCompletion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isClosed()Z
    .locals 1

    :try_start_0
    const-string v0, "isClosed"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isPoolable()Z
    .locals 1

    const-string v0, "isPoolable"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onLazyResultSetClose(Lorg/h2/command/CommandInterface;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcStatement;->setExecutingStatement(Lorg/h2/command/CommandInterface;)V

    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->stop()V

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->close()V

    :cond_0
    return-void
.end method

.method public setCursorName(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "setCursorName"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setEscapeProcessing(Z)V
    .locals 2

    const-string v0, "setEscapeProcessing("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iput-boolean p1, p0, Lorg/h2/jdbc/JdbcStatement;->escapeProcessing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setExecutingStatement(Lorg/h2/command/CommandInterface;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->setExecutingStatement(Ljava/sql/Statement;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lorg/h2/jdbc/JdbcConnection;->setExecutingStatement(Ljava/sql/Statement;)V

    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->getCommandType()I

    move-result v0

    iput v0, p0, Lorg/h2/jdbc/JdbcStatement;->lastExecutedCommandType:I

    :goto_0
    iput-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->executingCommand:Lorg/h2/command/CommandInterface;

    return-void
.end method

.method public setFetchDirection(I)V
    .locals 3

    :try_start_0
    const-string v0, "setFetchDirection"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setFetchSize(I)V
    .locals 3

    :try_start_0
    const-string v0, "setFetchSize"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    if-ltz p1, :cond_2

    if-lez p1, :cond_0

    iget v0, p0, Lorg/h2/jdbc/JdbcStatement;->maxRows:I

    if-lez v0, :cond_0

    if-gt p1, v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    sget p1, Lorg/h2/engine/SysProperties;->SERVER_RESULT_SET_FETCH_SIZE:I

    :cond_1
    iput p1, p0, Lorg/h2/jdbc/JdbcStatement;->fetchSize:I

    return-void

    :cond_2
    const-string v0, "rows"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setMaxFieldSize(I)V
    .locals 3

    :try_start_0
    const-string v0, "setMaxFieldSize"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setMaxRows(I)V
    .locals 3

    :try_start_0
    const-string v0, "setMaxRows"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/h2/jdbc/JdbcStatement;->maxRows:I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string v0, "maxRows"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setPoolable(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPoolable("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setQueryTimeout(I)V
    .locals 3

    :try_start_0
    const-string v0, "setQueryTimeout"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcConnection;->setQueryTimeout(I)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string v0, "seconds"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcStatement;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "iface"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

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
