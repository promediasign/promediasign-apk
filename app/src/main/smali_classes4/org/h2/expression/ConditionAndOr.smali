.class public Lorg/h2/expression/ConditionAndOr;
.super Lorg/h2/expression/Condition;
.source "SourceFile"


# static fields
.field public static final AND:I = 0x0

.field public static final OR:I = 0x1


# instance fields
.field private final andOrType:I

.field private left:Lorg/h2/expression/Expression;

.field private right:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/expression/Condition;-><init>()V

    iput p1, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    iput-object p2, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    iput-object p3, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    sget-boolean p1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method


# virtual methods
.method public addFilterConditions(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    iget v0, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->addFilterConditions(Lorg/h2/table/TableFilter;Z)V

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->addFilterConditions(Lorg/h2/table/TableFilter;Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/expression/Expression;->addFilterConditions(Lorg/h2/table/TableFilter;Z)V

    :goto_0
    return-void
.end method

.method public createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V
    .locals 1

    iget v0, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V

    :cond_0
    return-void
.end method

.method public getCost()I
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getCost()I

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

.method public getExpression(Z)Lorg/h2/expression/Expression;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    :goto_0
    return-object p1
.end method

.method public getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 3

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/h2/expression/ConditionNot;

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-direct {v0, v1}, Lorg/h2/expression/ConditionNot;-><init>(Lorg/h2/expression/Expression;)V

    :cond_0
    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/h2/expression/ConditionNot;

    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-direct {p1, v1}, Lorg/h2/expression/ConditionNot;-><init>(Lorg/h2/expression/Expression;)V

    :cond_1
    iget v1, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lorg/h2/expression/ConditionAndOr;

    invoke-direct {v2, v1, v0, p1}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object v2
.end method

.method public bridge synthetic getPrecision()J
    .locals 2

    invoke-super {p0}, Lorg/h2/expression/Condition;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "\n    OR "

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "andOrType="

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    throw v0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 68
    .line 69
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, "\n    AND "

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :goto_1
    const-string v1, "("

    .line 80
    .line 81
    const-string v2, ")"

    .line 82
    .line 83
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
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
    .locals 4

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    iget v1, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-ne v1, v2, :cond_4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v1, :cond_2

    return-object v0

    :cond_2
    if-ne p1, v1, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-object v0

    :cond_6
    iget-object v3, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v3, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object p1

    :cond_7
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v1, :cond_8

    return-object v0

    :cond_8
    if-ne p1, v1, :cond_9

    return-object p1

    :cond_9
    invoke-static {v2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

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
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 16
    .line 17
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 24
    .line 25
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getCost()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ge v1, v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 32
    .line 33
    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 34
    .line 35
    iput-object v1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 36
    .line 37
    iput-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 38
    .line 39
    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->optimizeTwoEquals:Z

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v2, 0x1

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget v0, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 58
    .line 59
    instance-of v3, v0, Lorg/h2/expression/Comparison;

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    iget-object v3, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 64
    .line 65
    instance-of v4, v3, Lorg/h2/expression/Comparison;

    .line 66
    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    check-cast v0, Lorg/h2/expression/Comparison;

    .line 70
    .line 71
    check-cast v3, Lorg/h2/expression/Comparison;

    .line 72
    .line 73
    invoke-virtual {v0, p1, v3, v2}, Lorg/h2/expression/Comparison;->getAdditional(Lorg/h2/engine/Session;Lorg/h2/expression/Comparison;Z)Lorg/h2/expression/Expression;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v0, Lorg/h2/expression/ConditionAndOr;

    .line 84
    .line 85
    invoke-direct {v0, v1, p0, p1}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    .line 86
    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_1
    iget v0, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    .line 90
    .line 91
    if-ne v0, v2, :cond_6

    .line 92
    .line 93
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->optimizeOr:Z

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 106
    .line 107
    instance-of v3, v0, Lorg/h2/expression/Comparison;

    .line 108
    .line 109
    if-eqz v3, :cond_2

    .line 110
    .line 111
    iget-object v3, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 112
    .line 113
    instance-of v4, v3, Lorg/h2/expression/Comparison;

    .line 114
    .line 115
    if-eqz v4, :cond_2

    .line 116
    .line 117
    check-cast v0, Lorg/h2/expression/Comparison;

    .line 118
    .line 119
    check-cast v3, Lorg/h2/expression/Comparison;

    .line 120
    .line 121
    invoke-virtual {v0, p1, v3, v1}, Lorg/h2/expression/Comparison;->getAdditional(Lorg/h2/engine/Session;Lorg/h2/expression/Comparison;Z)Lorg/h2/expression/Expression;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    :cond_2
    instance-of v1, v0, Lorg/h2/expression/ConditionIn;

    .line 133
    .line 134
    if-eqz v1, :cond_3

    .line 135
    .line 136
    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 137
    .line 138
    instance-of v3, v1, Lorg/h2/expression/Comparison;

    .line 139
    .line 140
    if-eqz v3, :cond_3

    .line 141
    .line 142
    check-cast v0, Lorg/h2/expression/ConditionIn;

    .line 143
    .line 144
    check-cast v1, Lorg/h2/expression/Comparison;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lorg/h2/expression/ConditionIn;->getAdditional(Lorg/h2/expression/Comparison;)Lorg/h2/expression/Expression;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_6

    .line 151
    .line 152
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    return-object p1

    .line 157
    :cond_3
    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 158
    .line 159
    instance-of v3, v1, Lorg/h2/expression/ConditionIn;

    .line 160
    .line 161
    if-eqz v3, :cond_4

    .line 162
    .line 163
    instance-of v3, v0, Lorg/h2/expression/Comparison;

    .line 164
    .line 165
    if-eqz v3, :cond_4

    .line 166
    .line 167
    check-cast v1, Lorg/h2/expression/ConditionIn;

    .line 168
    .line 169
    check-cast v0, Lorg/h2/expression/Comparison;

    .line 170
    .line 171
    invoke-virtual {v1, v0}, Lorg/h2/expression/ConditionIn;->getAdditional(Lorg/h2/expression/Comparison;)Lorg/h2/expression/Expression;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    return-object p1

    .line 182
    :cond_4
    instance-of v3, v0, Lorg/h2/expression/ConditionInConstantSet;

    .line 183
    .line 184
    if-eqz v3, :cond_5

    .line 185
    .line 186
    instance-of v3, v1, Lorg/h2/expression/Comparison;

    .line 187
    .line 188
    if-eqz v3, :cond_5

    .line 189
    .line 190
    check-cast v0, Lorg/h2/expression/ConditionInConstantSet;

    .line 191
    .line 192
    check-cast v1, Lorg/h2/expression/Comparison;

    .line 193
    .line 194
    invoke-virtual {v0, p1, v1}, Lorg/h2/expression/ConditionInConstantSet;->getAdditional(Lorg/h2/engine/Session;Lorg/h2/expression/Comparison;)Lorg/h2/expression/Expression;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    if-eqz v0, :cond_6

    .line 199
    .line 200
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    return-object p1

    .line 205
    :cond_5
    instance-of v3, v1, Lorg/h2/expression/ConditionInConstantSet;

    .line 206
    .line 207
    if-eqz v3, :cond_6

    .line 208
    .line 209
    instance-of v3, v0, Lorg/h2/expression/Comparison;

    .line 210
    .line 211
    if-eqz v3, :cond_6

    .line 212
    .line 213
    check-cast v1, Lorg/h2/expression/ConditionInConstantSet;

    .line 214
    .line 215
    check-cast v0, Lorg/h2/expression/Comparison;

    .line 216
    .line 217
    invoke-virtual {v1, p1, v0}, Lorg/h2/expression/ConditionInConstantSet;->getAdditional(Lorg/h2/engine/Session;Lorg/h2/expression/Comparison;)Lorg/h2/expression/Expression;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-eqz v0, :cond_6

    .line 222
    .line 223
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    return-object p1

    .line 228
    :cond_6
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 229
    .line 230
    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    const/4 v1, 0x0

    .line 235
    if-eqz v0, :cond_7

    .line 236
    .line 237
    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 238
    .line 239
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    goto :goto_0

    .line 244
    :cond_7
    move-object v0, v1

    .line 245
    :goto_0
    iget-object v3, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 246
    .line 247
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->isConstant()Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-eqz v3, :cond_8

    .line 252
    .line 253
    iget-object v1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 254
    .line 255
    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    :cond_8
    if-nez v0, :cond_9

    .line 260
    .line 261
    if-nez v1, :cond_9

    .line 262
    .line 263
    return-object p0

    .line 264
    :cond_9
    if-eqz v0, :cond_a

    .line 265
    .line 266
    if-eqz v1, :cond_a

    .line 267
    .line 268
    invoke-virtual {p0, p1}, Lorg/h2/expression/ConditionAndOr;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    return-object p1

    .line 277
    :cond_a
    iget p1, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    .line 278
    .line 279
    if-eqz p1, :cond_f

    .line 280
    .line 281
    if-eq p1, v2, :cond_b

    .line 282
    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    const-string v0, "type="

    .line 286
    .line 287
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    iget v0, p0, Lorg/h2/expression/ConditionAndOr;->andOrType:I

    .line 291
    .line 292
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_1

    .line 296
    .line 297
    :cond_b
    if-eqz v0, :cond_d

    .line 298
    .line 299
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 300
    .line 301
    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {p1, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-eqz p1, :cond_c

    .line 310
    .line 311
    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    return-object p1

    .line 316
    :cond_c
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 317
    .line 318
    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    if-eqz p1, :cond_13

    .line 327
    .line 328
    iget-object p1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 329
    .line 330
    return-object p1

    .line 331
    :cond_d
    if-eqz v1, :cond_13

    .line 332
    .line 333
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 334
    .line 335
    invoke-virtual {v1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    if-eqz p1, :cond_e

    .line 344
    .line 345
    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    return-object p1

    .line 350
    :cond_e
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 351
    .line 352
    invoke-virtual {v1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    if-eqz p1, :cond_13

    .line 361
    .line 362
    iget-object p1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 363
    .line 364
    return-object p1

    .line 365
    :cond_f
    if-eqz v0, :cond_11

    .line 366
    .line 367
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 368
    .line 369
    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {p1, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    if-eqz p1, :cond_10

    .line 378
    .line 379
    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    return-object p1

    .line 384
    :cond_10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 385
    .line 386
    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    if-eqz p1, :cond_13

    .line 395
    .line 396
    iget-object p1, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    .line 397
    .line 398
    return-object p1

    .line 399
    :cond_11
    if-eqz v1, :cond_13

    .line 400
    .line 401
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 402
    .line 403
    invoke-virtual {v1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    if-eqz p1, :cond_12

    .line 412
    .line 413
    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    return-object p1

    .line 418
    :cond_12
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 419
    .line 420
    invoke-virtual {v1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    if-eqz p1, :cond_13

    .line 429
    .line 430
    iget-object p1, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    .line 431
    .line 432
    return-object p1

    .line 433
    :cond_13
    :goto_1
    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/expression/ConditionAndOr;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    return-void
.end method
