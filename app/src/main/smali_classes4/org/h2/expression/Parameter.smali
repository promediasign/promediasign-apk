.class public Lorg/h2/expression/Parameter;
.super Lorg/h2/expression/Expression;
.source "SourceFile"

# interfaces
.implements Lorg/h2/expression/ParameterInterface;


# instance fields
.field private column:Lorg/h2/table/Column;

.field private final index:I

.field private value:Lorg/h2/value/Value;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    iput p1, p0, Lorg/h2/expression/Parameter;->index:I

    return-void
.end method


# virtual methods
.method public checkSet()V
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/expression/Parameter;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15f9c

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getCost()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getDisplaySize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Parameter;->column:Lorg/h2/table/Column;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/table/Column;->getDisplaySize()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/h2/expression/Parameter;->index:I

    return v0
.end method

.method public getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 3

    new-instance v0, Lorg/h2/expression/Comparison;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v2

    invoke-direct {v0, p1, v1, p0, v2}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object v0
.end method

.method public getParamValue()Lorg/h2/value/Value;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-nez v0, :cond_0

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    :cond_0
    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Parameter;->column:Lorg/h2/table/Column;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/table/Column;->getPrecision()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/expression/Parameter;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getScale()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Parameter;->column:Lorg/h2/table/Column;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/table/Column;->getScale()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Parameter;->column:Lorg/h2/table/Column;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/table/Column;->getType()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 0

    invoke-virtual {p0}, Lorg/h2/expression/Parameter;->getParamValue()Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public isConstant()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_0
    return v1

    :pswitch_1
    iget-object p1, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isValueSet()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 0

    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 1

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/h2/value/ValueString;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    :cond_0
    return-object p0
.end method

.method public setColumn(Lorg/h2/table/Column;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/expression/Parameter;->column:Lorg/h2/table/Column;

    return-void
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 0

    return-void
.end method

.method public setValue(Lorg/h2/value/Value;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    return-void
.end method

.method public setValue(Lorg/h2/value/Value;Z)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/h2/expression/Parameter;->value:Lorg/h2/value/Value;

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method
