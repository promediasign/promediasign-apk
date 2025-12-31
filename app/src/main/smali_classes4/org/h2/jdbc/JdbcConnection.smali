.class public Lorg/h2/jdbc/JdbcConnection;
.super Lorg/h2/message/TraceObject;
.source "SourceFile"

# interfaces
.implements Ljava/sql/Connection;
.implements Lorg/h2/jdbc/JdbcConnectionBackwardsCompat;


# static fields
.field private static final NUM_SERVERS:Ljava/lang/String; = "numServers"

.field private static final PREFIX_SERVER:Ljava/lang/String; = "server"

.field private static keepOpenStackTrace:Z


# instance fields
.field private catalog:Ljava/lang/String;

.field private clientInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private commit:Lorg/h2/command/CommandInterface;

.field private executingStatement:Ljava/sql/Statement;

.field private getGeneratedKeys:Lorg/h2/command/CommandInterface;

.field private getLockMode:Lorg/h2/command/CommandInterface;

.field private getQueryTimeout:Lorg/h2/command/CommandInterface;

.field private getReadOnly:Lorg/h2/command/CommandInterface;

.field private holdability:I

.field private mode:Ljava/lang/String;

.field private queryTimeoutCache:I

.field private rollback:Lorg/h2/command/CommandInterface;

.field private savepointId:I

.field private session:Lorg/h2/engine/SessionInterface;

.field private setLockMode:Lorg/h2/command/CommandInterface;

.field private setQueryTimeout:Lorg/h2/command/CommandInterface;

.field private final url:Ljava/lang/String;

.field private final user:Ljava/lang/String;

