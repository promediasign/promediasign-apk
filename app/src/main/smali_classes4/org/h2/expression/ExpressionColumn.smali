.class public Lorg/h2/expression/ExpressionColumn;
.super Lorg/h2/expression/Expression;
.source "SourceFile"


# instance fields
.field private column:Lorg/h2/table/Column;

.field private final columnName:Ljava/lang/String;

.field private columnResolver:Lorg/h2/table/ColumnResolver;

.field private final database:Lorg/h2/engine/Database;

.field private evaluatable:Z

.field private queryLevel:I

.field private final schemaName:Ljava/lang/String;

.field private final tableAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    iput-object p2, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    iput-object p3, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    iput-object p4, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/table/Column;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    iput-object p2, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    return-void
.end method

.method private mapColumn(Lorg/h2/table/ColumnResolver;Lorg/h2/table/Column;I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    if-nez v0, :cond_0

    iput p3, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    iput-object p2, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    iput-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    if-ne p2, p3, :cond_2

    if-eq v0, p1, :cond_2

    instance-of p1, p1, Lorg/h2/command/dml/SelectListColumnResolver;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x15fcb

    iget-object p2, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V
    .locals 1

    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object p1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p1}, Lorg/h2/table/Column;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    :cond_0
    return-void
.end method

.method public getAlias()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getColumn()Lorg/h2/table/Column;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCost()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getDisplaySize()I

    move-result v0

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

.method public getNullable()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->isNullable()Z

    move-result v0

    return v0
.end method

.method public getOriginalColumnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalTableAliasName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    .line 8
    .line 9
    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    .line 27
    .line 28
    const-string v3, "."

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-static {v2}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :cond_2
    invoke-static {v2, v3, v1}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :cond_3
    iget-object v2, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v2, :cond_5

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-static {v2}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_4
    invoke-static {v2, v3, v1}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_5
    return-object v1
.end method

.method public getScale()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getScale()I

    move-result v0

    return v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTableFilter()Lorg/h2/table/TableFilter;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/h2/table/ColumnResolver;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 1

    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getSelect()Lorg/h2/command/dml/Select;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/h2/command/dml/Select;->getCurrentGroup()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/value/Value;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p1, v0}, Lorg/h2/table/ColumnResolver;->getValue(Lorg/h2/table/Column;)Lorg/h2/value/Value;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getEnumerators()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getEnumerators()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/h2/value/ValueEnum;->get([Ljava/lang/String;Lorg/h2/value/Value;)Lorg/h2/value/ValueEnum;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p1, v0}, Lorg/h2/table/ColumnResolver;->getValue(Lorg/h2/table/Column;)Lorg/h2/value/Value;

    const p1, 0x15fa0

    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public isAutoIncrement()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getSequence()Lorg/h2/schema/Sequence;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

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
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p1, v0}, Lorg/h2/expression/ExpressionVisitor;->addColumn(Lorg/h2/table/Column;)V

    return v2

    :pswitch_1
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/expression/ExpressionVisitor;->addDependency(Lorg/h2/engine/DbObject;)V

    :cond_0
    return v2

    :pswitch_2
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getResolver()Lorg/h2/table/ColumnResolver;

    move-result-object p1

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :pswitch_3
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/Table;->getMaxDataModificationId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/expression/ExpressionVisitor;->addDataModificationId(J)V

    return v2

    :pswitch_4
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->nestedJoins:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getQueryLevel()I

    move-result p1

    iget v0, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    if-ge p1, v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->isEvaluatable()Z

    move-result p1

    return p1

    :cond_4
    iget-boolean v0, p0, Lorg/h2/expression/ExpressionColumn;->evaluatable:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getQueryLevel()I

    move-result p1

    iget v0, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    if-ge p1, v0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1

    :pswitch_5
    return v2

    :pswitch_6
    return v1

    :pswitch_7
    iget v0, p0, Lorg/h2/expression/ExpressionColumn;->queryLevel:I

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getQueryLevel()I

    move-result p1

    if-ge v0, p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 8

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getTableAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getSchemaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    iget-object v7, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1, v4, p2}, Lorg/h2/expression/ExpressionColumn;->mapColumn(Lorg/h2/table/ColumnResolver;Lorg/h2/table/Column;I)V

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    const-string v1, "_ROWID_"

    iget-object v3, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getRowIdColumn()Lorg/h2/table/Column;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v0, p2}, Lorg/h2/expression/ExpressionColumn;->mapColumn(Lorg/h2/table/ColumnResolver;Lorg/h2/table/Column;I)V

    return-void

    :cond_4
    invoke-interface {p1}, Lorg/h2/table/ColumnResolver;->getSystemColumns()[Lorg/h2/table/Column;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    array-length v1, v0

    if-ge v2, v1, :cond_6

    aget-object v1, v0, v2

    iget-object v3, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    iget-object v4, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, p1, v1, p2}, Lorg/h2/expression/ExpressionColumn;->mapColumn(Lorg/h2/table/ColumnResolver;Lorg/h2/table/Column;I)V

    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lorg/h2/schema/Schema;->findConstant(Ljava/lang/String;)Lorg/h2/schema/Constant;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/h2/schema/Constant;->getValue()Lorg/h2/expression/ValueExpression;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_1
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnName:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->tableAlias:Ljava/lang/String;

    .line 48
    .line 49
    const-string v2, "."

    .line 50
    .line 51
    invoke-static {v0, v1, v2, p1}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lorg/h2/expression/ExpressionColumn;->schemaName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0, v1, v2, p1}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :cond_2
    const v0, 0xa48a

    .line 71
    .line 72
    .line 73
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    throw p1

    .line 78
    :cond_3
    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    .line 79
    .line 80
    invoke-interface {v0, p0, p1}, Lorg/h2/table/ColumnResolver;->optimize(Lorg/h2/expression/ExpressionColumn;Lorg/h2/table/Column;)Lorg/h2/expression/Expression;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/table/ColumnResolver;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iput-boolean p2, p0, Lorg/h2/expression/ExpressionColumn;->evaluatable:Z

    :cond_0
    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 3

    iget-object p1, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p1, v0}, Lorg/h2/table/ColumnResolver;->getValue(Lorg/h2/table/Column;)Lorg/h2/value/Value;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->columnResolver:Lorg/h2/table/ColumnResolver;

    invoke-interface {v0}, Lorg/h2/table/ColumnResolver;->getSelect()Lorg/h2/command/dml/Select;

    move-result-object v0

    const v1, 0x15fa0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->getCurrentGroup()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/value/Value;

    if-nez v2, :cond_1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/expression/ExpressionColumn;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1, v2}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {p0}, Lorg/h2/expression/ExpressionColumn;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
