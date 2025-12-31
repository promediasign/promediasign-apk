.class public Lorg/h2/expression/Comparison;
.super Lorg/h2/expression/Condition;
.source "SourceFile"


# static fields
.field public static final BIGGER:I = 0x2

.field public static final BIGGER_EQUAL:I = 0x1

.field public static final EQUAL:I = 0x0

.field public static final EQUAL_NULL_SAFE:I = 0x10

.field public static final FALSE:I = 0x8

.field public static final IN_LIST:I = 0x9

.field public static final IN_QUERY:I = 0xa

.field public static final IS_NOT_NULL:I = 0x7

.field public static final IS_NULL:I = 0x6

.field public static final NOT_EQUAL:I = 0x5

.field public static final NOT_EQUAL_NULL_SAFE:I = 0x15

.field public static final NULL_SAFE:I = 0x10

.field public static final SMALLER:I = 0x4

.field public static final SMALLER_EQUAL:I = 0x3

.field public static final SPATIAL_INTERSECTS:I = 0xb


# instance fields
.field private compareType:I

.field private final database:Lorg/h2/engine/Database;

.field private left:Lorg/h2/expression/Expression;

.field private right:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/expression/Condition;-><init>()V

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/Comparison;->database:Lorg/h2/engine/Database;

    iput-object p3, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    iput-object p4, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    iput p2, p0, Lorg/h2/expression/Comparison;->compareType:I

    return-void
.end method

