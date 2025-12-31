.class public Lorg/h2/value/ValueResultSet;
.super Lorg/h2/value/Value;
.source "SourceFile"


# instance fields
.field private final result:Ljava/sql/ResultSet;


# direct methods
.method private constructor <init>(Ljava/sql/ResultSet;)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    iput-object p1, p0, Lorg/h2/value/ValueResultSet;->result:Ljava/sql/ResultSet;

    return-void
.end method

.method public static get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;
    .locals 1

    new-instance v0, Lorg/h2/value/ValueResultSet;

    invoke-direct {v0, p0}, Lorg/h2/value/ValueResultSet;-><init>(Ljava/sql/ResultSet;)V

    return-object v0
.end method

.method public static getCopy(Ljava/sql/ResultSet;I)Lorg/h2/value/ValueResultSet;
    .locals 10

    :try_start_0
    invoke-interface {p0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    new-instance v2, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v2}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/h2/tools/SimpleResultSet;->setAutoClose(Z)V

    new-instance v4, Lorg/h2/value/ValueResultSet;

    invoke-direct {v4, v2}, Lorg/h2/value/ValueResultSet;-><init>(Ljava/sql/ResultSet;)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v0, v5}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v7

    invoke-interface {v0, v5}, Ljava/sql/ResultSetMetaData;->getPrecision(I)I

    move-result v8

    invoke-interface {v0, v5}, Ljava/sql/ResultSetMetaData;->getScale(I)I

    move-result v9

    invoke-virtual {v2, v6, v7, v8, v9}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    invoke-interface {p0}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_1

    add-int/lit8 v7, v6, 0x1

    invoke-interface {p0, v7}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v5, v6

    move v6, v7

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v5}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v4

    :goto_3
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/h2/value/Value;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/h2/value/Value;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public convertPrecision(JZ)Lorg/h2/value/Value;
    .locals 0

    if-nez p3, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {p1}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/h2/tools/SimpleResultSet;->setAutoClose(Z)V

    invoke-static {p1}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDisplaySize()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueResultSet;->result:Ljava/sql/ResultSet;

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/32 v0, 0x7fffffff

    return-wide v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueResultSet;->result:Ljava/sql/ResultSet;

    return-object v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 11

    :try_start_0
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/value/ValueResultSet;->result:Ljava/sql/ResultSet;

    invoke-interface {v1}, Ljava/sql/ResultSet;->beforeFirst()V

    iget-object v1, p0, Lorg/h2/value/ValueResultSet;->result:Ljava/sql/ResultSet;

    invoke-interface {v1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/h2/value/ValueResultSet;->result:Ljava/sql/ResultSet;

    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v5
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x29

    if-eqz v5, :cond_2

    const-string v5, ", "

    if-lez v4, :cond_0

    :try_start_1
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_1
    const/16 v7, 0x28

    invoke-virtual {v0, v7}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_1

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    invoke-static {v1, v7}, Lorg/h2/value/DataType;->getValueTypeFromResultSet(Ljava/sql/ResultSetMetaData;I)I

    move-result v8

    iget-object v9, p0, Lorg/h2/value/ValueResultSet;->result:Ljava/sql/ResultSet;

    const/4 v10, 0x0

    invoke-static {v10, v9, v7, v8}, Lorg/h2/value/DataType;->readValue(Lorg/h2/engine/SessionInterface;Ljava/sql/ResultSet;II)Lorg/h2/value/Value;

    move-result-object v8

    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/h2/value/ValueResultSet;->result:Ljava/sql/ResultSet;

    invoke-interface {v1}, Ljava/sql/ResultSet;->beforeFirst()V

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_3
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 0

    const-string p1, "PreparedStatement.set"

    invoke-virtual {p0, p1}, Lorg/h2/value/Value;->throwUnsupportedExceptionForType(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
