.class public Lorg/h2/index/LinkedIndex;
.super Lorg/h2/index/BaseIndex;
.source "SourceFile"


# instance fields
.field private final link:Lorg/h2/table/TableLink;

.field private rowCount:J

.field private final targetTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/table/TableLink;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V
    .locals 6

    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/h2/index/BaseIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object p1, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    invoke-virtual {p1}, Lorg/h2/table/TableLink;->getQualifiedTable()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/LinkedIndex;->targetTableName:Ljava/lang/String;

    return-void
.end method

.method private addParameter(Lorg/h2/util/StatementBuilder;Lorg/h2/table/Column;)V
    .locals 2

    invoke-virtual {p2}, Lorg/h2/table/Column;->getType()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    invoke-virtual {v0}, Lorg/h2/table/TableLink;->isOracle()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAST(? AS CHAR("

    invoke-virtual {p1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lorg/h2/table/Column;->getPrecision()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    move-result-object p1

    const-string p2, "))"

    invoke-virtual {p1, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    :cond_0
    const/16 p2, 0x3f

    invoke-virtual {p1, p2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :goto_0
    return-void
.end method

.method private static isNull(Lorg/h2/value/Value;)Z
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p0, v0, :cond_0

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


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 4

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "INSERT INTO "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/index/LinkedIndex;->targetTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " VALUES("

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p2, v1}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v2, :cond_0

    const-string v2, "DEFAULT"

    :goto_1
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_2

    :cond_0
    invoke-static {v2}, Lorg/h2/index/LinkedIndex;->isNull(Lorg/h2/value/Value;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "NULL"

    goto :goto_1

    :cond_1
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lorg/h2/table/TableLink;->execute(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/sql/PreparedStatement;

    iget-wide v0, p0, Lorg/h2/index/LinkedIndex;->rowCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/index/LinkedIndex;->rowCount:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p2, p1}, Lorg/h2/table/TableLink;->wrapException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "LINKED"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lorg/h2/util/StatementBuilder;

    const-string v5, "SELECT * FROM "

    invoke-direct {v4, v5}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lorg/h2/index/LinkedIndex;->targetTableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v5

    const-string v6, " T"

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const-string v7, " IS NULL"

    const-string v8, " AND "

    const-string v9, " WHERE "

    if-eqz v0, :cond_2

    invoke-interface/range {p2 .. p2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v10

    if-ge v6, v10, :cond_2

    invoke-interface {v0, v6}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v4, v9}, Lorg/h2/util/StatementBuilder;->appendOnlyFirst(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    iget-object v8, v1, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v8, v6}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v8

    invoke-virtual {v8}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    sget-object v9, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v10, v9, :cond_0

    invoke-virtual {v4, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_0
    const-string v7, ">="

    invoke-virtual {v4, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-direct {v1, v4, v8}, Lorg/h2/index/LinkedIndex;->addParameter(Lorg/h2/util/StatementBuilder;Lorg/h2/table/Column;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v2, :cond_5

    invoke-interface/range {p3 .. p3}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v6

    if-ge v0, v6, :cond_5

    invoke-interface {v2, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v9}, Lorg/h2/util/StatementBuilder;->appendOnlyFirst(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    iget-object v10, v1, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v10, v0}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v10

    invoke-virtual {v10}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    sget-object v11, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v6, v11, :cond_3

    invoke-virtual {v4, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_3

    :cond_3
    const-string v11, "<="

    invoke-virtual {v4, v11}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-direct {v1, v4, v10}, Lorg/h2/index/LinkedIndex;->addParameter(Lorg/h2/util/StatementBuilder;Lorg/h2/table/Column;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v0, v1, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    invoke-virtual {v0, v2, v3, v5}, Lorg/h2/table/TableLink;->execute(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/sql/PreparedStatement;

    move-result-object v15

    invoke-interface {v15}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v12

    new-instance v0, Lorg/h2/index/LinkedCursor;

    iget-object v11, v1, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    move-object v10, v0

    move-object/from16 v13, p1

    move-object v14, v2

    invoke-direct/range {v10 .. v15}, Lorg/h2/index/LinkedCursor;-><init>(Lorg/h2/table/TableLink;Ljava/sql/ResultSet;Lorg/h2/engine/Session;Ljava/lang/String;Ljava/sql/PreparedStatement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v2, v0}, Lorg/h2/table/TableLink;->wrapException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 0

    const-string p1, "LINKED"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[I[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)D"
        }
    .end annotation

    move-object v9, p0

    iget-wide v0, v9, Lorg/h2/index/LinkedIndex;->rowCount:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/h2/index/BaseIndex;->getCostRangeIndex([IJ[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;ZLjava/util/HashSet;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    iget-wide v0, p0, Lorg/h2/index/LinkedIndex;->rowCount:J

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/index/LinkedIndex;->rowCount:J

    return-wide v0
.end method

.method public needRebuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 0

    .line 1
    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 6

    .line 2
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/index/LinkedIndex;->targetTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string v3, "AND "

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v3, v2}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-interface {p2, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/index/LinkedIndex;->isNull(Lorg/h2/value/Value;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v3, " IS NULL "

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_0
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-direct {p0, v0, v3}, Lorg/h2/index/LinkedIndex;->addParameter(Lorg/h2/util/StatementBuilder;Lorg/h2/table/Column;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    invoke-virtual {v0, p2, p1, v1}, Lorg/h2/table/TableLink;->execute(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    invoke-virtual {v1, p1, p2}, Lorg/h2/table/TableLink;->reusePreparedStatement(Ljava/sql/PreparedStatement;Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/h2/index/LinkedIndex;->rowCount:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/index/LinkedIndex;->rowCount:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p2, p1}, Lorg/h2/table/TableLink;->wrapException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public update(Lorg/h2/result/Row;Lorg/h2/result/Row;)V
    .locals 6

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/h2/util/StatementBuilder;

    const-string v2, "UPDATE "

    invoke-direct {v1, v2}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/index/LinkedIndex;->targetTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    const-string v3, " SET "

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v4

    const/16 v5, 0x3d

    if-ge v3, v4, :cond_1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v4, v3}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-interface {p2, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "DEFAULT"

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_0
    const/16 v5, 0x3f

    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p2, " WHERE "

    invoke-virtual {v1, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    :goto_2
    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result p2

    if-ge v2, p2, :cond_3

    iget-object p2, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {p2, v2}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object p2

    const-string v3, " AND "

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-interface {p1, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/index/LinkedIndex;->isNull(Lorg/h2/value/Value;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p2, " IS NULL"

    invoke-virtual {v1, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, p2}, Lorg/h2/index/LinkedIndex;->addParameter(Lorg/h2/util/StatementBuilder;Lorg/h2/table/Column;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lorg/h2/index/LinkedIndex;->link:Lorg/h2/table/TableLink;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lorg/h2/table/TableLink;->execute(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/sql/PreparedStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    invoke-static {p1, p2}, Lorg/h2/table/TableLink;->wrapException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
