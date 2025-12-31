.class public Lorg/h2/command/dml/Merge;
.super Lorg/h2/command/Prepared;
.source "SourceFile"


# instance fields
.field private columns:[Lorg/h2/table/Column;

.field private keys:[Lorg/h2/table/Column;

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private query:Lorg/h2/command/dml/Query;

.field private table:Lorg/h2/table/Table;

.field private update:Lorg/h2/command/Prepared;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/dml/Merge;->list:Ljava/util/ArrayList;

    return-void
.end method

.method private merge(Lorg/h2/result/Row;)V
    .locals 6

    iget-object v0, p0, Lorg/h2/command/dml/Merge;->update:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/h2/command/dml/Merge;->columns:[Lorg/h2/table/Column;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/h2/table/Column;->getColumnId()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Parameter;

    invoke-virtual {v4, v3}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/h2/command/dml/Merge;->keys:[Lorg/h2/table/Column;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lorg/h2/command/dml/Merge;->columns:[Lorg/h2/table/Column;

    array-length v3, v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Parameter;

    invoke-virtual {v3, v4}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const p1, 0x15fe1

    invoke-virtual {v3}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object v0, p0, Lorg/h2/command/dml/Merge;->update:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->update()I

    move-result v0

    const/16 v2, 0x5bd1

    const/4 v3, 0x1

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v4, p1}, Lorg/h2/table/Table;->validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    iget-object v0, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p1}, Lorg/h2/table/Table;->fireBeforeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v4, v3, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    iget-object v0, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, p1}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    invoke-virtual {v0, v3, v1, p1}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    iget-object v0, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v5, p1, v1}, Lorg/h2/table/Table;->fireAfterRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    array-length v2, v0

    iget-object v3, p0, Lorg/h2/command/dml/Merge;->keys:[Lorg/h2/table/Column;

    array-length v3, v3

    if-gt v2, v3, :cond_3

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/h2/command/dml/Merge;->keys:[Lorg/h2/table/Column;

    aget-object v3, v3, v1

    if-ne v2, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    throw p1

    :cond_4
    if-ne v0, v3, :cond_6

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object p1, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public addRow([Lorg/h2/expression/Expression;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Merge;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 11

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "MERGE INTO "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/command/dml/Merge;->columns:[Lorg/h2/table/Column;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string v6, ", "

    if-ge v5, v3, :cond_0

    aget-object v7, v1, v5

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    iget-object v3, p0, Lorg/h2/command/dml/Merge;->keys:[Lorg/h2/table/Column;

    if-eqz v3, :cond_2

    const-string v3, " KEY("

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    iget-object v3, p0, Lorg/h2/command/dml/Merge;->keys:[Lorg/h2/table/Column;

    array-length v5, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_1

    aget-object v8, v3, v7

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :cond_2
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    iget-object v3, p0, Lorg/h2/command/dml/Merge;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    const-string v3, "VALUES "

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v3, p0, Lorg/h2/command/dml/Merge;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/h2/expression/Expression;

    add-int/lit8 v8, v5, 0x1

    if-lez v5, :cond_3

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_3
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    array-length v5, v7

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v5, :cond_5

    aget-object v10, v7, v9

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v10, :cond_4

    const-string v10, "DEFAULT"

    :goto_4
    invoke-virtual {v0, v10}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_5

    :cond_4
    invoke-virtual {v10}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move v5, v8

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/h2/command/dml/Merge;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_7
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public isCacheable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 8

    iget-object v0, p0, Lorg/h2/command/dml/Merge;->columns:[Lorg/h2/table/Column;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/command/dml/Merge;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/Merge;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/expression/Expression;

    array-length v0, v0

    if-nez v0, :cond_0

    new-array v0, v1, [Lorg/h2/table/Column;

    iput-object v0, p0, Lorg/h2/command/dml/Merge;->columns:[Lorg/h2/table/Column;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Merge;->columns:[Lorg/h2/table/Column;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/command/dml/Merge;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x520a

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/h2/command/dml/Merge;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/h2/expression/Expression;

    array-length v4, v3

    iget-object v5, p0, Lorg/h2/command/dml/Merge;->columns:[Lorg/h2/table/Column;

    array-length v5, v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x0

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    if-eqz v5, :cond_3

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v6}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v5

    aput-object v5, v3, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v0, p0, Lorg/h2/command/dml/Merge;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->prepare()V

    iget-object v0, p0, Lorg/h2/command/dml/Merge;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    iget-object v3, p0, Lorg/h2/command/dml/Merge;->columns:[Lorg/h2/table/Column;

    array-length v3, v3

    if-ne v0, v3, :cond_b

    :cond_6
    iget-object v0, p0, Lorg/h2/command/dml/Merge;->keys:[Lorg/h2/table/Column;

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getPrimaryKey()Lorg/h2/index/Index;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Merge;->keys:[Lorg/h2/table/Column;

    goto :goto_2

    :cond_7
    const v0, 0x15fc9

    const-string v1, "PRIMARY KEY"

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_2
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v2, "UPDATE "

    invoke-direct {v0, v2}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    const-string v3, " SET "

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v2, p0, Lorg/h2/command/dml/Merge;->columns:[Lorg/h2/table/Column;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_3
    const-string v5, "=?"

    if-ge v4, v3, :cond_9

    aget-object v6, v2, v4

    const-string v7, ", "

    invoke-virtual {v0, v7}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    iget-object v2, p0, Lorg/h2/command/dml/Merge;->keys:[Lorg/h2/table/Column;

    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    const-string v6, " AND "

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v0}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Merge;->update:Lorg/h2/command/Prepared;

    return-void

    :cond_b
    invoke-static {v2}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setColumns([Lorg/h2/table/Column;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Merge;->columns:[Lorg/h2/table/Column;

    return-void
.end method

.method public setCommand(Lorg/h2/command/Command;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/h2/command/Prepared;->setCommand(Lorg/h2/command/Command;)V

    iget-object v0, p0, Lorg/h2/command/dml/Merge;->query:Lorg/h2/command/dml/Query;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/command/Prepared;->setCommand(Lorg/h2/command/Command;)V

    :cond_0
    return-void
.end method

.method public setKeys([Lorg/h2/table/Column;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Merge;->keys:[Lorg/h2/table/Column;

    return-void
.end method

.method public setQuery(Lorg/h2/command/dml/Query;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Merge;->query:Lorg/h2/command/dml/Query;

    return-void
.end method

.method public setTable(Lorg/h2/table/Table;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    return-void
.end method

.method public update()I
    .locals 12

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/h2/command/Prepared;->setCurrentRowNumber(I)V

    iget-object v1, p0, Lorg/h2/command/dml/Merge;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/h2/command/dml/Merge;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lorg/h2/command/Prepared;->setCurrentRowNumber(I)V

    iget-object v5, p0, Lorg/h2/command/dml/Merge;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/h2/expression/Expression;

    iget-object v5, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    invoke-virtual {v5}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/command/dml/Merge;->columns:[Lorg/h2/table/Column;

    array-length v6, v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    iget-object v8, p0, Lorg/h2/command/dml/Merge;->columns:[Lorg/h2/table/Column;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lorg/h2/table/Column;->getColumnId()I

    move-result v9

    aget-object v10, v2, v7

    if-eqz v10, :cond_0

    :try_start_0
    iget-object v11, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v10, v11}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v8

    invoke-interface {v5, v9, v8}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v2}, Lorg/h2/command/Prepared;->getSQL([Lorg/h2/expression/Expression;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lorg/h2/command/Prepared;->setRow(Lorg/h2/message/DbException;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5}, Lorg/h2/command/dml/Merge;->merge(Lorg/h2/result/Row;)V

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/h2/command/dml/Merge;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1, v0}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/h2/table/Table;->fire(Lorg/h2/engine/Session;IZ)V

    iget-object v2, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3, v5, v0}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    const/4 v3, 0x0

    :goto_3
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v2

    iget-object v5, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    invoke-virtual {v5}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v5

    invoke-virtual {p0, v3}, Lorg/h2/command/Prepared;->setCurrentRowNumber(I)V

    const/4 v6, 0x0

    :goto_4
    iget-object v7, p0, Lorg/h2/command/dml/Merge;->columns:[Lorg/h2/table/Column;

    array-length v8, v7

    if-ge v6, v8, :cond_3

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lorg/h2/table/Column;->getColumnId()I

    move-result v8

    :try_start_1
    aget-object v9, v2, v6

    invoke-virtual {v7, v9}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v7

    invoke-interface {v5, v8, v7}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {v2}, Lorg/h2/command/Prepared;->getSQL([Lorg/h2/value/Value;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lorg/h2/command/Prepared;->setRow(Lorg/h2/message/DbException;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-direct {p0, v5}, Lorg/h2/command/dml/Merge;->merge(Lorg/h2/result/Row;)V

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->close()V

    iget-object v1, p0, Lorg/h2/command/dml/Merge;->table:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2, v4, v0}, Lorg/h2/table/Table;->fire(Lorg/h2/engine/Session;IZ)V

    :cond_5
    return v3
.end method
