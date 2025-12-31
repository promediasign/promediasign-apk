.class public Lorg/h2/expression/ConditionInSelect;
.super Lorg/h2/expression/Condition;
.source "SourceFile"


# instance fields
.field private final all:Z

.field private final compareType:I

.field private final database:Lorg/h2/engine/Database;

.field private left:Lorg/h2/expression/Expression;

.field private final query:Lorg/h2/command/dml/Query;

.field private queryLevel:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/command/dml/Query;ZI)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/expression/Condition;-><init>()V

    iput-object p1, p0, Lorg/h2/expression/ConditionInSelect;->database:Lorg/h2/engine/Database;

    iput-object p2, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    iput-object p3, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    iput-boolean p4, p0, Lorg/h2/expression/ConditionInSelect;->all:Z

    iput p5, p0, Lorg/h2/expression/ConditionInSelect;->compareType:I

    return-void
.end method

.method private getValueSlow(Lorg/h2/result/ResultInterface;Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 7

    iget-boolean v0, p0, Lorg/h2/expression/ConditionInSelect;->all:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v3

    aget-object v3, v3, v1

    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/h2/expression/ConditionInSelect;->database:Lorg/h2/engine/Database;

    iget v6, p0, Lorg/h2/expression/ConditionInSelect;->compareType:I

    invoke-static {v4, p2, v3, v6}, Lorg/h2/expression/Comparison;->compareNotNull(Lorg/h2/engine/Database;Lorg/h2/value/Value;Lorg/h2/value/Value;I)Z

    move-result v3

    :goto_0
    if-nez v3, :cond_2

    iget-boolean v4, p0, Lorg/h2/expression/ConditionInSelect;->all:Z

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/h2/expression/ConditionInSelect;->all:Z

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    :cond_4
    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V
    .locals 2

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->optimizeInList:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    instance-of v0, p1, Lorg/h2/expression/ExpressionColumn;

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    if-eq p2, v0, :cond_2

    return-void

    :cond_2
    invoke-static {p2}, Lorg/h2/expression/ExpressionVisitor;->getNotFromResolverVisitor(Lorg/h2/table/ColumnResolver;)Lorg/h2/expression/ExpressionVisitor;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1, v0}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-static {p1, v0}, Lorg/h2/index/IndexCondition;->getInQuery(Lorg/h2/expression/ExpressionColumn;Lorg/h2/command/dml/Query;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    return-void
.end method

.method public getCost()I
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getCostAsExpression()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic getDisplaySize()I
    .locals 1

    invoke-super {p0}, Lorg/h2/expression/Condition;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPrecision()J
    .locals 2

    invoke-super {p0}, Lorg/h2/expression/Condition;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/h2/expression/ConditionInSelect;->all:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/h2/expression/ConditionInSelect;->compareType:I

    invoke-static {v1}, Lorg/h2/expression/Comparison;->getCompareOperator(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ALL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/h2/expression/ConditionInSelect;->compareType:I

    if-nez v1, :cond_1

    const-string v1, "IN"

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/h2/expression/Comparison;->getCompareOperator(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ANY"

    goto :goto_0

    :goto_1
    const-string v1, "(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->indent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getScale()I
    .locals 1

    invoke-super {p0}, Lorg/h2/expression/Condition;->getScale()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    invoke-super {p0}, Lorg/h2/expression/Condition;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1, p1}, Lorg/h2/command/Prepared;->setSession(Lorg/h2/engine/Session;)V

    iget-object v1, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->hasOrder()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1, v2}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    :cond_0
    iget-object v1, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1, v0}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v3, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean p1, p0, Lorg/h2/expression/ConditionInSelect;->all:Z

    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v3, v4, :cond_2

    return-object v3

    :cond_2
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->optimizeInSelect:Z

    if-nez p1, :cond_3

    invoke-direct {p0, v1, v3}, Lorg/h2/expression/ConditionInSelect;->getValueSlow(Lorg/h2/result/ResultInterface;Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    :cond_3
    iget-boolean p1, p0, Lorg/h2/expression/ConditionInSelect;->all:Z

    if-nez p1, :cond_8

    iget p1, p0, Lorg/h2/expression/ConditionInSelect;->compareType:I

    if-eqz p1, :cond_4

    const/16 v5, 0x10

    if-eq p1, v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v1, v0}, Lorg/h2/result/ResultInterface;->getColumnType(I)I

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v3, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    new-array v3, v2, [Lorg/h2/value/Value;

    aput-object p1, v3, v0

    invoke-interface {v1, v3}, Lorg/h2/result/ResultInterface;->containsDistinct([Lorg/h2/value/Value;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1

    :cond_6
    new-array p1, v2, [Lorg/h2/value/Value;

    aput-object v4, p1, v0

    invoke-interface {v1, p1}, Lorg/h2/result/ResultInterface;->containsDistinct([Lorg/h2/value/Value;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object v4

    :cond_7
    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_0
    invoke-direct {p0, v1, v3}, Lorg/h2/expression/ConditionInSelect;->getValueSlow(Lorg/h2/result/ResultInterface;Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/h2/command/dml/Query;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    iget p1, p0, Lorg/h2/expression/ConditionInSelect;->queryLevel:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/h2/expression/ConditionInSelect;->queryLevel:I

    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Query;->setRandomAccessResult(Z)V

    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->optimizeQueryExpression(Lorg/h2/command/dml/Query;)V

    iget-object p1, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {p1}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result p1

    if-ne p1, v1, :cond_0

    return-object p0

    :cond_0
    const p1, 0x15fc4

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/expression/ConditionInSelect;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->updateAggregate(Lorg/h2/engine/Session;)V

    return-void
.end method