.field private final watcher:Lorg/h2/util/CloseWatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/h2/engine/ConnectionInfo;

    invoke-direct {v0, p1, p2}, Lorg/h2/engine/ConnectionInfo;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lorg/h2/jdbc/JdbcConnection;-><init>(Lorg/h2/engine/ConnectionInfo;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/ConnectionInfo;Z)V
    .locals 3

    .line 2
    const-string v0, "Connection "

    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lorg/h2/jdbc/JdbcConnection;->holdability:I

    const/4 v2, -0x1

    iput v2, p0, Lorg/h2/jdbc/JdbcConnection;->queryTimeoutCache:I

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {}, Lorg/h2/engine/SysProperties;->getBaseDir()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/h2/engine/ConnectionInfo;->setBaseDir(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p2, Lorg/h2/engine/SessionRemote;

    invoke-direct {p2, p1}, Lorg/h2/engine/SessionRemote;-><init>(Lorg/h2/engine/ConnectionInfo;)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lorg/h2/engine/SessionRemote;->connectEmbeddedOrServer(Z)Lorg/h2/engine/SessionInterface;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p2}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result p2

    iget-object v2, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p0, v2, v1, p2}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->user:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = DriverManager.getConnection("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getOriginalURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", \"\");"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/h2/message/Trace;->infoCode(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getURL()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->url:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->closeOld()V

    iget-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    sget-boolean p2, Lorg/h2/jdbc/JdbcConnection;->keepOpenStackTrace:Z

    invoke-static {p0, p1, p2}, Lorg/h2/util/CloseWatcher;->register(Ljava/lang/Object;Ljava/io/Closeable;Z)Lorg/h2/util/CloseWatcher;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->watcher:Lorg/h2/util/CloseWatcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>(Lorg/h2/engine/SessionInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/h2/jdbc/JdbcConnection;->holdability:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/h2/jdbc/JdbcConnection;->queryTimeoutCache:I

    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result p1

    iget-object v1, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p0, v1, v0, p1}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    iput-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->user:Ljava/lang/String;

    iput-object p3, p0, Lorg/h2/jdbc/JdbcConnection;->url:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->watcher:Lorg/h2/util/CloseWatcher;

    return-void
.end method

.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/h2/jdbc/JdbcConnection;->holdability:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/h2/jdbc/JdbcConnection;->queryTimeoutCache:I

    iget-object v1, p1, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    iput-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v1

    iget-object v2, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p0, v2, v0, v1}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->user:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->user:Ljava/lang/String;

    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->url:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->url:Ljava/lang/String;

    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->catalog:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->catalog:Ljava/lang/String;

    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->commit:Lorg/h2/command/CommandInterface;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->commit:Lorg/h2/command/CommandInterface;

    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys:Lorg/h2/command/CommandInterface;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys:Lorg/h2/command/CommandInterface;

    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->getLockMode:Lorg/h2/command/CommandInterface;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getLockMode:Lorg/h2/command/CommandInterface;

    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->getReadOnly:Lorg/h2/command/CommandInterface;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getReadOnly:Lorg/h2/command/CommandInterface;

    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->rollback:Lorg/h2/command/CommandInterface;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->rollback:Lorg/h2/command/CommandInterface;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->watcher:Lorg/h2/util/CloseWatcher;

    iget-object v0, p1, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private checkClosedForWrite()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed(Z)V

    return-void
.end method

.method private static checkHoldability(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "resultSetHoldability"

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "map.size > 0"

    invoke-static {p0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static checkRunOver(IILjava/lang/String;)V
    .locals 0

    if-ge p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2, p0}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static checkTypeConcurrency(II)V
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "resultSetType"

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :pswitch_0
    const/16 p0, 0x3ef

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3f0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "resultSetConcurrency"

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/h2/command/CommandInterface;->close()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private closeOld()V
    .locals 4

    :goto_0
    invoke-static {}, Lorg/h2/util/CloseWatcher;->pollUnclosed()Lorg/h2/util/CloseWatcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/h2/util/CloseWatcher;->getCloseable()Ljava/io/Closeable;

    move-result-object v1

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    const-string v3, "closing session"

    invoke-virtual {v2, v1, v3}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lorg/h2/jdbc/JdbcConnection;->keepOpenStackTrace:Z

    invoke-virtual {v0}, Lorg/h2/util/CloseWatcher;->getOpenStackTrace()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fa2

    invoke-static {v1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v2, v1, v0}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closePreparedCommands()V
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->commit:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->commit:Lorg/h2/command/CommandInterface;

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->rollback:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->rollback:Lorg/h2/command/CommandInterface;

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getReadOnly:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getReadOnly:Lorg/h2/command/CommandInterface;

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys:Lorg/h2/command/CommandInterface;

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getLockMode:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getLockMode:Lorg/h2/command/CommandInterface;

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setLockMode:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setLockMode:Lorg/h2/command/CommandInterface;

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-static {v0}, Lorg/h2/jdbc/JdbcConnection;->closeAndSetNull(Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setQueryTimeout:Lorg/h2/command/CommandInterface;

    return-void
.end method

.method private static convertSavepoint(Ljava/sql/Savepoint;)Lorg/h2/jdbc/JdbcSavepoint;
    .locals 2

    instance-of v0, p0, Lorg/h2/jdbc/JdbcSavepoint;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/h2/jdbc/JdbcSavepoint;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const v0, 0x15fcf

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static convertToClientInfoException(Ljava/sql/SQLException;)Ljava/sql/SQLClientInfoException;
    .locals 7

    instance-of v0, p0, Ljava/sql/SQLClientInfoException;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/sql/SQLClientInfoException;

    return-object p0

    :cond_0
    new-instance v6, Ljava/sql/SQLClientInfoException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/sql/SQLClientInfoException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method private static found(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private static isInternalProperty(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "numServers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "server"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;
    .locals 1

    .line 2
    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    const v0, 0x7fffffff

    invoke-interface {p2, p1, v0}, Lorg/h2/engine/SessionInterface;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private rollbackInternal()V
    .locals 2

    const-string v0, "ROLLBACK"

    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->rollback:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->rollback:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    return-void
.end method

.method private static translateGetEnd(Ljava/lang/String;IC)I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x22

    if-eq p2, v1, :cond_c

    const/16 v1, 0x24

    if-eq p2, v1, :cond_8

    const/16 v1, 0x27

    if-eq p2, v1, :cond_6

    const/16 v1, 0xa

    const/16 v2, 0xd

    const/16 v3, 0x2d

    if-eq p2, v3, :cond_4

    const/16 v3, 0x2f

    if-ne p2, v3, :cond_3

    add-int/lit8 p2, p1, 0x1

    invoke-static {p2, v0, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_1

    add-int/lit8 p2, p1, 0x2

    const-string v0, "*/"

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_0

    add-int/lit8 p1, p2, 0x1

    goto :goto_1

    :cond_0
    invoke-static {p0, p1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v3, :cond_2

    add-int/lit8 p1, p1, 0x2

    :goto_0
    if-ge p1, v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "c="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_4
    add-int/lit8 p2, p1, 0x1

    invoke-static {p2, v0, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v3, :cond_5

    add-int/lit8 p1, p1, 0x2

    :goto_2
    if-ge p1, v0, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return p1

    :cond_6
    add-int/lit8 p2, p1, 0x1

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    if-ltz p2, :cond_7

    return p2

    :cond_7
    invoke-static {p0, p1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_8
    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_b

    add-int/lit8 p2, p1, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v1, :cond_b

    if-eqz p1, :cond_9

    add-int/lit8 p2, p1, -0x1

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x20

    if-gt p2, v0, :cond_b

    :cond_9
    const-string p2, "$$"

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_a

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_a
    invoke-static {p0, p1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_b
    return p1

    :cond_c
    add-int/lit8 p2, p1, 0x1

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    if-ltz p2, :cond_d

    return p2

    :cond_d
    invoke-static {p0, p1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static translateSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static translateSQL(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14

    .line 2
    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/16 p1, 0x7b

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_19

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_18

    const/16 v7, 0x24

    if-eq v5, v7, :cond_18

    const/16 v7, 0x27

    if-eq v5, v7, :cond_18

    const/16 v8, 0x2d

    if-eq v5, v8, :cond_18

    const/16 v9, 0x2f

    if-eq v5, v9, :cond_18

    const/16 v10, 0x7d

    const/16 v11, 0x20

    if-eq v5, p1, :cond_4

    if-eq v5, v10, :cond_2

    goto/16 :goto_9

    :cond_2
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    aput-char v11, v0, v3

    goto/16 :goto_9

    :cond_3
    invoke-static {p0, v3}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_4
    add-int/lit8 v5, v4, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :cond_5
    aput-char v11, v0, v3

    :goto_1
    aget-char v12, v0, v3

    invoke-static {v12}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v1, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    goto :goto_1

    :cond_6
    aget-char v12, v0, v3

    const/16 v13, 0x30

    if-lt v12, v13, :cond_9

    const/16 v13, 0x39

    if-gt v12, v13, :cond_9

    add-int/lit8 v5, v3, -0x1

    aput-char p1, v0, v5

    :goto_2
    invoke-static {v3, v1, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    aget-char v5, v0, v3

    if-ne v5, v10, :cond_7

    goto/16 :goto_9

    :cond_7
    if-eq v5, v6, :cond_8

    if-eq v5, v7, :cond_8

    if-eq v5, v8, :cond_8

    if-eq v5, v9, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {p0, v3, v5}, Lorg/h2/jdbc/JdbcConnection;->translateGetEnd(Ljava/lang/String;IC)I

    move-result v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    const/16 v4, 0x3f

    if-ne v12, v4, :cond_c

    add-int/lit8 v4, v3, 0x1

    :goto_4
    invoke-static {v4, v1, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    aget-char v6, v0, v4

    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_b

    :goto_5
    add-int/lit8 v4, v4, 0x1

    invoke-static {v4, v1, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    aget-char v6, v0, v4

    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_5

    :cond_b
    const-string p1, "="

    invoke-static {p0, v4, p1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_c
    move v4, v3

    :cond_d
    :goto_6
    aget-char v6, v0, v4

    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v6

    if-nez v6, :cond_e

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4, v1, p0}, Lorg/h2/jdbc/JdbcConnection;->checkRunOver(IILjava/lang/String;)V

    goto :goto_6

    :cond_e
    const-string v6, "fn"

    invoke-static {p0, v3, v6}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_f

    goto :goto_8

    :cond_f
    const-string v6, "escape"

    invoke-static {p0, v3, v6}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_7

    :cond_10
    const-string v6, "call"

    invoke-static {p0, v3, v6}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_7

    :cond_11
    const-string v6, "oj"

    invoke-static {p0, v3, v6}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_8

    :cond_12
    const-string v6, "ts"

    invoke-static {p0, v3, v6}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_7

    :cond_13
    const-string v6, "t"

    invoke-static {p0, v3, v6}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_7

    :cond_14
    const-string v6, "d"

    invoke-static {p0, v3, v6}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    :goto_7
    move v3, v4

    :cond_15
    move v4, v5

    goto :goto_9

    :cond_16
    const-string v4, "params"

    invoke-static {p0, v3, v4}, Lorg/h2/jdbc/JdbcConnection;->found(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v7, 0x6

    goto :goto_8

    :cond_17
    const/4 v7, 0x0

    :goto_8
    if-lez v7, :cond_15

    aput-char v11, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_8

    :cond_18
    invoke-static {p0, v3, v5}, Lorg/h2/jdbc/JdbcConnection;->translateGetEnd(Ljava/lang/String;IC)I

    move-result v3

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_19
    if-nez v4, :cond_1b

    if-eqz v0, :cond_1a

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :cond_1a
    return-object p0

    :cond_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1c
    const-string p0, "SQL"

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public abort(Ljava/util/concurrent/Executor;)V
    .locals 0

    return-void
.end method

.method public afterWriting()V
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->afterWriting()V

    :cond_0
    return-void
.end method

.method public checkClosed()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed(Z)V

    return-void
.end method

.method public checkClosed(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0, p1}, Lorg/h2/engine/SessionInterface;->isReconnectNeeded(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    const-string v1, "reconnect"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->closePreparedCommands()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0, p1}, Lorg/h2/engine/SessionInterface;->reconnect(Z)Lorg/h2/engine/SessionInterface;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    :cond_0
    return-void

    :cond_1
    const p1, 0x16009

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const p1, 0x15f97

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public clearWarnings()V
    .locals 1

    :try_start_0
    const-string v0, "clearWarnings"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "close"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->watcher:Lorg/h2/util/CloseWatcher;

    invoke-static {v0}, Lorg/h2/util/CloseWatcher;->unregister(Lorg/h2/util/CloseWatcher;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->cancel()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->executingStatement:Ljava/sql/Statement;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Ljava/sql/Statement;->cancel()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    :cond_1
    :goto_0
    :try_start_3
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2}, Lorg/h2/engine/SessionInterface;->isClosed()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v2, :cond_5

    :try_start_5
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2}, Lorg/h2/engine/SessionInterface;->hasPendingTransaction()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/h2/engine/SessionInterface;->isReconnectNeeded(Z)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v2, :cond_3

    :try_start_6
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->rollbackInternal()V
    :try_end_6
    .catch Lorg/h2/message/DbException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_7
    invoke-virtual {v2}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v3

    const v4, 0x15fd3

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    throw v2

    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2}, Lorg/h2/engine/SessionInterface;->afterWriting()V

    :cond_4
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->closePreparedCommands()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2}, Lorg/h2/engine/SessionInterface;->close()V

    goto :goto_3

    :catchall_2
    move-exception v2

    goto :goto_4

    :goto_2
    iget-object v3, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v3}, Lorg/h2/engine/SessionInterface;->close()V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_5
    :goto_3
    :try_start_9
    iput-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    monitor-exit p0

    return-void

    :catchall_3
    move-exception v1

    goto :goto_5

    :goto_4
    :try_start_a
    iput-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    throw v2

    :goto_5
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_6
    :try_start_c
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_7
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commit()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "commit"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosedForWrite()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "COMMIT"

    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->commit:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->commit:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->executeUpdate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public convertToDefaultObject(Lorg/h2/value/Value;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lorg/h2/engine/SysProperties;->serializeJavaObject:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/util/JdbcUtils;->deserialize([BLorg/h2/store/DataHandler;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/16 v0, 0xa

    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v0

    new-instance v1, Lorg/h2/jdbc/JdbcClob;

    invoke-direct {v1, p0, p1, v0}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V

    :goto_1
    move-object p1, v1

    goto :goto_2

    :cond_3
    const/16 v0, 0x9

    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v0

    new-instance v1, Lorg/h2/jdbc/JdbcBlob;

    invoke-direct {v1, p0, p1, v0}, Lorg/h2/jdbc/JdbcBlob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V

    goto :goto_1

    :goto_2
    return-object p1
.end method

.method public createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;
    .locals 3

    const/16 p1, 0x10

    :try_start_0
    invoke-static {p1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v0

    const-string v1, "Array"

    const-string v2, "createArrayOf()"

    invoke-virtual {p0, v1, p1, v0, v2}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    iget-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    const/16 v1, 0x11

    invoke-static {p1, p2, v1}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object p1

    new-instance p2, Lorg/h2/jdbc/JdbcArray;

    invoke-direct {p2, p0, p1, v0}, Lorg/h2/jdbc/JdbcArray;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public createBlob()Ljava/sql/Blob;
    .locals 5

    .line 1
    const/16 v0, 0x9

    :try_start_0
    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v1

    const-string v2, "Blob"

    const-string v3, "createClob()"

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosedForWrite()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v3, Lorg/h2/util/Utils;->EMPTY_BYTES:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2, v0}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    new-instance v2, Lorg/h2/jdbc/JdbcBlob;

    invoke-direct {v2, p0, v0, v1}, Lorg/h2/jdbc/JdbcBlob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;
    .locals 3

    .line 2
    if-nez p1, :cond_0

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    const-wide/16 p2, -0x1

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p2, p1}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    return-object p1
.end method

.method public createClob()Ljava/sql/Clob;
    .locals 5

    .line 1
    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v1

    const-string v2, "Clob"

    const-string v3, "createClob()"

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosedForWrite()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Lorg/h2/util/Utils;->EMPTY_BYTES:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2, v0}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    new-instance v2, Lorg/h2/jdbc/JdbcClob;

    invoke-direct {v2, p0, v0, v1}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;
    .locals 3

    .line 2
    if-nez p1, :cond_0

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    const-wide/16 p2, -0x1

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p2, p1}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    return-object p1
.end method

.method public createNClob()Ljava/sql/NClob;
    .locals 5

    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v1

    const-string v2, "NClob"

    const-string v3, "createNClob()"

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosedForWrite()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Lorg/h2/util/Utils;->EMPTY_BYTES:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v2, v0}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    new-instance v2, Lorg/h2/jdbc/JdbcClob;

    invoke-direct {v2, p0, v0, v1}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .locals 1

    const-string v0, "SQLXML"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 7

    .line 1
    const/16 v0, 0x8

    :try_start_0
    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v3

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Statement"

    const-string v2, "createStatement()"

    invoke-virtual {p0, v1, v0, v3, v2}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    new-instance v0, Lorg/h2/jdbc/JdbcStatement;

    const/16 v5, 0x3ef

    const/4 v6, 0x0

    const/16 v4, 0x3eb

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/h2/jdbc/JdbcStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 8

    .line 2
    const-string v0, "createStatement("

    const/16 v1, 0x8

    :try_start_0
    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v4

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Statement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v4, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1, p2}, Lorg/h2/jdbc/JdbcConnection;->checkTypeConcurrency(II)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    new-instance v0, Lorg/h2/jdbc/JdbcStatement;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/h2/jdbc/JdbcStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .locals 9

    .line 3
    const-string v0, ", "

    const-string v1, "createStatement("

    const/16 v2, 0x8

    :try_start_0
    invoke-static {v2}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v5

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Statement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v2, v5, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1, p2}, Lorg/h2/jdbc/JdbcConnection;->checkTypeConcurrency(II)V

    invoke-static {p3}, Lorg/h2/jdbc/JdbcConnection;->checkHoldability(I)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    new-instance p3, Lorg/h2/jdbc/JdbcStatement;

    const/4 v8, 0x0

    move-object v3, p3

    move-object v4, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v3 .. v8}, Lorg/h2/jdbc/JdbcStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    .locals 0

    const-string p1, "Struct"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized getAutoCommit()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    const-string v0, "getAutoCommit"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getAutoCommit()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "getCatalog"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->catalog:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "CALL DATABASE()"

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v2

    invoke-interface {v2}, Lorg/h2/result/ResultInterface;->next()Z

    invoke-interface {v2}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->catalog:Ljava/lang/String;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->catalog:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getClientInfo"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getClientInfo()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "name"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getClientInfo()Ljava/util/Properties;
    .locals 5

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getClientInfo();"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getClusterServers()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v2, "numServers"

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object v1

    :goto_3
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getCompareMode()Lorg/h2/value/CompareMode;
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v0

    return-object v0
.end method

.method public getGeneratedKeys(Lorg/h2/jdbc/JdbcStatement;I)Ljava/sql/ResultSet;
    .locals 11

    const-string v0, "SELECT SCOPE_IDENTITY() WHERE SCOPE_IDENTITY() IS NOT NULL"

    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys:Lorg/h2/command/CommandInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v6

    new-instance v0, Lorg/h2/jdbc/JdbcResultSet;

    iget-object v5, p0, Lorg/h2/jdbc/JdbcConnection;->getGeneratedKeys:Lorg/h2/command/CommandInterface;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    invoke-direct/range {v2 .. v10}, Lorg/h2/jdbc/JdbcResultSet;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcStatement;Lorg/h2/command/CommandInterface;Lorg/h2/result/ResultInterface;IZZZ)V

    return-object v0
.end method

.method public getHoldability()I
    .locals 1

    :try_start_0
    const-string v0, "getHoldability"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    iget v0, p0, Lorg/h2/jdbc/JdbcConnection;->holdability:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getMetaData()Ljava/sql/DatabaseMetaData;
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DatabaseMetaData"

    const-string v3, "getMetaData()"

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    new-instance v0, Lorg/h2/jdbc/JdbcDatabaseMetaData;

    iget-object v2, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-direct {v0, p0, v2, v1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/message/Trace;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->mode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "SELECT VALUE FROM INFORMATION_SCHEMA.SETTINGS WHERE NAME=?"

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const-string v1, "MODE"

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->mode:Ljava/lang/String;

    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkTimeout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPowerOffCount()I
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getPowerOffCount()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getQueryTimeout()I
    .locals 3

    :try_start_0
    iget v0, p0, Lorg/h2/jdbc/JdbcConnection;->queryTimeoutCache:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    const-string v0, "SELECT VALUE FROM INFORMATION_SCHEMA.SETTINGS WHERE NAME=?"

    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/ParameterInterface;

    const-string v2, "QUERY_TIMEOUT"

    invoke-static {v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-interface {v0, v1, v1}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->next()Z

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getInt()I

    move-result v1

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->close()V

    if-eqz v1, :cond_0

    add-int/lit16 v1, v1, 0x3e7

    div-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput v1, p0, Lorg/h2/jdbc/JdbcConnection;->queryTimeoutCache:I

    :cond_1
    iget v0, p0, Lorg/h2/jdbc/JdbcConnection;->queryTimeoutCache:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getSchema"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getSession()Lorg/h2/engine/SessionInterface;
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    return-object v0
.end method

.method public getTransactionIsolation()I
    .locals 4

    const-string v0, "lockMode:"

    :try_start_0
    const-string v1, "getTransactionIsolation"

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    const-string v1, "CALL LOCK_MODE()"

    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->getLockMode:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->getLockMode:Lorg/h2/command/CommandInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->next()Z

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->close()V

    const/4 v1, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :cond_2
    :goto_0
    return v1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getTypeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "getTypeMap"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V
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

.method public getURL()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1

    :try_start_0
    const-string v0, "getWarnings"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V
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

.method public isClosed()Z
    .locals 1

    :try_start_0
    const-string v0, "isClosed"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :goto_2
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isReadOnly()Z
    .locals 2

    :try_start_0
    const-string v0, "isReadOnly"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    const-string v0, "CALL READONLY()"

    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->getReadOnly:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->getReadOnly:Lorg/h2/command/CommandInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->next()Z

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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

.method public declared-synchronized isValid(I)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isValid"

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    iget-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/h2/engine/SessionInterface;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getTransactionIsolation()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :goto_2
    monitor-exit p0

    throw p1
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

.method public nativeSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "nativeSQL"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 9

    const-string v0, "prepareStatement("

    const/4 v1, 0x3

    :try_start_0
    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v5

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PreparedStatement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v5, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lorg/h2/jdbc/JdbcPreparedStatement;

    const/16 v7, 0x3ef

    const/4 v8, 0x1

    const/16 v6, 0x3eb

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/h2/jdbc/JdbcPreparedStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 8

    .line 1
    const-string v0, "prepareCall("

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v5

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CallableStatement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v5, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lorg/h2/jdbc/JdbcCallableStatement;

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/h2/jdbc/JdbcCallableStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .locals 9

    .line 2
    const-string v0, ", "

    const-string v1, "prepareCall("

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v6

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CallableStatement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v2, v6, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2, p3}, Lorg/h2/jdbc/JdbcConnection;->checkTypeConcurrency(II)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lorg/h2/jdbc/JdbcCallableStatement;

    move-object v3, p1

    move-object v4, p0

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/h2/jdbc/JdbcCallableStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .locals 9

    .line 3
    const-string v0, ", "

    const-string v1, "prepareCall("

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v6

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CallableStatement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v2, v6, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2, p3}, Lorg/h2/jdbc/JdbcConnection;->checkTypeConcurrency(II)V

    invoke-static {p4}, Lorg/h2/jdbc/JdbcConnection;->checkHoldability(I)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lorg/h2/jdbc/JdbcCallableStatement;

    move-object v3, p1

    move-object v4, p0

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/h2/jdbc/JdbcCallableStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0, p1, p2}, Lorg/h2/engine/SessionInterface;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 9

    .line 1
    const-string v0, "prepareStatement("

    const/4 v1, 0x3

    :try_start_0
    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v5

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PreparedStatement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v5, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lorg/h2/jdbc/JdbcPreparedStatement;

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    const/16 v6, 0x3eb

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/h2/jdbc/JdbcPreparedStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 2

    .line 2
    const-string v0, "prepareStatement("

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
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 10

    .line 3
    const-string v0, ", "

    const-string v1, "prepareStatement("

    const/4 v2, 0x3

    :try_start_0
    invoke-static {v2}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v6

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PreparedStatement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v2, v6, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2, p3}, Lorg/h2/jdbc/JdbcConnection;->checkTypeConcurrency(II)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lorg/h2/jdbc/JdbcPreparedStatement;

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p0

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v9}, Lorg/h2/jdbc/JdbcPreparedStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 10

    .line 4
    const-string v0, ", "

    const-string v1, "prepareStatement("

    const/4 v2, 0x3

    :try_start_0
    invoke-static {v2}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v6

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PreparedStatement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v2, v6, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2, p3}, Lorg/h2/jdbc/JdbcConnection;->checkTypeConcurrency(II)V

    invoke-static {p4}, Lorg/h2/jdbc/JdbcConnection;->checkHoldability(I)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->translateSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lorg/h2/jdbc/JdbcPreparedStatement;

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p0

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v9}, Lorg/h2/jdbc/JdbcPreparedStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 2

    .line 5
    const-string v0, "prepareStatement("

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
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2

    .line 6
    const-string v0, "prepareStatement("

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
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .locals 1

    :try_start_0
    const-string v0, "releaseSavepoint(savepoint);"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->convertSavepoint(Ljava/sql/Savepoint;)Lorg/h2/jdbc/JdbcSavepoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcSavepoint;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized rollback()V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    const-string v0, "rollback"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosedForWrite()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->rollbackInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 2

    .line 2
    const-string v0, "rollback("

    :try_start_0
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->convertSavepoint(Ljava/sql/Savepoint;)Lorg/h2/jdbc/JdbcSavepoint;

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

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

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosedForWrite()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcSavepoint;->rollback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->afterWriting()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized setAutoCommit(Z)V
    .locals 2

    const-string v0, "setAutoCommit("

    monitor-enter p0

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

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getAutoCommit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->commit()V

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0, p1}, Lorg/h2/engine/SessionInterface;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "setCatalog"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "Client info name \'"

    const-string v1, "Property name \'"

    const-string v2, "setClientInfo("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->isInternalProperty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/engine/Mode;->getInstance(Ljava/lang/String;)Lorg/h2/engine/Mode;

    move-result-object v1

    iget-object v1, v1, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p2, Ljava/sql/SQLClientInfoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not supported."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/sql/SQLClientInfoException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/sql/SQLClientInfoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is used internally by H2."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/sql/SQLClientInfoException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->convertToClientInfoException(Ljava/sql/SQLException;)Ljava/sql/SQLClientInfoException;

    move-result-object p1

    throw p1
.end method

.method public setClientInfo(Ljava/util/Properties;)V
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setClientInfo(properties);"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->clientInfo:Ljava/util/Map;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :goto_1
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/h2/jdbc/JdbcConnection;->setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    return-void

    :goto_3
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->convertToClientInfoException(Ljava/sql/SQLException;)Ljava/sql/SQLClientInfoException;

    move-result-object p1

    throw p1
.end method

.method public setExecutingStatement(Ljava/sql/Statement;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->executingStatement:Ljava/sql/Statement;

    return-void
.end method

.method public setHoldability(I)V
    .locals 3

    :try_start_0
    const-string v0, "setHoldability"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->checkHoldability(I)V

    iput p1, p0, Lorg/h2/jdbc/JdbcConnection;->holdability:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setNetworkTimeout(Ljava/util/concurrent/Executor;I)V
    .locals 0

    return-void
.end method

.method public setPowerOffCount(I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/h2/engine/SessionInterface;->setPowerOffCount(I)V

    :cond_0
    return-void
.end method

.method public setQueryTimeout(I)V
    .locals 3

    :try_start_0
    const-string v0, "setQueryTimeout"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    const-string v0, "SET QUERY_TIMEOUT ?"

    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->setQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/ParameterInterface;

    mul-int/lit16 v2, p1, 0x3e8

    invoke-static {v2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->setQueryTimeout:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    iput p1, p0, Lorg/h2/jdbc/JdbcConnection;->queryTimeoutCache:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setReadOnly(Z)V
    .locals 2

    const-string v0, "setReadOnly("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .locals 8

    .line 1
    const-string v0, "SAVEPOINT "

    const/4 v1, 0x6

    :try_start_0
    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v7

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Savepoint"

    const-string v3, "setSavepoint()"

    invoke-virtual {p0, v2, v1, v7, v3}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/h2/jdbc/JdbcConnection;->savepointId:I

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lorg/h2/jdbc/JdbcSavepoint;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    new-instance v0, Lorg/h2/jdbc/JdbcSavepoint;

    iget v4, p0, Lorg/h2/jdbc/JdbcConnection;->savepointId:I

    iget-object v6, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    const/4 v5, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/h2/jdbc/JdbcSavepoint;-><init>(Lorg/h2/jdbc/JdbcConnection;ILjava/lang/String;Lorg/h2/message/Trace;I)V

    iget v1, p0, Lorg/h2/jdbc/JdbcConnection;->savepointId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/h2/jdbc/JdbcConnection;->savepointId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 9

    .line 2
    const-string v0, "SAVEPOINT "

    const-string v1, "setSavepoint("

    const/4 v2, 0x6

    :try_start_0
    invoke-static {v2}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v8

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Savepoint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v8, v1}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/h2/jdbc/JdbcSavepoint;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    new-instance v0, Lorg/h2/jdbc/JdbcSavepoint;

    iget-object v7, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    const/4 v5, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/h2/jdbc/JdbcSavepoint;-><init>(Lorg/h2/jdbc/JdbcConnection;ILjava/lang/String;Lorg/h2/message/Trace;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setSchema"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcConnection;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {v0, p1}, Lorg/h2/engine/SessionInterface;->setCurrentSchemaName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTraceLevel(I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0, p1}, Lorg/h2/message/Trace;->setLevel(I)V

    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 3

    :try_start_0
    const-string v0, "setTransactionIsolation"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "level"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->commit()V

    const-string p1, "SET LOCK_MODE ?"

    iget-object v2, p0, Lorg/h2/jdbc/JdbcConnection;->setLockMode:Lorg/h2/command/CommandInterface;

    invoke-direct {p0, p1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;Lorg/h2/command/CommandInterface;)Lorg/h2/command/CommandInterface;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->setLockMode:Lorg/h2/command/CommandInterface;

    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/expression/ParameterInterface;

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V

    iget-object p1, p0, Lorg/h2/jdbc/JdbcConnection;->setLockMode:Lorg/h2/command/CommandInterface;

    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->executeUpdate()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setTypeMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "setTypeMap("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quoteMap(Ljava/util/Map;)Ljava/lang/String;

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

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->checkMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

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

    const-string v1, ": url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcConnection;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcConnection;->isWrapperFor(Ljava/lang/Class;)Z

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
