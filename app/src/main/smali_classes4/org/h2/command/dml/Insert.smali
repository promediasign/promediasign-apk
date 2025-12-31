.class public Lorg/h2/command/dml/Insert;
.super Lorg/h2/command/Prepared;
.source "SourceFile"

# interfaces
.implements Lorg/h2/result/ResultTarget;


# instance fields
.field private columns:[Lorg/h2/table/Column;

.field private duplicateKeyAssignmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/h2/table/Column;",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private insertFromSelect:Z

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

.field private rowNumber:I

.field private sortedInsertMode:Z

.field private table:Lorg/h2/table/Table;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    return-void
.end method

.method private handleOnDuplicate(Lorg/h2/message/DbException;)V
    .locals 6

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x5bd1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v3}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v4}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getCurrentRowNumber()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/h2/expression/Expression;

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v5}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/h2/engine/Session;->setVariable(Ljava/lang/String;Lorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/h2/util/StatementBuilder;

    const-string v2, "UPDATE "

    invoke-direct {v1, v2}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    const-string v3, " SET "

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v2, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Column;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Expression;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_1
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/index/Index;

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lorg/h2/command/dml/Insert;->prepareUpdateCondition(Lorg/h2/index/Index;)Lorg/h2/expression/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, p1}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Parameter;

    iget-object v3, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/h2/expression/Parameter;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Parameter;

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4}, Lorg/h2/expression/Parameter;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/h2/command/Prepared;->update()I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-virtual {v1, v0, v2}, Lorg/h2/engine/Session;->setVariable(Ljava/lang/String;Lorg/h2/value/Value;)V

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    const-string p1, "Unable to apply ON DUPLICATE KEY UPDATE, no index found!"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_5
    throw p1

    :cond_6
    throw p1
.end method

.method private insertRows()I
    .locals 13

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/h2/command/Prepared;->setCurrentRowNumber(I)V

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3}, Lorg/h2/table/Table;->fire(Lorg/h2/engine/Session;IZ)V

    iput v0, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v2, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    array-length v2, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->startStatementWithinTransaction()V

    iget-object v5, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v5}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/h2/expression/Expression;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7}, Lorg/h2/command/Prepared;->setCurrentRowNumber(I)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_1

    iget-object v9, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/h2/table/Column;->getColumnId()I

    move-result v10

    aget-object v11, v6, v8

    if-eqz v11, :cond_0

    iget-object v12, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v11, v12}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v11

    :try_start_0
    iget-object v12, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v11, v12}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v9

    invoke-interface {v5, v10, v9}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v6}, Lorg/h2/command/Prepared;->getSQL([Lorg/h2/expression/Expression;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v4, v1}, Lorg/h2/command/Prepared;->setRow(Lorg/h2/message/DbException;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    iget v4, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    iget-object v4, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v6, v5}, Lorg/h2/table/Table;->validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    iget-object v4, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v5}, Lorg/h2/table/Table;->fireBeforeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v6, v3, v0}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    :try_start_1
    iget-object v4, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v6, v5}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    invoke-direct {p0, v4}, Lorg/h2/command/dml/Insert;->handleOnDuplicate(Lorg/h2/message/DbException;)V

    :goto_3
    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v6, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v4, v6, v0, v5}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    iget-object v4, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v6, v8, v5, v0}, Lorg/h2/table/Table;->fireAfterRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V

    :cond_2
    move v4, v7

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2, v3, v0}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    iget-boolean v1, p0, Lorg/h2/command/dml/Insert;->insertFromSelect:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1, v0, p0}, Lorg/h2/command/dml/Query;->query(ILorg/h2/result/ResultTarget;)Lorg/h2/result/ResultInterface;

    goto :goto_5

    :cond_4
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1, v0}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/h2/command/dml/Insert;->addRow([Lorg/h2/value/Value;)V

    goto :goto_4

    :cond_5
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->close()V

    :cond_6
    :goto_5
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2, v3, v0}, Lorg/h2/table/Table;->fire(Lorg/h2/engine/Session;IZ)V

    iget v0, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    return v0
.end method

.method private prepareUpdateCondition(Lorg/h2/index/Index;)Lorg/h2/expression/Expression;
    .locals 12

    instance-of v0, p1, Lorg/h2/mvstore/db/MVPrimaryIndex;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/h2/mvstore/db/MVPrimaryIndex;

    new-array v0, v1, [Lorg/h2/table/Column;

    invoke-virtual {p1}, Lorg/h2/index/BaseIndex;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v3

    invoke-virtual {p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMainIndexColumn()I

    move-result p1

    aget-object p1, v3, p1

    iget-object p1, p1, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    aput-object p1, v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    :goto_0
    array-length p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_4

    aget-object v5, v0, v4

    new-instance v6, Lorg/h2/expression/ExpressionColumn;

    iget-object v7, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v7}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v7

    iget-object v8, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v8}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v8

    invoke-virtual {v8}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v9}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v8, v9, v5}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_2
    iget-object v7, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    array-length v7, v7

    if-ge v5, v7, :cond_3

    invoke-virtual {v6}, Lorg/h2/expression/ExpressionColumn;->getColumnName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v3, :cond_1

    new-instance v3, Lorg/h2/expression/Comparison;

    iget-object v7, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v8, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getCurrentRowNumber()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/h2/expression/Expression;

    add-int/lit8 v9, v5, 0x1

    aget-object v5, v8, v5

    invoke-direct {v3, v7, v2, v6, v5}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    move v5, v9

    goto :goto_3

    :cond_1
    new-instance v7, Lorg/h2/expression/ConditionAndOr;

    new-instance v8, Lorg/h2/expression/Comparison;

    iget-object v9, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v10, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/h2/expression/Expression;

    add-int/lit8 v11, v5, 0x1

    aget-object v5, v10, v5

    invoke-direct {v8, v9, v2, v6, v5}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    invoke-direct {v7, v2, v3, v8}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    move-object v3, v7

    move v5, v11

    :cond_2
    :goto_3
    add-int/2addr v5, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v3
