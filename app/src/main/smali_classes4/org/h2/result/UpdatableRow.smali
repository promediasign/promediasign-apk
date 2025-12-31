.class public Lorg/h2/result/UpdatableRow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final columnCount:I

.field private final conn:Lorg/h2/jdbc/JdbcConnection;

.field private isUpdatable:Z

.field private key:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final result:Lorg/h2/result/ResultInterface;

.field private schemaName:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/result/ResultInterface;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/result/UpdatableRow;->conn:Lorg/h2/jdbc/JdbcConnection;

    iput-object p2, p0, Lorg/h2/result/UpdatableRow;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {p2}, Lorg/h2/result/ResultInterface;->getVisibleColumnCount()I

    move-result v0

    iput v0, p0, Lorg/h2/result/UpdatableRow;->columnCount:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/result/UpdatableRow;->columnCount:I

    if-ge v1, v2, :cond_6

    invoke-interface {p2, v1}, Lorg/h2/result/ResultInterface;->getTableName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1}, Lorg/h2/result/ResultInterface;->getSchemaName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_5

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    iget-object v4, p0, Lorg/h2/result/UpdatableRow;->tableName:Ljava/lang/String;

    if-nez v4, :cond_1

    iput-object v2, p0, Lorg/h2/result/UpdatableRow;->tableName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/h2/result/UpdatableRow;->schemaName:Ljava/lang/String;

    if-nez v2, :cond_3

    iput-object v3, p0, Lorg/h2/result/UpdatableRow;->schemaName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void

    :cond_6
    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v2

    iget-object p1, p0, Lorg/h2/result/UpdatableRow;->schemaName:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/result/UpdatableRow;->tableName:Ljava/lang/String;

    invoke-static {p2}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "TABLE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    invoke-interface {v2, v8, p1, p2, v1}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    :cond_7
    const-string p2, "SQL"

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    return-void

    :cond_8
    const-string p2, "TABLE_NAME"

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/result/UpdatableRow;->tableName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/h2/result/UpdatableRow;->tableName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/result/UpdatableRow;->key:Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/h2/result/UpdatableRow;->schemaName:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/result/UpdatableRow;->tableName:Ljava/lang/String;

    invoke-interface {v2, v8, p1, p2}, Ljava/sql/DatabaseMetaData;->getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    const-string v9, "COLUMN_NAME"

    if-eqz p2, :cond_b

    invoke-interface {p1, v9}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lorg/h2/result/UpdatableRow;->key:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-static {p2}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_a
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lorg/h2/result/UpdatableRow;->key:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/h2/result/UpdatableRow;->isIndexUsable(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_c

    iput-boolean v1, p0, Lorg/h2/result/UpdatableRow;->isUpdatable:Z

    return-void

    :cond_c
    iget-object p1, p0, Lorg/h2/result/UpdatableRow;->key:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/h2/result/UpdatableRow;->schemaName:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/result/UpdatableRow;->tableName:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-interface/range {v2 .. v7}, Ljava/sql/DatabaseMetaData;->getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_10

    const-string p2, "ORDINAL_POSITION"

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getShort(Ljava/lang/String;)S

    move-result p2

    if-ne p2, v1, :cond_e

    iget-object p2, p0, Lorg/h2/result/UpdatableRow;->key:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lorg/h2/result/UpdatableRow;->isIndexUsable(Ljava/util/ArrayList;)Z

    move-result p2

    if-eqz p2, :cond_d

    iput-boolean v1, p0, Lorg/h2/result/UpdatableRow;->isUpdatable:Z

    return-void

    :cond_d
    iget-object p2, p0, Lorg/h2/result/UpdatableRow;->key:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :cond_e
    invoke-interface {p1, v9}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lorg/h2/result/UpdatableRow;->key:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-static {p2}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_f
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    iget-object p1, p0, Lorg/h2/result/UpdatableRow;->key:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/h2/result/UpdatableRow;->isIndexUsable(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_11

    iput-boolean v1, p0, Lorg/h2/result/UpdatableRow;->isUpdatable:Z

    return-void

    :cond_11
    iput-object v8, p0, Lorg/h2/result/UpdatableRow;->key:Ljava/util/ArrayList;

    return-void
.end method

.method private appendColumnList(Lorg/h2/util/StatementBuilder;Z)V
    .locals 2

    invoke-virtual {p1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/result/UpdatableRow;->columnCount:I

    if-ge v0, v1, :cond_1

    const-string v1, ","

    invoke-virtual {p1, v1}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/result/UpdatableRow;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1, v0}, Lorg/h2/result/ResultInterface;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    if-eqz p2, :cond_0

    const-string v1, "=? "

    invoke-virtual {p1, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private appendKeyCondition(Lorg/h2/util/StatementBuilder;)V
    .locals 3

    const-string v0, " WHERE "

    invoke-virtual {p1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {p1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    iget-object v0, p0, Lorg/h2/result/UpdatableRow;->key:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, " AND "

    invoke-virtual {p1, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendTableName(Lorg/h2/util/StatementBuilder;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/result/UpdatableRow;->schemaName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/h2/result/UpdatableRow;->schemaName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :cond_0
    iget-object v0, p0, Lorg/h2/result/UpdatableRow;->tableName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    return-void
.end method

.method private findColumnIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/result/UpdatableRow;->columnCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/h2/result/UpdatableRow;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1, v0}, Lorg/h2/result/ResultInterface;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getColumnIndex(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/h2/result/UpdatableRow;->findColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const v0, 0xa48a

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private isIndexUsable(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/h2/result/UpdatableRow;->findColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private setKey(Ljava/sql/PreparedStatement;I[Lorg/h2/value/Value;)V
    .locals 4

    iget-object v0, p0, Lorg/h2/result/UpdatableRow;->key:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/h2/result/UpdatableRow;->key:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/h2/result/UpdatableRow;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aget-object v2, p3, v2

    if-eqz v2, :cond_0

    sget-object v3, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v2, v3, :cond_0

    add-int v3, p2, v1

    invoke-virtual {v2, p1, v3}, Lorg/h2/value/Value;->set(Ljava/sql/PreparedStatement;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d0

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public deleteRow([Lorg/h2/value/Value;)V
    .locals 2

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/result/UpdatableRow;->appendTableName(Lorg/h2/util/StatementBuilder;)V

    invoke-direct {p0, v0}, Lorg/h2/result/UpdatableRow;->appendKeyCondition(Lorg/h2/util/StatementBuilder;)V

    iget-object v1, p0, Lorg/h2/result/UpdatableRow;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/h2/result/UpdatableRow;->setKey(Ljava/sql/PreparedStatement;I[Lorg/h2/value/Value;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x7d0

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public insertRow([Lorg/h2/value/Value;)V
    .locals 4

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "INSERT INTO "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/result/UpdatableRow;->appendTableName(Lorg/h2/util/StatementBuilder;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/h2/result/UpdatableRow;->appendColumnList(Lorg/h2/util/StatementBuilder;Z)V

    const-string v2, ")VALUES("

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/h2/result/UpdatableRow;->columnCount:I

    if-ge v2, v3, :cond_1

    const-string v3, ","

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    const-string v3, "DEFAULT"

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_0
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    iget-object v2, p0, Lorg/h2/result/UpdatableRow;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lorg/h2/result/UpdatableRow;->columnCount:I

    if-ge v1, v3, :cond_3

    aget-object v3, p1, v1

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v0, v2}, Lorg/h2/value/Value;->set(Ljava/sql/PreparedStatement;I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    const/16 p1, 0x7d0

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public isUpdatable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/result/UpdatableRow;->isUpdatable:Z

    return v0
.end method

.method public readRow([Lorg/h2/value/Value;)[Lorg/h2/value/Value;
    .locals 5

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/h2/result/UpdatableRow;->appendColumnList(Lorg/h2/util/StatementBuilder;Z)V

    const-string v2, " FROM "

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-direct {p0, v0}, Lorg/h2/result/UpdatableRow;->appendTableName(Lorg/h2/util/StatementBuilder;)V

    invoke-direct {p0, v0}, Lorg/h2/result/UpdatableRow;->appendKeyCondition(Lorg/h2/util/StatementBuilder;)V

    iget-object v2, p0, Lorg/h2/result/UpdatableRow;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, p1}, Lorg/h2/result/UpdatableRow;->setKey(Ljava/sql/PreparedStatement;I[Lorg/h2/value/Value;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/h2/result/UpdatableRow;->columnCount:I

    new-array v0, v0, [Lorg/h2/value/Value;

    :goto_0
    iget v2, p0, Lorg/h2/result/UpdatableRow;->columnCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/h2/result/UpdatableRow;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v2, v1}, Lorg/h2/result/ResultInterface;->getColumnType(I)I

    move-result v2

    iget-object v3, p0, Lorg/h2/result/UpdatableRow;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v3}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, p1, v4, v2}, Lorg/h2/value/DataType;->readValue(Lorg/h2/engine/SessionInterface;Ljava/sql/ResultSet;II)Lorg/h2/value/Value;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v4

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/16 p1, 0x7d0

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public updateRow([Lorg/h2/value/Value;[Lorg/h2/value/Value;)V
    .locals 6

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "UPDATE "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/result/UpdatableRow;->appendTableName(Lorg/h2/util/StatementBuilder;)V

    const-string v1, " SET "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/h2/result/UpdatableRow;->appendColumnList(Lorg/h2/util/StatementBuilder;Z)V

    invoke-direct {p0, v0}, Lorg/h2/result/UpdatableRow;->appendKeyCondition(Lorg/h2/util/StatementBuilder;)V

    iget-object v2, p0, Lorg/h2/result/UpdatableRow;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/jdbc/JdbcConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lorg/h2/result/UpdatableRow;->columnCount:I

    if-ge v2, v4, :cond_1

    aget-object v4, p2, v2

    if-nez v4, :cond_0

    aget-object v4, p1, v2

    :cond_0
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v0, v3}, Lorg/h2/value/Value;->set(Ljava/sql/PreparedStatement;I)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v3, p1}, Lorg/h2/result/UpdatableRow;->setKey(Ljava/sql/PreparedStatement;I[Lorg/h2/value/Value;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p1

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    const/16 p1, 0x7d0

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
