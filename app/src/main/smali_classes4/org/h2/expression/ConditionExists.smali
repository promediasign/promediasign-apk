.class public Lorg/h2/expression/ConditionExists;
.super Lorg/h2/expression/Condition;
.source "SourceFile"


# instance fields
.field private final query:Lorg/h2/command/dml/Query;


# direct methods
.method public constructor <init>(Lorg/h2/command/dml/Query;)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/expression/Condition;-><init>()V

    iput-object p1, p0, Lorg/h2/expression/ConditionExists;->query:Lorg/h2/command/dml/Query;

    return-void
.end method


# virtual methods
.method public getCost()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ConditionExists;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getCostAsExpression()I

    move-result v0

    return v0
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

    const-string v1, "EXISTS(\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/expression/ConditionExists;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->indent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

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
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ConditionExists;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/Prepared;->setSession(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/expression/ConditionExists;->query:Lorg/h2/command/dml/Query;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->addTemporaryResult(Lorg/h2/result/ResultInterface;)V

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->hasNext()Z

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ConditionExists;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ConditionExists;->query:Lorg/h2/command/dml/Query;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ConditionExists;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->optimizeQueryExpression(Lorg/h2/command/dml/Query;)V

    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ConditionExists;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method
