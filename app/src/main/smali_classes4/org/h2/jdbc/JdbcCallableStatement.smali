.class public Lorg/h2/jdbc/JdbcCallableStatement;
.super Lorg/h2/jdbc/JdbcPreparedStatement;
.source "SourceFile"

# interfaces
.implements Ljava/sql/CallableStatement;
.implements Lorg/h2/jdbc/JdbcCallableStatementBackwardsCompat;


# instance fields
.field private maxOutParameters:I

.field private namedParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private outParameters:Lorg/h2/util/BitField;


# direct methods
.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;III)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/h2/jdbc/JdbcPreparedStatement;-><init>(Lorg/h2/jdbc/JdbcConnection;Ljava/lang/String;IIIZ)V

    iget-object p1, p0, Lorg/h2/jdbc/JdbcStatement;->session:Lorg/h2/engine/SessionInterface;

    invoke-interface {p1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    return-void
.end method

.method private checkIndexBounds(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/h2/jdbc/JdbcCallableStatement;->maxOutParameters:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "parameterIndex"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private checkRegistered(I)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkIndexBounds(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcCallableStatement;->outParameters:Lorg/h2/util/BitField;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lorg/h2/util/BitField;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "parameterIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

.method private getCheckedMetaData()Ljava/sql/ResultSetMetaData;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Supported only for calling stored procedures"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private getIndexForName(Ljava/lang/String;)I
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget-object v0, p0, Lorg/h2/jdbc/JdbcCallableStatement;->namedParameters:Ljava/util/HashMap;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getCheckedMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    invoke-static {v1}, Lorg/h2/util/New;->hashMap(I)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-object v2, p0, Lorg/h2/jdbc/JdbcCallableStatement;->namedParameters:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcCallableStatement;->namedParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    const-string v0, "parameterName"

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

.method private getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcResultSet;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcResultSet;->next()Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcStatement;->resultSet:Lorg/h2/jdbc/JdbcResultSet;

    return-object v0

    :cond_1
    const/16 v0, 0x7d0

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private registerOutParameter(I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget-object v0, p0, Lorg/h2/jdbc/JdbcCallableStatement;->outParameters:Lorg/h2/util/BitField;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->getParameterMetaData()Ljava/sql/ParameterMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ParameterMetaData;->getParameterCount()I

    move-result v0

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getCheckedMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/h2/jdbc/JdbcCallableStatement;->maxOutParameters:I

    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iput-object v0, p0, Lorg/h2/jdbc/JdbcCallableStatement;->outParameters:Lorg/h2/util/BitField;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkIndexBounds(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/ParameterInterface;

    invoke-interface {v0}, Lorg/h2/expression/ParameterInterface;->isValueSet()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/h2/expression/ParameterInterface;->setValue(Lorg/h2/value/Value;Z)V

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcCallableStatement;->outParameters:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public executeUpdate()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    iget-object v0, p0, Lorg/h2/jdbc/JdbcPreparedStatement;->command:Lorg/h2/command/CommandInterface;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/h2/jdbc/JdbcPreparedStatement;->executeUpdate()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getArray(I)Ljava/sql/Array;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getArray(I)Ljava/sql/Array;

    move-result-object p1

    return-object p1
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getArray(I)Ljava/sql/Array;

    move-result-object p1

    return-object p1
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->getBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getBlob(I)Ljava/sql/Blob;

    move-result-object p1

    return-object p1
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getBlob(I)Ljava/sql/Blob;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public getByte(I)B
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getByte(I)B

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getByte(I)B

    move-result p1

    return p1
.end method

.method public getBytes(I)[B
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getBytes(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getBytes(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getClob(I)Ljava/sql/Clob;

    move-result-object p1

    return-object p1
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getClob(I)Ljava/sql/Clob;

    move-result-object p1

    return-object p1
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getDate(I)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcCallableStatement;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getNCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getNCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getNClob(I)Ljava/sql/NClob;

    move-result-object p1

    return-object p1
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getNClob(I)Ljava/sql/NClob;

    move-result-object p1

    return-object p1
.end method

.method public getNString(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getNString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getNString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    const-string p1, "map"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcCallableStatement;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 6
    const-string p1, "map"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 0

    .line 1
    const-string p1, "ref"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .locals 0

    .line 2
    const-string p1, "ref"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 0

    .line 1
    const-string p1, "rowId"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .locals 0

    .line 2
    const-string p1, "rowId"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .locals 0

    .line 1
    const-string p1, "SQLXML"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .locals 0

    .line 2
    const-string p1, "SQLXML"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getShort(I)S
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getTime(I)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcCallableStatement;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->checkRegistered(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcCallableStatement;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 0

    .line 1
    const-string p1, "url"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 0

    .line 2
    const-string p1, "url"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public registerOutParameter(II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->registerOutParameter(I)V

    return-void
.end method

.method public registerOutParameter(III)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->registerOutParameter(I)V

    return-void
.end method

.method public registerOutParameter(IILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->registerOutParameter(I)V

    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcCallableStatement;->registerOutParameter(II)V

    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcCallableStatement;->registerOutParameter(III)V

    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcCallableStatement;->registerOutParameter(IILjava/lang/String;)V

    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setAsciiStream(ILjava/io/InputStream;)V

    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/jdbc/JdbcPreparedStatement;->setAsciiStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public setBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setBinaryStream(ILjava/io/InputStream;)V

    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/jdbc/JdbcPreparedStatement;->setBinaryStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setBlob(ILjava/io/InputStream;)V

    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/jdbc/JdbcPreparedStatement;->setBlob(ILjava/io/InputStream;J)V

    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setBlob(ILjava/sql/Blob;)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setBoolean(IZ)V

    return-void
.end method

.method public setByte(Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setByte(IB)V

    return-void
.end method

.method public setBytes(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setBytes(I[B)V

    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setCharacterStream(ILjava/io/Reader;)V

    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/jdbc/JdbcPreparedStatement;->setCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setClob(ILjava/io/Reader;)V

    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/jdbc/JdbcPreparedStatement;->setClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setClob(ILjava/sql/Clob;)V

    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setDate(ILjava/sql/Date;)V

    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/sql/Date;Ljava/util/Calendar;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->setDouble(ID)V

    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setFloat(IF)V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setInt(II)V

    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->setLong(IJ)V

    return-void
.end method

.method public setNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setNCharacterStream(ILjava/io/Reader;)V

    return-void
.end method

.method public setNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/jdbc/JdbcPreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setNClob(ILjava/io/Reader;)V

    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/jdbc/JdbcPreparedStatement;->setNClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setNClob(ILjava/sql/NClob;)V

    return-void
.end method

.method public setNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setNString(ILjava/lang/String;)V

    return-void
.end method

.method public setNull(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setNull(II)V

    return-void
.end method

.method public setNull(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->setNull(IILjava/lang/String;)V

    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->setObject(ILjava/lang/Object;I)V

    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/jdbc/JdbcPreparedStatement;->setObject(ILjava/lang/Object;II)V

    return-void
.end method

.method public setRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    .locals 0

    const-string p1, "rowId"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .locals 0

    const-string p1, "SQLXML"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setShort(Ljava/lang/String;S)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setShort(IS)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public setTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setTime(ILjava/sql/Time;)V

    return-void
.end method

.method public setTime(Ljava/lang/String;Ljava/sql/Time;Ljava/util/Calendar;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->setTime(ILjava/sql/Time;Ljava/util/Calendar;)V

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbc/JdbcPreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcCallableStatement;->getIndexForName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/jdbc/JdbcPreparedStatement;->setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V

    return-void
.end method

.method public setURL(Ljava/lang/String;Ljava/net/URL;)V
    .locals 0

    const-string p1, "url"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public wasNull()Z
    .locals 1

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcCallableStatement;->getOpenResultSet()Lorg/h2/jdbc/JdbcResultSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcResultSet;->wasNull()Z

    move-result v0

    return v0
.end method
