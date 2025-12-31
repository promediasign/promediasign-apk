.class public Lorg/h2/constraint/ConstraintReferential;
.super Lorg/h2/constraint/Constraint;
.source "SourceFile"


# static fields
.field public static final CASCADE:I = 0x1

.field public static final RESTRICT:I = 0x0

.field public static final SET_DEFAULT:I = 0x2

.field public static final SET_NULL:I = 0x3


# instance fields
.field private columns:[Lorg/h2/table/IndexColumn;

.field private deleteAction:I

.field private deleteSQL:Ljava/lang/String;

.field private index:Lorg/h2/index/Index;

.field private indexOwner:Z

.field private refColumns:[Lorg/h2/table/IndexColumn;

.field private refIndex:Lorg/h2/index/Index;

.field private refIndexOwner:Z

.field private refTable:Lorg/h2/table/Table;

.field private skipOwnTable:Z

.field private updateAction:I

.field private updateSQL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/h2/constraint/Constraint;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V

    return-void
.end method

.method private static appendAction(Lorg/h2/util/StatementBuilder;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "action="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_1

    :cond_0
    const-string p1, "SET NULL"

    :goto_0
    invoke-virtual {p0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_1
    const-string p1, "SET DEFAULT"

    goto :goto_0

    :cond_2
    const-string p1, "CASCADE"

    goto :goto_0

    :goto_1
    return-void
.end method

.method private appendUpdate(Lorg/h2/util/StatementBuilder;)V
    .locals 5

    const-string v0, "UPDATE "

    invoke-virtual {p1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    const-string v1, " SET "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {p1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, " , "

    invoke-virtual {p1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendWhere(Lorg/h2/util/StatementBuilder;)V
    .locals 5

    const-string v0, " WHERE "

    invoke-virtual {p1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {p1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, " AND "

    invoke-virtual {p1, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private buildDeleteSQL()V
    .locals 3

    iget v0, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    iget v1, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lorg/h2/constraint/ConstraintReferential;->appendUpdate(Lorg/h2/util/StatementBuilder;)V

    :goto_0
    invoke-direct {p0, v0}, Lorg/h2/constraint/ConstraintReferential;->appendWhere(Lorg/h2/util/StatementBuilder;)V

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->deleteSQL:Ljava/lang/String;

    return-void
.end method

.method private buildUpdateSQL()V
    .locals 1

    iget v0, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    invoke-direct {p0, v0}, Lorg/h2/constraint/ConstraintReferential;->appendUpdate(Lorg/h2/util/StatementBuilder;)V

    invoke-direct {p0, v0}, Lorg/h2/constraint/ConstraintReferential;->appendWhere(Lorg/h2/util/StatementBuilder;)V

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->updateSQL:Ljava/lang/String;

    return-void
.end method

.method private checkRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/table/Table;->getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getColumnId()I

    move-result v3

    iget-object v4, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-interface {p2, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v3

    sget-object v5, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v3, v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    invoke-interface {v0, v4, v3}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/h2/constraint/ConstraintReferential;->existsRow(Lorg/h2/engine/Session;Lorg/h2/index/Index;Lorg/h2/result/SearchRow;Lorg/h2/result/Row;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    invoke-direct {p0, p1, v0}, Lorg/h2/constraint/ConstraintReferential;->getShortDescription(Lorg/h2/index/Index;Lorg/h2/result/SearchRow;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x5bcf

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private checkRowOwnTable(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    iget-object v5, v5, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v5}, Lorg/h2/table/Column;->getColumnId()I

    move-result v5

    invoke-interface {p3, v5}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v6

    sget-object v7, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v6, v7, :cond_2

    return-void

    :cond_2
    if-eqz v1, :cond_3

    iget-object v7, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-interface {p2, v5}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-virtual {v7, v6, v5}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v1, 0x0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    return-void

    :cond_5
    iget-object p2, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    if-ne p2, v1, :cond_8

    iget-object p2, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length p2, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_7

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v2}, Lorg/h2/table/Column;->getColumnId()I

    move-result v2

    invoke-interface {p3, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getColumnId()I

    move-result v3

    invoke-interface {p3, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4, v3, v2}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    :goto_3
    iget-object p2, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    invoke-virtual {p2}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object p2

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v1, v1

    :goto_4
    if-ge v0, v1, :cond_9

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v2}, Lorg/h2/table/Column;->getColumnId()I

    move-result v2

    invoke-interface {p3, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    invoke-virtual {v3, v2}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    iget-object p3, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Lorg/h2/constraint/ConstraintReferential;->existsRow(Lorg/h2/engine/Session;Lorg/h2/index/Index;Lorg/h2/result/SearchRow;Lorg/h2/result/Row;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    invoke-direct {p0, p1, p2}, Lorg/h2/constraint/ConstraintReferential;->getShortDescription(Lorg/h2/index/Index;Lorg/h2/result/SearchRow;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x5bd2

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private checkRowRefTable(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p2, p3}, Lorg/h2/constraint/ConstraintReferential;->isEqual(Lorg/h2/result/Row;Lorg/h2/result/Row;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_4

    iget p3, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    if-nez p3, :cond_2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/constraint/ConstraintReferential;->checkRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    goto :goto_4

    :cond_2
    if-ne p3, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v0, p3

    :goto_1
    invoke-direct {p0, p1}, Lorg/h2/constraint/ConstraintReferential;->getDelete(Lorg/h2/engine/Session;)Lorg/h2/command/Prepared;

    move-result-object p1

    invoke-direct {p0, p1, v0, p2}, Lorg/h2/constraint/ConstraintReferential;->setWhere(Lorg/h2/command/Prepared;ILorg/h2/result/Row;)V

    :goto_2
    invoke-direct {p0, p1}, Lorg/h2/constraint/ConstraintReferential;->updateWithSkipCheck(Lorg/h2/command/Prepared;)V

    goto :goto_4

    :cond_4
    iget v2, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lorg/h2/constraint/ConstraintReferential;->getUpdate(Lorg/h2/engine/Session;)Lorg/h2/command/Prepared;

    move-result-object p1

    iget v2, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    if-ne v2, v1, :cond_6

    invoke-virtual {p1}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v2

    :goto_3
    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Parameter;

    iget-object v4, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    aget-object v4, v4, v0

    iget-object v4, v4, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    invoke-interface {p3, v4}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object p3, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length p3, p3

    invoke-direct {p0, p1, p3, p2}, Lorg/h2/constraint/ConstraintReferential;->setWhere(Lorg/h2/command/Prepared;ILorg/h2/result/Row;)V

    goto :goto_2

    :goto_4
    return-void
.end method

.method private existsRow(Lorg/h2/engine/Session;Lorg/h2/index/Index;Lorg/h2/result/SearchRow;Lorg/h2/result/Row;)Z
    .locals 8

    invoke-interface {p2}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    invoke-interface {p2, p1, p3, p3}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lorg/h2/index/Cursor;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object v2

    if-eqz p4, :cond_0

    invoke-interface {v2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v3

    invoke-interface {p4}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v4, v4

    array-length v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/h2/table/Column;->getColumnId()I

    move-result v6

    invoke-interface {p3, v6}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v7

    invoke-interface {v2, v6}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lorg/h2/table/Table;->compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method private getDelete(Lorg/h2/engine/Session;)Lorg/h2/command/Prepared;
    .locals 2

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->deleteSQL:Ljava/lang/String;

    iget v1, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    invoke-direct {p0, p1, v0, v1}, Lorg/h2/constraint/ConstraintReferential;->prepare(Lorg/h2/engine/Session;Ljava/lang/String;I)Lorg/h2/command/Prepared;

    move-result-object p1

    return-object p1
.end method

.method private getShortDescription(Lorg/h2/index/Index;Lorg/h2/result/SearchRow;)Ljava/lang/String;
    .locals 7

    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " FOREIGN KEY("

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, ", "

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ") REFERENCES "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const-string v2, " ("

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    invoke-interface {p1}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object p1

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v2

    array-length v4, p1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    invoke-interface {p2, v4}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v4, :cond_2

    const-string v4, ""

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Lorg/h2/value/Value;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :cond_4
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUpdate(Lorg/h2/engine/Session;)Lorg/h2/command/Prepared;
    .locals 2

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->updateSQL:Ljava/lang/String;

    iget v1, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    invoke-direct {p0, p1, v0, v1}, Lorg/h2/constraint/ConstraintReferential;->prepare(Lorg/h2/engine/Session;Ljava/lang/String;I)Lorg/h2/command/Prepared;

    move-result-object p1

    return-object p1
.end method

.method private isEqual(Lorg/h2/result/Row;Lorg/h2/result/Row;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    invoke-interface {v0, p1, p2}, Lorg/h2/index/Index;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private prepare(Lorg/h2/engine/Session;Ljava/lang/String;I)Lorg/h2/command/Prepared;
    .locals 6

    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    invoke-virtual {p2}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Parameter;

    const/4 v5, 0x3

    if-ne p3, v5, :cond_0

    sget-object v3, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/h2/table/Column;->getDefaultExpression()Lorg/h2/expression/Expression;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5bd3

    invoke-virtual {v3}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    return-object p2
.end method

.method private setWhere(Lorg/h2/command/Prepared;ILorg/h2/result/Row;)V
    .locals 5

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v2}, Lorg/h2/table/Column;->getColumnId()I

    move-result v2

    invoke-interface {p3, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {p1}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v3

    add-int v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Parameter;

    invoke-virtual {v3, v2}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateWithSkipCheck(Lorg/h2/command/Prepared;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/h2/constraint/ConstraintReferential;->skipOwnTable:Z

    invoke-virtual {p1}, Lorg/h2/command/Prepared;->update()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lorg/h2/constraint/ConstraintReferential;->skipOwnTable:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lorg/h2/constraint/ConstraintReferential;->skipOwnTable:Z

    throw p1
.end method


# virtual methods
.method public checkExistingData(Lorg/h2/engine/Session;)V
    .locals 9

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->startStatementWithinTransaction()V

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "SELECT 1 FROM (SELECT "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, ", "

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    const-string v6, " AND "

    if-ge v4, v2, :cond_2

    aget-object v7, v1, v4

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v6

    const-string v7, " IS NOT NULL "

    invoke-virtual {v6, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v7, v1, v4

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const-string v1, ") C WHERE NOT EXISTS(SELECT 1 FROM "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " P WHERE "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    aget-object v5, v1, v3

    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v7, "C."

    invoke-virtual {v0, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v5

    const/16 v7, 0x3d

    invoke-virtual {v5, v7}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v5

    const-string v7, "P."

    invoke-virtual {v5, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    add-int/lit8 v8, v4, 0x1

    aget-object v4, v7, v4

    invoke-virtual {v4}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto :goto_3

    :cond_4
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/h2/command/Prepared;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object p1

    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->next()Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/16 p1, 0x5bd2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/h2/constraint/ConstraintReferential;->getShortDescription(Lorg/h2/index/Index;Lorg/h2/result/SearchRow;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public checkRow(Lorg/h2/engine/Session;Lorg/h2/table/Table;Lorg/h2/result/Row;Lorg/h2/result/Row;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getReferentialIntegrity()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getCheckForeignKeyConstraints()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getCheckForeignKeyConstraints()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    if-ne p2, v0, :cond_2

    iget-boolean v0, p0, Lorg/h2/constraint/ConstraintReferential;->skipOwnTable:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p3, p4}, Lorg/h2/constraint/ConstraintReferential;->checkRowOwnTable(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)V

    :cond_2
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    if-ne p2, v0, :cond_3

    invoke-direct {p0, p1, p3, p4}, Lorg/h2/constraint/ConstraintReferential;->checkRowRefTable(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getColumns()[Lorg/h2/table/IndexColumn;
    .locals 1

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    return-object v0
.end method

.method public getConstraintType()Ljava/lang/String;
    .locals 1

    const-string v0, "REFERENTIAL"

    return-object v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/h2/constraint/ConstraintReferential;->getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/h2/constraint/ConstraintReferential;->getCreateSQLForCopy(Lorg/h2/table/Table;Lorg/h2/table/Table;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Lorg/h2/table/Table;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .line 2
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "ALTER TABLE "

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " ADD CONSTRAINT "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {p1}, Lorg/h2/table/Table;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "IF NOT EXISTS "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    invoke-virtual {v0, p3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object p3, p0, Lorg/h2/engine/DbObjectBase;->comment:Ljava/lang/String;

    if-eqz p3, :cond_1

    const-string p3, " COMMENT "

    invoke-virtual {v0, p3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p3

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->comment:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_1
    iget-object p3, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    const-string v2, " FOREIGN KEY("

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, ", "

    if-ge v4, v2, :cond_2

    aget-object v6, p3, v4

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/16 p3, 0x29

    invoke-virtual {v0, p3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    const-string v2, " INDEX "

    if-eqz p4, :cond_3

    iget-boolean v4, p0, Lorg/h2/constraint/ConstraintReferential;->indexOwner:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    if-ne p1, v4, :cond_3

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    iget-object v6, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    invoke-interface {v6}, Lorg/h2/engine/DbObject;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_3
    const-string v4, " REFERENCES "

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v4, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    iget-object v6, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    if-ne v4, v6, :cond_4

    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p2

    const/16 v4, 0x28

    invoke-virtual {p2, v4}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    array-length p2, v1

    :goto_2
    if-ge v3, p2, :cond_5

    aget-object v4, v1, v3

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    if-eqz p4, :cond_6

    iget-boolean p2, p0, Lorg/h2/constraint/ConstraintReferential;->refIndexOwner:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    if-ne p1, p2, :cond_6

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getSQL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_6
    iget p1, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    if-eqz p1, :cond_7

    const-string p1, " ON DELETE "

    invoke-virtual {v0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget p1, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    invoke-static {v0, p1}, Lorg/h2/constraint/ConstraintReferential;->appendAction(Lorg/h2/util/StatementBuilder;I)V

    :cond_7
    iget p1, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    if-eqz p1, :cond_8

    const-string p1, " ON UPDATE "

    invoke-virtual {v0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget p1, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    invoke-static {v0, p1}, Lorg/h2/constraint/ConstraintReferential;->appendAction(Lorg/h2/util/StatementBuilder;I)V

    :cond_8
    const-string p1, " NOCHECK"

    invoke-virtual {v0, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCreateSQLWithoutIndexes()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/h2/constraint/ConstraintReferential;->getCreateSQLForCopy(Lorg/h2/table/Table;Lorg/h2/table/Table;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteAction()I
    .locals 1

    iget v0, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    return v0
.end method

.method public getRefColumns()[Lorg/h2/table/IndexColumn;
    .locals 1

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    return-object v0
.end method

.method public getRefTable()Lorg/h2/table/Table;
    .locals 1

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    return-object v0
.end method

.method public getReferencedColumns(Lorg/h2/table/Table;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/table/Table;",
            ")",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 1

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    return-object v0
.end method

.method public getUpdateAction()I
    .locals 1

    iget v0, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    return v0
.end method

.method public isBefore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rebuild()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/constraint/ConstraintReferential;->buildUpdateSQL()V

    invoke-direct {p0}, Lorg/h2/constraint/ConstraintReferential;->buildDeleteSQL()V

    return-void
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    invoke-virtual {v0, p0}, Lorg/h2/table/Table;->removeConstraint(Lorg/h2/constraint/Constraint;)V

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    invoke-virtual {v0, p0}, Lorg/h2/table/Table;->removeConstraint(Lorg/h2/constraint/Constraint;)V

    iget-boolean v0, p0, Lorg/h2/constraint/ConstraintReferential;->indexOwner:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    invoke-virtual {v0, p1, v1}, Lorg/h2/table/Table;->removeIndexOrTransferOwnership(Lorg/h2/engine/Session;Lorg/h2/index/Index;)V

    :cond_0
    iget-boolean v0, p0, Lorg/h2/constraint/ConstraintReferential;->refIndexOwner:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    invoke-virtual {v0, p1, v1}, Lorg/h2/table/Table;->removeIndexOrTransferOwnership(Lorg/h2/engine/Session;Lorg/h2/index/Index;)V

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->deleteSQL:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->updateSQL:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/constraint/Constraint;->table:Lorg/h2/table/Table;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->invalidate()V

    return-void
.end method

.method public setColumns([Lorg/h2/table/IndexColumn;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->columns:[Lorg/h2/table/IndexColumn;

    return-void
.end method

.method public setDeleteAction(I)V
    .locals 2

    iget v0, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->deleteSQL:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    iput p1, p0, Lorg/h2/constraint/ConstraintReferential;->deleteAction:I

    invoke-direct {p0}, Lorg/h2/constraint/ConstraintReferential;->buildDeleteSQL()V

    return-void

    :cond_1
    const p1, 0x15fbd

    const-string v0, "ON DELETE"

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setIndex(Lorg/h2/index/Index;Z)V
    .locals 0

    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    iput-boolean p2, p0, Lorg/h2/constraint/ConstraintReferential;->indexOwner:Z

    return-void
.end method

.method public setIndexOwner(Lorg/h2/index/Index;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    iput-boolean v1, p0, Lorg/h2/constraint/ConstraintReferential;->indexOwner:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    if-ne v0, p1, :cond_1

    iput-boolean v1, p0, Lorg/h2/constraint/ConstraintReferential;->refIndexOwner:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public setRefColumns([Lorg/h2/table/IndexColumn;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refColumns:[Lorg/h2/table/IndexColumn;

    return-void
.end method

.method public setRefIndex(Lorg/h2/index/Index;Z)V
    .locals 0

    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    iput-boolean p2, p0, Lorg/h2/constraint/ConstraintReferential;->refIndexOwner:Z

    return-void
.end method

.method public setRefTable(Lorg/h2/table/Table;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/constraint/ConstraintReferential;->refTable:Lorg/h2/table/Table;

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/h2/engine/DbObjectBase;->setTemporary(Z)V

    :cond_0
    return-void
.end method

.method public setUpdateAction(I)V
    .locals 2

    iget v0, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lorg/h2/constraint/ConstraintReferential;->updateSQL:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    iput p1, p0, Lorg/h2/constraint/ConstraintReferential;->updateAction:I

    invoke-direct {p0}, Lorg/h2/constraint/ConstraintReferential;->buildUpdateSQL()V

    return-void

    :cond_1
    const p1, 0x15fbd

    const-string v0, "ON UPDATE"

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public usesIndex(Lorg/h2/index/Index;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->index:Lorg/h2/index/Index;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/h2/constraint/ConstraintReferential;->refIndex:Lorg/h2/index/Index;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
