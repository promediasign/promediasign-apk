.class public Lorg/h2/jdbc/JdbcArray;
.super Lorg/h2/message/TraceObject;
.source "SourceFile"

# interfaces
.implements Ljava/sql/Array;


# instance fields
.field private final conn:Lorg/h2/jdbc/JdbcConnection;

.field private value:Lorg/h2/value/Value;


# direct methods
.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    .locals 2

    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1, p3}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    iput-object p1, p0, Lorg/h2/jdbc/JdbcArray;->conn:Lorg/h2/jdbc/JdbcConnection;

    iput-object p2, p0, Lorg/h2/jdbc/JdbcArray;->value:Lorg/h2/value/Value;

    return-void
.end method

.method private checkClosed()V
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcArray;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcArray;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15f97

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private get()[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcArray;->value:Lorg/h2/value/Value;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private get(JI)[Ljava/lang/Object;
    .locals 7

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->get()[Ljava/lang/Object;

    move-result-object v0

    const-string v1, ")"

    if-ltz p3, :cond_1

    array-length v2, v0

    if-gt p3, v2, :cond_1

    const-wide/16 v2, 0x1

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v6, p1, v4

    if-gtz v6, :cond_0

    new-array v1, p3, [Ljava/lang/Object;

    sub-long/2addr p1, v2

    long-to-int p2, p1

    const/4 p1, 0x0

    invoke-static {v0, p2, v1, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "index (1.."

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    .line 2
    invoke-static {v1, v0, p3}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "count (1.."

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, v0

    .line 4
    invoke-static {v1, p2, p1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private static getResultSet([Ljava/lang/Object;J)Ljava/sql/ResultSet;
    .locals 9

    .line 5
    const/4 v0, 0x1

    new-instance v1, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v1}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const-string v2, "INDEX"

    const/4 v3, -0x5

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v2, "VALUE"

    invoke-virtual {v1, v2, v4, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    int-to-long v5, v2

    add-long/2addr v5, p1

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aget-object v5, p0, v2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v4

    aput-object v5, v6, v0

    invoke-virtual {v1, v6}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public free()V
    .locals 1

    const-string v0, "free"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcArray;->value:Lorg/h2/value/Value;

    return-void
.end method

.method public getArray()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "getArray"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->get()[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getArray(JI)Ljava/lang/Object;
    .locals 2

    .line 2
    const-string v0, "getArray("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

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

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcArray;->get(JI)[Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getArray(JILjava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    const-string v0, ", "

    const-string v1, "getArray("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/message/TraceObject;->quoteMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    invoke-static {p4}, Lorg/h2/jdbc/JdbcConnection;->checkMap(Ljava/util/Map;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcArray;->get(JI)[Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getArray(Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4
    const-string v0, "getArray("

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

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->get()[Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBaseType()I
    .locals 1

    :try_start_0
    const-string v0, "getBaseType"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V
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

.method public getBaseTypeName()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "getBaseTypeName"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    const-string v0, "NULL"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getResultSet"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->get()[Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/h2/jdbc/JdbcArray;->getResultSet([Ljava/lang/Object;J)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getResultSet(JI)Ljava/sql/ResultSet;
    .locals 2

    .line 2
    const-string v0, "getResultSet("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

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

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcArray;->get(JI)[Ljava/lang/Object;

    move-result-object p3

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    invoke-static {p3, p1, p2}, Lorg/h2/jdbc/JdbcArray;->getResultSet([Ljava/lang/Object;J)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getResultSet(JILjava/util/Map;)Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/sql/ResultSet;"
        }
    .end annotation

    .line 3
    const-string v0, ", "

    const-string v1, "getResultSet("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/message/TraceObject;->quoteMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    invoke-static {p4}, Lorg/h2/jdbc/JdbcConnection;->checkMap(Ljava/util/Map;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcArray;->get(JI)[Ljava/lang/Object;

    move-result-object p3

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    invoke-static {p3, p1, p2}, Lorg/h2/jdbc/JdbcArray;->getResultSet([Ljava/lang/Object;J)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getResultSet(Ljava/util/Map;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/sql/ResultSet;"
        }
    .end annotation

    .line 4
    const-string v0, "getResultSet("

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
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->checkClosed()V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcConnection;->checkMap(Ljava/util/Map;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcArray;->get()[Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lorg/h2/jdbc/JdbcArray;->getResultSet([Ljava/lang/Object;J)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/h2/jdbc/JdbcArray;->value:Lorg/h2/value/Value;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcArray;->value:Lorg/h2/value/Value;

    invoke-virtual {v1}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