.end method


# virtual methods
.method public addAssignmentForDuplicate(Lorg/h2/table/Column;Lorg/h2/expression/Expression;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const p2, 0xa489

    invoke-virtual {p1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addRow([Lorg/h2/expression/Expression;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRow([Lorg/h2/value/Value;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v0

    iget v1, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    invoke-virtual {p0, v1}, Lorg/h2/command/Prepared;->setCurrentRowNumber(I)V

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v5

    :try_start_0
    aget-object v6, p1, v3

    invoke-virtual {v4, v6}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iget v1, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    invoke-static {p1}, Lorg/h2/command/Prepared;->getSQL([Lorg/h2/value/Value;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/h2/command/Prepared;->setRow(Lorg/h2/message/DbException;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_0
    iget-object p1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v1, v0}, Lorg/h2/table/Table;->validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    iget-object p1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0}, Lorg/h2/table/Table;->fireBeforeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v1, v0}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    iget-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {p1, v1, v2, v0}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    iget-object p1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v1, v3, v0, v2}, Lorg/h2/table/Table;->fireAfterRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V

    :cond_1
    return-void
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 10

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "INSERT INTO "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

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
    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-boolean v1, p0, Lorg/h2/command/dml/Insert;->insertFromSelect:Z

    if-eqz v1, :cond_1

    const-string v1, "DIRECT "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_1
    iget-boolean v1, p0, Lorg/h2/command/dml/Insert;->sortedInsertMode:Z

    if-eqz v1, :cond_2

    const-string v1, "SORTED "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_2
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, "VALUES "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :cond_3
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/h2/expression/Expression;

    add-int/lit8 v7, v3, 0x1

    if-lez v3, :cond_4

    const-string v3, ",\n"

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_4
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    array-length v3, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_6

    aget-object v9, v5, v8

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v9, :cond_5

    const-string v9, "DEFAULT"

    :goto_3
    invoke-virtual {v0, v9}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move v3, v7

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_8
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    iget v0, p0, Lorg/h2/command/dml/Insert;->rowNumber:I

    return v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method

.method public isCacheable()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->duplicateKeyAssignmentMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 9

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/expression/Expression;

    array-length v0, v0

    if-nez v0, :cond_0

    new-array v0, v1, [Lorg/h2/table/Column;

    iput-object v0, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x520a

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/h2/expression/Expression;

    array-length v4, v3

    iget-object v5, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    array-length v5, v5

    if-ne v4, v5, :cond_5

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    if-eqz v6, :cond_4

    iget-object v7, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v7}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v6

    instance-of v7, v6, Lorg/h2/expression/Parameter;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Lorg/h2/expression/Parameter;

    iget-object v8, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Lorg/h2/expression/Parameter;->setColumn(Lorg/h2/table/Column;)V

    :cond_3
    aput-object v6, v3, v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_6
    iget-object v0, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->prepare()V

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    iget-object v1, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    if-ne v0, v1, :cond_8

    :cond_7
    return-void

    :cond_8
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

    iput-object p1, p0, Lorg/h2/command/dml/Insert;->columns:[Lorg/h2/table/Column;

    return-void
.end method

.method public setCommand(Lorg/h2/command/Command;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/h2/command/Prepared;->setCommand(Lorg/h2/command/Command;)V

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/command/Prepared;->setCommand(Lorg/h2/command/Command;)V

    :cond_0
    return-void
.end method

.method public setInsertFromSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/Insert;->insertFromSelect:Z

    return-void
.end method

.method public setQuery(Lorg/h2/command/dml/Query;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Insert;->query:Lorg/h2/command/dml/Query;

    return-void
.end method

.method public setSortedInsertMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/Insert;->sortedInsertMode:Z

    return-void
.end method

.method public setTable(Lorg/h2/table/Table;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    return-void
.end method

.method public update()I
    .locals 3

    iget-boolean v0, p0, Lorg/h2/command/dml/Insert;->sortedInsertMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/Insert;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/h2/index/Index;->setSortedInsertMode(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/command/dml/Insert;->insertRows()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lorg/h2/index/Index;->setSortedInsertMode(Z)V

    :cond_1
    return v2

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lorg/h2/index/Index;->setSortedInsertMode(Z)V

    :cond_2
    throw v2
.end method