.method public static compareNotNull(Lorg/h2/engine/Database;Lorg/h2/value/Value;Lorg/h2/value/Value;I)Z
    .locals 3

    if-eqz p3, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_7

    const/4 v2, 0x2

    if-eq p3, v2, :cond_6

    const/4 v2, 0x3

    if-eq p3, v2, :cond_5

    const/4 v2, 0x4

    if-eq p3, v2, :cond_3

    const/4 v0, 0x5

    if-eq p3, v0, :cond_2

    const/16 v0, 0xb

    if-eq p3, v0, :cond_1

    const/16 v0, 0x10

    if-eq p3, v0, :cond_8

    const/16 v0, 0x15

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "type="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    const/16 p0, 0x16

    invoke-virtual {p1, p0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueGeometry;

    invoke-virtual {p2, p0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueGeometry;

    invoke-virtual {p1, p0}, Lorg/h2/value/ValueGeometry;->intersectsBoundingBox(Lorg/h2/value/ValueGeometry;)Z

    move-result p0

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result p0

    xor-int/2addr p0, v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p0

    if-gez p0, :cond_4

    :goto_1
    const/4 v0, 0x1

    :cond_4
    move p0, v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p0

    if-gtz p0, :cond_4

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p0

    if-lez p0, :cond_4

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p0

    if-ltz p0, :cond_4

    goto :goto_1

    :cond_8
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result p0

    :goto_2
    return p0
.end method

.method public static getCompareOperator(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    const-string p0, "IS NOT"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "compareType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    const-string p0, "IS"

    return-object p0

    :cond_2
    const-string p0, "&&"

    return-object p0

    :cond_3
    const-string p0, "<>"

    return-object p0

    :cond_4
    const-string p0, "<"

    return-object p0

    :cond_5
    const-string p0, "<="

    return-object p0

    :cond_6
    const-string p0, ">"

    return-object p0

    :cond_7
    const-string p0, ">="

    return-object p0

    :cond_8
    const-string p0, "="

    return-object p0
.end method

.method private getNotCompareType()I
    .locals 3

    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/16 v1, 0x15

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/expression/Comparison;->compareType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_1
    const/4 v0, 0x7

    return v0

    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_6
    const/4 v0, 0x4

    return v0

    :pswitch_7
    const/4 v0, 0x5

    return v0

    :cond_0
    return v2

    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getReversedCompareType(I)I
    .locals 5

    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    return v4

    :cond_2
    return v2

    :cond_3
    return v3

    :cond_4
    return v1

    :cond_5
    :goto_0
    return p1
.end method


# virtual methods
.method public addFilterConditions(Lorg/h2/table/TableFilter;Z)V
    .locals 2

    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/expression/Expression;->addFilterConditions(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method

.method public createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V
    .locals 4

    invoke-virtual {p2}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/Table;->isQueryComparable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    instance-of v1, v0, Lorg/h2/expression/ExpressionColumn;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v1

    if-eq p2, v1, :cond_2

    :cond_1
    move-object v0, v2

    :cond_2
    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    const/16 v3, 0x10

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    iget v1, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->optimizeIsNull:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    instance-of p1, v1, Lorg/h2/expression/ExpressionColumn;

    if-eqz p1, :cond_7

    check-cast v1, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v1}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object p1

    if-eq p2, p1, :cond_6

    goto :goto_1

    :cond_6
    move-object v2, v1

    :cond_7
    :goto_1
    if-nez v0, :cond_8

    if-nez v2, :cond_8

    return-void

    :cond_8
    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    return-void

    :cond_9
    if-nez v0, :cond_a

    invoke-static {p2}, Lorg/h2/expression/ExpressionVisitor;->getNotFromResolverVisitor(Lorg/h2/table/ColumnResolver;)Lorg/h2/expression/ExpressionVisitor;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_a
    if-nez v2, :cond_f

    invoke-static {p2}, Lorg/h2/expression/ExpressionVisitor;->getNotFromResolverVisitor(Lorg/h2/table/ColumnResolver;)Lorg/h2/expression/ExpressionVisitor;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget p1, p0, Lorg/h2/expression/Comparison;->compareType:I

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    if-eq p1, v1, :cond_d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_d

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_d

    const/4 v1, 0x5

    if-eq p1, v1, :cond_f

    const/16 v1, 0xb

    if-eq p1, v1, :cond_d

    if-eq p1, v3, :cond_d

    const/16 p2, 0x15

    if-ne p1, p2, :cond_c

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "type="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lorg/h2/expression/Comparison;->compareType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_d
    if-eqz v0, :cond_e

    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-static {p1, v0, v1}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    :goto_2
    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    goto :goto_3

    :cond_e
    if-eqz v2, :cond_f

    invoke-direct {p0, p1}, Lorg/h2/expression/Comparison;->getReversedCompareType(I)I

    move-result p1

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-static {p1, v2, v0}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    goto :goto_2

    :cond_f
    :goto_3
    return-void
.end method

.method public getAdditional(Lorg/h2/engine/Session;Lorg/h2/expression/Comparison;Z)Lorg/h2/expression/Expression;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget v3, p0, Lorg/h2/expression/Comparison;->compareType:I

    iget v4, p2, Lorg/h2/expression/Comparison;->compareType:I

    if-ne v3, v4, :cond_b

    if-nez v3, :cond_b

    iget-object v3, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v3

    iget-object v4, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v4

    iget-object v5, p2, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v5

    iget-object v6, p2, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v6

    iget-object v7, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v7}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v8}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p2, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v10}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v10

    if-eqz p3, :cond_7

    if-eqz v4, :cond_0

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Lorg/h2/expression/Comparison;

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    iget-object p2, p2, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-direct {p3, p1, v2, v0, p2}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object p3

    :cond_1
    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    :cond_2
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Lorg/h2/expression/Comparison;

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    iget-object p2, p2, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-direct {p3, p1, v2, v0, p2}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object p3

    :cond_3
    if-eqz v3, :cond_4

    if-nez v6, :cond_5

    :cond_4
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    new-instance p3, Lorg/h2/expression/Comparison;

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    iget-object p2, p2, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-direct {p3, p1, v2, v0, p2}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object p3

    :cond_5
    if-eqz v3, :cond_6

    if-nez v5, :cond_b

    :cond_6
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    new-instance p3, Lorg/h2/expression/Comparison;

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    iget-object p2, p2, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-direct {p3, p1, v2, v0, p2}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object p3

    :cond_7
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    if-eqz v4, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    new-instance p3, Lorg/h2/expression/ConditionIn;

    iget-object v3, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    iget-object p2, p2, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    new-array v1, v1, [Lorg/h2/expression/Expression;

    aput-object v4, v1, v2

    aput-object p2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p3, p1, v3, p2}, Lorg/h2/expression/ConditionIn;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Ljava/util/ArrayList;)V

    return-object p3

    :cond_8
    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    new-instance p3, Lorg/h2/expression/ConditionIn;

    iget-object v3, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    iget-object p2, p2, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    new-array v1, v1, [Lorg/h2/expression/Expression;

    aput-object v4, v1, v2

    aput-object p2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p3, p1, v3, p2}, Lorg/h2/expression/ConditionIn;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Ljava/util/ArrayList;)V

    return-object p3

    :cond_9
    if-eqz v3, :cond_a

    if-eqz v6, :cond_a

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    new-instance p3, Lorg/h2/expression/ConditionIn;

    iget-object v3, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    iget-object p2, p2, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    new-array v1, v1, [Lorg/h2/expression/Expression;

    aput-object v4, v1, v2

    aput-object p2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p3, p1, v3, p2}, Lorg/h2/expression/ConditionIn;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Ljava/util/ArrayList;)V

    return-object p3

    :cond_a
    if-eqz v3, :cond_b

    if-eqz v5, :cond_b

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    new-instance p3, Lorg/h2/expression/ConditionIn;

    iget-object v3, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    iget-object p2, p2, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    new-array v1, v1, [Lorg/h2/expression/Expression;

    aput-object v4, v1, v2

    aput-object p2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p3, p1, v3, p2}, Lorg/h2/expression/ConditionIn;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Ljava/util/ArrayList;)V

    return-object p3

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCost()I
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getCost()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
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

    iget-object p1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    :goto_0
    return-object p1
