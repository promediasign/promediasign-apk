.class public Lorg/h2/jdbcx/JdbcXAConnection;
.super Lorg/h2/message/TraceObject;
.source "SourceFile"

# interfaces
.implements Ljavax/sql/XAConnection;
.implements Ljavax/transaction/xa/XAResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;
    }
.end annotation


# instance fields
.field private currentTransaction:Ljavax/transaction/xa/Xid;

.field private final factory:Lorg/h2/jdbcx/JdbcDataSourceFactory;

.field private volatile handleConn:Ljava/sql/Connection;

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljavax/sql/ConnectionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private physicalConn:Lorg/h2/jdbc/JdbcConnection;

.field private prepared:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    return-void
.end method

.method public constructor <init>(Lorg/h2/jdbcx/JdbcDataSourceFactory;ILorg/h2/jdbc/JdbcConnection;)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->listeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->factory:Lorg/h2/jdbcx/JdbcDataSourceFactory;

    invoke-virtual {p1}, Lorg/h2/jdbcx/JdbcDataSourceFactory;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    const/16 v0, 0xd

    invoke-virtual {p0, p1, v0, p2}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    iput-object p3, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    return-void
.end method

.method private checkOpen()V
    .locals 2

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljavax/transaction/xa/XAException;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw v0
.end method

