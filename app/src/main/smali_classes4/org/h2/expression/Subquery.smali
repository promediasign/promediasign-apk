.class public Lorg/h2/expression/Subquery;
.super Lorg/h2/expression/Expression;
.source "SourceFile"


# instance fields
.field private expression:Lorg/h2/expression/Expression;

.field private final query:Lorg/h2/command/dml/Query;


# direct methods
.method public constructor <init>(Lorg/h2/command/dml/Query;)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    iput-object p1, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    return-void
.end method

.method private getExpression()Lorg/h2/expression/Expression;
    .locals 5

    iget-object v0, p0, Lorg/h2/expression/Subquery;->expression:Lorg/h2/expression/Expression;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getExpressions()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/Expression;

    :goto_0
    iput-object v0, p0, Lorg/h2/expression/Subquery;->expression:Lorg/h2/expression/Expression;

    goto :goto_2

    :cond_0
    new-array v3, v1, [Lorg/h2/expression/Expression;

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Expression;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/h2/expression/ExpressionList;

    invoke-direct {v0, v3}, Lorg/h2/expression/ExpressionList;-><init>([Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/h2/expression/Subquery;->expression:Lorg/h2/expression/Expression;

    return-object v0
.end method


# virtual methods
.method public getCost()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getCostAsExpression()I

    move-result v0

    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    invoke-direct {p0}, Lorg/h2/expression/Subquery;->getExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public getExpressionColumns(Lorg/h2/engine/Session;)[Lorg/h2/expression/Expression;
    .locals 1

    invoke-direct {p0}, Lorg/h2/expression/Subquery;->getExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getExpressionColumns(Lorg/h2/engine/Session;)[Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1
.end method

.method public getPrecision()J
    .locals 2

    invoke-direct {p0}, Lorg/h2/expression/Subquery;->getExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuery()Lorg/h2/command/dml/Query;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    return-object v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    invoke-direct {p0}, Lorg/h2/expression/Subquery;->getExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getScale()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    invoke-direct {p0}, Lorg/h2/expression/Subquery;->getExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 3

    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/Prepared;->setSession(Lorg/h2/engine/Session;)V

    iget-object p1, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->getVisibleColumnCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :goto_1
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->close()V

    return-object v0

    :cond_2
    const v0, 0x15fc5

    :try_start_1
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_3

    :try_start_3
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->optimizeQueryExpression(Lorg/h2/command/dml/Query;)V

    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Subquery;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->updateAggregate(Lorg/h2/engine/Session;)V

    return-void
.end method
