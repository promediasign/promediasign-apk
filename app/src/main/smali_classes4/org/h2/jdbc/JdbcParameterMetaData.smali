.class public Lorg/h2/jdbc/JdbcParameterMetaData;
.super Lorg/h2/message/TraceObject;
.source "SourceFile"

# interfaces
.implements Ljava/sql/ParameterMetaData;


# instance fields
.field private final paramCount:I

.field private final parameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "+",
            "Lorg/h2/expression/ParameterInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final prep:Lorg/h2/jdbc/JdbcPreparedStatement;


# direct methods
.method public constructor <init>(Lorg/h2/message/Trace;Lorg/h2/jdbc/JdbcPreparedStatement;Lorg/h2/command/CommandInterface;I)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const/16 v0, 0xb

    invoke-virtual {p0, p1, v0, p4}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    iput-object p2, p0, Lorg/h2/jdbc/JdbcParameterMetaData;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    invoke-interface {p3}, Lorg/h2/command/CommandInterface;->getParameters()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbc/JdbcParameterMetaData;->parameters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/h2/jdbc/JdbcParameterMetaData;->paramCount:I

    return-void
.end method

.method private checkClosed()V
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcParameterMetaData;->prep:Lorg/h2/jdbc/JdbcPreparedStatement;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    return-void
.end method

.method private getParameter(I)Lorg/h2/expression/ParameterInterface;
    .locals 2

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcParameterMetaData;->checkClosed()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v1, p0, Lorg/h2/jdbc/JdbcParameterMetaData;->paramCount:I

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lorg/h2/jdbc/JdbcParameterMetaData;->parameters:Ljava/util/ArrayList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/expression/ParameterInterface;

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "param"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getParameterClassName(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "getParameterClassName"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcParameterMetaData;->getParameter(I)Lorg/h2/expression/ParameterInterface;

    move-result-object p1

    invoke-interface {p1}, Lorg/h2/expression/ParameterInterface;->getType()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xd

    :cond_0
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

.method public getParameterCount()I
    .locals 1

    :try_start_0
    const-string v0, "getParameterCount"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcParameterMetaData;->checkClosed()V

    iget v0, p0, Lorg/h2/jdbc/JdbcParameterMetaData;->paramCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getParameterMode(I)I
    .locals 3

    :try_start_0
    const-string v0, "getParameterMode"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcParameterMetaData;->getParameter(I)Lorg/h2/expression/ParameterInterface;
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

.method public getParameterType(I)I
    .locals 3

    :try_start_0
    const-string v0, "getParameterType"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcParameterMetaData;->getParameter(I)Lorg/h2/expression/ParameterInterface;

    move-result-object p1

    invoke-interface {p1}, Lorg/h2/expression/ParameterInterface;->getType()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xd

    :cond_0
    invoke-static {p1}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object p1

    iget p1, p1, Lorg/h2/value/DataType;->sqlType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getParameterTypeName(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "getParameterTypeName"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcParameterMetaData;->getParameter(I)Lorg/h2/expression/ParameterInterface;

    move-result-object p1

    invoke-interface {p1}, Lorg/h2/expression/ParameterInterface;->getType()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xd

    :cond_0
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

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcParameterMetaData;->getParameter(I)Lorg/h2/expression/ParameterInterface;

    move-result-object p1

    invoke-interface {p1}, Lorg/h2/expression/ParameterInterface;->getPrecision()J

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

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcParameterMetaData;->getParameter(I)Lorg/h2/expression/ParameterInterface;

    move-result-object p1

    invoke-interface {p1}, Lorg/h2/expression/ParameterInterface;->getScale()I

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

.method public isNullable(I)I
    .locals 3

    :try_start_0
    const-string v0, "isNullable"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcParameterMetaData;->getParameter(I)Lorg/h2/expression/ParameterInterface;

    move-result-object p1

    invoke-interface {p1}, Lorg/h2/expression/ParameterInterface;->getNullable()I

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

.method public isSigned(I)Z
    .locals 3

    :try_start_0
    const-string v0, "isSigned"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcParameterMetaData;->getParameter(I)Lorg/h2/expression/ParameterInterface;
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

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": parameterCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/jdbc/JdbcParameterMetaData;->paramCount:I

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
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcParameterMetaData;->isWrapperFor(Ljava/lang/Class;)Z

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