.method private static convertException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;
    .locals 2

    new-instance v0, Ljavax/transaction/xa/XAException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/transaction/xa/XAException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/transaction/xa/XAException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method private static quoteFlags(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const-string v1, "|XAResource.TMENDRSCAN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    const-string v1, "|XAResource.TMFAIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_2

    const-string v1, "|XAResource.TMJOIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    const-string v1, "|XAResource.TMONEPHASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    const-string v1, "|XAResource.TMRESUME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_5

    const-string v1, "|XAResource.TMSTARTRSCAN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/high16 v1, 0x4000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_6

    const-string v1, "|XAResource.TMSUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    const-string v1, "|XAResource.TMSUSPEND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_8

    const-string p0, "|XAResource.XA_RDONLY"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "|XAResource.TMNOFLAGS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V
    .locals 1

    const-string v0, "addConnectionEventListener(listener);"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStatementEventListener(Ljavax/sql/StatementEventListener;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 2

    const-string v0, "close"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->handleConn:Ljava/sql/Connection;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public closedHandle()V
    .locals 3

    const-string v0, "closedHandle();"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    new-instance v0, Ljavax/sql/ConnectionEvent;

    invoke-direct {v0, p0}, Ljavax/sql/ConnectionEvent;-><init>(Ljavax/sql/PooledConnection;)V

    iget-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/h2/jdbcx/JdbcXAConnection;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sql/ConnectionEventListener;

    invoke-interface {v2, v0}, Ljavax/sql/ConnectionEventListener;->connectionClosed(Ljavax/sql/ConnectionEvent;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->handleConn:Ljava/sql/Connection;

    return-void
.end method

.method public commit(Ljavax/transaction/xa/Xid;Z)V
    .locals 3

    const-string v0, "COMMIT TRANSACTION "

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "commit("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    iget-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->commit()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p2}, Lorg/h2/jdbc/JdbcConnection;->createStatement()Ljava/sql/Statement;

    move-result-object p2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p2}, Ljava/sql/Statement;->close()V

    :goto_0
    iget-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/h2/jdbc/JdbcConnection;->setAutoCommit(Z)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p2, :cond_2

    :try_start_4
    invoke-interface {p2}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXAConnection;->convertException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object p1

    throw p1
.end method

.method public end(Ljavax/transaction/xa/Xid;I)V
    .locals 2

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "end("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbcx/JdbcXAConnection;->quoteFlags(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    :cond_0
    const/high16 v0, 0x2000000

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z

    return-void

    :cond_2
    new-instance p1, Ljavax/transaction/xa/XAException;

    const/16 p2, -0x9

    invoke-direct {p1, p2}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw p1
.end method

.method public forget(Ljavax/transaction/xa/Xid;)V
    .locals 2

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "forget("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z

    return-void
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 2

    const-string v0, "getConnection"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->handleConn:Ljava/sql/Connection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->rollback()V

    new-instance v0, Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;

    iget-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, p0, v1}, Lorg/h2/jdbcx/JdbcXAConnection$PooledJdbcConnection;-><init>(Lorg/h2/jdbcx/JdbcXAConnection;Lorg/h2/jdbc/JdbcConnection;)V

    iput-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->handleConn:Ljava/sql/Connection;

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->handleConn:Ljava/sql/Connection;

    return-object v0
.end method

.method public getTransactionTimeout()I
    .locals 1

    const-string v0, "getTransactionTimeout"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getXAResource()Ljavax/transaction/xa/XAResource;
    .locals 1

    const-string v0, "getXAResource"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    return-object p0
.end method

.method public isSameRM(Ljavax/transaction/xa/XAResource;)Z
    .locals 1

    const-string v0, "isSameRM(xares);"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public prepare(Ljavax/transaction/xa/Xid;)I
    .locals 3

    const-string v0, "PREPARE COMMIT "

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prepare("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbcx/JdbcXAConnection;->checkOpen()V

    iget-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXAConnection;->convertException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object p1

    throw p1

    :cond_2
    new-instance p1, Ljavax/transaction/xa/XAException;

    const/4 v0, -0x5

    invoke-direct {p1, v0}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw p1
.end method

.method public recover(I)[Ljavax/transaction/xa/Xid;
    .locals 6

    const-string v0, "recover"

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXAConnection;->quoteFlags(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbcx/JdbcXAConnection;->checkOpen()V

    :try_start_0
    iget-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->createStatement()Ljava/sql/Statement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "SELECT * FROM INFORMATION_SCHEMA.IN_DOUBT ORDER BY TRANSACTION"

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TRANSACTION"

    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v3}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v3

    new-instance v4, Lorg/h2/jdbcx/JdbcXid;

    iget-object v5, p0, Lorg/h2/jdbcx/JdbcXAConnection;->factory:Lorg/h2/jdbcx/JdbcDataSourceFactory;

    invoke-direct {v4, v5, v3, v2}, Lorg/h2/jdbcx/JdbcXid;-><init>(Lorg/h2/jdbcx/JdbcDataSourceFactory;ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/transaction/xa/Xid;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_2

    :try_start_4
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    new-instance v0, Ljavax/transaction/xa/XAException;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Ljavax/transaction/xa/XAException;-><init>(I)V

    invoke-virtual {v0, p1}, Ljavax/transaction/xa/XAException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public removeConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V
    .locals 1

    const-string v0, "removeConnectionEventListener(listener);"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeStatementEventListener(Ljavax/sql/StatementEventListener;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public rollback(Ljavax/transaction/xa/Xid;)V
    .locals 3

    const-string v0, "ROLLBACK TRANSACTION "

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rollback("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0

    :cond_2
    iget-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->rollback()V

    :goto_1
    iget-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/h2/jdbc/JdbcConnection;->setAutoCommit(Z)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    return-void

    :goto_2
    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXAConnection;->convertException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object p1

    throw p1
.end method

.method public setTransactionTimeout(I)Z
    .locals 3

    const-string v0, "setTransactionTimeout"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public start(Ljavax/transaction/xa/Xid;I)V
    .locals 2

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXid;->toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbcx/JdbcXAConnection;->quoteFlags(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    :cond_0
    const/high16 v0, 0x8000000

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    const/high16 v0, 0x200000

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljavax/transaction/xa/XAException;

    const/4 p2, -0x3

    invoke-direct {p1, p2}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw p1

    :cond_3
    iget-object p2, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    if-nez p2, :cond_5

    :cond_4
    :goto_0
    :try_start_0
    iget-object p2, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/h2/jdbc/JdbcConnection;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->currentTransaction:Ljavax/transaction/xa/Xid;

    iput-boolean v0, p0, Lorg/h2/jdbcx/JdbcXAConnection;->prepared:Z

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcXAConnection;->convertException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object p1

    throw p1

    :cond_5
    new-instance p1, Ljavax/transaction/xa/XAException;

    const/4 p2, -0x4

    invoke-direct {p1, p2}, Ljavax/transaction/xa/XAException;-><init>(I)V

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

    iget-object v1, p0, Lorg/h2/jdbcx/JdbcXAConnection;->physicalConn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
