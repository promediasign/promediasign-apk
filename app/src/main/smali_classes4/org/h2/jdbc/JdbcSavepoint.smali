.class public Lorg/h2/jdbc/JdbcSavepoint;
.super Lorg/h2/message/TraceObject;
.source "SourceFile"

# interfaces
.implements Ljava/sql/Savepoint;


# static fields
.field private static final SYSTEM_SAVEPOINT_PREFIX:Ljava/lang/String; = "SYSTEM_SAVEPOINT_"


# instance fields
.field private conn:Lorg/h2/jdbc/JdbcConnection;

.field private final name:Ljava/lang/String;

.field private final savepointId:I


# direct methods
.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;ILjava/lang/String;Lorg/h2/message/Trace;I)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const/4 v0, 0x6

    invoke-virtual {p0, p4, v0, p5}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    iput-object p1, p0, Lorg/h2/jdbc/JdbcSavepoint;->conn:Lorg/h2/jdbc/JdbcConnection;

    iput p2, p0, Lorg/h2/jdbc/JdbcSavepoint;->savepointId:I

    iput-object p3, p0, Lorg/h2/jdbc/JdbcSavepoint;->name:Ljava/lang/String;

    return-void
.end method

.method private checkValid()V
    .locals 2

    iget-object v0, p0, Lorg/h2/jdbc/JdbcSavepoint;->conn:Lorg/h2/jdbc/JdbcConnection;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcSavepoint;->name:Ljava/lang/String;

    iget v1, p0, Lorg/h2/jdbc/JdbcSavepoint;->savepointId:I

    invoke-static {v0, v1}, Lorg/h2/jdbc/JdbcSavepoint;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fcf

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public static getName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteJavaString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "SYSTEM_SAVEPOINT_"

    .line 9
    .line 10
    invoke-static {p1, p0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method


# virtual methods
.method public getSavepointId()I
    .locals 1

    :try_start_0
    const-string v0, "getSavepointId"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcSavepoint;->checkValid()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcSavepoint;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/h2/jdbc/JdbcSavepoint;->savepointId:I

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const v0, 0x15fd1

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getSavepointName()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "getSavepointName"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcSavepoint;->checkValid()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcSavepoint;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x15fd0

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcSavepoint;->conn:Lorg/h2/jdbc/JdbcConnection;

    return-void
.end method

.method public rollback()V
    .locals 4

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcSavepoint;->checkValid()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcSavepoint;->conn:Lorg/h2/jdbc/JdbcConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ROLLBACK TO SAVEPOINT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/jdbc/JdbcSavepoint;->name:Ljava/lang/String;

    iget v3, p0, Lorg/h2/jdbc/JdbcSavepoint;->savepointId:I

    invoke-static {v2, v3}, Lorg/h2/jdbc/JdbcSavepoint;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/jdbc/JdbcSavepoint;->savepointId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcSavepoint;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