.end method

.method public getIfEquals(Lorg/h2/expression/Expression;)Lorg/h2/expression/Expression;
    .locals 1

    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNotIfPossible(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 4

    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lorg/h2/expression/Comparison;->getNotCompareType()I

    move-result v0

    new-instance v1, Lorg/h2/expression/Comparison;

    iget-object v2, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    iget-object v3, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-direct {v1, p1, v0, v2, v3}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object v1
.end method

.method public bridge synthetic getPrecision()J
    .locals 2

    invoke-super {p0}, Lorg/h2/expression/Condition;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const-string v2, ")"

    .line 5
    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x7

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0xb

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v3, p0, Lorg/h2/expression/Comparison;->compareType:I

    .line 35
    .line 36
    invoke-static {v3}, Lorg/h2/expression/Comparison;->getCompareOperator(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    .line 47
    .line 48
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "INTERSECTS("

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

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
    const-string v1, ", "

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    .line 82
    .line 83
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    .line 100
    .line 101
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, " IS NOT NULL"

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    .line 117
    .line 118
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v1, " IS NULL"

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :goto_2
    const-string v1, "("

    .line 129
    .line 130
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
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

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-nez v1, :cond_3

    iget p1, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, p1, :cond_2

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v2, :cond_4

    iget v3, p0, Lorg/h2/expression/Comparison;->compareType:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_4

    return-object v2

    :cond_4
    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    if-ne p1, v2, :cond_5

    iget v1, p0, Lorg/h2/expression/Comparison;->compareType:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_5

    return-object v2

    :cond_5
    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getType()I

    move-result v1

    iget-object v2, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {p1, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/expression/Comparison;->database:Lorg/h2/engine/Database;

    iget v2, p0, Lorg/h2/expression/Comparison;->compareType:I

    invoke-static {v1, v0, p1, v2}, Lorg/h2/expression/Comparison;->compareNotNull(Lorg/h2/engine/Database;Lorg/h2/value/Value;Lorg/h2/value/Value;I)Z

    move-result p1

    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    :cond_0
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 3

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/ExpressionColumn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/Parameter;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    iput-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    iput-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    invoke-direct {p0, v0}, Lorg/h2/expression/Comparison;->getReversedCompareType(I)I

    move-result v0

    iput v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    :cond_1
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/ExpressionColumn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v1, :cond_2

    iget v1, p0, Lorg/h2/expression/Comparison;->compareType:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_2

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getType()I

    move-result v1

    invoke-virtual {v0}, Lorg/h2/value/Value;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v1

    if-eq v2, v1, :cond_4

    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    instance-of v1, v0, Lorg/h2/expression/Parameter;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/h2/expression/Parameter;

    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    check-cast v1, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v1}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/expression/Parameter;->setColumn(Lorg/h2/table/Column;)V

    :cond_4
    :goto_0
    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    goto :goto_2

    :cond_5
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-nez v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_7
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v1

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v1

    if-ne v0, v1, :cond_9

    :cond_8
    iget v0, p0, Lorg/h2/expression/Comparison;->compareType:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_9

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/expression/Comparison;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_2
    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    :cond_b
    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_0
    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Comparison;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/expression/Comparison;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_0
    return-void
.end method
