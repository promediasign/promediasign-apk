.class public Lorg/h2/jdbc/JdbcResultSetMetaData;
.super Lorg/h2/message/TraceObject;
.source "SourceFile"

# interfaces
.implements Ljava/sql/ResultSetMetaData;


# instance fields
.field private final catalog:Ljava/lang/String;

.field private final columnCount:I

.field private final prep:Lorg/h2/jdbc/JdbcPreparedStatement;

.field private final result:Lorg/h2/result/ResultInterface;

.field private final rs:Lorg/h2/jdbc/JdbcResultSet;


# direct methods
.method public constructor <init>(Lorg/h2/jdbc/JdbcResultSet;Lorg/h2/jdbc/JdbcPreparedStatement;Lorg/h2/result/ResultInterface;Ljava/lang/String;Lorg/h2/message/Trace;I)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const/4 v0, 0x5

    invoke-virtual {p0, p5, v0, p6}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    iput-object p4, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->catalog:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->rs:Lorg/h2/jdbc/JdbcResultSet;

    iput-object p2, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    iput-object p3, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {p3}, Lorg/h2/result/ResultInterface;->getVisibleColumnCount()I

    move-result p1

    iput p1, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->columnCount:I

    return-void
.end method

.method private checkClosed()V
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->rs:Lorg/h2/jdbc/JdbcResultSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    :cond_1
    return-void
.end method

.method private checkColumnIndex(I)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkClosed()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->columnCount:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "columnIndex"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getCatalogName(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "getCatalogName"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    iget-object p1, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->catalog:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getColumnClassName(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "getColumnClassName"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getColumnType(I)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/DataType;->getTypeClassName(I)Ljava/lang/String;

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

.method public getColumnCount()I
    .locals 1

    :try_start_0
    const-string v0, "getColumnCount"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkClosed()V

    iget v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->columnCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getColumnDisplaySize(I)I
    .locals 3

    :try_start_0
    const-string v0, "getColumnDisplaySize"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getDisplaySize(I)I

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

.method public getColumnLabel(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "getColumnLabel"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getAlias(I)Ljava/lang/String;

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

.method public getColumnName(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "getColumnName"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getColumnName(I)Ljava/lang/String;

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

.method public getColumnType(I)I
    .locals 3

    :try_start_0
    const-string v0, "getColumnType"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getColumnType(I)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

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

.method public getColumnTypeName(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "getColumnTypeName"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getColumnType(I)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object p1

    iget-object p1, p1, Lorg/h2/value/DataType;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getPrecision(I)I
    .locals 3

    :try_start_0
    const-string v0, "getPrecision"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getColumnPrecision(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

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

.method public getScale(I)I
    .locals 3

    :try_start_0
    const-string v0, "getScale"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getColumnScale(I)I

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

.method public getSchemaName(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "getSchemaName"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getSchemaName(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "getTableName"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getTableName(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isAutoIncrement(I)Z
    .locals 3

    :try_start_0
    const-string v0, "isAutoIncrement"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->isAutoIncrement(I)Z

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

.method public isCaseSensitive(I)Z
    .locals 3

    :try_start_0
    const-string v0, "isCaseSensitive"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isCurrency(I)Z
    .locals 3

    :try_start_0
    const-string v0, "isCurrency"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isDefinitelyWritable(I)Z
    .locals 3

    :try_start_0
    const-string v0, "isDefinitelyWritable"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isNullable(I)I
    .locals 3

    :try_start_0
    const-string v0, "isNullable"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->result:Lorg/h2/result/ResultInterface;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->getNullable(I)I

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

.method public isReadOnly(I)Z
    .locals 3

    :try_start_0
    const-string v0, "isReadOnly"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isSearchable(I)Z
    .locals 3

    :try_start_0
    const-string v0, "isSearchable"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isSigned(I)Z
    .locals 3

    :try_start_0
    const-string v0, "isSigned"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

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

.method public isWritable(I)Z
    .locals 3

    :try_start_0
    const-string v0, "isWritable"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->checkColumnIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

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

    const-string v1, ": columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/jdbc/JdbcResultSetMetaData;->columnCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSetMetaData;->isWrapperFor(Ljava/lang/Class;)Z

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
